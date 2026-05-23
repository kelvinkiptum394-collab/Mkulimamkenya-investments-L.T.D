Mkulimamkenya <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Hosea Website</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{
    background:#0f172a;
    color:white;
}

header{
    background:#111827;
    padding:20px;
    text-align:center;
    box-shadow:0 2px 10px rgba(0,0,0,0.5);
}

header h1{
    color:#00ff99;
    font-size:35px;
}

nav{
    margin-top:10px;
}

nav a{
    color:white;
    text-decoration:none;
    margin:0 15px;
    font-size:18px;
}

.hero{
    text-align:center;
    padding:100px 20px;
}

.hero h2{
    font-size:45px;
    margin-bottom:20px;
}

.hero p{
    font-size:20px;
    color:#cbd5e1;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    padding:15px 30px;
    background:#00ff99;
    color:black;
    text-decoration:none;
    border-radius:10px;
    font-weight:bold;
    transition:0.3s;
}

.btn:hover{
    background:white;
}

.section{
    padding:60px 20px;
    text-align:center;
}

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
    margin-top:30px;
}

.card{
    background:#1e293b;
    padding:25px;
    border-radius:15px;
    box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

.card h3{
    color:#00ff99;
    margin-bottom:15px;
}

footer{
    background:#111827;
    text-align:center;
    padding:20px;
    margin-top:40px;
    color:#94a3b8;
}
</style>
</head>

<body>

<header>
    <h1>Hosea Website</h1>

    <nav>
        <a href="#">Home</a>
        <a href="#">About</a>
        <a href="#">Services</a>
        <a href="#">Contact</a>
    </nav>
</header>

<section class="hero">
    <h2>Welcome To My Website</h2>

    <p>
        I create content, websites and digital projects.
    </p>

    <a href="#" class="btn">Get Started</a>
</section>

<section class="section">
    <h2>My Services</h2>

    <div class="cards">

        <div class="card">
            <h3>Website Design</h3>
            <p>
                Modern responsive websites for personal or business use.
            </p>
        </div>

        <div class="card">
            <h3>Content Creation</h3>
            <p>
                TikTok videos, news scripts and social media content.
            </p>
        </div>

        <div class="card">
            <h3>Tech Support</h3>
            <p>
                Help with coding, GitHub and online tools.
            </p>
        </div>

    </div>
</section>

<footer>
    © 2026 Hosea Website | Built with GitHub Pages
</footer>

</body>
</html>
