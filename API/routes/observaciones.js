const express=require('express');
const router=express.Router();
const cusuarios =require("../controlers/observaciones");
const auth = require('../auth');

router.post('/listado',  cusuarios.listado);


module.exports = router;