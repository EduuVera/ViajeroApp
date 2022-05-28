const controller = require('../controllers/lugar/lugares.controller')
module.exports = (app) => {
    app.get('/alquiler-filter/:q', controller.getFilter);
    app.get('/alquiler/getById/:Id', controller.getById);
    app.put('/alquiler/update', controller.update);
    app.post('/alquiler/add/:catId', controller.add);
    app.delete('/alquiler/remove/:Id', controller.remove);
    app.get('/alquiler/getall', controller.getAll);
}