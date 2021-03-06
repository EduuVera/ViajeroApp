const { DataTypes } = require("sequelize");
const sequelize = require('../../dataService')
var lugarModel = sequelize.define("lugar", {
    Id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    Descripcion: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    Foto: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    Lon: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    Lat: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    Referencia: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    Precio: {
        type: DataTypes.NUMBER,
        allowNull: false
    },
    Observacion: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    telefono: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    categoriaId: {
        type: DataTypes.NUMBER,
        allowNull: false
    },

}, {
    tableName: "lugar",
    timestamps: false,
    createdAt: false,
    updatedAt: false,
    deletedAt: false
});
module.exports = { lugarModel }