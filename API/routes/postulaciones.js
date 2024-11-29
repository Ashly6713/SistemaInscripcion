const express=require('express');
const router=express.Router();
const cusuarios =require("../controlers/postulaciones");
const auth = require('../auth');

router.post('/listado', auth.verificatoken, cusuarios.listado);
router.get('/convocatoria', auth.verificatoken, cusuarios.convocatoria);
router.get('/materia',  auth.verificatoken, cusuarios.materia);
router.post('/registrar',  auth.verificatoken, cusuarios.registrar);

router.post('/borrar', auth.verificatoken, cusuarios.borrar);
router.post('/actualizar',  cusuarios.actualizar);


module.exports = router;