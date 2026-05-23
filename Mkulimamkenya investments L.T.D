<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>InvestPro Kenya</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial,sans-serif;
}

body{
background:#f4f5f7;
padding-bottom:120px;
}

header{
background:white;
padding:18px;
display:flex;
justify-content:space-between;
align-items:center;
box-shadow:0 2px 10px rgba(0,0,0,0.08);
position:sticky;
top:0;
z-index:100;
}

.logo{
display:flex;
align-items:center;
gap:10px;
}

.logo i{
font-size:28px;
color:#16a34a;
}

.logo h1{
font-size:28px;
}

.logo span{
color:#16a34a;
}

.balance-card{
background:white;
margin:20px;
padding:30px;
border-radius:25px;
text-align:center;
box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.balance-card h2{
font-size:52px;
color:#16a34a;
margin:15px 0;
}

.spin-btn{
width:100%;
padding:18px;
border:none;
border-radius:15px;
background:linear-gradient(to right,#059669,#22c55e);
color:white;
font-size:24px;
font-weight:bold;
margin-top:20px;
cursor:pointer;
}

.section-title{
display:flex;
justify-content:space-between;
align-items:center;
padding:0 20px;
margin-top:30px;
}

.section-title h2{
font-size:40px;
}

.vip{
background:#ff9800;
padding:12px 20px;
border-radius:12px;
color:white;
font-weight:bold;
}

.tier{
margin:20px;
}

.tier-header{
display:flex;
justify-content:space-between;
align-items:center;
padding:16px;
border-radius:18px;
margin-bottom:20px;
font-weight:bold;
}

.green{background:#dcfce7;color:#15803d;}
.blue{background:#dbeafe;color:#2563eb;}
.purple{background:#f3e8ff;color:#9333ea;}
.gold{background:#fef3c7;color:#d97706;}

.rate{
background:white;
padding:10px 16px;
border-radius:12px;
}

.cards{
display:grid;
grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
gap:18px;
}

.card{
background:white;
padding:30px 20px;
border-radius:22px;
text-align:center;
box-shadow:0 4px 15px rgba(0,0,0,0.06);
}

.card h3{
font-size:40px;
margin-bottom:15px;
}

.profit{
font-size:26px;
font-weight:bold;
margin-bottom:10px;
}

.buy-btn{
margin-top:18px;
padding:12px 20px;
border:none;
border-radius:12px;
background:#16a34a;
color:white;
font-size:18px;
cursor:pointer;
}

.deposit-box{
background:white;
margin:20px;
padding:25px;
border-radius:20px;
box-shadow:0 4px 15px rgba(0,0,0,0.06);
}

.deposit-box h2{
margin-bottom:15px;
}

.deposit-box input{
width:100%;
padding:15px;
margin-top:10px;
border-radius:12px;
border:1px solid #ccc;
font-size:18px;
}

.deposit-btn{
width:100%;
padding:16px;
margin-top:15px;
background:#16a34a;
color:white;
border:none;
border-radius:12px;
font-size:20px;
font-weight:bold;
}

.float-btn{
position:fixed;
right:20px;
width:70px;
height:70px;
border-radius:50%;
display:flex;
justify-content:center;
align-items:center;
font-size:30px;
color:white;
box-shadow:0 4px 20px rgba(0,0,0,0.2);
}

.whatsapp{
bottom:25px;
background:#22c55e;
}

footer{
position:fixed;
bottom:0;
width:100%;
background:white;
display:flex;
justify-content:space-around;
padding:15px 0;
box-shadow:0 -2px 10px rgba(0,0,0,0.08);
}

footer div{
text-align:center;
font-size:16px;
}

footer i{
display:block;
font-size:22px;
margin-bottom:4px;
}

@media(max-width:768px){
.section-title h2{
font-size:28px;
}

.card h3{
font-size:30px;
}
}
</style>
</head>

<body>

<header>
<div class="logo">
<i class="fa-solid fa-chart-line"></i>
<h1>Invest<span>Pro</span></h1>
</div>

<i class="fa-solid fa-bars"></i>
</header>

<section class="balance-card">
<h4>Total Earnings</h4>
<h2>KSh 525</h2>
<p>Based on 2 active investments</p>
<button class="spin-btn">✨ Spin to Harvest</button>
</section>

<div class="section-title">
<h2>Investment Packages</h2>
<div class="vip">✨ VIP Packages</div>
</div>

<section class="tier">
<div class="tier-header green">
<h3>⚡ Starter Tier</h3>
<div class="rate">15% / day</div>
</div>

<div class="cards">

<div class="card">
<h3>KSh 750</h3>
<div class="profit" style="color:#16a34a;">+KSh 112.5/day</div>
<p>15% daily</p>
<button class="buy-btn">Invest Now</button>
</div>

<div class="card">
<h3>KSh 1500</h3>
<div class="profit" style="color:#16a34a;">+KSh 225/day</div>
<p>15% daily</p>
<button class="buy-btn">Invest Now</button>
</div>

<div class="card">
<h3>KSh 2500</h3>
<div class="profit" style="color:#16a34a;">+KSh 375/day</div>
<p>15% daily</p>
<button class="buy-btn">Invest Now</button>
</div>

</div>
</section>

<section class="deposit-box">
<h2>M-Pesa Deposit</h2>

<p>Shortcode: 4498280</p>

<input type="text" id="phone" placeholder="07XXXXXXXX">
<input type="number" id="amount" placeholder="Amount">

<button class="deposit-btn" onclick="payNow()">
Deposit via M-Pesa
</button>
</section>

<a href="https://wa.me/254753608376" class="float-btn whatsapp">
<i class="fa-brands fa-whatsapp"></i>
</a>

<footer>
<div>
<i class="fa-solid fa-house"></i>
Home
</div>

<div>
<i class="fa-solid fa-wallet"></i>
Investments
</div>
<div>
<i class="fa-solid fa-money-bill-wave"></i>
Withdraw
</div>

<div>
<i class="fa-solid fa-user"></i>
Account
</div>
</footer>

<script>

async function payNow(){

const phone = document.getElementById('phone').value;
const amount = document.getElementById('amount').value;

if(!phone || !amount){
alert('Enter phone and amount');
return;
}

alert('STK Push request prepared. Connect backend API to complete payment.');

}

</script>

</body>
</html>
// server.js

require('dotenv').config();

const express = require('express');
const axios = require('axios');
const cors = require('cors');

const app = express();

app.use(express.json());
app.use(cors());

const PORT = 5000;


/* =========================
   YOUR MPESA CREDENTIALS
========================= */

const CONSUMER_KEY =
'gjIGVB8OA3A1VRW8DsTeqZg1ZXlHIXIPHD3XY3abEybjoDYO';

const CONSUMER_SECRET =
'JglAaooKcYFQg04e1WvAFOwMcCGRWeRZTi0A5wU780eVJLeEMKdUJHW1IAGC1b5h';

const SHORTCODE = '4498280';

const PASSKEY =
'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';

const CALLBACK_URL =
'https://YOUR-NGROK-URL.ngrok-free.app/callback';


/* =========================
   FORMAT PHONE
========================= */

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


/* =========================
   ACCESS TOKEN
========================= */

async function getAccessToken(){

const auth = Buffer.from(
`${CONSUMER_KEY}:${CONSUMER_SECRET}`
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


/* =========================
   STK PUSH
========================= */

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
SHORTCODE +
PASSKEY +
timestamp
).toString('base64');

const response = await axios.post(
'https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest',
{
BusinessShortCode:SHORTCODE,
Password:password,
Timestamp:timestamp,
TransactionType:'CustomerPayBillOnline',
Amount:amount,
PartyA:phone,
PartyB:SHORTCODE,
PhoneNumber:phone,
CallBackURL:CALLBACK_URL,
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

console.log(
error.response?.data || error.message
);

res.status(500).json({
error:'STK Push failed'
});

}

});


/* =========================
   CALLBACK
========================= */

app.post('/callback',(req,res)=>{

console.log(
'========= CALLBACK ========='
);

console.log(
JSON.stringify(req.body,null,2)
);

res.json({
ResultCode:0,
ResultDesc:'Accepted'
});

});


/* =========================
   TEST PAGE
========================= */

app.get('/',(req,res)=>{

res.send(`

<!DOCTYPE html>

<html>

<head>

<title>InvestPro Kenya</title>

<meta name="viewport"
content="width=device-width,initial-scale=1.0">

<style>

body{
font-family:Arial;
background:#f4f5f7;
padding:30px;
}

.box{
background:white;
padding:30px;
border-radius:20px;
max-width:400px;
margin:auto;
box-shadow:0 5px 20px rgba(0,0,0,0.1);
}

input{
width:100%;
padding:15px;
margin-top:15px;
border-radius:10px;
border:1px solid #ccc;
font-size:18px;
}

button{
width:100%;
padding:15px;
margin-top:20px;
border:none;
border-radius:10px;
background:#16a34a;
color:white;
font-size:20px;
cursor:pointer;
}

h1{
text-align:center;
color:#16a34a;
}

</style>

</head>

<body>

<div class="box">

<h1>InvestPro Kenya</h1>

<input
type="text"
id="phone"
placeholder="07XXXXXXXX">

<input
type="number"
id="amount"
placeholder="Amount">

<button onclick="payNow()">
Deposit via M-Pesa
</button>

</div>

<script>

async function payNow(){

const phone =
document.getElementById('phone').value;

const amount =
document.getElementById('amount').value;

if(!phone || !amount){

alert('Enter phone and amount');

return;

}

try{

const response = await fetch(
'/stkpush',
{
method:'POST',
headers:{
'Content-Type':'application/json'
},
body:JSON.stringify({
phone,
amount
})
}
);

const data = await response.json();

console.log(data);

if(data.ResponseCode === "0"){

alert(
'STK Push sent successfully. Check your phone.'
);

}else{

alert(
'Failed: ' +
(data.ResponseDescription || 'Unknown error')
);

}

}catch(error){

console.log(error);

alert('Server error');

}

}

</script>

</body>

</html>

`);

});


/* =========================
   START SERVER
========================= */

app.listen(PORT,()=>{

console.log(
'Server running on http://localhost:5000'
);

});
