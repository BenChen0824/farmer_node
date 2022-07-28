const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const router = express.Router();
const { toDateString, toDatetimeString } = require(__dirname +
  "/../modules/date-tool");

const getListHandler = async (req, res) => {
  let output = {
    perPage: 12,
    page: 1,
    totalRows: 0,
    totalPage: 0,
    code: 0,
    error: "",
    rows: []
  };

  let page = +req.query.page || 1;
  if (page < 1) {
    output.code = 410;
    output.error = "頁面太小";
    return output;
  }

  const typeVal = Number(req.query.type);
  const typeSql = typeVal ? `product_type = ${typeVal}` : "1";

  const hashTagVal = Number(req.query.hashTag);
  const hashTagSql = hashTagVal
    ? `product_hashtag LIKE '%${hashTagVal}%'`
    : "1";

  const searchVal = req.query.search;
  const searchSql = searchVal ? `product_name LIKE '%${searchVal}%'` : "1";

  const orderBy = req.query.orderBy === "price" ? "product_price" : "sid";
  const order = req.query.order === "ASC" ? "ASC" : "DESC"; // DESC || ASC
  const orderSql = `ORDER BY ${orderBy} ${order}`;

  const filterSql = `WHERE ${typeSql} AND ${searchSql} AND ${hashTagSql}`;

  // const sql01 = `SELECT COUNT(1) totalRows FROM product WHERE ${typeSql} LIKE `  ;
  const sql01 = `SELECT COUNT(1) totalRows FROM product ${filterSql}`;
  const [[{ totalRows }]] = await db.query(sql01);
  let totalPage = 0;
  if (totalRows) {
    totalPage = Math.ceil(totalRows / output.perPage);
    if (page > totalPage) {
      output.code = 420;
      output.error = "頁面太大";
      return output;
    }
  }
  const sql02 = `SELECT * FROM product ${filterSql} ${orderSql} LIMIT ${
    (page - 1) * output.perPage
  },${output.perPage}`;
  const [r2] = await db.query(sql02);
  output.rows = r2.map((el) => {
    return {
      ...el,
      product_img: JSON.parse(el.product_img),
      product_hashtag: JSON.parse(el.product_hashtag)
    };
  });

  output.code = 200;
  output = { ...output, page, totalRows, totalPage };

  return output;
};

router.route("/test").get(async (req, res) => {
  let output = {
    perPage: 12,
    page: 1,
    totalRows: 0,
    totalPage: 0,
    rows: []
  };

  let page = +req.query.page || 1;
  if (page < 1) {
    return res.redirect("?page=1");
  }

  const sql01 = `SELECT COUNT(1) totalRows FROM product `;
  const [[{ totalRows }]] = await db.query(sql01);
  let totalPage = 0;
  if (totalRows) {
    totalPage = Math.ceil(totalRows / output.perPage);
    if (page > totalPage) {
      return res.redirect(`?page=${totalPage}`);
    }
  }
  const sql02 = `SELECT * FROM product ORDER BY sid DESC LIMIT ${
    (page - 1) * output.perPage
  },${output.perPage}`;
  const [r2] = await db.query(sql02);
  output.rows = r2.map((el) => {
    return {
      ...el,
      product_img: JSON.parse(el.product_img),
      product_hashtag: JSON.parse(el.product_hashtag)
    };
  });

  output = { ...output, page, totalRows, totalPage };

  res.json(output);
});
// .post((req,res)=>{

// })
router.route("/").get(async (req, res) => {
  const output = await getListHandler(req, res);
  res.json(output);
});

router.route("/hot_sale").get(async (req, res) => {
  let output = {
    code: 0,
    error: "",
    rows: []
  };

  const sql = `SELECT * FROM product WHERE hot_sale = 1 LIMIT 10`;
  const [rows,fields] = await db.query(sql);

  output.rows = rows.map((el) => {
    return {
      ...el,
      product_img: JSON.parse(el.product_img),
     product_hashtag: JSON.parse(el.product_hashtag)
    };
  });

  output.code = 200;

  res.json(output);
});

module.exports = router;

//TODO: search 沒有東西
