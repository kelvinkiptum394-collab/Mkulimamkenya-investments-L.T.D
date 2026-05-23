Join the most profitable company in Kenya Trusted wuth more than million kenyans 
<script>

// INVEST BUTTONS
const investButtons = document.querySelectorAll('.buy-btn');

investButtons.forEach(button => {

button.addEventListener('click', () => {

const amount =
button.parentElement.querySelector('h3').innerText;

showPaymentOptions(amount);

});

});


// PAYMENT OPTIONS
function showPaymentOptions(amount){

const choice = confirm(
`You selected ${amount} investment.\n\nPress OK for M-Pesa Payment\nPress Cancel for WhatsApp Support`
);

if(choice){

document.getElementById('amount').value =
amount.replace('KSh ','').replace(',','');

window.scrollTo({
top:document.body.scrollHeight,
behavior:'smooth'
});

alert('Enter phone number then click Deposit via M-Pesa');

}else{

window.open(
'https://wa.me/254753608376?text=Hello%20InvestPro,%20I%20need%20help%20with%20investment%20payment.',
'_blank'
);

}

}


// M-PESA DEPOSIT
async function payNow(){

const phone =
document.getElementById('phone').value;

const amount =
document.getElementById('amount').value;

if(!phone || !amount){

alert('Please enter phone number and amount'); look

return;

}

if(phone.length < 10){

alert('Enter valid phone number');

return;

}

alert(
`STK Push sent to ${phone} for KSh ${amount}.\n\nComplete payment on your phone.`
);

// CONNECT YOUR BACKEND API HERE

}


// WITHDRAWAL BUTTON
function withdrawMoney(){

const amount = prompt('Enter withdrawal amount');

if(!amount){

alert('Withdrawal cancelled');

return;

}

alert(
`Withdrawal request for KSh ${amount} submitted successfully.`
);

}


// SUPPORT BUTTON
function contactSupport(){

alert(
'Support Team:\n\nWhatsApp: 0753608376\nAvailable 24/7'
);

window.open(
'https://wa.me/254753608376',
'_blank'
);

}

</script>
