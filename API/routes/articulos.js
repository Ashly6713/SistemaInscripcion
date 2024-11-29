const express=require('express');
const router=express.Router();
const cusuarios =require("../controlers/articulos");
const auth = require('../auth');

router.get('/listado', auth.verificatoken, cusuarios.listado);
router.post('/agrega',  cusuarios.agrega);
router.post('/borrar', cusuarios.borrar);
router.post('/actualizar',  cusuarios.actualizar);


module.exports = router;