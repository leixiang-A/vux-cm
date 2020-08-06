'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const {
    router,
    controller
  } = app;

	router.post('/car', controller.car.getCar); // 1、购物车
	router.post('/my', controller.my.getMy); //2、个人中心
	router.post('/mychgusern', controller.mychgkey.myChgUser); //3、个人中心改用户名
	router.post('/mychgkey', controller.mychgkey.myChgKey); //4、个人中心改密码
	router.post('/mychgimg', controller.mychgkey.myChgImg); //4、个人中心改密码
	router.post('/addorder', controller.mychgkey.addorder); //6、增加订单表
	router.post('/getcar', controller.mychgkey.getcar) //7、查购物车
	router.post('/deleteCar', controller.mychgkey.deleteCar) //8、删除购物车

	router.get('/addDetail', controller.detail.addDetail); //1、添加详情
	router.post('/tocar', controller.tocar.tocar); //2、添加到购物车
	router.post('/detailpl', controller.detail.detailpl); //3、添加评论
	router.post('/uploadImg', controller.detail.uploadImg); //4、上传图片到服务器并保存
	router.post('/showpl',controller.detail.showpl)//5、展示详情


	//管理员登录 ruleForm: {pass: "",checkPass: "", name: ""}
	router.post('/administratorLogin', controller.administrator.administratorLogin);
	//管理员得到所有书籍 - 按条目数
	router.get('/allbooks', controller.administrator.allbooks);
	//管理员添加书籍
	router.post('/addbooks', controller.administrator.addbooks);
	//无条件得到所有商品
	router.get('/getallbooks', controller.administrator.getallbooks);
	//管理员修改书籍信息
	router.post('/changebooks', controller.administrator.changebooks);
	//管理员删除图书表
	router.get('/delbooks', controller.administrator.delbooks);
	//管理员搜索图书
	router.get('/searchbooks', controller.administrator.searchbooks);
	//管理员得到用户信息（黑名单）
	router.get('/getallusers', controller.administrator.getallusers);
	//管理员修改用户信息（黑名单）
	router.post('/changeusers', controller.administrator.changeusers);
	//管理员得到所有用户表 - 按条目数
	router.get('/allusers', controller.administrator.allusers);


	router.post('/search', controller.user.search); //查看是否有该用户
	router.post('/login', controller.user.login);
	router.post('/register', controller.user.register);
	router.post('/order', controller.order.order); //订单结算界面


};