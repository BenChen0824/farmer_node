const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const router = express.Router();

router.post("/addpoints", async (req, res) => {
    const sql =
    'UPDATE `coupon_01` SET `change_points`=? WHERE change_memberid=?';
    const{change_points, change_memberid} = req.body
    //比對會員ID
    const [result] = await db.query(sql, [change_points, change_memberid]);
    console.log(result)
    res.json(result);
});

router.post("/coupon", async (req, res) => {
    // const sql =
    // 'UPDATE `coupon_01` SET `change_coupon`=? WHERE change_memberid=?';
    const sql2 = 'UPDATE `coupon_01` SET `change_coupon`=? WHERE change_memberid=?';
    const{change_points, change_memberid, change_coupon} = req.body
    //比對會員ID
    const [result2] = await db.query(sql2, [change_coupon, change_memberid]);
    console.log(result2)
    res.json(result2);
});


// // app.listen(process.env.PORT, () => {
// //     console.log(`points started: ${process.env.PORT}`);
// //     console.log({ NODE_ENV: process.env.NODE_ENV });
// // });

module.exports = router;