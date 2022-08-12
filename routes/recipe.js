require('dotenv').config();
const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const todateString = require(__dirname + '/../modules/date_format');
const upload = require(__dirname + '/../modules/upload_img');
const router = express.Router();
const sqlstring = require("sqlstring");

// 以下為食譜新增

router.post('/createrecipe',upload.single('file') , async (req, res) => {
  // console.log("body: ", req.body)
  try {
      // console.log(req.body.recipes_sid);
      // const customer_id = req.header('customer_id')
      const sqlcreate = "INSERT INTO `recipe`(`recipes_name`, `recipes_description`, `recipes_time_cost`, `recipes_portion`, `recipes_calories`, `recipes_type`, `recipes_cooking_degree`, `recipes_ingredient`, `recipes_cooking_method`, `recipes_img`, `customer_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
      const sql = sqlstring.format(sqlcreate, [
        req.body.recipesname ,
        req.body.description ,
        req.body.timecost ,
        req.body.portion ,
        req.body.calories ,
        req.body.recipestype ,
        req.body.recipesdegree ,
        req.body.ingredient ,
        req.body.step ,
        req.body.recipes_img ,
        req.body.customer_id])
        console.log(req.body.recipes_img)
      console.log(sql)
      const recipescreate = await db.query(sql);
      // console.log(recipescreate);
      res.json(recipescreate);
      return
  } catch (error) {
      res.send(error);
      return;
  }

});


// 以下為食譜修改


router.post('/updaterecipe', async (req, res) => {
  try {
      // console.log(req.body);
      // const { recipes_name, recipes_time_cost, recipes_portion, recipes_calories, recipes_type, recipes_cooking_degree, recipes_ingredient, recipes_cooking_method, recipes_description, recipes_img, cooking_create_member_Id } = req.body;

      const sqlupdate = "UPDATE `recipe` SET `recipes_name`=? ,`recipes_description`=?, `recipes_time_cost`=? ,`recipes_portion`=? ,`recipes_calories`=? ,`recipes_type`=? ,`recipes_cooking_degree`=? ,`recipes_ingredient`=? ,`recipes_cooking_method`=? ,`recipes_img=?` , `customer_id`=? WHERE recipes_sid=?";
      const sql = sqlstring.format(sqlupdate, [
        req.body.updateRecipesname ,
        req.body.updateDescription ,
        req.body.updateTimecost ,
        req.body.updatePortion ,
        req.body.updateCalories ,
        req.body.updateRecipestype ,
        req.body.updateRecipesdegree ,
        req.body.updateIngredient ,
        req.body.updateStep ,
        req.body.recipes_img ,
        req.body.customer_id
        ])
        console.log("asdf:", req.body.recipe_sid)
      console.log(sql)
      const recipesupdate = await db.query(sql);
      // console.log(recipesupdate);
      res.json(recipesupdate[0].insertId);
      return
  } catch (error) {
      res.send(error);
      return;
  }

});

// 以下為圖片上傳處理
// router.post('/uploadimg', upload.single('file'), async (req, res) => {
//   const customer_id = req.header('customer_id')
//   const aqluploadimg = 'INSERT INTO `recipe`(`recipes_img`, `customer_id`) VALUES (?, ?)';
//   //抓會員Id，
//   const data = await res.json(req.body);
//   const [r11] = await db.query(aqluploadimg, [data.req.file.originalname, customer_id])
//   // data.req.file.originalname，僅保留照片名稱的字串
//   console.log(r11)
    
// })


// 以下為食譜刪除

router.delete('/delete', async (req, res) => {
  const recipes_sid = req.body.recipes_sid
  // console.log(req.body.recipes_sid);
  if (!recipes_sid) {
      return res.json({ message: 'error', code: '400' });
  }
  const sqlDelete = "DELETE FROM `recipe` WHERE recipes_sid=?";
  const recipesdelete = await db.query(sqlDelete, [recipes_sid]);
  console.log(recipesdelete);
  res.json(recipesdelete);
});

// 分隔線


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

    const orderBy = req.query.orderBy === "price" ? "product_price" : "recipes_sid";
    const order = req.query.order === "ASC" ? "ASC" : "DESC"; // DESC || ASC
    // ASC 遞增(由小到大)
    // DESC 遞減(由大到小)

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


  router.route("/").get(async (req, res) => {
    const output = await getRecipeHandler(req, res);
    res.json(output);
  });





//   const data = {
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



  // 分隔線，以下為R

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







  const dataquantity = "SELECT COUNT(1) num FROM recipe"
  // 計算資料筆數


  
  module.exports=router;