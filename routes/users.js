const router = require('express').Router();
const usersController = require('../controllers/usersController');

router.get('/', usersController.getAll);
router.get('/:id', usersController.getOne);
router.post('/', usersController.handlePost);

module.exports = router