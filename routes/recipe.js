require('dotenv').config();
const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const todateString = require(__dirname + '/../modules/date_format');
const upload = require(__dirname + '/../modules/upload_img');
const router = express.Router();


const getRecipeHandler = async (req, res) => {
    let output = {
      perPage: 12,
      page: 1,
      totalRows: 0,
      totalPage: 0,
      code: 0,
      error: "",
      rows: []
    };

    let page = +req.query.page || 1;
    if (page < 1) {
      output.code = 410;
      output.error = "頁面太小";
      return output;
    }

    const typeVal = Number(req.query.type);
    const typeSql = typeVal ? `product_type = ${typeVal}` : "1";

    const hashTagVal = Number(req.query.hashTag);
    const hashTagSql = hashTagVal
      ? `product_hashtag LIKE '%${hashTagVal}%'`
      : "1";

    const searchVal = req.query.search;
    const searchSql = searchVal ? `product_name LIKE '%${searchVal}%'` : "1";

    const orderBy = req.query.orderBy === "price" ? "product_price" : "recipes_sid";
    const order = req.query.order === "ASC" ? "ASC" : "DESC"; // DESC || ASC
    // ASC 遞增(由小到大)
    // DESC 遞減(由大到小)


    const orderSql = `ORDER BY ${orderBy} ${order}`;
    // order相關，排列方式，生冪降冪

    const sidVal = Number(req.query.sid);
    const sidSql = sidVal ?  `recipes_sid = ${sidVal}` : "1";
    // ID排序

    const filterSql = `WHERE ${typeSql} AND ${searchSql} AND ${hashTagSql} AND ${sidSql}`;

    const sql01 = `SELECT COUNT(1) totalRows FROM recipe WHERE 1`;
    // WHERE 1 全部資料，無篩選
    const [[{ totalRows }]] = await db.query(sql01);
    let totalPage = 0;
    if (totalRows) {
      totalPage = Math.ceil(totalRows / output.perPage);
      if (page > totalPage) {
        output.code = 420;
        output.error = "頁面太大";
        return output;
      }
    }
    
    const sql02 = `SELECT * FROM recipe WHERE 1 ORDER BY sid DESC LIMIT ${
      (page - 1) * output.perPage
    },${output.perPage}`;
    const [r2] = await db.query(sql02);
    output.rows = r2.map((el) => {
      return {
        ...el,
        product_img: JSON.parse(el.product_img),
        product_hashtag: JSON.parse(el.product_hashtag)
      };
    });

    output.code = 200;
    output = { ...output, page, totalRows, totalPage };

    return output;
  };


  // 分隔線


  router.route("/").get(async (req, res) => {
    const output = await getRecipeHandler(req, res);
    res.json(output);
  });


  module.exports = router;




// router.post('/register', async (req, res) => {
//   const output = {
//       success: false,
//       error: '',
//       code: 0,
//   };
// const sqlInsert = "INSERT INTO `recipe`(`recipes_sid`, `recipes_name`, `recipes_time_cost`, `recipes_portion`, `recipes_calories`, `recipes_type`, `recipes_cooking_degree`, `recipes_ingredient`, `recipes_cooking_method`, `recipes_description`, `recipes_img`, `cooking_create_member_Id`, `recipes_collection`, `recipes_like`, `created_at`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())";

//   const { company_name, company_email, company_password } = req.body;
//   const pass_hash = bcrypt.hashSync(`${password}`, 10);
//   const [result] = await db.query(sqlInsert, [company_name, company_email, pass_hash]);

//   if (result.affectedRows === 1) {
//       output.success = true;
//   }

//   res.json(output);
// });





// const sqlSelect = "SELECT * FROM recipe WHERE customer_id=?";

// router.get('/home ', async (req, res) => {
//   const sqlSelect = "SELECT * FROM recipe WHERE customer_id=?";
//   const [r2] = await db.query(sql, [req.body.company_email]);
//   r2.forEach((el) => (el.creat_at = todateString(el.creat_at)));
//   res.json(r2);
// });



