const userRoutes = require('./users');

module.exports = (app) => {
    app.use('/users', userRoutes)
}