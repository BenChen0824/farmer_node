const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const router = express.Router();
const moment = require('moment-timezone');


// router.route("/").get(async (req, res) => {
//     const output = 'hello'
//     res.json(output);
//   });



// const getCommentProductSid = async (comment_sid) => {
//   const sql = `SELECT p.*, c.quantity 
//   FROM comment c 
//   JOIN product p 
//   ON c.product_sid=p.sid 
//   WHERE comment_sid=?
//   ORDER BY c.created_at` ;

//   const [r] = await db.query(sql, [comment_sid]);
//   return r;
// };




//抓全部資料.
router.get("/", async (req, res) => {
 const sql1= 'SELECT * FROM `comment` WHERE 1'
 const [r1] = await db.query(sql1);
 res.json(await r1)
});


router.post("/likes", async (req, res) => {
  const sql =
  "INSERT INTO `comment`(`account`, `nickname`,`comment`, `avatar	`, `rating`, `likes`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, NOW())";
  const {} = req.body
  const [result] = await db.query(sql, [`account`, `nickname`,`comment`, `avatar`, `rating`, `likes`, `created_at`]);
  console.log(result);
  res.json
});


// const sql02 = `SELECT * FROM comment ${where} ORDER BY sid DESC LIMIT ${(page-1)*output.perPage}, ${output.perPage}`;
// const [r2] = await db.query(sql02);
// r2.forEach(el=> el.birthday = toDateString(el.birthday) );
// output.rows = r2;
// }


// const getListHandler = async (req, res)=>{
//   let output = {
//       perPage: 10,
//       page: 1,
//       totalRows: 0,
//       totalPages: 0,
//       code: 0,  // 辨識狀態
//       error: '',
//       query: {},
//       rows: []
//   };
//   let page = +req.query.page || 1;

//   let search = req.query.search || '';
//   let beginDate = req.query.beginDate || '';
//   let endDate = req.query.endDate || '';
//   let where = ' WHERE 1 ';
//   if(search){
//       where += ` AND name LIKE ${ db.escape('%'+search+'%') } `;
//       output.query.search = search;
      
//   }
//   if(beginDate){
//       const mo = moment(beginDate);
//       if(mo.isValid()){
//           where += ` AND birthday >= '${mo.format('YYYY-MM-DD')}' `;
//           output.query.beginDate = mo.format('YYYY-MM-DD');
//       }
//   }
//   if(endDate){
//       const mo = moment(endDate);
//       if(mo.isValid()){
//           where += ` AND birthday <= '${mo.format('YYYY-MM-DD')}' `;
//           output.query.endDate = mo.format('YYYY-MM-DD');
//       }
//   }
//   output.showTest = where;

//   if(page<1) {
//       output.code = 410;
//       output.error = '頁碼太小';
//       return output;
//   }

//   const sql01 = `SELECT COUNT(1) totalRows FROM address_book ${where} `;
//   const [[{totalRows}]] = await db.query(sql01);
//   let totalPages = 0;
//   if(totalRows) {
//       totalPages = Math.ceil(totalRows/output.perPage);
//       if(page>totalPages){
//           output.totalPages = totalPages;
//           output.code = 420;
//           output.error = '頁碼太大';
//           return output;
//       }

//       const sql02 = `SELECT * FROM address_book ${where} ORDER BY sid DESC LIMIT ${(page-1)*output.perPage}, ${output.perPage}`;
//       const [r2] = await db.query(sql02);
//       r2.forEach(el=> el.birthday = toDateString(el.birthday) );
//       output.rows = r2;
//   }
//   output.code = 200;
//   output = {...output, page, totalRows, totalPages};

//   return output;
// };

// router.use((req, res, next)=>{
//   /*
//   if(! req.session.admin){
//       return res.redirect('/');
//   }
//   */
//   next();
// });





module.exports = router;