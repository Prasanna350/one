<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Eternal Jewels — Contemporary Indian Drapes</title>
  <meta name="description" content="Eternal Jewels — handpicked Indian jewellerys with timeless style.">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

  <style>
    :root{
      --ink:#211b1d;
      --muted:#766d70;
      --cream:#f8f3ed;
      --paper:#fffdf9;
      --rose:#a85661;
      --rose-dark:#873f4a;
      --rose-soft:#ead4d5;
      --gold:#b58a48;
      --line:#e9dfd7;
      --white:#fff;
      --shadow:0 18px 50px rgba(43,28,31,.09);
      --shadow-sm:0 8px 25px rgba(43,28,31,.07);
      --radius:22px;
      --max:1220px;
    }

    *{box-sizing:border-box;margin:0;padding:0}
    html{scroll-behavior:smooth}
    body{
      font-family:"DM Sans",system-ui,sans-serif;
      background:var(--cream);
      color:var(--ink);
      line-height:1.5;
    }
    a{color:inherit;text-decoration:none}
    button,input{font:inherit}
    button{border:0;background:none;cursor:pointer}
    img{display:block;width:100%}
    .container{width:min(var(--max),calc(100% - 40px));margin:auto}

    /* Header */
    header{
      position:sticky;top:0;z-index:100;
      background:rgba(255,253,249,.9);
      backdrop-filter:blur(18px);
      border-bottom:1px solid rgba(33,27,29,.07);
    }
    .header-inner{
      min-height:76px;display:flex;align-items:center;gap:28px;
    }
    .brand{display:flex;align-items:center;gap:10px;white-space:nowrap}
    .brand-mark{
      width:40px;height:40px;border-radius:50%;
      display:grid;place-items:center;
      background:var(--ink);color:#f5dfb0;
      font-size:17px;
    }
    .brand-name{
      font-family:"Playfair Display",serif;font-size:22px;font-weight:700;
      letter-spacing:-.3px;
    }
    .brand-name span{color:var(--rose)}
    nav{margin-left:auto}
    nav ul{display:flex;list-style:none;gap:6px}
    nav a{
      padding:9px 13px;border-radius:999px;font-size:14px;color:var(--muted);
      transition:.2s;
    }
    nav a:hover,nav a.active{background:#f0e6df;color:var(--ink)}
    .header-tools{display:flex;align-items:center;gap:8px}
    .search{
      width:190px;height:42px;border:1px solid var(--line);
      background:var(--paper);border-radius:999px;
      display:flex;align-items:center;padding:0 14px;gap:8px;
    }
    .search input{width:100%;border:0;outline:0;background:transparent;font-size:13px}
    .search i{color:var(--muted);font-size:13px}
    .icon-btn{
      width:42px;height:42px;border:1px solid var(--line);
      border-radius:50%;display:grid;place-items:center;color:var(--ink);
      background:var(--paper);transition:.2s;position:relative;
    }
    .icon-btn:hover{background:var(--ink);color:white;transform:translateY(-1px)}
    .cart-badge{
      position:absolute;right:-2px;top:-3px;width:19px;height:19px;
      display:grid;place-items:center;border-radius:50%;background:var(--rose);
      color:white;font-size:10px;font-weight:700;border:2px solid var(--paper)
    }
    .mobile-btn{display:none}

    /* Hero */
    .hero{
      min-height:650px;position:relative;overflow:hidden;
      margin-top:20px;border-radius:30px;background:#3b2428;
      display:flex;align-items:center;
    }
    .hero-image{
      position:absolute;inset:0;
      background:
        linear-gradient(90deg,rgba(28,19,21,.9) 0%,rgba(28,19,21,.68) 42%,rgba(28,19,21,.18) 100%),
        url("https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=1200") center/cover;
    }
    .hero-content{position:relative;z-index:1;max-width:660px;padding:90px 0}
    .eyebrow{
      display:inline-flex;align-items:center;gap:9px;color:#f4dcae;
      font-size:12px;font-weight:700;letter-spacing:1.6px;text-transform:uppercase;
      margin-bottom:20px;
    }
    .eyebrow:before{content:"";width:32px;height:1px;background:#f4dcae}
    .hero h1{
      font-family:"Playfair Display",serif;color:#fff;
      font-size:clamp(46px,6vw,76px);line-height:1.02;font-weight:600;
      letter-spacing:-2px;margin-bottom:20px;
    }
    .hero h1 em{color:#efc8c9;font-style:normal}
    .hero p{color:rgba(255,255,255,.82);font-size:17px;max-width:540px;line-height:1.75;margin-bottom:32px}
    .hero-actions{display:flex;gap:12px;flex-wrap:wrap}
    .btn{
      display:inline-flex;align-items:center;justify-content:center;gap:9px;
      padding:13px 22px;border-radius:999px;font-weight:700;font-size:14px;
      transition:.22s;
    }
    .btn-primary{background:#fff;color:var(--ink)}
    .btn-primary:hover{transform:translateY(-2px);box-shadow:0 12px 30px rgba(0,0,0,.2)}
    .btn-ghost{border:1px solid rgba(255,255,255,.38);color:white;background:rgba(255,255,255,.06)}
    .btn-ghost:hover{background:rgba(255,255,255,.14)}
    .hero-note{
      position:absolute;right:28px;bottom:28px;z-index:2;
      color:white;background:rgba(24,17,19,.45);backdrop-filter:blur(12px);
      border:1px solid rgba(255,255,255,.2);border-radius:16px;padding:12px 15px;
      font-size:12px;
    }

    /* Intro */
    .intro{padding:82px 0 40px;display:grid;grid-template-columns:1fr 1.8fr;gap:70px;align-items:end}
    .kicker{font-size:12px;color:var(--rose);font-weight:800;letter-spacing:1.6px;text-transform:uppercase}
    .intro h2,.section-title h2{
      font-family:"Playfair Display",serif;font-weight:600;
      font-size:clamp(34px,4vw,52px);line-height:1.08;letter-spacing:-1px;
    }
    .intro p{color:var(--muted);font-size:16px;max-width:650px;line-height:1.8}

    /* Categories */
    .section{padding:38px 0 82px}
    .section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:28px}
    .section-title p{color:var(--muted);margin-top:7px;font-size:14px}
    .view-all{font-weight:700;font-size:13px;color:var(--rose);white-space:nowrap}
    .view-all i{margin-left:5px;transition:.2s}
    .view-all:hover i{transform:translateX(4px)}
    .category-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
    .category{
      position:relative;height:190px;border-radius:20px;overflow:hidden;
      background:#ddd;cursor:pointer;box-shadow:var(--shadow-sm)
    }
    .category img{height:100%;object-fit:cover;transition:.45s}
    .category:after{
      content:"";position:absolute;inset:0;
      background:linear-gradient(180deg,transparent 25%,rgba(20,14,16,.78));
    }
    .category:hover img{transform:scale(1.06)}
    .category-info{position:absolute;z-index:1;left:15px;right:15px;bottom:14px;color:white}
    .category-info h3{font-family:"Playfair Display",serif;font-size:19px}
    .category-info span{font-size:11px;opacity:.78}

    /* Products */
    .products{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
    .product{
      background:var(--paper);border:1px solid var(--line);border-radius:22px;
      overflow:hidden;transition:.25s;position:relative;
    }
    .product:hover{transform:translateY(-6px);box-shadow:var(--shadow)}
    .product-media{height:390px;position:relative;overflow:hidden;background:#eee}
    .product-media img{height:100%;object-fit:cover;transition:.45s}
    .product:hover .product-media img{transform:scale(1.04)}
    .pill{
      position:absolute;top:13px;left:13px;background:var(--ink);color:white;
      border-radius:999px;padding:6px 10px;font-size:10px;font-weight:800;
      letter-spacing:.5px;text-transform:uppercase;
    }
    .pill.sale{background:#d6a548;color:#231b13}
    .wish{
      position:absolute;top:12px;right:12px;width:38px;height:38px;
      border-radius:50%;background:rgba(255,255,255,.9);display:grid;place-items:center;
      color:var(--ink);transition:.2s;
    }
    .wish:hover{color:var(--rose);transform:scale(1.06)}
    .product-body{padding:17px 17px 10px}
    .product-category{font-size:10px;color:var(--muted);font-weight:800;letter-spacing:1px;text-transform:uppercase}
    .product h3{font-family:"Playfair Display",serif;font-size:20px;line-height:1.2;margin:5px 0 9px}
    .price-row{display:flex;align-items:center;gap:9px}
    .price{font-weight:800;color:var(--rose);font-size:17px}
    .old{color:#aaa;text-decoration:line-through;font-size:12px}
    .rating{margin-top:7px;color:var(--gold);font-size:12px}
    .rating span{color:var(--muted);margin-left:4px}
    .add{
      margin:8px 17px 17px;width:calc(100% - 34px);
      background:var(--ink);color:#fff;padding:12px;border-radius:12px;
      font-weight:700;font-size:13px;transition:.2s;
    }
    .add:hover{background:var(--rose)}
    .add.added{background:#2f806f}

    /* Story banner */
    .story{
      margin:0 0 80px;border-radius:28px;overflow:hidden;min-height:410px;
      position:relative;background:#2d2022;display:flex;align-items:center;
    }
    .story-image{
      position:absolute;inset:0 0 0 45%;
      background:url("https://images.pexels.com/photos/1454171/pexels-photo-1454171.jpeg?auto=compress&cs=tinysrgb&w=900") center/cover;
    }
    .story:before{
      content:"";position:absolute;inset:0;
      background:linear-gradient(90deg,#2d2022 0%,#2d2022 39%,rgba(45,32,34,.2) 72%,rgba(45,32,34,.1));
    }
    .story-content{position:relative;z-index:1;padding:65px;max-width:620px;color:white}
    .story-content .kicker{color:#e7c988}
    .story-content h2{font-family:"Playfair Display",serif;font-size:48px;line-height:1.08;margin:12px 0 15px}
    .story-content p{color:rgba(255,255,255,.75);line-height:1.75;margin-bottom:25px}

    /* Benefits */
    .benefits{
      display:grid;grid-template-columns:repeat(4,1fr);border-top:1px solid var(--line);
      border-bottom:1px solid var(--line);margin-bottom:80px;
    }
    .benefit{padding:25px 20px;display:flex;gap:13px;align-items:center;border-right:1px solid var(--line)}
    .benefit:last-child{border-right:0}
    .benefit i{font-size:20px;color:var(--rose)}
    .benefit strong{font-size:13px;display:block}.benefit span{font-size:11px;color:var(--muted)}

    /* Testimonials */
    .reviews{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
    .review{background:var(--paper);border:1px solid var(--line);padding:25px;border-radius:20px}
    .review-stars{color:var(--gold);letter-spacing:2px;font-size:12px;margin-bottom:14px}
    .review p{font-family:"Playfair Display",serif;font-size:18px;line-height:1.5;margin-bottom:20px}
    .review-user{display:flex;align-items:center;gap:10px}
    .avatar{width:42px;height:42px;border-radius:50%;object-fit:cover}
    .review-user strong{font-size:12px;display:block}.review-user span{font-size:11px;color:var(--muted)}

    /* Newsletter */
    .newsletter{
      background:var(--rose);color:white;border-radius:25px;padding:48px 55px;
      display:flex;align-items:center;justify-content:space-between;gap:30px;
    }
    .newsletter h2{font-family:"Playfair Display",serif;font-size:36px}
    .newsletter p{opacity:.78;margin-top:5px;font-size:13px}
    .newsletter form{display:flex;gap:8px;max-width:470px;width:100%}
    .newsletter input{
      flex:1;min-width:0;border:0;outline:0;border-radius:999px;padding:14px 18px;
      background:rgba(255,255,255,.14);color:white;
    }
    .newsletter input::placeholder{color:rgba(255,255,255,.65)}
    .newsletter .btn{background:white;color:var(--ink);white-space:nowrap}
    #newsletterMsg{font-size:12px;margin-top:7px}

    /* Footer */
    footer{padding:70px 0 28px}
    .footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:35px;padding-bottom:45px}
    .footer-brand p{color:var(--muted);font-size:13px;max-width:310px;line-height:1.7;margin-top:13px}
    .socials{display:flex;gap:8px;margin-top:17px}
    .socials a{width:36px;height:36px;border:1px solid var(--line);border-radius:50%;display:grid;place-items:center;font-size:13px;transition:.2s}
    .socials a:hover{background:var(--ink);color:white}
    footer h4{font-size:12px;margin-bottom:14px;text-transform:uppercase;letter-spacing:1px}
    footer ul{list-style:none;display:grid;gap:8px}
    footer li a{font-size:12px;color:var(--muted)}footer li a:hover{color:var(--rose)}
    .footer-bottom{border-top:1px solid var(--line);padding-top:20px;color:#9b9292;font-size:11px;display:flex;justify-content:space-between}

    .empty{grid-column:1/-1;text-align:center;padding:60px;color:var(--muted)}
    .toast{
      position:fixed;right:20px;bottom:20px;z-index:200;background:var(--ink);color:white;
      padding:13px 17px;border-radius:12px;font-size:13px;box-shadow:var(--shadow);
      opacity:0;transform:translateY(10px);pointer-events:none;transition:.25s;
    }
    .toast.show{opacity:1;transform:translateY(0)}

    @media(max-width:1050px){
      nav{display:none}.mobile-btn{display:grid}
      .header-inner{justify-content:space-between}.search{width:170px}
      .category-grid{grid-template-columns:repeat(3,1fr)}
      .products{grid-template-columns:repeat(2,1fr)}
      .product-media{height:420px}
      .benefits{grid-template-columns:repeat(2,1fr)}
      .benefit:nth-child(2){border-right:0}.benefit:nth-child(-n+2){border-bottom:1px solid var(--line)}
      .reviews{grid-template-columns:1fr}
      .newsletter{flex-direction:column;align-items:flex-start}
    }
    @media(max-width:680px){
      .container{width:min(var(--max),calc(100% - 24px))}
      .header-inner{min-height:64px;gap:8px}.brand-name{font-size:19px}.brand-mark{width:35px;height:35px}
      .search{width:42px;padding:0;justify-content:center}.search input{display:none}
      .search i{font-size:14px}.icon-btn{width:38px;height:38px}.header-tools{gap:5px}
      .hero{min-height:560px;margin-top:12px;border-radius:22px}
      .hero-image{background-position:62% center}
      .hero-content{padding:65px 22px}.hero h1{font-size:48px;letter-spacing:-1.5px}
      .hero p{font-size:14px}.hero-note{display:none}
      .intro{grid-template-columns:1fr;gap:16px;padding:58px 0 20px}
      .section{padding:28px 0 60px}.section-head{align-items:flex-start}
      .category-grid{grid-template-columns:repeat(2,1fr);gap:10px}.category{height:175px}
      .products{grid-template-columns:1fr 1fr;gap:10px}.product-media{height:290px}
      .product-body{padding:13px 12px 8px}.product h3{font-size:16px}.price{font-size:14px}
      .add{width:calc(100% - 24px);margin:6px 12px 12px;padding:10px;font-size:12px}
      .story{min-height:520px;margin-bottom:55px}.story-image{inset:42% 0 0}
      .story:before{background:linear-gradient(180deg,#2d2022 0%,#2d2022 43%,rgba(45,32,34,.15))}
      .story-content{padding:35px 24px;align-self:flex-start}.story-content h2{font-size:36px}
      .benefits{grid-template-columns:1fr;margin-bottom:55px}.benefit{border-right:0!important;border-bottom:1px solid var(--line)!important}.benefit:last-child{border-bottom:0!important}
      .newsletter{padding:32px 22px}.newsletter h2{font-size:30px}.newsletter form{flex-direction:column}
      .newsletter .btn{width:100%}.footer-grid{grid-template-columns:1fr 1fr;gap:30px}.footer-brand{grid-column:1/-1}
      .footer-bottom{display:block;line-height:1.7}
    }
  </style>

<style id="jewellery-theme">
:root{
  --bg:#fbf8f1;
  --surface:#fffdf8;
  --ink:#17251f;
  --muted:#6f756e;
  --green:#173c32;
  --green-2:#285b4d;
  --gold:#b28a3b;
  --gold-light:#d8bc78;
  --line:#e7dfce;
  --shadow:0 18px 45px rgba(36,48,40,.10);
}
body{background:var(--bg)!important;color:var(--ink)!important}
header,.nav,.site-header{background:rgba(251,248,241,.96)!important;border-bottom:1px solid var(--line)!important}
.logo,.brand{color:var(--green)!important}
.logo span,.brand span,.accent{color:var(--gold)!important}
a{color:inherit}
button,.btn,.cta{background:var(--green)!important;color:#fff!important;border-color:var(--green)!important}
button:hover,.btn:hover,.cta:hover{background:var(--gold)!important;border-color:var(--gold)!important}
.hero{background:linear-gradient(120deg,#173c32 0%,#285b4d 58%,#b28a3b 150%)!important;color:#fff!important}
.hero h1,.hero h2,.hero p{color:#fff!important}
.section-title,.section-heading,h2,h3{color:var(--green)!important}
.card,.product-card,.category-card,.testimonial,.newsletter,.story-card{background:var(--surface)!important;border:1px solid var(--line)!important;box-shadow:var(--shadow)!important}
.product-card:hover,.category-card:hover{transform:translateY(-5px);box-shadow:0 22px 55px rgba(36,48,40,.15)!important}
.price,.product-price{color:var(--gold)!important}
.badge,.tag{background:#f3ead6!important;color:var(--green)!important}
.newsletter{background:var(--green)!important;color:#fff!important}
.newsletter h2,.newsletter p{color:#fff!important}
footer{background:#102b24!important;color:#e9e2d2!important}
footer a{color:#e9e2d2!important}
input,select{border:1px solid var(--line)!important;background:#fffdf8!important}
.icon-btn:hover{color:var(--gold)!important}
.gold-rule{background:var(--gold)!important}
</style>

</head>

<body>
<header>
  <div class="container header-inner">
    <button class="icon-btn mobile-btn" id="mobileToggle" aria-label="Open menu"><i class="fa-solid fa-bars"></i></button>
    <a class="brand" href="#">
      <span class="brand-mark"><i class="fa-solid fa-feather-pointed"></i></span>
      <span class="brand-name">Eternal <span>Jewellery</span></span>
    </a>

    <nav id="desktopNav">
      <ul>
        <li><a class="active" href="#home">Home</a></li>
        <li><a href="#weaves">Weaves</a></li>
        <li><a href="#shop">Collection</a></li>
        <li><a href="#story">Our Story</a></li>
      </ul>
    </nav>

    <div class="header-tools">
      <label class="search" aria-label="Search jewellerys">
        <input id="searchInput" type="search" placeholder="Search jewellerys...">
        <i class="fa-solid fa-magnifying-glass"></i>
      </label>
      <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      <button class="icon-btn" id="cartBtn" aria-label="Shopping bag">
        <i class="fa-solid fa-bag-shopping"></i><span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <div id="mobileMenu" style="display:none;background:#fffdf9;border-top:1px solid var(--line)">
    <div class="container" style="padding:12px 0 18px">
      <div style="display:grid;gap:6px">
        <a href="#home">Home</a><a href="#weaves">Weaves</a><a href="#shop">Collection</a><a href="#story">Our Story</a>
      </div>
    </div>
  </div>
</header>

<main id="home">
  <div class="container">
    <section class="hero">
      <div class="hero-image"></div>
      <div class="hero-content">
        <div class="eyebrow">The festive edit · 2026</div>
        <h1>Tradition, <em>reframed.</em></h1>
        <p>Handpicked jewellerys that bring the richness of Indian textiles into a modern jewellery box — from quiet everyday cottons to statement golds.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNow">Shop the collection <i class="fa-solid fa-arrow-right"></i></button>
          <button class="btn btn-ghost" id="newArrivals">See new arrivals</button>
        </div>
      </div>
      <div class="hero-note"><i class="fa-solid fa-circle-check"></i> Curated Indian weaves</div>
    </section>

    <section class="intro">
      <div>
        <div class="kicker">Made to be remembered</div>
        <h2>Every weave has a story.</h2>
      </div>
      <p>Explore classic silhouettes, rich textures and contemporary layers selected for celebrations, everyday elegance and everything in between.</p>
    </section>

    <section class="section" id="weaves">
      <div class="section-head">
        <div class="section-title">
          <h2>Explore the weaves</h2>
          <p>Start with a craft, a texture or a mood.</p>
        </div>
        <a class="view-all" href="#shop">Shop all <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="category-grid" id="categoriesGrid"></div>
    </section>

    <section class="section" id="shop">
      <div class="section-head">
        <div class="section-title">
          <h2>Editor’s picks</h2>
          <p>Eight standout layers, chosen for the season.</p>
        </div>
        <a class="view-all" href="#shop">View collection <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="products" id="productsGrid"></div>
    </section>

    <section class="story" id="story">
      <div class="story-image"></div>
      <div class="story-content">
        <div class="kicker">The Eternal Edit</div>
        <h2>Rooted in craft. Styled for now.</h2>
        <p>We bring together expressive Indian textiles and a clean, contemporary shopping experience — so choosing a jewellery feels as special as wearing one.</p>
        <button class="btn btn-primary" id="storyBtn">Discover our story</button>
      </div>
    </section>

    <section class="benefits" aria-label="Shopping benefits">
      <div class="benefit"><i class="fa-solid fa-hands"></i><div><strong>Craft-led selection</strong><span>Thoughtfully curated weaves</span></div></div>
      <div class="benefit"><i class="fa-solid fa-truck-fast"></i><div><strong>Free shipping</strong><span>On orders over ₹999</span></div></div>
      <div class="benefit"><i class="fa-solid fa-rotate-left"></i><div><strong>Easy returns</strong><span>7-day return window</span></div></div>
      <div class="benefit"><i class="fa-solid fa-gem"></i><div><strong>Authentic styles</strong><span>Made for modern jewellery boxs</span></div></div>
    </section>

    <section class="section" id="reviews">
      <div class="section-head">
        <div class="section-title">
          <h2>Worn & loved</h2>
          <p>Notes from the Eternal Jewels community.</p>
        </div>
      </div>
      <div class="reviews" id="reviewsGrid"></div>
    </section>

    <section class="section" style="padding-top:0">
      <div class="newsletter">
        <div>
          <h2>Stay close to the weave.</h2>
          <p>New drops, festive edits and occasional offers — straight to your inbox.</p>
        </div>
        <div style="width:100%;max-width:470px">
          <form id="newsletterForm">
            <input id="newsletterEmail" type="email" placeholder="Your email address" required>
            <button class="btn" type="submit">Join the list</button>
          </form>
          <div id="newsletterMsg"></div>
        </div>
      </div>
    </section>
  </div>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="brand" href="#"><span class="brand-mark"><i class="fa-solid fa-feather-pointed"></i></span><span class="brand-name">Eternal <span>Jewellery</span></span></a>
        <p>Indian textilesss, thoughtfully curated for women who want tradition to feel effortless and current.</p>
        <div class="socials">
          <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
          <a href="#" aria-label="Pinterest"><i class="fa-brands fa-pinterest-p"></i></a>
          <a href="#" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a>
        </div>
      </div>
      <div><h4>Shop</h4><ul><li><a href="#shop">New arrivals</a></li><li><a href="#shop">Best sellers</a></li><li><a href="#weaves">Silks</a></li><li><a href="#weaves">Cottons</a></li></ul></div>
      <div><h4>Help</h4><ul><li><a href="#">Contact</a></li><li><a href="#">Track order</a></li><li><a href="#">Returns</a></li><li><a href="#">Shipping</a></li></ul></div>
      <div><h4>About</h4><ul><li><a href="#story">Our story</a></li><li><a href="#">Journal</a></li><li><a href="#">Craftspeople</a></li><li><a href="#">Care guide</a></li></ul></div>
    </div>
    <div class="footer-bottom"><span>© <span id="year"></span> Eternal Jewels</span><span>Designed around Indian craft & contemporary style.</span></div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
const CATEGORIES = [
  {name:"Silk",count:24,img:"https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900"},
  {name:"Cotton",count:18,img:"https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900"},
  {name:"Bridal Gold",count:16,img:"https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=900"},
  {name:"Kanchipuram",count:22,img:"https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=900"},
  {name:"Chanderi",count:14,img:"https://images.pexels.com/photos/248077/pexels-photo-248077.jpeg?auto=compress&cs=tinysrgb&w=900"},
  {name:"Designer",count:20,img:"https://images.pexels.com/photos/1097663/pexels-photo-1097663.jpeg?auto=compress&cs=tinysrgb&w=900"}
];

const PRODUCTS = [
  {id:1,title:"Crimson Bridal Gold Silk",price:4299,old:6500,category:"Bridal Gold",badge:"New",img:"https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=900",rating:5,reviews:128},
  {id:2,title:"Rose Temple Border",price:5899,old:8200,category:"Kanchipuram",badge:"Bestseller",img:"https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=900",rating:5,reviews:86},
  {id:3,title:"Ivory Chanderi",price:2499,old:3200,category:"Chanderi",badge:"Sale",img:"https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900",rating:5,reviews:214},
  {id:4,title:"Emerald Silk Draped",price:6999,old:9500,category:"Silk",badge:"Limited",img:"https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900",rating:4,reviews:53},
  {id:5,title:"Festive Red & Gold",price:7490,old:10200,category:"Designer",badge:"New",img:"https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=1200",rating:5,reviews:42},
  {id:6,title:"Garden Green Jewellery",price:3199,old:4600,category:"Cotton",badge:"",img:"https://images.pexels.com/photos/1454171/pexels-photo-1454171.jpeg?auto=compress&cs=tinysrgb&w=900",rating:5,reviews:189},
  {id:7,title:"Classic Crimson Drape",price:3899,old:5200,category:"Silk",badge:"Sale",img:"https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900",rating:4,reviews:67},
  {id:8,title:"Contemporary Jewellery Edit",price:4599,old:0,category:"Designer",badge:"",img:"https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900",rating:5,reviews:156}
];

const REVIEWS = [
  {name:"Ananya Sharma",role:"Verified buyer",avatar:"https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=900",text:"The Bridal Gold is even more beautiful in person. The layer, texture and finishing feel genuinely special."},
  {name:"Priya Mehta",role:"Frequent shopper",avatar:"https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=900",text:"I wanted something elegant but easy to wear. The Chanderi turned out to be exactly that."},
  {name:"Sneha Reddy",role:"Wedding guest",avatar:"https://images.pexels.com/photos/248077/pexels-photo-248077.jpeg?auto=compress&cs=tinysrgb&w=900",text:"The temple border was the highlight of my outfit. Beautiful quality and a lovely shopping experience."}
];

let cartCount = 0;
const productsGrid = document.getElementById("productsGrid");
const categoriesGrid = document.getElementById("categoriesGrid");
const reviewsGrid = document.getElementById("reviewsGrid");
const searchInput = document.getElementById("searchInput");
const toast = document.getElementById("toast");

function money(n){return "₹"+n.toLocaleString("en-IN")}
function stars(n){return "★".repeat(n)+"☆".repeat(5-n)}
function showToast(message){
  toast.textContent = message;
  toast.classList.add("show");
  clearTimeout(showToast.timer);
  showToast.timer=setTimeout(()=>toast.classList.remove("show"),2200);
}

function renderCategories(){
  categoriesGrid.innerHTML=CATEGORIES.map(c=>`
    <article class="category" data-category="${c.name}">
      <img src="${c.img}" alt="${c.name} jewellery collection" loading="lazy">
      <div class="category-info"><h3>${c.name}</h3><span>${c.count} pieces</span></div>
    </article>`).join("");
  categoriesGrid.querySelectorAll(".category").forEach(el=>{
    el.addEventListener("click",()=>{
      searchInput.value=el.dataset.category;
      filterProducts(el.dataset.category);
      document.getElementById("shop").scrollIntoView({behavior:"smooth"});
    });
  });
}

function renderProducts(list){
  if(!list.length){
    productsGrid.innerHTML='<div class="empty">No jewellerys match your search. Try “gold”, “cotton” or “designer”.</div>';
    return;
  }
  productsGrid.innerHTML=list.map(p=>`
    <article class="product">
      <div class="product-media">
        <img src="${p.img}" alt="${p.title}" loading="lazy">
        ${p.badge?`<span class="pill ${p.badge==="Sale"?"sale":""}">${p.badge}</span>`:""}
        <button class="wish" aria-label="Add ${p.title} to wishlist"><i class="fa-regular fa-heart"></i></button>
      </div>
      <div class="product-body">
        <div class="product-category">${p.category}</div>
        <h3>${p.title}</h3>
        <div class="price-row"><span class="price">${money(p.price)}</span>${p.old?`<span class="old">${money(p.old)}</span>`:""}</div>
        <div class="rating">${stars(p.rating)} <span>(${p.reviews})</span></div>
      </div>
      <button class="add" data-id="${p.id}"><i class="fa-solid fa-plus"></i> Add to bag</button>
    </article>`).join("");

  productsGrid.querySelectorAll(".add").forEach(btn=>{
    btn.addEventListener("click",()=>{
      cartCount++;
      document.getElementById("cartCount").textContent=cartCount;
      btn.classList.add("added");
      btn.innerHTML='<i class="fa-solid fa-check"></i> Added';
      showToast("Added to your bag");
      setTimeout(()=>{btn.classList.remove("added");btn.innerHTML='<i class="fa-solid fa-plus"></i> Add to bag'},1300);
    });
  });
}

function renderReviews(){
  reviewsGrid.innerHTML=REVIEWS.map(r=>`
    <article class="review">
      <div class="review-stars">★★★★★</div>
      <p>“${r.text}”</p>
      <div class="review-user">
        <img class="avatar" src="${r.avatar}" alt="${r.name}" loading="lazy">
        <div><strong>${r.name}</strong><span>${r.role}</span></div>
      </div>
    </article>`).join("");
}

function filterProducts(query){
  const q=query.trim().toLowerCase();
  renderProducts(PRODUCTS.filter(p=>!q || p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
}

searchInput.addEventListener("input",()=>filterProducts(searchInput.value));
document.getElementById("shopNow").addEventListener("click",()=>document.getElementById("shop").scrollIntoView({behavior:"smooth"}));
document.getElementById("newArrivals").addEventListener("click",()=>{searchInput.value="";renderProducts(PRODUCTS.filter(p=>p.badge==="New"));document.getElementById("shop").scrollIntoView({behavior:"smooth"})});
document.getElementById("storyBtn").addEventListener("click",()=>showToast("Our story page is coming soon"));
document.getElementById("cartBtn").addEventListener("click",()=>showToast(cartCount?`Your bag has ${cartCount} item${cartCount>1?"s":""}`:"Your bag is empty"));

document.getElementById("newsletterForm").addEventListener("submit",e=>{
  e.preventDefault();
  const email=document.getElementById("newsletterEmail");
  const msg=document.getElementById("newsletterMsg");
  if(!email.value.includes("@")){msg.textContent="Please enter a valid email.";return}
  msg.textContent="Thank you — you’re on the list.";
  email.value="";
});

const mobileToggle=document.getElementById("mobileToggle");
const mobileMenu=document.getElementById("mobileMenu");
mobileToggle.addEventListener("click",()=>{
  const open=mobileMenu.style.display==="block";
  mobileMenu.style.display=open?"none":"block";
  mobileToggle.innerHTML=open?'<i class="fa-solid fa-bars"></i>':'<i class="fa-solid fa-xmark"></i>';
});
mobileMenu.querySelectorAll("a").forEach(a=>a.addEventListener("click",()=>{
  mobileMenu.style.display="none";
  mobileToggle.innerHTML='<i class="fa-solid fa-bars"></i>';
}));

document.getElementById("year").textContent=new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
renderReviews();
</script>
</body>
</html>
