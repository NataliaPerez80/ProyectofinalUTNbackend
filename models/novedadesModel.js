var pool = require('./bd');

async function getNovedades() {
    var query = "select * from novedades order by id DESC";
    var rows = await pool.query(query);
    return rows;
}//fin getNovedades (para traer el array de novedades)

async function insertNovedades (obj) {
try {
    var query = "insert into novedades set ?";
    var rows = await pool.query(query, [obj]);
    return rows;

} catch (error) {
    console.log (error);
    throw error;
}
}//fin insertNovedades (para agrear nueva novedad, para crear nueva novedad)

async function deleteNovedadesById(id) {
    var query = "delete from novedades where id = ? ";
    var rows = await pool.query(query, [id]);
    return rows;
}//fin deleteNovedades (para borar, click en eliminar novedad)


async function getNovedadesById(id) {
    var query = 'select * from novedades where id = ? ';
    var rows = await pool.query(query, [id]);
    return rows[0];
}//fin getNovedadesById (es para traer la novedad que quiero modificar, al hacer click en editar)

async function modificarNovedadesById (obj, id) {
    try {
        var querry = 'update novedades set ? where id=?';
        var rows = await pool.query(querry, [obj, id]);
        return rows;
    } catch (error) {
        throw error;
    }
}//fin de nodificar o update novedades al hacer click en guardar



module.exports = { getNovedades, insertNovedades, deleteNovedadesById, getNovedadesById, modificarNovedadesById }