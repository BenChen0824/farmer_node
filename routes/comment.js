const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const router = express.Router();


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
 res.json(r1)
});


router.post("/likes", async (req, res) => {
  const sql =
  "INSERT INTO `comment`(`account`, `nickname`,`comment`, `avatar	`, `rating`, `likes`, `created_at`) VALUES (?, ?, ?, ?, ?, ?, NOW())";
  const {} = req.body
  const [result] = await db.query(sql, [`account`, `nickname`,`comment`, `avatar	`, `rating`, `likes`, `created_at`]);
  console.log(result);
  res.json
});


// const sql02 = `SELECT * FROM comment ${where} ORDER BY sid DESC LIMIT ${(page-1)*output.perPage}, ${output.perPage}`;
// const [r2] = await db.query(sql02);
// r2.forEach(el=> el.birthday = toDateString(el.birthday) );
// output.rows = r2;
// }






module.exports = router;