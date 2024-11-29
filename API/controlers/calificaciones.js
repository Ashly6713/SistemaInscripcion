const musuario = require('../models/calificaciones');
const jwt = require('jsonwebtoken');


module.exports = {
    listado: (req,res)=>{
        const body = req.body;
        musuario.listado(body, (err, results) => {
        if (err) {
        console.log(err);
        return res.status(500).json({
        success: 0,
        message: "Error en la Base de Datos"
        });
        }
        return res.status(200).json({
        success: 1,
        data: results
        });
        });
        },
    };