// router.put('/home', async (req, res) => {
//   const output = {
//       success: false,
//       error: '',
//       code: 0,
//   };

// const sqlUpdate = "UPDATE `recipe` SET `recipes_sid`=? ,`recipes_name`=? ,`recipes_time_cost`=? ,`recipes_portion`=? ,`recipes_calories`=? ,`recipes_type`=? ,`recipes_cooking_degree`=? ,`recipes_ingredient`=? ,`recipes_cooking_method`=? ,`recipes_description`=? ,`recipes_img`=? ,`cooking_create_member_Id`=? ,`recipes_collection`=? ,`recipes_like`=? ,`created_at`=? WHERE `recipes_sid?";

//   const {
//     recipes_sid,
//     recipes_name,
//     recipes_time_cost,
//     recipes_portion,
//     recipes_calories,
//     recipes_type,
//     recipes_cooking_degree,
//     recipes_ingredient,
//     recipes_cooking_method,
//     recipes_description,
//     recipes_img,
//     cooking_create_member_Id,
//     recipes_collection,
//     recipes_like,
//     created_at,
// } = req.body;

// const pass_hash = bcrypt.hashSync(`${password}`, 10);
// const [result] = await db.query(sqlUpdate, [
//     recipes_sid,
//     recipes_name,
//     recipes_time_cost,
//     recipes_portion,
//     recipes_calories,
//     recipes_type,
//     recipes_cooking_degree,
//     recipes_ingredient,
//     recipes_cooking_method,
//     recipes_description,
//     recipes_img,
//     cooking_create_member_Id,
//     recipes_collection,
//     recipes_like,
//     created_at,
// ]);

// if (result.affectedRows === 1) {
//     output.success = true;
// }

// res.json(output);
// });



// router.delete('/deleteproduct', async (req, res) => {
// const sqlDelete = "DELETE FROM `recipe` WHERE recipes_sid=?"
//     const [r6] = await db.query(sqlDelete, [
//         req.header('customer_id'),
//         req.header('product_id'),
//     ]);
//     res.json(r6);
// });




//   output.data = {
//     token,
//     recipes_sid: r1[0].recipes_sid,
//     recipes_name: r1[0].recipes_name,
//     recipes_time_cost: r1[0].recipes_time_cost,
//     recipes_portion: r1[0].recipes_portion,
//     recipes_calories: r1[0].recipes_calories,
//     recipes_type: r1[0].recipes_type,
//     recipes_cooking_degree: r1[0].recipes_cooking_degree,
//     recipes_ingredient: r1[0].recipes_ingredient,
//     recipes_cooking_method: r1[0].recipes_cooking_method,
//     recipes_description: r1[0].recipes_description,
//     recipes_img: r1[0].recipes_img,
//     cooking_create_member_Id: r1[0].cooking_create_member_Id,
//     recipes_collection:r1[0].recipes_collection
//     recipes_like:r1[0].recipes_like
//     created_at:r1[0].created_at





  // 第67行 output.rows = r2.map((el) => {} 的用意，大誇號裡的product_img: JSON.parse(el.product_img) el.product_img 是把一個JSON字串轉換成 JavaScript的數值或是物件

  // 第18行 +req.query.page || 1; +?

  // 第25行 const typeVal = Number(req.query.type) 的 Number(req.query.type)是哪邊的type抓資料

  // 第26行 const typeSql = typeVal ? `product_type = ${typeVal}` : "1" 的三元運算子

  // 第33行 const searchVal = req.query.search 為何不用 Number

  // 第36行 const orderBy = req.query.orderBy === "price" ? "product_price" : "sid" 的 price 跟 sid 是連結到哪裡

  // 第49行 const filterSql = `WHERE ${typeSql} AND ${searchSql} AND ${hashTagSql} AND ${sidSql}` SQL語法的 WHERE、AND、AND、AND 的功用，之後會輸出到哪裡

  // 第53行 const [[{ totalRows }]] = await db.query(sql01) 的 await db.query意思

  // 第75、76行 output.code = 200  跟  output = { ...output, page, totalRows, totalPage } 的意思

  // 如何連接到前端
