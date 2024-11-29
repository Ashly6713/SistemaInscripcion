const musuario = require('../models/articulos');
const jwt = require('jsonwebtoken');


module.exports = {
    listado: (req,res)=>{
        musuario.listado((err, results) => {
            if (err) {
                console.log(err);
                return;
            }
            console.log(results);
            return res.json({
                success: 1,
                data: results
            });
        });
    },

    agrega: (req,res)=>{
        const body = req.body;
        musuario.agregar(body, (err, results) => {
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
    
    borrar: (req, res) => {
        const body = req.body;
        musuario.borrar(body, (err, results) => {
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
    actualizar: (req, res) => {
        const body = req.body;
        musuario.actualiza(body, (err, results) => {
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
