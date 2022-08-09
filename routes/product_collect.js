const express = require('express');
const db = require('../modules/mysql-connect');
const helper = require('../utils/helper');

const router = express.Router();

// const getProductCollect = async (member_id) => {
//     const sql = `SELECT p.*, c.* FROM product_collect c JOIN product p ON c.product_id=p.sid WHERE c.member_id=${member_id} AND c.saved = 1`;

//     console.log(sql);

//     const [r] = await db.query(sql, [member_id]);
//     console.log(r);

//     return r;
// };

router.post('/', async (req, res) => {
    console.log('collect')
    // body: member_id, product_id, saved
    const output = {
        success: false,
        error: '',
    };

    if (!req.body.product_id || !req.body.member_id) {
        output.error = '參數不足';
        return res.json(output);
    }

    // const sql = `SELECT * FROM product_collect WHERE ${pSIDSql} AND ${userSql} AND saved = 1`;

    const value = {
        member_id: req.body.member_id,
        product_id: req.body.product_id,
        saved: req.body.saved,
    };

    const { sql, dataSet } = helper.getInsertUpdateWith(
        value,
        'product_collect'
    );

    console.log(sql)
    console.log(dataSet)

    const [results] = await db.query(sql, [dataSet]);
    console.log(results);

    output.success = true;
    return res.json(output);
});

module.exports = router;
