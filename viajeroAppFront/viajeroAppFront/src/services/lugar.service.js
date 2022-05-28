const sequelize = require("../../dataService");
const { lugarModel } = require("../models/lugares.model")
const create = (lugar) => {
    return lugarModel.create(lugar);
}

const getFilter = async(q, l = 100, p = 0) => {
    let result = await sequelize.query(
        `SELECT * FROM 
        "lugar" 
        WHERE 
       CONCAT(UPPER("Descripcion"),' ',UPPER("Observacion"),' ',UPPER("Referencia")) 
        LIKE :q
        ORDER BY "Id"
        LIMIT :l OFFSET :p;
        `, {
            replacements: {
                q: (q ? '%' + q.toUpperCase() + '%' : '%'),
                l: l,
                p: p
            }
        });
    result = (result && result[0]) ? result[0] : [];
    return result;
}

const getById = async(id) => {
    let result = await lugarModel.findByPk(id);
    return result;

}

const update = async(lugar) => {
    const count = await lugarModel.update(
        lugar, {
            where: {
                Id: lugar.Id
            }
        });
    if (count > 0) {
        const lugarResult = await lugarModel.findByPk(lugar.Id)
        return lugarResult.getDataValue;
    }
    return null;
}

const remove = async(Id) => {
    const count = await lugarModel.destroy({
        where: {
            Id: Id
        },
    });
    return (count > 0)
}

const get = async() => {
    console.log("Hoasadad")
    let result = await sequelize.query(
        `SELECT * FROM 
        "lugar";
        `, {
            replacements: {

            }
        });
    result = (result && result[0]) ? result[0] : [];
    return result;
}
module.exports = { update, remove, getFilter, getById, create, get };