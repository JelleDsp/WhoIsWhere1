// //"use strict";

const cds = require("@sap/cds");
const cors = require("cors");

cds.once("bootstrap", app =>{
    app.use(cors());
    app.use((req, res, next)=>{res.header('Access-Control-Allow-Origin','*');next();})
    console.log('shit')
} );

module.exports = cds.server;