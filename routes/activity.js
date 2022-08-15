const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const todateString = require(__dirname + '/../modules/date_format');  
const router = express.Router();

//讀出
//company_id 寫在header//取的不同廠商的活動資料
router.get('/' , async (req,res)=>{
    const sql = "SELECT * FROM `company_activitydata` WHERE company_id=?"
    const [data] = await db.query(sql,[req.header("company_id")]);
    data.forEach((el) => (el.created_at = todateString(el.created_at)));
    // console.log(data)
    res.json(data)
})

//取得活動一筆資料
router.get('/activitydata' , async (req,res)=>{
    const sql = "SELECT * FROM `company_activitydata` WHERE sid=?"
    const [data] = await db.query(sql,[req.header("sid")]);
    // data.forEach((el) => (el.created_at = todateString(el.created_at)));
    console.log(data)
    res.json(data)
})

router.get('/getdata' , async (req,res)=>{
    const sql = "SELECT * FROM `company_activitydata` WHERE 1"
    const [data] = await db.query(sql);
    data.forEach((el) => (el.created_at = todateString(el.created_at)));
    // console.log(data)
    res.json(data)
})
//確認收藏狀況
//如果有customer_id,activity_sid 且資料庫有回傳>1的資料 代表之前有收藏過 有收藏回傳1 沒收藏回傳0 
//如果資料庫回傳<1的資料 代表之前該帳號對該活動沒有收藏過 回傳0
router.get('/checkisliked', async (req,res)=>{
    
    const sql = "SELECT * FROM `activity_isliked` WHERE customer_id=? && activity_sid=?"
    const [data] = await db.query(sql,[req.header('customer_id'),req.header('activity_sid')]);
    if(data.length>=1){
        res.json(data[0].isliked)
    } else {
        res.json(0)
    }
    
})
router.post('/islikedchange', async (req,res)=>{
    const output = {
        success: false,
        error: '',
    };
    if(!req.body.customer_id || !req.body.activity_sid){
        output.error="缺少參數"
        res.json(output)
    }

    const sql3 = `SELECT COUNT(1) num FROM activity_isliked WHERE customer_id=? && activity_sid=?`;
    const [[{ num }]] = await db.query(sql3, [req.body.customer_id,req.body.activity_sid]);
    if (num <= 0) {
        const sqlInsert = "INSERT INTO `activity_isliked`(`activity_sid`, `customer_id`, `isliked`) VALUES (?,?,1)"
        const [data] = await db.query(sqlInsert,[req.body.activity_sid,req.body.customer_id]);
        res.json(data)
    } 
    else
    {
    const sqlChangeIsliked = "UPDATE `activity_isliked` SET `isliked`=? WHERE customer_id=? && activity_sid=?"
    const [data] = await db.query(sqlChangeIsliked,[req.body.isliked,req.body.customer_id,req.body.activity_sid]);
    // console.log(data[0].isliked);
    res.json(data)}
})
//新增
// router.post('/add', async (req, res) => {
//     const output = {
//         success: false,
//         error: '',
//     };
//     if (!req.body.company_id ) {
//         output.error = '參數不足';
//         return res.json(output);
//     }


//     const sql2 =
//         'INSERT INTO `company_activity`(`activity_img`, `company_id`, `activity_info`, `activity_schedule`, `activity_mon`, `activity_tue`, `activity_wen`, `activity_thu`, `activity_fri`, `activity_sat`, `activity_sun`, `created_at`) VALUES (?,?,?,?,?,?,?,?,?,?,?,NOW())';

//     const [r2] = await db.query(sql2, [
//         req.body.activity_img,
//         req.body.company_id,
//         req.body.activity_info,
//         req.body.activity_schedule,
//         req.body.activity_mon,
//         req.body.activity_tue,
//         req.body.activity_wen,
//         req.body.activity_thu,
//         req.body.activity_fri,
//         req.body.activity_sat,
//         req.body.activity_sun,
//     ]);

//     // console.log(r2.affectedRows);
//     if (r2.affectedRows) {
//         output.success = true;
//     }

//     output.activity = await r2;
//     res.json(output);
//     //sid qty
// });













module.exports = router;
