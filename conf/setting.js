const envFile = process.env.NODE_FB_ENV ? `conf/env.${process.env.NODE_FB_ENV}` : '.env'
const result = require('dotenv').config({ path: envFile });
// console.log(result.parsed);

const config = {
    apiKey: process.env.apiKey,
    authDomain: process.env.authDomain,
    databaseURL: process.env.databaseURL,
    projectId: process.env.projectId,
    storageBucket: process.env.storageBucket,
    messagingSenderId: process.env.messagingSenderId,
    appId: process.env.appId,
    measurementId: process.env.measurementId
}


console.log(config);


