const coneccion = require("../database");

module.exports = {
    listado: callBack => {
        coneccion.query(
        `select * from articulos`,
        [],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },

    agregar :(datos, callBack) => {
        coneccion.query(
        `insert into articulos (descripcion, precio) values ( ? , ? )`,
        [datos.descripcion, datos.precio, datos.rol],
        (error, results, fields) => {
        if (error) {
            return callBack(error);
        }
        return callBack(null, results);
        }
        );
        },

    borrar: (datos, callBack) => {
        coneccion.query(
        `delete from articulos where id=?`,
        [datos.id],
        (error, results, fields) => {
        if (error) {
        callBack(error);
        }
        return callBack(null, results);
        }
        );
        },

    actualiza: (datos, callBack) => {
        coneccion.query(
        `update articulos set descripcion= ?, precio =? where id = ?`,
        [datos.descripcion, datos.precio,  datos.id],
        (error, results, fields) => {
        if (error) {
        callBack(error);
        }
        return callBack(null, results);
        }
        );
    },
    
}
