const express = require("express");
const db = require(__dirname + "/../modules/mysql-connect");
const router = express.Router();
// const { toDateString, toDatetimeString } = require(__dirname +
//   "/../modules/date-tool");

// const corsOptions = {
//     credentials: true,
//     origin: (origin, cb)=>{
//         console.log({origin});
//         cb(null, true);
//     }
// };

router.route("/").get(async (req, res) => {
    const output = 'hello'
    res.json(output);
  });
// app.use(express.urlencoded({ extended: false }));
// app.use(express.json());




// app.use(cors(corsOptions));


// router.get("/", (req, res) => {
//     res.render('hello');

// });

router.post("/addpoints", async (req, res) => {
    const sql =
    "INSERT INTO `coupon_01`(`change_points`, `change_coupon`, `change_spainpoints`, `change_time`) VALUES (?, ?, ?, NOW())";

const {
    change_points,
    change_coupon,
    change_spainpoints,
} = req.body;
res.json(req.body);
return

const [result] = await db.query(sql, [
    'change_points',
    'change_coupon',
    'change_spainpoints',
]);
// Promise.all([result]).then(result=>{console.log('result', result)})
console.log(result)
// return
res.json(result);
    
});

// // app.listen(process.env.PORT, () => {
// //     console.log(`points started: ${process.env.PORT}`);
// //     console.log({ NODE_ENV: process.env.NODE_ENV });
// // });
module.exports = router;