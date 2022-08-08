//設定
// require('dotenv').config();
// 1.引入 express
const express = require('express');
//SQL連線模組放進去
const db = require(__dirname + '/../modules/mysql-connect');
// const bcrypt = require('bcryptjs');
// const todateString = require(__dirname + '/../modules/date_format');
// const upload = require(__dirname + '/../modules/upload_img');
// const jwt = require('jsonwebtoken');
const router = express.Router();

//讀出
//company_id 寫在header
router.get('/' , async (req,res)=>{
    
    const sql = "SELECT * FROM `company_activity` WHERE company_id=?"
    const [data] = await db.query(sql,[req.header("company_id")]);
    // console.log(data)
    res.json(data)
})


//新增
router.post('/add', async (req, res) => {
    const output = {
        success: false,
        error: '',
    };
    if (!req.body.company_id ) {
        output.error = '參數不足';
        return res.json(output);
    }


    const sql2 =
        'INSERT INTO `company_activity`(`activity_img`, `company_id`, `activity_info`, `activity_schedule`, `activity_mon`, `activity_tue`, `activity_wen`, `activity_thu`, `activity_fri`, `activity_sat`, `activity_sun`, `created_at`) VALUES (?,?,?,?,?,?,?,?,?,?,?,NOW())';

    const [r2] = await db.query(sql2, [
        req.body.activity_img,
        req.body.company_id,
        req.body.activity_info,
        req.body.activity_schedule,
        req.body.activity_mon,
        req.body.activity_tue,
        req.body.activity_wen,
        req.body.activity_thu,
        req.body.activity_fri,
        req.body.activity_sat,
        req.body.activity_sun,
    ]);

    // console.log(r2.affectedRows);
    if (r2.affectedRows) {
        output.success = true;
    }

    output.activity = await r2;
    res.json(output);
    //sid qty
});













module.exports = router;