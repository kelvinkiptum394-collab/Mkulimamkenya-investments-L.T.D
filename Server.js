require('dotenv').config();

const express = require('express');
const axios = require('axios');
const cors = require('cors');
const path = require('path');

const app = express();

app.use(cors());
app.use(express.json());
app.use(express.static('public'));

const PORT = process.env.PORT || 5000;


// FORMAT PHONE NUMBER

function formatPhone(phone){

phone = phone.replace(/\s+/g,'');

if(phone.startsWith('0')){
return '254' + phone.substring(1);
}

if(phone.startsWith('+254')){
return phone.replace('+','');
}

return phone;

}


// GET ACCESS TOKEN

async function getAccessToken(){

const auth = Buffer.from(
`${process.env.CONSUMER_KEY}:${process.env.CONSUMER_SECRET}`
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


// STK PUSH ROUTE

app.post('/stkpush', async(req,res)=>{

try{

let {phone,amount} = req.body;

phone = formatPhone(phone);

const token = await getAccessToken();

const timestamp = new Date()
.toISOString()
.replace(/[-:TZ.]/g,'')
.slice(0,14);

const password = Buffer.from(
process.env.SHORTCODE +
process.env.PASSKEY +
timestamp
).toString('base64');

const stkPush = await axios.post(
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

res.json(stkPush.data);

}catch(error){

console.log(
error.response?.data || error.message
);

res.status(500).json({
success:false,
message:'STK Push failed',
error:error.response?.data || error.message
});

}

});


// CALLBACK URL

app.post('/callback',(req,res)=>{

console.log(
'========== MPESA CALLBACK =========='
);

console.log(
JSON.stringify(req.body,null,2)
);

res.json({
ResultCode:0,
ResultDesc:'Accepted'
});

});


// START SERVER

app.listen(PORT,()=>{

console.log(`Server running on port ${PORT}`);

});
