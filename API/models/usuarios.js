const coneccion = require("../database");
const crypto =require('crypto');
function sha256(string) {
 return crypto.createHash('sha256').update(string).digest('hex');
}


module.exports = {
    listado: callBack => {
        coneccion.query(
        `select * from usuarios`,
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
        `insert into usuarios (usuario, contra, rol) values ( ? , ? , ?)`,
        [datos.usuario, datos.contra, datos.rol],
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
        `delete from usuarios where id=?`,
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
        `update usuarios set usuario= ?, contra =?, rol=? where id = ?`,
        [datos.usuario, datos.contra, datos.rol, datos.id],
        (error, results, fields) => {
        if (error) {
        callBack(error);
        }
        return callBack(null, results);
        }
        );
    },
    
    verifica: (datos, callBack) => {
        coneccion.query(
        `select * from usuarios where usuario= ? and contra=?`,
        [datos.usuario, sha256(datos.contra)],
        (error, results, fields) => {
        if (error) {
        callBack(error);
        }
        return callBack(null, results[0]);
        }
        );
        }      
       
}
