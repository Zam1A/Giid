// mongodb+srv://Yuchen:123123123@cluster0.qkf2u7m.mongodb.net/Testing
//npm install express
//npm install mongoose
//npm install cors

const express = require('express')
const bodyParser = require("body-parser");
const axios = require('axios');
var path = require('path');
var ejs = require('ejs');
var LocalStorage = require('node-localstorage').LocalStorage,
    localStorage = new LocalStorage('./scratch');
axios.defaults.headers.common['api-key'] = "Xj4nBbkH046B93XzWjXCPpRZqty1Tc7nHRd57P9rQxc7n3qLbNwz9HMt4lIxZWLp";
axios.defaults.baseURL = "https://data.mongodb-api.com/app/data-mgudc/endpoint/data/v1";
axios.defaults.timeout = 60 * 1000;
// const mongoose = require("mongoose");
// const schema = mongoose.Schema;
//
// const dns = "mongodb+srv://Yuchen:123123123@cluster0.qkf2u7m.mongodb.net/Testing";
//
// mongoose.connect(dns);
// mongoose.connection.once("open", () => console.log("数据库连接成功~~~"));
// mongoose.connection.once("close", () => console.log("数据库连接已经断开~~~"));

// const T1 = mongoose.model("T1", new schema({
//     _id: String, content: String,
// }));

const app = express()
app.use(bodyParser.json());

app.engine('.html', require('ejs').__express);
app.set('views', __dirname + '/public');
app.set('view engine', 'html');

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/public/index.html');
});


/*app.all("*", function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "content-type");
    res.header("Access-Control-Allow-Methods", "DELETE,PUT,POST,GET,OPTIONS");
    // res.header("Content-Type", "application/json;charset=utf-8");
    if (req.method.toLowerCase() === 'options') res.send(200); else next();
});*/

// 设置跨域和相应数据格式
app.all('*', function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*')
    res.header('Access-Control-Allow-Headers', 'X-Requested-With, mytoken')
    res.header('Access-Control-Allow-Headers', 'X-Requested-With, Authorization')
    res.setHeader('Content-Type', 'application/json;charset=utf-8')
    res.header('Access-Control-Allow-Headers', 'Content-Type,Content-Length, Authorization, Accept,X-Requested-With')
    res.header('Access-Control-Allow-Methods', 'PUT,POST,GET,DELETE,OPTIONS')
    res.header('X-Powered-By', ' 3.2.1')
    if (req.method.toLowerCase() === 'options') res.sendStatus(200); else next();
})


app.post('/api/insertOne', async function (req, res) {
    const response = await axios.request({
        method: 'POST',
        url: '/action/insertOne',
        data: {
            dataSource: 'Cluster0',
            database: 'Giid',
            collection: 'guide_index',
            document: req.body,
        }
    });
    res.send(response.data);
});

app.post('/api/deleteOne', async function (req, res) {
    const response = await axios.request({
        method: 'POST',
        url: '/action/deleteOne',
        data: {
            dataSource: 'Cluster0',
            database: 'Giid',
            collection: 'guide_index',
            filter: req.body,
        }
    });
    res.send(response.data);
});

app.post('/api/findOne', async function (req, res) {
    const response = await axios.request({
        method: 'POST',
        url: '/action/findOne',
        data: {
            dataSource: 'Cluster0',
            database: 'Giid',
            collection: 'guide_index',
            sort:{"guide_id":-1},
            filter: req.body,
        }
    });
    res.send(response.data);
});
app.get('/api/getTSOne', async function (req, res) {
    // level=push01  push02 push03
    var level=req.query.level;
    console.log("level>>>"+level);
    var uPush =localStorage.getItem("uPush");
    console.log("uPush>>>"+uPush);
    let contentKey=level+"#content";
    let idKey=level+"#id";
    var id =localStorage.getItem(idKey);
    console.log("id>>>"+id);
    try{
        if(uPush&&id&&uPush.includes(id)){
            console.log("no push>>>"+id);
            res.send({code:0,object:""});
        }else{
            var content =localStorage.getItem(contentKey);
            if(content){
                res.send({code:0,object:content});
            }else{
                res.send({code:0,object:""});
            }

        }
    }catch (e) {
        res.send({code:-1,object:""});
    }


});


app.get('/api/getLocalStorageItem', async function (req, res) {
        console.log(" req.body,>>>"+req.body.key);
    var content =localStorage.getItem(req.body.key);
    res.send({code:0,object:content});

});
app.post('/api/setLocalStorageItem', async function (req, res) {
    localStorage.setItem(req.body.key, req.body.value);
    res.send({code:0,object:""});

});

app.post('/api/find', async function (req, res) {
    const response = await axios.request({
        method: 'POST',
        url: '/action/find',
        data: {
            dataSource: 'Cluster0',
            database: 'Giid',
            collection: 'guide_index',
            sort: { "level": 1,"guide_id": 1, "push_time":1},
            filter: req.body,
        }
    });
    res.send(response.data);
});


app.post('/api/updateOne', async function (req, res) {
    const response = await axios.request({
        method: 'POST',
        url: '/action/updateOne',
        data: {
            dataSource: 'Cluster0',
            database: 'Giid',
            collection: 'guide_index',
            filter: req.body.filter,
            update: req.body.update
        }
    });
    res.send(response.data);
});


app.listen(3000, () => {
    console.log('app is listening on port 3000!')
})
