const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const router = express.Router();

const getUserCart = async (member_id) => {
    const sql = `SELECT p.*, odt.* 
  FROM order_details_tobuy odt 
  JOIN product p 
  ON odt.product_id=p.sid 
  WHERE member_id=? && odt.cart_product_type=1
  ORDER BY odt.created_time`;

    const sqlcus = `SELECT cusp.*, odt.* 
  FROM order_details_tobuy odt 
  JOIN customized_lunch cusp 
  ON odt.customized_id=cusp.sid 
  WHERE member_id=? && odt.cart_product_type=2
  ORDER BY odt.created_time`;

    const [r] = await db.query(sql, [member_id]);
    // console.log(r);
    const [r2] = await db.query(sqlcus, [member_id]);
    // console.log(r2);
    return [...r, ...r2];
};

router.post('/', async (req, res) => {
    const output = {
        success: false,
        error: '',
    };
    if (!req.body.product_id || !req.body.member_id) {
        output.error = '參數不足';
        return res.json(output);
    }
    const sql = `SELECT * FROM products WHERE sid=?`;
    const [r1] = await db.query(sql, [req.body.product_id]);
    if (!r1.length) {
        output.error = '沒有這個商品';
        return res.json(output);
    }
    if (+req.body.quantity < 1) {
        output.error = '請確認數量並重新加入購物車';
        return res.json(output);
    }

    // 判斷該商品是否已經加入購物車 有加入不該為新增 而是使用UPDATE
    const sql3 = `SELECT COUNT(1) num FROM order_details_tobuy WHERE product_id=? AND member_id=?`;
    const [[{ num }]] = await db.query(sql3, [
        req.body.product_id,
        req.body.member_id,
    ]);
    if (num > 0) {
        output.error = '購物車內已經有這項商品';
        return res.json(output);
    }

    const sql2 =
        'INSERT INTO `order_details_tobuy`(`member_id`, `product_id`, `product_type`, `product_count`, `created_time`) VALUES (?,?,?,?,NOW())';

    const [r2] = await db.query(sql2, [
        req.body.member_id,
        req.body.product_id,
        req.body.product_type,
        req.body.product_count,
    ]);

    // console.log(r2.affectedRows);
    if (r2.affectedRows) {
        output.success = true;
    }

    output.cart = await getUserCart(req.body.member_id);
    res.json(output);
    //sid qty
});

router.get('/', async (req, res) => {
    res.json(await getUserCart(1));
});

//U
router.put('/changenum', async (req, res) => {
    // body:sid, product_count
    console.log(req.body);
    const output = {
        success: false,
        error: '',
    };
    if (!req.body.sid || !req.body.product_count) {
        output.error = '參數不足';
        return res.json(output);
    }

    if (+req.body.product_count < 1) {
        output.error = '數量不能小於 1';
        return res.json(output);
    }

    // 判斷該商品是否已經加入購物車
    const sql3 = `SELECT COUNT(1) num FROM order_details_tobuy WHERE sid=?`;
    const [[{ num }]] = await db.query(sql3, [req.body.sid]);
    if (num <= 0) {
        output.error = '購物車內沒有這項商品';
        return res.json(output);
    }

    const sql2 =
        'UPDATE `order_details_tobuy` SET `product_count`=? WHERE sid=?';
    const [r2] = await db.query(sql2, [req.body.product_count, req.body.sid]);
    output.r2 = r2;

    if (r2.affectedRows && r2.changedRows) {
        output.success = true;
    }

    output.cart = await getUserCart(1);
    res.json(output);
    //sid qty
});

router.put('/readytobuy', async (req, res) => {
    // body:sid,check
    console.log(req.body);
    const output = {
        success: false,
        error: '',
    };
    if (!req.body.sid) {
        output.error = '參數不足';
        return res.json(output);
    }

    // 判斷該商品是否已經加入購物車
    const sql3 = `SELECT COUNT(1) num FROM order_details_tobuy WHERE sid=?`;
    const [[{ num }]] = await db.query(sql3, [req.body.sid]);
    if (num <= 0) {
        output.error = '購物車內沒有這項商品';
        return res.json(output);
    }

    const sql2 =
        'UPDATE `order_details_tobuy` SET `ready_to_buy`=? WHERE sid=?';
    const [r2] = await db.query(sql2, [req.body.check, req.body.sid]);
    output.r2 = r2;

    if (r2.affectedRows && r2.changedRows) {
        output.success = true;
    }

    output.cart = await getUserCart(1);
    res.json(output);
    //sid qty
});

//cart那邊刪除資料
router.delete('/delete', async (req, res) => {
    // sid
    const sql = 'DELETE FROM order_details_tobuy WHERE sid=?';
    await db.query(sql, [req.body.sid]);

    res.json(await getUserCart(1));
    //進入購物車後要結帳
    router.delete('/carttobuy', async (req, res) => {
        // sid
        const sql = 'DELETE FROM order_details_tobuy WHERE sid=?';
        await db.query(sql, [req.body.sid]);

        res.json(await getUserCart(1));
    });
});

router.route('/addtoorderlist').post(async (req, res) => {
    const output = {
        success: false,
        error: '',
    };
    console.log(JSON.parse(JSON.stringify(req.body.freshItems))[0].product_id);
    if (!req.body.member_id) {
        output.error = '參數不足';
        return res.json(output);
    }

    //req.body=={member_id:num,totalPrice:num,customerRemark:"...",freshItems:[...],customizedItems:[...]}

    const sqltotal =
        'INSERT INTO `orderlist`( `customer_id`, `order_status`, `product_amount_total`, `created_time`, `customer_remark`) VALUES (?,?,?,NOW(),?) ';

    const [rTotal] = await db.query(sqltotal, [
        req.body.member_id,
        '已完成付款',
        req.body.totalPrice,
        req.body.customerRemark,
    ]);
    // console.log(rTotal);
    const orderNo = rTotal.insertId;

    const sql2 =
        'INSERT INTO `order_details`(`order_no`, `product_id`, `customized_id`, `order_type`, `product_price`, `product_count`, `subtotal`, `created_time`) VALUES (?,?,?,?,?,?,?,NOW()) ';

    const [r2] = await db.query(sql2, [
        orderNo,
        req.body.freshItems[0].product_id,
        0,
        1,
        req.body.freshItems[0].product_price,
        req.body.freshItems[0].product_count,
        req.body.totalPrice,
    ]);

    const sql3 =
        'INSERT INTO `order_details`(`order_no`, `product_id`, `customized_id`, `order_type`, `product_price`, `product_count`, `subtotal`, `created_time`) VALUES (?,?,?,?,?,?,?,NOW()) ';

    const [r3] = await db.query(sql3, [
        orderNo,
        0,
        req.body.customizedItems[0].customized_id,
        2,
        req.body.customizedItems[0].total_price,
        req.body.customizedItems[0].product_count,
        req.body.totalPrice,
    ]);

    // console.log(r2.affectedRows);
    if (r2.affectedRows && r3.affectedRows) {
        output.success = true;
    }

    const sqlDEL = 'DELETE FROM order_details_tobuy WHERE sid=?';
    const [rDEL] = await db.query(sqlDEL, [258]);

    res.json(output);

    //sid qty
});

module.exports = router;
