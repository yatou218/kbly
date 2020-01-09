const express=require('express');
const pool=require('../pool.js');
let router=express.Router();
//1.首页---get
router.get('/index',function(req,res){
	pool.query("SELECT * FROM index_img",function(err,result){
		if(err) throw err;
		if(result.length>0){
			console.log(result);
			res.send(result);
		}else{
			res.send({code:301,msg:"sorry"});
		}
	});
})
//2.关于我们
router.get('/about',function(req,res){
	console.log(req.query);
	pool.query("SELECT * FROM kbly_index",function(err,result){
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			res.send({code:301,msg:"sorry"});
		}
	});

});
//3.文化娱乐-----图片
router.get('/culture',function(req,res){
	pool.query("SELECT * FROM kbly_w",function(err,result){
		if(err) throw err;
	 	if(result.length>0){
			console.log(result);
	 		res.send(result);
	 	}else{
	 		res.send({code:301,msg:"sorry"});
	 	}
	});
});
//4.餐饮住宿------图片
router.get('/accommodation',function(req,res){
	pool.query("SELECT * FROM kbly_c",function(err,result){
		if(err) throw err;
		if(result.length>0){
			console.log(result);
			res.send(result);
		}else{
			res.send({code:301,msg:"sorry"});
		}
	});
});
//5.周边景点-----图片---get
router.get('/attractons',function(req,res){
	pool.query("SELECT * FROM kbly_z",function(err,result){
		if(err) throw err;
		if(result.length>0){
			console.log(result);
			res.send(result);
		}else{
			res.send({code:301,msg:"sorry"});
		}
	});
});
//7.旅游产品---get
router.get('/travel',function(req,res){
	pool.query("SELECT * FROM kbly_l",function(err,result){
		if(err) throw err;
		if(result.length>0){
			console.log(result);
			res.send(result);
		}else{
			res.send({code:301,msg:"sorry"});
		}
	});
});
//8.游客中心---get
router.get('visitor_center',function(req,res){

});
//9.酒店预订---客户预订信息上传----post
router.post('/hotels_view',function(req,res){
	console.log(req.body);
	var obj=req.body;
	var sql="INSERT INTO hotels_view SET ?";
	pool.query(sql,[obj],function(err,result){
		if(err)throw err;
		if(result.affectedRows>0){
			res.send({code:200,msg:"great"});
		}else{
			res.send({code:301,msg:"no"});
		}
	});
});

module.exports=router;
