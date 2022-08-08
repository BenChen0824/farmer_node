const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const router = express.Router();

//需要的資料
//{"point":100,"customer_id":530}
//更改point
// fetch "http://localhost:3600/game/addpoints"
router.post('/addpoints', async (req, res) => {
    const sql = 'UPDATE `customer_data` SET `point`=? WHERE `customer_id`=?';

    const [r] = await db.query(sql, [req.body.point, req.body.customer_id]);

    res.json('success');
});

//需要的資料
//{"customer_id":530,"change_coupon":"低級折價券","change_spendpoints":50}
// fetch "http://localhost:3600/game/coupon"
router.post('/coupon', async (req, res) => {
    const sql2 =
        'INSERT INTO `coupon_01`(`change_img`, `change_memberid`, `change_coupon`, `change_spendpoints`, `coupon_isused`, `change_time`) VALUES (?,?,?,?,?,NOW())';

    const [result2] = await db.query(sql2, [
        req.body.change_img,
        req.body.change_memberid,
        req.body.change_coupon,
        req.body.change_spendpoints,
        0,
    ]);

    res.json(result2);
});

//拿兌換紀錄資料
router.get('/coupon', async (req, res) => {
    console.log(req.header('change_memberid'));
    const sql1 = 'SELECT * FROM `coupon_01` WHERE change_memberid=?';
    const [r1] = await db.query(sql1, req.header('change_memberid'));
    res.json(r1);
});

// // app.listen(process.env.PORT, () => {
// //     console.log(`points started: ${process.env.PORT}`);
// //     console.log({ NODE_ENV: process.env.NODE_ENV });
// // });

module.exports = router;
