const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const router = express.Router();
// const moment = require('moment-timezone');

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


//按讚改變
router.post('/islikedchange', async (req,res)=>{


  const output = {
      success: false,
      error: '',
  };
  if(!req.body.customer_id || !req.body.comment_sid){
      output.error="缺少參數"
      res.json(output)
  }

  const sql3 = `SELECT * FROM comment_isliked WHERE customer_id=? && comment_sid=?`;
  const [ num ] = await db.query(sql3, [req.body.customer_id,req.body.comment_sid]);
  let data=[];
  if (num.length <= 0) {
    // console.log(num);
      const sqlInsert = "INSERT INTO `comment_isliked`(`comment_sid`, `customer_id`) VALUES (?,?)"
       data = await db.query(sqlInsert,[req.body.comment_sid,req.body.customer_id]);
  } 
  else
  {
    // console.log(num);
  const sqlChangeIsliked = "DELETE FROM `comment_isliked`  WHERE customer_id=? && comment_sid=?"
   data = await db.query(sqlChangeIsliked,[req.body.customer_id,req.body.comment_sid]);
  // console.log(data[0].isliked);
 }

 const sqlSearch = `SELECT COUNT(1) num FROM comment_isliked WHERE comment_sid=?`
 const [sqlSearchcount] = await db.query(sqlSearch,[req.body.comment_sid]);
 console.log(sqlSearchcount[0].num);


const changeCommentLikeSQL ="UPDATE `comment` SET `likes`=? WHERE comment_sid=?" 
const [totalData] = await db.query(changeCommentLikeSQL,[sqlSearchcount[0].num,req.body.comment_sid]);


 res.json(totalData)
})






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

  const [r] = await db.query(sql);
  res.json(r);

});


// 抓商品的SID 有的話，再去對應評論的留言
router.post('/getproductbyname', async (req, res) => {
  const sql = `SELECT c.*, p.* 
FROM comment c
JOIN product p
ON c.product_sid=p.sid
WHERE p.product_name LIKE ?
ORDER BY c.created_at DESC
`;
console.log(req.body);
const [r] = await db.query(sql, [req.body.product_name]);
res.json(r);

});




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



module.exports = router;