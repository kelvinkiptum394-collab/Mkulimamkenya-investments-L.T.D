HTML
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>InvestPro</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#f4f5f7;
    color:#111827;
}

/* HEADER */

header{
    background:white;
    padding:18px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    box-shadow:0 2px 10px rgba(0,0,0,0.05);
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
    font-size:30px;
    color:#16a34a;
}

.logo h1{
    font-size:28px;
}

.logo span{
    color:#16a34a;
}

.menu{
    font-size:28px;
}

/* BALANCE CARD */

.balance-card{
    background:white;
    margin:25px;
    padding:30px 20px;
    border-radius:25px;
    text-align:center;
    box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.balance-card h2{
    color:#16a34a;
    font-size:55px;
    margin:15px 0;
}

.balance-card p{
    color:gray;
    margin-bottom:25px;
}

.spin-btn{
    width:100%;
    padding:18px;
    border:none;
    border-radius:15px;
    background:linear-gradient(to right,#059669,#22c55e);
    color:white;
    font-size:26px;
    font-weight:bold;
    cursor:pointer;
}

/* SECTION TITLE */

.section-title{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin:25px;
}

.section-title h2{
    font-size:45px;
}

.vip-btn{
    background:#ff9800;
    color:white;
    padding:15px 25px;
    border-radius:15px;
    font-size:22px;
    font-weight:bold;
}

/* TIER */

.tier{
    margin:25px;
}

.tier-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:15px 20px;
    border-radius:18px;
    margin-bottom:20px;
    font-weight:bold;
}

.green{
    background:#dcfce7;
    color:#15803d;
}

.blue{
    background:#dbeafe;
    color:#2563eb;
}

.purple{
    background:#f3e8ff;
    color:#9333ea;
}

.gold{
    background:#fef3c7;
    color:#d97706;
}

.rate{
    background:white;
    padding:10px 18px;
    border-radius:12px;
    box-shadow:0 3px 8px rgba(0,0,0,0.08);
}

/* CARDS */

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
    gap:20px;
}

.card{
    background:white;
    border-radius:25px;
    padding:35px 20px;
    text-align:center;
    box-shadow:0 5px 15px rgba(0,0,0,0.08);
}

.card h3{
    font-size:45px;
    margin-bottom:20px;
}

.card .profit{
    font-size:30px;
    font-weight:bold;
    margin-bottom:10px;
}

.card p{
    color:gray;
    font-size:22px;
}

/* FLOAT BUTTONS */

.float-btn{
    position:fixed;
    right:20px;
    width:75px;
    height:75px;
    border-radius:50%;
    display:flex;
    justify-content:center;
    align-items:center;
    color:white;
    font-size:32px;
    box-shadow:0 5px 20px rgba(0,0,0,0.2);
}

.chat{
    bottom:120px;
    background:linear-gradient(to right,#4f46e5,#9333ea);
}

.whatsapp{
    bottom:30px;
    background:#22c55e;
}

/* FOOTER MENU */

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
    color:#475569;
    font-size:18px;
}

footer i{
    display:block;
    font-size:25px;
    margin-bottom:5px;
}

.active{
    color:#16a34a;
}

/* MOBILE */

@media(max-width:768px){

.section-title h2{
    font-size:28px;
}

.balance-card h2{
    font-size:42px;
}

.card h3{
    font-size:35px;
}

.card .profit{
    font-size:24px;
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

<div class="menu">
<i class="fa-solid fa-bars"></i>
</div>

</header>

<!-- BALANCE -->

<section class="balance-card">

<h4>Total Earnings</h4>

<h2>KSh 525</h2>

<p>Based on 2 active investments</p>

<button class="spin-btn">
✨ Spin to Harvest
</button>

</section>

<!-- TITLE -->

<div class="section-title">

<h2>Investment Packages</h2>

<div class="vip-btn">
✨ VIP Packages
</div>

</div>

<!-- STARTER -->

<section class="tier">

<div class="tier-header green">

<h3>⚡ Starter Tier</h3>

<div class="rate">
15% / day
</div>

</div>

<div class="cards">

<div class="card">
<h3>KSh 750</h3>
<div class="profit" style="color:#16a34a;">
+KSh 112.5/day
</div>
<p>15% daily</p>
</div>

<div class="card">
<h3>KSh 1,500</h3>
<div class="profit" style="color:#16a34a;">
+KSh 225/day
</div>
<p>15% daily</p>
</div>

<div class="card">
<h3>KSh 2,500</h3>
<div class="profit" style="color:#16a34a;">
+KSh 375/day
</div>
<p>15% daily</p>
</div>

</div>

</section>

<!-- GROWTH -->

<section class="tier">

<div class="tier-header blue">

<h3>📈 Growth Tier</h3>

<div class="rate">
17% / day
</div>

</div>

<div class="cards">

<div class="card">
<h3>KSh 5,000</h3>
<div class="profit" style="color:#2563eb;">
+KSh 850/day
</div>
<p>17% daily</p>
</div>

<div class="card">
<h3>KSh 7,500</h3>
<div class="profit" style="color:#2563eb;">
+KSh 1,275/day
</div>
<p>17% daily</p>
</div>

<div class="card">
<h3>KSh 10,000</h3>
<div class="profit" style="color:#2563eb;">
+KSh 1,700/day
</div>
<p>17% daily</p>
</div>

</div>

</section>

<!-- PRO -->

<section class="tier">

<div class="tier-header purple">

<h3>⭐ Pro Tier</h3>

<div class="rate">
20% / day
</div>

</div>

<div class="cards">

<div class="card" style="border:2px solid #c084fc;">
<h3>KSh 15,000</h3>
<div class="profit" style="color:#9333ea;">
+KSh 3,000/day
</div>
<p>20% daily</p>
</div>

<div class="card" style="border:2px solid #c084fc;">
<h3>KSh 20,000</h3>
<div class="profit" style="color:#9333ea;">
+KSh 4,000/day
</div>
<p>20% daily</p>
</div>

<div class="card" style="border:2px solid #c084fc;">
<h3>KSh 25,000</h3>
<div class="profit" style="color:#9333ea;">
+KSh 5,000/day
</div>
<p>20% daily</p>
</div>

</div>

</section>

<!-- ELITE -->

<section class="tier">

<div class="tier-header gold">

<h3>👑 Elite Tier</h3>

<div class="rate">
25% / day
</div>

</div>

<div class="cards">

<div class="card">
<h3>KSh 50,000</h3>
<div class="profit" style="color:#d97706;">
+KSh 12,500/day
</div>
<p>25% daily</p>
</div>

</div>

</section>

<!-- FLOATING BUTTONS -->

<a href="#" class="float-btn chat">
<i class="fa-solid fa-robot"></i>
</a>

<a href="https://wa.me/254700000000"
class="float-btn whatsapp">
<i class="fa-brands fa-whatsapp"></i>
</a>

<!-- FOOTER -->

<footer>

<div class="active">
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
<i class="fa-solid fa-user-group"></i>
Referrals
</div>

<div>
<i class="fa-solid fa-user"></i>
Account
</div>

</footer>

</body>
</html>
