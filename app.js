const express=require('express');
//创建web服务器
let app=express();
//导入路由器
const indexRouter=require('./router/index.js');
//引入中间件
const bodyParser=require('body-parser');
app.listen(8080);
//托管静态文件夹
app.use(express.static('public'));

app.use(bodyParser.urlencoded({
    extended:false
 })); 
app.use('/kbly',indexRouter);
