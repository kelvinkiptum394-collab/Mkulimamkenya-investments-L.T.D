npm install express axios cors dotenv body-parser
require('dotenv').config();

const express = require('express');
const axios = require('axios');
const cors = require('cors');

const app = express();

app.use(express.json());
app.use(cors());

const PORT = 5000;


// ACCESS TOKEN

async function getAccessToken(){

const auth =
Buffer.from(
process.env.CONSUMER_KEY +
':' +
process.env.CONSUMER_SECRET
).toString('base64');

const response = await axios.get(
'https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials',
{
headers:{
Authorization:`Basic ${auth}`
}
}
);

return response.data.access_token;

}


// STK PUSH

app.post('/stkpush', async(req,res)=>{

try{

const {phone,amount} = req.body;

const token = await getAccessToken();

const timestamp =
new Date()
.toISOString()
.replace(/[-:TZ.]/g,'')
.slice(0,14);

const password = Buffer.from(
process.env.SHORTCODE +
process.env.PASSKEY +
timestamp
).toString('base64');

const response = await axios.post(
'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest',
{
BusinessShortCode:process.env.SHORTCODE,
Password:password,
Timestamp:timestamp,
TransactionType:'CustomerPayBillOnline',
Amount:amount,
PartyA:phone,
PartyB:process.env.SHORTCODE,
PhoneNumber:phone,
CallBackURL:process.env.CALLBACK_URL,
AccountReference:'InvestPro',
TransactionDesc:'Investment Payment'
},
{
headers:{
Authorization:`Bearer ${token}`
}
}
);

res.json(response.data);

}catch(error){

console.log(error.response.data);

res.status(500).json({
error:'STK Push failed'
});

}

});


app.listen(PORT,()=>{

console.log(`Server running on ${PORT}`);

});
