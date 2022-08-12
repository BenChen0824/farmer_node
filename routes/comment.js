const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const router = express.Router();
const moment = require('moment-timezone');

// const getCommentProductSid = async (comment_sid) => {
//     const sql = `SELECT p.*, c.quantity
//   FROM comment c
//   JOIN product p
//   ON c.product_sid=p.sid
//   WHERE comment_sid=?
//   ORDER BY c.created_at`;

//     const [r] = await db.query(sql, [comment_sid]);
//     return r;
// };


// FROM comment c //被加入的表(我的)
// JOIN product p  //哪張表要加進FROM後面的表(商品的)
// ON odt.product_id=p.sid   #兩張表的哪幾個KEY要對應

// const getProductItemName = async (comment_sid) => {
//     const sql = `SELECT comment.*, product.* 
//   FROM comment c
//   JOIN product p
//   ON c.product_sid=p.sid
//   WHERE comment_sid=?
//   ORDER BY comment.created_at`;
  
//     const [r] = await db.query(sql, [comment_sid]);
//     console.log(r);

//     return [...r];
// };


// 取得comment_sid
//   router.get('/getcomment', async (req, res) => {


    // const sql =
    // 'INSERT INTO `comment`(`member_id`, `nickname`,`comment`, `avatar`, `rating`, `likes`, `product_sid`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, ?, NOW())';
    // const [r1] = await db.query(sql, [comment_sid]);
    // res.json(r1);
// });



// router.route("/getproductsid").get(async (req, res) => {
//     const output = await getProductItemName(req);
//     res.json(output);
//   }).post(async(req,res)=>{
//     const output = {
//       success: false,
//       error: ""
//     };
//     const fields = [
//         `member_id`, `nickname`,`comment`, `avatar`, `rating`, `likes`, `product_sid`, `created_at`
//     ]

//     }



//抓全部資料.(comment) + 商品列表(product)的商品名稱(product_name)
router.get('/', async (req, res) => {
    const sql = `SELECT c.*, p.product_name ,cus.profile_img,cus.account
  FROM comment c
  JOIN product p
  ON c.product_sid=p.sid
  JOIN customer_data cus
  ON cus.customer_id=c.member_id
  ORDER BY c.created_at DESC
  `;

  const [r] = await db.query(sql, req.header("comment_sid"));
  res.json(r);

});

//抓全部資料(product)
// router.get('/', async (req, res) => {
//     const sql1 = 'SELECT * FROM `product` WHERE 1';
//     const [r1] = await db.query(sql1);
//     res.json(await r1);
// });



//送資料到資料庫 (新增)
router.post('/createcomment', async (req, res) => {
    const sql =
        'INSERT INTO `comment`(`member_id`, `comment`, `rating`, `likes`, `created_at`, `product_sid`) VALUES (?,?,?,?,NOW(),?)';

    const [r] = await db.query(sql, [
        req.body.member_id,
        req.body.comment,
        req.body.rating,
        0, // 預設likes為0
        req.body.product_sid,
    ]);
    // r.forEach((el) => (el.created_at = todateString(el.created_at)));
    res.json(r);
});




//////////////////////////////////////////////////////////////////////////////////////////

