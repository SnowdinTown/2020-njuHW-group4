const Koa = require('koa');
const app = new Koa();
const bodyParser = require('koa-bodyparser');


// 解析请求体
app.use(bodyParser());


app.use(async (ctx, next) =>{
    console.log(`Process ${ctx.request.method}${ctx.request.url}...`);
    await next();
});


// 引入路由分发
const router = require('./router');
app.use(router.routes());

// 启动程序，监听端口
app.listen(3000);
console.log('app start st port 3000');
