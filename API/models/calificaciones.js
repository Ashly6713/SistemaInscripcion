const coneccion = require("../database");

module.exports = {
    listado: (datos, callBack) =>  {
        coneccion.query(
        `SELECT DISTINCT
        c.id_calificacion,
        p.semestre,
        p.anio,
        m.nombre_materia AS materia,
        e.nombre_completo AS estudiante,
        c.calificacion
    FROM
        Calificaciones c
        INNER JOIN Postulaciones p ON c.id_estudiante = p.id_estudiante AND c.id_materia = p.id_materia
        INNER JOIN Materias m ON c.id_materia = m.id_materia
        INNER JOIN Estudiantes e ON c.id_estudiante = e.id_estudiante
    WHERE
        p.id_estudiante = ? 
        AND p.semestre = ?
        AND p.anio = ?;
    `,
        [datos.id_estudiante, datos.semestre, datos.anio],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },
};