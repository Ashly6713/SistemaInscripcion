const express = require('express');
const dotenv = require('dotenv').config()
const app=express();
const bodyParser = require("body-parser");
const cors = require("cors"); 

app.use(cors({origin:"*"}));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use('/usuarios', require('./routes/usuarios.js'));
app.use('/articulos', require('./routes/articulos.js'));

app.use('/observaciones', require('./routes/observaciones.js'));
app.use('/calificaciones', require('./routes/calificaciones.js'));

app.use('/postulaciones', require('./routes/postulaciones.js'));


app.listen(process.env.PORT, ()=>{
 console.log('ya funciono!!!! en el puerto:', process.env.PORT);

});


