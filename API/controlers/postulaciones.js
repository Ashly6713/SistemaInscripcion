const musuario = require('../models/postulaciones');
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
    convocatoria: (req,res)=>{
        musuario.convocatoria((err, results) => {
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
    materia: (req,res)=>{
        musuario.materia((err, results) => {
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
        registrar: (req,res)=>{
            const body = req.body;
            musuario.registrar(body, (err, results) => {
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