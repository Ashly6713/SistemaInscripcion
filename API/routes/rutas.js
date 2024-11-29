const express=require('express');
const router=express.Router();

router.get('/listado', (req,res) =>{
 res.status(200).send('LISTA usuarios');
});


module.exports = router;