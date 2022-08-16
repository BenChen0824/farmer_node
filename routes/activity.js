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
