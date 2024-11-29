const coneccion = require("../database");

module.exports = {
    listado: (datos, callBack) =>  {
        coneccion.query(
        `SELECT p.id_postulacion, p.id_estudiante, c.id_convocatoria, c.nombre_convocatoria as convocatoria, m.id_materia, m.nombre_materia as materia, m.nombre_materia, p.semestre, p.anio, p.boleta_pago, p.carta_postulacion
        FROM Postulaciones p
        INNER JOIN (
            SELECT id_estudiante, MAX(id_convocatoria) AS ultima_convocatoria
            FROM Postulaciones
            WHERE id_estudiante = ?
            GROUP BY id_estudiante
        ) ultima_postulacion
        ON p.id_estudiante = ultima_postulacion.id_estudiante AND p.id_convocatoria = ultima_postulacion.ultima_convocatoria
        INNER JOIN Convocatorias c
        ON p.id_convocatoria = c.id_convocatoria
        INNER JOIN Materias m
        ON p.id_materia = m.id_materia
        WHERE p.semestre = IF(MONTH(NOW()) <= 6, 1, 2) 
        AND p.anio = YEAR(NOW()) 
        `,
        [datos.id_estudiante],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },
    convocatoria: callBack => {
        coneccion.query(
        `SELECT *
        FROM convocatorias
        WHERE fecha_inicio <= CURDATE() AND fecha_fin >= CURDATE()
        ORDER BY fecha_inicio DESC
        LIMIT 1`,
        [],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },
    materia: callBack => {
        coneccion.query(
        `SELECT m.*
        FROM materias m
        JOIN convocatorias_materias cm ON m.id_materia = cm.id_materia
        JOIN Convocatorias c ON cm.id_convocatoria = c.id_convocatoria
        WHERE c.fecha_inicio <= CURDATE() AND c.fecha_fin >= CURDATE()
        ORDER BY m.nombre_materia`,
        [],
        (error, results, fields) => {
            if (error) {
                callBack(error);
            }
            return callBack(null, results);
            }
        );
    },
    registrar :(datos, callBack) => {
        coneccion.query(
        `INSERT INTO Postulaciones (id_estudiante, id_convocatoria, id_materia, semestre, anio, boleta_pago, carta_postulacion)
        VALUES (?, ?, ?, ?, ?, ?, ?);`,
        [datos.id_estudiante, datos.id_convocatoria, datos.id_materia, datos.semestre, datos.anio, datos.boleta_pago, datos.carta_postulacion ],
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
            `delete from postulaciones where id_postulacion=?`,
            [datos.id_postulacion],
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
                  `UPDATE Postulaciones SET
                   id_estudiante = ?,
                   id_convocatoria = ?,
                   id_materia = ?,
                   semestre = ?,
                   anio = ?,
                   boleta_pago = ?,
                   carta_postulacion = ?
                   WHERE id_postulacion = ?`,
                  [
                    datos.id_estudiante,
                    datos.id_convocatoria,
                    datos.id_materia,
                    datos.semestre,
                    datos.anio,
                    datos.boleta_pago,
                    datos.carta_postulacion,
                    datos.id_postulacion
                  ],
                  (error, results, fields) => {
                    if (error) {
                      callBack(error);
                    }
                    return callBack(null, results);
                  }
                );
              }
              


    
}
