require('dotenv').config();

const express = require('express');
const db = require(__dirname + '/../modules/mysql-connect');
const bcrypt = require('bcryptjs');
const todateString = require(__dirname + '/../modules/date_format');
const upload = require(__dirname + '/../modules/upload_img');
const jwt = require('jsonwebtoken');
const router = express.Router();

const getUserCart = async (member_id) => {
    const sql = `SELECT p.*, odt.* 
FROM order_details_tobuy odt 
JOIN product p 
ON odt.product_id=p.sid 
WHERE odt.member_id=? && odt.cart_product_type=1
ORDER BY odt.created_time`;

    const sqlcus = `SELECT cusp.*, odt.* 
FROM order_details_tobuy odt 
JOIN customized_lunch cusp 
ON odt.customized_id=cusp.sid 
WHERE odt.member_id=? && odt.cart_product_type=2
ORDER BY odt.created_time`;

    const [r] = await db.query(sql, [member_id]);
    console.log(r);
    const [r2] = await db.query(sqlcus, [member_id]);
    console.log(r2);
    return [...r, ...r2];
};

router.route('/login').post(async (req, res) => {
    const output = {
        success: false,
        error: '',
        code: 0,
    };

    const sql04 = 'SELECT * FROM customer_data WHERE email=?';
    const [r1] = await db.query(sql04, [req.body.email]);

    if (!r1.length) {
        output.code = 401;
        output.error = '帳號錯誤';
        return res.json(output);
    }

    output.success = await bcrypt.compare(req.body.password, r1[0].password);
    console.log(r1[0].password);
    if (!output.success) {
        output.code = 402;
        output.error = '密碼錯誤';
    } else {
        const token = jwt.sign(
            {
                customer_id: r1[0].customer_id,
                email: r1[0].email,
                username: r1[0].name,
            },
            process.env.JWT_SECRET
        );

        output.data = {
            token,
            customer_id: r1[0].customer_id,
            username: r1[0].name,
            email: r1[0].email,
            mobile: r1[0].mobile,
            birthday: r1[0].birthday,
            password: r1[0].password,
            address: r1[0].address,
        };
        output.cart = await getUserCart(r1[0].customer_id);
    }

    res.json(await output);
});

router.post('/signup', async (req, res) => {
    const output = {
        success: false,
        error: '',
        code: 0,
    };

    const sql01 =
        'INSERT INTO `customer_data`(`name`, `email`, `password`, `creat_at`) VALUES (?,?,?,NOW())';
    const { username, email, password } = req.body;
    const pass_hash = bcrypt.hashSync(`${password}`, 10);
    const [result] = await db.query(sql01, [username, email, pass_hash]);

    if (result.affectedRows === 1) {
        output.success = true;
    }

    res.json(output);
});

router.get('/data', async (req, res) => {
    const sql02 = 'SELECT * FROM customer_data WHERE customer_id=?';
    const [r2] = await db.query(sql02, req.header('loginUser'));
    r2.forEach((el) => (el.birthday = todateString(el.birthday)));
    res.json(r2);
});

router.put('/data', async (req, res) => {
    const output = {
        success: false,
        error: '',
        code: 0,
    };

    const sql03 =
        'UPDATE customer_data SET name=?, mobile=?, email=?, birthday=?, address=?, account=?,password=? WHERE customer_data.customer_id=?';

    const {
        name,
        mobile,
        email,
        birthday,
        address,
        account,
        password,
        customer_id,
    } = req.body;
    const pass_hash = bcrypt.hashSync(`${password}`, 10);
    const [result] = await db.query(sql03, [
        name,
        mobile,
        email,
        birthday,
        address,
        account,
        pass_hash,
        customer_id,
    ]);

    if (result.affectedRows === 1) {
        output.success = true;
    }

    res.json(output);
});

router.get('/collections', async (req, res) => {
    const sql04 = `SELECT pcol.*, pro.* 
    FROM product_collect pcol
    JOIN product pro
    JOIN product_type ptyp
    ON ptyp.product_type_sid=pro.product_type
    WHERE pcol.product_id=pro.sid && pcol.member_id=?
    ORDER BY pcol.product_id`;

    const [r4] = await db.query(sql04, req.header('loginUser'));
    res.json(r4);
});

router.delete('/deleteproduct', async (req, res) => {
    const sql06 =
        'DELETE FROM product_collect WHERE member_id=? AND product_id=?';
    const [r6] = await db.query(sql06, [
        req.header('member_id'),
        req.header('product_id'),
    ]);
    res.json(r6);
});

router.post('/profile', upload.single('file'), async (req, res) => {
    const customer_id = req.header('customer_id')
    const sql11 = 'UPDATE customer_data SET profile_img=? WHERE customer_data.customer_id=?'
    const data = await res.json(req.body);
    const [r11] = await db.query(sql11, [data.req.file.originalname, customer_id])
    console.log(r11)
});

router.get('/getintro', async (req,res)=>{
    const sql10 = "SELECT nickname, intro, profile_img FROM customer_data WHERE customer_id=?";
    const [r10] = await db.query(sql10, req.header('loginUser'));
    res.json(r10);
})

router.post('/editintro', async(req,res)=>{
  const output = {
    success: false,
    error: '',
    code:0
  }

  const {nickname, intro, customer_id} = req.body

  const sql09 = 'UPDATE customer_data SET nickname=?, intro=? WHERE customer_data.customer_id=?'
  const [r9] = await db.query(sql09, [nickname, intro, customer_id])

  if(r9.affectedRows === 1){
    output.success = true
  }

  res.json([r9])
})

router.get('/orders', async(req,res)=>{
    const sql12 = `SELECT odt.*, odl.*, pro.* 
    FROM order_details odt 
    JOIN orderlist odl
    JOIN product pro
    ON odt.product_id=pro.sid
    WHERE odt.order_no=odl.order_no && odl.customer_id=? && odt.order_type=1
    ORDER BY odt.created_time DESC`;

    const sql13 = `SELECT odt.*, odl.*, cust.* 
    FROM order_details odt
    JOIN orderlist odl 
    JOIN customized_lunch cust
    ON odt.customized_id=cust.sid
    WHERE odt.order_no=odl.order_no && cust.member_id=? && odt.order_type=2
    ORDER BY odt.created_time DESC`;

    const [r12] = await db.query(sql12, req.header('loginUser'))
    const [r13] = await db.query(sql13, req.header('loginUser'))
    res.json([...r12, ...r13])
})

router.get('/orderlist', async(req,res)=>{
    const sql13 = `SELECT * FROM orderlist WHERE customer_id=? ORDER BY created_time DESC`;
    const [r13] = await db.query(sql13, req.header('loginUser'))
    r13.forEach(el=> el.created_time = todateString(el.created_time));
    res.json(r13)
})

module.exports = router;