//這是下面的頁碼ㄉ東東(方法)
const getListHandler = async (req) => {
    let output = {
      perPage: 12, //每頁總筆數
      page: 1,
      totalRows: 0, //總筆數，共幾筆資料
      totalPage: 0, //總頁數，共幾頁
      code: 0, // 辨識狀態，報錯用
      error: "",
      rows: [] //讀取到的資料

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

     // 搜尋使用的東西
    const searchVal = req.query.search;
    const searchSql = searchVal ? `product_name LIKE '%${searchVal}%'` : "1";
    //

    //以下是資料新舊排序的內容
    const orderBy = req.query.orderBy === "price" ? "product_price" : "sid"; //可能用不到   `created_at`

    const order = req.query.order === "ASC" ? "ASC" : "DESC"; // DESC || ASC
    const orderSql = `ORDER BY created_at ${order}`; //這邊去參考前端的檔案(API/COPY)
    //

    const sidVal = Number(req.query.sid);
    const sidSql = sidVal ?  `sid = ${sidVal}` : "1";

    // const supVal = Number(req.query.supplier);
    // const supSql = supVal ?  `product_supplier = ${supVal}` : "1";

    //把前端需要的資料先抓出來到一個變數，需要的時候再拿出來，沒用到沒關係(以備不時之需)
    const filterSql = `WHERE ${typeSql} AND ${searchSql} AND ${hashTagSql} AND ${sidSql} AND ${supSql}`;
    // const sql01 = `SELECT COUNT(1) totalRows FROM product WHERE ${typeSql} LIKE `  ;
    const sql01 = `SELECT COUNT(1) totalRows FROM product ${filterSql}`;
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

    //以下與頁數有關 (算總共有幾頁)
    const sql02 = `SELECT * FROM comment ${filterSql} ${orderSql} LIMIT ${
      (page - 1) * output.perPage
    },${output.perPage}`;
    const [r2] = await db.query(sql02);
    output.rows = r2.map((el) => {
      return {
        ...el,
        // product_img: JSON.parse(el.product_img),
        // product_hashtag: JSON.parse(el.product_hashtag)
      };
    });

    output.code = 200;
    output = { ...output, page, totalRows, totalPage };

    return output;
  };
  //以上與頁數有關 (算總共有幾頁)

  router.route("/").get(async (req, res) => {
    const output = await getListHandler(req);
    res.json(output);
  }).post(async(req,res)=>{
    const output = {
      success: false,
      error: ""
    };
    const fields = [
        `member_id`, `comment`, `rating`, `likes`, `created_at`, `product_sid`
    ]

    if (fields.some(k => !req.body[k]))  {
      output.error = "參數不足";
      return res.json(output);
    }

   // sid會自己建立，value後面可寫null
   // 這邊的key要對應上方的fields
   const sql =
   'INSERT INTO `comment`(`member_id`, `comment`, `rating`, `likes`, `created_at`, `product_sid`) VALUES (?,?,?,?,NOW(),?)';

      // 這邊從fields取前端傳來的東東
    const values = fields.map((v,i)=> {
      const val = req.body[v]
      if (v === "photo" || v === "hashtag") {
        return JSON.stringify(val)
      }
     return val
    })

    const [r1] = await db.query(sql, [
      ...values,
    ]);
    // 資料表如果有變動，有1就1有2就2，沒變動就是0筆(0=false) 往下跑
    if (r1.affectedRows) {
      output.success = true;
    }
    res.json(output);
  }).put(async(req,res)=>{
    const output = {
      success: false,
      error: ""
    };
  // put 是修改
  // 以下是修改資料ㄉ部分 /////////////////////////////////////////////////////////////////////

    // const fields = [
    //   'product_name', 'product_type', 'product_img', 'product_price', 'product_unit','product_details', 'product_expire', 'product_inventory', 'product_supplier','product_status', 'product_hashtag'
    // ]

    //跟上面一樣
    const fields = [
      'name', 'type', 'photo', 'price', 'unit','details', 'expire', 'inventory', 'supplier','status', 'hashtag','time'
    ]

    // if (fields.some(k => !req.body[k]))  {
    //   output.error = "參數不足";
    //   return res.json(output);
    // }

    const sql2 = `SELECT COUNT(1) num FROM product WHERE sid=?`;
    const [[{ num }]] = await db.query(sql2, [req.body.sid]);
    console.log(num)
    if (num <= 0) {
      output.error = "沒有此項商品";
      return res.json(output);
    }
    // `member_id`, `comment`, `rating`, `likes`, `created_at`, `product_sid`
    const sql = "UPDATE `product` SET `product_name`=?,`product_type`=?,`product_img`=?,`product_price`=?,`product_unit`=?,`product_details`=?,`product_expire`=?,`product_inventory`=?,`product_supplier`=?,`product_status`=?,`product_hashtag`=?,`sale_time`=? WHERE sid=?"

    const values = fields.map((v,i)=> {
      const val = req.body[v]
      if (v === "photo" || v === "hashtag") {
        return JSON.stringify(val)
      }
     return val
    })

    const [r1] = await db.query(sql, [
     ...values,
     req.body.sid
    ]);
    output.r1 = r1;

    if (r1.affectedRows && r1.changedRows) {
      output.success = true;
    }

    res.json(output);

  }).delete(async(req,res)=>{
    let output = {
      code: 0,
      error: "",
      rows: []
    };

    // 以下刪除資料

    const sql = "DELETE FROM comment WHERE sid=? ";
    const [r1] =  await db.query(sql, [req.body.comment_sid]);
    output.r1 =r1

    if (r1.affectedRows) {
      output.code = 200;
      output.success = true;
    }
    res.json(output);
  });


module.exports = router;

//   //TODO: search 沒有東西
