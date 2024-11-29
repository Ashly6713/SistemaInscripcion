const express=require('express');
const router=express.Router();
const cusuarios =require("../controlers/usuarios");
const auth = require('../auth');

router.get('/listado', auth.verificatoken, cusuarios.listado);
router.post('/agrega', auth.verificatoken, cusuarios.agrega);
router.delete('/borrar', auth.verificatoken, cusuarios.borrar);
router.put('/actualizar', auth.verificatoken, cusuarios.actualiza);
router.post('/login',cusuarios.login);

module.exports = router;