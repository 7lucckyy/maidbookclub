const express = require('express')
const router = express.Router();

const userController = require('../controllers/usersControllers')

router.get('/', userController.view)
router.post('/', userController.find)
router.get('/adduser', userController.form)
router.post('/adduser', userController.create)
router.get('/about', userController.about)
router.get('/contact', userController.contact)
router.get('/page', userController.page)
router.get('/book', userController.book)
router.get('/biography', userController.biography)
router.get('/activity', userController.activity)
router.get('/mentor', userController.mentor)
router.post('/mentor', userController.crmentor)
module.exports= router