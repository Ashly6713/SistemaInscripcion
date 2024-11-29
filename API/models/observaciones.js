const coneccion = require("../database");

module.exports = {
    listado: (datos, callBack) =>  {
        coneccion.query(
        `SELECT DISTINCT
        o.id_observacion,
        e.nombre_completo AS estudiante,
        m.nombre_materia AS materia,
        o.observacion,
        o.fecha_publicacion,
        o.fecha_limite_subsanacion
    FROM
        Observaciones o
        INNER JOIN Postulaciones p ON o.id_estudiante = p.id_estudiante AND o.id_materia = p.id_materia
        INNER JOIN Materias m ON o.id_materia = m.id_materia
        INNER JOIN Estudiantes e ON o.id_estudiante = e.id_estudiante
    WHERE
        p.id_estudiante = ?
        AND p.semestre = ?
        AND p.anio = ?`,
        [datos.id_estudiante, datos.semestre, datos.anio],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },


    
}
