require('dotenv').config();
const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const todateString = require(__dirname + '/../modules/date_format');
const upload = require(__dirname + '/../modules/upload_img');
const router = express.Router();


const getRecipeHandler = async (req, res) => {
    let output = {
      perPage: 12, // 每頁有幾筆
      page: 1, // 用戶看第幾頁
      totalRows: 0, // 總筆數
      totalPage: 0, // 總頁數
      code: 0, // 辨識狀態，初始值為0
      error: "", // 錯誤
      rows: [] // 資料內容為陣列
    };

    let page = +req.query.page || 1;
    // 讓使用者看選擇的頁數，或是第一頁，最前面的 "+"(正號) 是為了讓字串變數值
    if (page < 1) {
      output.code = 410;
      output.error = "頁面太小";
      return output;
      // return res.redirect('?page=1')，轉向
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
        // return res.redirect(`?page=${totalPages}`)，轉向
      }
    }
    
    const sql02 = `SELECT * FROM recipe WHERE 1 ORDER BY sid DESC LIMIT ${
      (page - 1) * output.perPage
    },${output.perPage}`;
    const [r2] = await db.query(sql02);
    // 拿到的是分頁的資料，後放入output的資料陣列中
    output.rows = r2.map((el) => {
      // 
      return {
        ...el,
        product_img: JSON.parse(el.product_img),
        product_hashtag: JSON.parse(el.product_hashtag)
      };
    });

    output.code = 200;
    output = { ...output, page, totalRows, totalPage };
    // 先展開物件，放入output、page、totalRows、totalPage等變數，取代原來的資料內容

    return output;
  };



  // 分隔線，以下為C

// router.get('/', async (req, res) => {
// const sqlInsert = "INSERT INTO `recipe`(`recipes_sid`, `recipes_name`, `recipes_time_cost`, `recipes_portion`, `recipes_calories`, `recipes_type`, `recipes_cooking_degree`, `recipes_ingredient`, `recipes_cooking_method`, `recipes_description`, `recipes_img`, `cooking_create_member_Id`, `recipes_collection`, `recipes_like`, `created_at`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())";
// const [r1] = await db.query(sqlInsert, [req.body.recipes_sid ,req.body.recipes_name ,req.body.recipes_time_cost ,req.body.recipes_portion ,req.body.recipes_calories ,req.body.recipes_type ,req.body.recipes_cooking_degree ,req.body.recipes_ingredient ,req.body.recipes_cooking_method ,req.body.recipes_description ,req.body.recipes_img ,req.body.cooking_create_member_Id ,req.body.recipes_collection ,req.body.recipes_like ]);
//   r1.forEach((el) => (el.recipes_sid = todateString(el.recipes_sid)));
//   res.json(r1);
// });



  // 分隔線，以下為R

// router.post('/', async (req, res) => {
//   const sqlSelect = "SELECT * FROM recipe WHERE recipes_sid=?";
//   const [r2] = await db.query(sql, [req.body.recipes_sid]);
//   r2.forEach((el) => (el.creat_at = todateString(el.creat_at)));
//   res.json(r2);
// });


  // 分隔線，以下為U

// router.post('/', async (req, res) => {
// const sqlUpdate = "UPDATE `recipe` SET `recipes_sid`=? ,`recipes_name`=? ,`recipes_time_cost`=? ,`recipes_portion`=? ,`recipes_calories`=? ,`recipes_type`=? ,`recipes_cooking_degree`=? ,`recipes_ingredient`=? ,`recipes_cooking_method`=? ,`recipes_description`=? ,`recipes_img`=? ,`cooking_create_member_Id`=? ,`recipes_collection`=? ,`recipes_like`=? ,`created_at`=? WHERE `recipes_sid?";
//   const [r3] = await db.query(sql, [req.body.point, req.body.recipes_sid]);
//   res.json('r3')
// });



  // 分隔線，以下為D

// router.delete('/', async (req, res) => {
// const sqlDelete = "DELETE FROM `recipe` WHERE recipes_sid=?"
//   const [r4] = await db.query(sql, [req.body.point, req.body.recipes_sid]);
//   res.json('r4')
// });





  router.route("/").get(async (req, res) => {
    const output = await getRecipeHandler(req, res);
    res.json(output);
  });





  // "SELECT COUNT(1) num FROM recipe"，計算資料筆數





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
//   };





  // 第67行 output.rows = r2.map((el) => {} 的用意，大誇號裡的product_img: JSON.parse(el.product_img) el.product_img 是把一個JSON字串轉換成 JavaScript的數值或是物件

  // 第25行 const typeVal = Number(req.query.type) 的 Number(req.query.type)是哪邊的type抓資料

  // 第26行 const typeSql = typeVal ? `product_type = ${typeVal}` : "1" 的三元運算子

  // 第33行 const searchVal = req.query.search 為何不用 Number

  // 第36行 const orderBy = req.query.orderBy === "price" ? "product_price" : "sid" 的 price 跟 sid 是連結到哪裡

  // 第49行 const filterSql = `WHERE ${typeSql} AND ${searchSql} AND ${hashTagSql} AND ${sidSql}` SQL語法的 WHERE、AND、AND、AND 的功用，之後會輸出到哪裡

  // 第53行 const [[{ totalRows }]] = await db.query(sql01) 的 await db.query意思

  // 如何連接到前端

  // JWT_SECRET=aq5f8s5g9h4hd826sf1f

  router.get('/recipe', async (req, res) => {
  const output = {
      success: false,
      error: '',
      code: 0,
    };

    const sql = await db.query('SELECT * FROM `recipe` WHERE 1');

    output.success=true;

    res.json(sql[0])
  })

  router.get('/each/:recipes_sid', async (req, res) => {
    if(!req.params.recipes_sid){
      return
    }
    const sqleach = "SELECT * FROM `recipe` WHERE 1=1 and recipes_sid= " + req.params.recipes_sid;
    const [recipesdata] = await db.query(sqleach);
    res.json(recipesdata[0])
    })

    router.get('/updaterecipe/:recipes_sid', async (req, res) => {
      if(!req.params.recipes_sid){
        return
      }
      const sqleach = "SELECT * FROM `recipe` WHERE 1=1 and recipes_sid= " + req.params.recipes_sid;
      const [recipesdata] = await db.query(sqleach);
      res.json(recipesdata[0])
      })
  
  module.exports=router;