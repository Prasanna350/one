<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nova Market · Electronics, Clothing & Accessories</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    :root {
      --bg: #f4f6fb;
      --surface: #ffffff;
      --surface-2: #f9fafc;
      --ink: #0f172a;
      --muted: #64748b;
      --line: #e2e8f0;
      --line-2: #eef2f7;
      --primary: #2563eb;
      --primary-dark: #1d4ed8;
      --primary-soft: #dbeafe;
      --accent: #f59e0b;
      --success: #10b981;
      --rose: #e11d48;
      --shadow: 0 10px 30px rgba(15, 23, 42, 0.08);
      --shadow-lg: 0 22px 50px rgba(15, 23, 42, 0.12);
      --radius: 18px;
      --max: 1240px;
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      font-family: "Inter", system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.55;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    button, input, select { font: inherit; }
    button { border: 0; background: none; cursor: pointer; }
    img { display: block; width: 100%; }
    .container { width: min(var(--max), calc(100% - 40px)); margin: auto; }

    /* HEADER */
    header {
      position: sticky; top: 0; z-index: 100;
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(16px);
      border-bottom: 1px solid var(--line);
    }
    .header-inner { min-height: 72px; display: flex; align-items: center; gap: 24px; }
    .brand { display: flex; align-items: center; gap: 10px; white-space: nowrap; flex-shrink: 0; }
    .brand-mark {
      width: 38px; height: 38px; border-radius: 12px;
      display: grid; place-items: center;
      background: linear-gradient(135deg, var(--primary), #7c3aed);
      color: white; font-size: 16px;
      box-shadow: 0 6px 16px rgba(37, 99, 235, 0.3);
    }
    .brand-name {
      font-family: "Space Grotesk", sans-serif; font-size: 21px;
      font-weight: 700; letter-spacing: -0.5px; color: var(--ink);
    }
    .brand-name span { color: var(--primary); }
    nav { margin-left: auto; }
    nav ul { display: flex; list-style: none; gap: 4px; }
    nav a {
      padding: 8px 14px; border-radius: 10px; font-size: 14px;
      font-weight: 500; color: var(--muted); transition: 0.2s;
    }
    nav a:hover, nav a.active { background: var(--primary-soft); color: var(--primary-dark); }
    .header-tools { display: flex; align-items: center; gap: 8px; }
    .search {
      width: 210px; height: 42px; border: 1px solid var(--line);
      background: var(--surface); border-radius: 12px;
      display: flex; align-items: center; padding: 0 14px; gap: 8px;
      transition: 0.2s;
    }
    .search:focus-within { border-color: var(--primary); box-shadow: 0 0 0 3px var(--primary-soft); }
    .search input { width: 100%; border: 0; outline: 0; background: transparent; font-size: 13px; color: var(--ink); }
    .search i { color: var(--muted); font-size: 13px; }
    .icon-btn {
      width: 42px; height: 42px; border: 1px solid var(--line);
      border-radius: 12px; display: grid; place-items: center;
      color: var(--ink); background: var(--surface);
      transition: 0.2s; position: relative;
    }
    .icon-btn:hover { background: var(--primary); color: white; border-color: var(--primary); transform: translateY(-1px); }
    .cart-badge {
      position: absolute; right: -4px; top: -4px;
      min-width: 19px; height: 19px; padding: 0 5px;
      display: grid; place-items: center; border-radius: 999px;
      background: var(--rose); color: white; font-size: 10px;
      font-weight: 700; border: 2px solid var(--surface);
    }
    .mobile-btn { display: none; }
    #mobileMenu { display: none; background: var(--surface); border-top: 1px solid var(--line); }
    #mobileMenu .container { padding: 12px 0 18px; }
    #mobileMenu a { display: block; padding: 10px 4px; font-weight: 500; color: var(--ink); border-bottom: 1px solid var(--line-2); }
    #mobileMenu a:last-child { border-bottom: 0; }

    /* HERO */
    .hero-strip {
      background: linear-gradient(120deg, #0f172a 0%, #1e293b 55%, #2563eb 140%);
      border-radius: 24px; padding: 42px 46px; margin: 22px 0 30px;
      color: white; display: flex; align-items: center;
      justify-content: space-between; gap: 30px;
      overflow: hidden; position: relative;
    }
    .hero-strip:before {
      content: ""; position: absolute; inset: 0;
      background:
        radial-gradient(circle at 90% 20%, rgba(245, 158, 11, 0.25), transparent 45%),
        radial-gradient(circle at 15% 90%, rgba(124, 58, 237, 0.3), transparent 50%);
      pointer-events: none;
    }
    .hero-strip > * { position: relative; z-index: 1; }
    .hero-strip h1 {
      font-family: "Space Grotesk", sans-serif;
      font-size: clamp(30px, 4vw, 46px);
      line-height: 1.1; letter-spacing: -1.2px;
      font-weight: 700; margin-bottom: 10px;
    }
    .hero-strip h1 em {
      font-style: normal;
      background: linear-gradient(90deg, #fbbf24, #f59e0b);
      -webkit-background-clip: text; background-clip: text; color: transparent;
    }
    .hero-strip p { color: rgba(255, 255, 255, 0.75); font-size: 15px; max-width: 480px; }
    .hero-cta { display: flex; gap: 10px; flex-wrap: wrap; }
    .btn {
      display: inline-flex; align-items: center; justify-content: center;
      gap: 8px; padding: 12px 22px; border-radius: 12px;
      font-weight: 600; font-size: 14px; transition: 0.2s; white-space: nowrap;
    }
    .btn-white { background: white; color: var(--ink); }
    .btn-white:hover { background: var(--accent); color: #1e1a0f; transform: translateY(-2px); }
    .btn-outline-light { border: 1px solid rgba(255, 255, 255, 0.35); color: white; background: rgba(255, 255, 255, 0.06); }
    .btn-outline-light:hover { background: rgba(255, 255, 255, 0.15); }

    /* TOOLBAR */
    .toolbar {
      display: flex; flex-wrap: wrap; align-items: center;
      gap: 14px; padding: 4px 0 24px;
      border-bottom: 1px solid var(--line); margin-bottom: 30px;
    }
    .filter-buttons { display: flex; flex-wrap: wrap; gap: 8px; }
    .filter-btn {
      padding: 8px 18px; border-radius: 999px; border: 1px solid var(--line);
      background: var(--surface); font-size: 13px; font-weight: 600;
      color: var(--muted); transition: 0.2s;
    }
    .filter-btn:hover, .filter-btn.active {
      background: var(--primary); color: white; border-color: var(--primary);
      box-shadow: 0 4px 12px rgba(37, 99, 235, 0.25);
    }
    .sort-select {
      margin-left: auto; padding: 9px 16px; border-radius: 12px;
      border: 1px solid var(--line); background: var(--surface);
      font-size: 13px; font-weight: 500; color: var(--ink);
      outline: none; cursor: pointer;
    }
    .sort-select:focus { border-color: var(--primary); }
    .results-count { font-size: 13px; color: var(--muted); font-weight: 500; }

    /* PRODUCT GRID */
    .product-grid {
      display: grid; grid-template-columns: repeat(4, 1fr);
      gap: 20px; margin-bottom: 60px;
    }
    .product-card {
      background: var(--surface); border: 1px solid var(--line);
      border-radius: var(--radius); overflow: hidden;
      transition: transform 0.25s, box-shadow 0.25s, border-color 0.25s;
      display: flex; flex-direction: column; position: relative;
    }
    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: var(--shadow-lg); border-color: transparent;
    }
    .product-media {
      height: 230px; position: relative; overflow: hidden;
      background: var(--surface-2);
    }
    .product-media img { height: 100%; object-fit: cover; transition: transform 0.5s; }
    .product-card:hover .product-media img { transform: scale(1.06); }
    .badge {
      position: absolute; top: 12px; left: 12px;
      background: var(--ink); color: white; border-radius: 999px;
      padding: 5px 11px; font-size: 9px; font-weight: 800;
      letter-spacing: 0.6px; text-transform: uppercase; z-index: 1;
    }
    .badge.sale { background: var(--accent); color: #1e1a0f; }
    .badge.new { background: var(--success); }
    .wish-btn {
      position: absolute; top: 12px; right: 12px;
      width: 34px; height: 34px; border-radius: 10px;
      background: rgba(255, 255, 255, 0.92);
      display: grid; place-items: center; color: var(--ink);
      transition: 0.2s; z-index: 2; border: none; cursor: pointer; font-size: 13px;
    }
    .wish-btn:hover { color: var(--rose); transform: scale(1.08); background: white; }
    .product-info { padding: 15px 15px 8px; flex: 1; display: flex; flex-direction: column; }
    .product-category {
      font-size: 9px; color: var(--primary); font-weight: 800;
      letter-spacing: 0.8px; text-transform: uppercase;
    }
    .product-title {
      font-size: 15px; line-height: 1.35; margin: 6px 0 8px;
      color: var(--ink); font-weight: 600;
      display: -webkit-box; -webkit-line-clamp: 2;
      -webkit-box-orient: vertical; overflow: hidden;
    }
    .price-row { display: flex; align-items: center; gap: 8px; margin-top: auto; }
    .price { font-weight: 800; color: var(--ink); font-size: 16px; }
    .old-price { color: #94a3b8; text-decoration: line-through; font-size: 12px; }
    .rating {
      margin-top: 5px; color: var(--accent); font-size: 11px;
      display: flex; align-items: center; gap: 5px;
    }
    .rating span { color: var(--muted); font-size: 10px; }
    .add-btn {
      margin: 10px 15px 15px; background: var(--ink); color: white;
      padding: 10px; border-radius: 10px; font-weight: 700;
      font-size: 12px; transition: 0.2s;
      display: flex; align-items: center; justify-content: center;
      gap: 7px; border: none; cursor: pointer;
    }
    .add-btn:hover { background: var(--primary); }
    .add-btn.added { background: var(--success); }
    .empty-message {
      grid-column: 1 / -1; text-align: center; padding: 80px 20px;
      color: var(--muted); font-size: 15px;
    }

    /* TOAST & FOOTER */
    .toast {
      position: fixed; right: 20px; bottom: 20px; z-index: 200;
      background: var(--ink); color: white; padding: 13px 18px;
      border-radius: 12px; font-size: 13px; font-weight: 500;
      box-shadow: var(--shadow-lg); opacity: 0;
      transform: translateY(12px); pointer-events: none; transition: 0.25s;
    }
    .toast.show { opacity: 1; transform: translateY(0); }
    footer { background: #0f172a; color: #94a3b8; padding: 40px 0 24px; margin-top: 20px; }
    .footer-grid {
      display: grid; grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 35px; padding-bottom: 35px;
    }
    .footer-brand p { font-size: 13px; max-width: 300px; margin-top: 12px; line-height: 1.7; color: #94a3b8; }
    .footer-brand .brand-name { color: white; }
    .footer-brand .brand-name span { color: var(--accent); }
    footer h4 { color: white; font-size: 12px; text-transform: uppercase; letter-spacing: 1px; margin-bottom: 14px; font-weight: 700; }
    footer ul { list-style: none; display: grid; gap: 9px; }
    footer li a { font-size: 13px; color: #94a3b8; transition: 0.2s; }
    footer li a:hover { color: var(--accent); }
    .footer-bottom {
      border-top: 1px solid rgba(255, 255, 255, 0.08);
      padding-top: 20px; display: flex; justify-content: space-between;
      font-size: 12px; color: #64748b; flex-wrap: wrap; gap: 8px;
    }

    /* RESPONSIVE */
    @media (max-width: 1050px) {
      nav { display: none; }
      .mobile-btn { display: grid; }
      .header-inner { justify-content: space-between; }
      .search { width: 170px; }
      .product-grid { grid-template-columns: repeat(3, 1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; }
      .footer-brand { grid-column: 1 / -1; }
    }
    @media (max-width: 820px) {
      .product-grid { grid-template-columns: repeat(2, 1fr); }
      .toolbar { flex-direction: column; align-items: stretch; }
      .sort-select { margin-left: 0; width: 100%; }
      .hero-strip { flex-direction: column; align-items: flex-start; padding: 34px 28px; }
      .hero-strip p { max-width: 100%; }
    }
    @media (max-width: 680px) {
      .container { width: min(var(--max), calc(100% - 24px)); }
      .header-inner { min-height: 64px; gap: 8px; }
      .brand-name { font-size: 18px; }
      .brand-mark { width: 34px; height: 34px; font-size: 14px; border-radius: 10px; }
      .search { width: 42px; padding: 0; justify-content: center; }
      .search input { display: none; }
      .search i { font-size: 14px; }
      .icon-btn { width: 38px; height: 38px; border-radius: 10px; }
      .header-tools { gap: 5px; }
      .hero-strip { padding: 28px 20px; margin: 14px 0 22px; border-radius: 18px; }
      .hero-strip h1 { font-size: 26px; }
      .hero-strip p { font-size: 13px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .product-media { height: 160px; }
      .product-title { font-size: 13px; }
      .price { font-size: 14px; }
      .add-btn { margin: 6px 10px 12px; padding: 9px; font-size: 11px; }
      .product-info { padding: 11px 11px 5px; }
      .badge { font-size: 8px; padding: 4px 8px; }
      .wish-btn { width: 28px; height: 28px; top: 8px; right: 8px; font-size: 11px; border-radius: 8px; }
      .footer-grid { grid-template-columns: 1fr; gap: 24px; }
      .footer-bottom { flex-direction: column; }
    }
    @media (max-width: 420px) {
      .product-grid { grid-template-columns: 1fr; }
      .product-media { height: 240px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <button class="icon-btn mobile-btn" id="mobileToggle" aria-label="Open menu">
      <i class="fa-solid fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <span class="brand-mark"><i class="fa-solid fa-bolt"></i></span>
      <span class="brand-name">Nova <span>Market</span></span>
    </a>
    <nav id="desktopNav">
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Electronics</a></li>
        <li><a href="#">Clothing</a></li>
        <li><a href="#">Accessories</a></li>
      </ul>
    </nav>
    <div class="header-tools">
      <label class="search" aria-label="Search products">
        <input id="searchInput" type="search" placeholder="Search products...">
        <i class="fa-solid fa-magnifying-glass"></i>
      </label>
      <button class="icon-btn" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
      <button class="icon-btn" id="cartBtn" aria-label="Shopping bag">
        <i class="fa-solid fa-bag-shopping"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>
    </div>
  </div>
  <div id="mobileMenu">
    <div class="container">
      <a href="#">Home</a>
      <a href="#">Electronics</a>
      <a href="#">Clothing</a>
      <a href="#">Accessories</a>
    </div>
  </div>
</header>

<main class="container">
  <section class="hero-strip">
    <div>
      <h1>Everything you need.<br><em>Nothing you don't.</em></h1>
      <p>Shop the latest in electronics, clothing and accessories — all in one place, with fast shipping and easy returns.</p>
    </div>
    <div class="hero-cta">
      <button class="btn btn-white" id="shopNowBtn">
        Shop now <i class="fa-solid fa-arrow-right"></i>
      </button>
      <button class="btn btn-outline-light" id="dealsBtn">
        View deals
      </button>
    </div>
  </section>

  <div class="toolbar">
    <div class="filter-buttons" id="filterContainer">
      <button class="filter-btn active" data-filter="all">All Products</button>
      <button class="filter-btn" data-filter="Electronics">Electronics</button>
      <button class="filter-btn" data-filter="Clothing">Clothing</button>
      <button class="filter-btn" data-filter="Accessories">Accessories</button>
    </div>
    <select class="sort-select" id="sortSelect" aria-label="Sort products">
      <option value="default">Sort: Featured</option>
      <option value="price-low">Price: Low to High</option>
      <option value="price-high">Price: High to Low</option>
      <option value="rating">Top Rated</option>
    </select>
    <span class="results-count" id="resultsCount"></span>
  </div>

  <div class="product-grid" id="productGrid"></div>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="brand" href="#">
          <span class="brand-mark"><i class="fa-solid fa-bolt"></i></span>
          <span class="brand-name">Nova <span>Market</span></span>
        </a>
        <p>Your one-stop shop for electronics, clothing and accessories. Curated quality, honest prices, and fast delivery.</p>
      </div>
      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#">Electronics</a></li>
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Accessories</a></li>
          <li><a href="#">New Arrivals</a></li>
        </ul>
      </div>
      <div>
        <h4>Help</h4>
        <ul>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Track Order</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Shipping</a></li>
        </ul>
      </div>
      <div>
        <h4>About</h4>
        <ul>
          <li><a href="#">Our Story</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Sustainability</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      <span>© <span id="year"></span> Nova Market. All rights reserved.</span>
      <span>Built with care · Free shipping over $50</span>
    </div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
  // ============================================================
  //  COMPLETE PRODUCT DATA
  // ============================================================
  const PRODUCTS = [
    // --- Electronics (8) ---
    { id: 1,  title: "AuraPods Pro Wireless Earbuds", price: 129, old: 179, category: "Electronics", badge: "New",        img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 342 },
    { id: 2,  title: "NovaBook Air 14\" Laptop",       price: 899, old: 1099, category: "Electronics", badge: "Sale",      img: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 128 },
    { id: 3,  title: "PulseFit Smart Watch Series 6",  price: 199, old: 249, category: "Electronics", badge: "",          img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 215 },
    { id: 4,  title: "SoundWave Bluetooth Speaker",    price: 79,  old: 99,  category: "Electronics", badge: "Bestseller",img: "https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 456 },
    { id: 5,  title: "VisionPro 4K Action Camera",     price: 249, old: 329, category: "Electronics", badge: "New",       img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 87 },
    { id: 6,  title: "ChargeMate 20K Power Bank",      price: 49,  old: 69,  category: "Electronics", badge: "Sale",      img: "https://images.unsplash.com/photo-1609091839311-d5365f9ff1c5?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 312 },
    { id: 7,  title: "KeyPro Mechanical Keyboard",     price: 159, old: 0,   category: "Electronics", badge: "",          img: "https://images.unsplash.com/photo-1587829741301-dc798b83add3?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 178 },
    { id: 8,  title: "ClearView 27\" 4K Monitor",      price: 449, old: 549, category: "Electronics", badge: "",          img: "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 94 },

    // --- Clothing (8) ---
    { id: 9,  title: "Classic Denim Jacket",           price: 89,  old: 119, category: "Clothing", badge: "Bestseller", img: "https://images.unsplash.com/photo-1551028719-00167b16eac5?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 267 },
    { id: 10, title: "Organic Cotton Crew Tee",        price: 29,  old: 39,  category: "Clothing", badge: "Sale",       img: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 534 },
    { id: 11, title: "Slim Fit Chino Trousers",        price: 59,  old: 79,  category: "Clothing", badge: "",           img: "https://images.unsplash.com/photo-1473966968600-fa801b869a1a?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 189 },
    { id: 12, title: "Merino Wool Sweater",            price: 119, old: 159, category: "Clothing", badge: "New",        img: "https://images.unsplash.com/photo-1576566588028-4147f3842f27?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 76 },
    { id: 13, title: "Waterproof Rain Jacket",         price: 149, old: 199, category: "Clothing", badge: "Sale",       img: "https://images.unsplash.com/photo-1544966503-7cc5ac882d5f?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 145 },
    { id: 14, title: "Linen Summer Shirt",             price: 69,  old: 0,   category: "Clothing", badge: "",           img: "https://images.unsplash.com/photo-1596755094514-f87e34085b2c?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 223 },
    { id: 15, title: "Performance Joggers",            price: 49,  old: 69,  category: "Clothing", badge: "Bestseller", img: "https://images.unsplash.com/photo-1552902865-b72c031ac5ea?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 398 },
    { id: 16, title: "Cashmere Blend Scarf",           price: 79,  old: 99,  category: "Clothing", badge: "New",        img: "https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 62 },

    // --- Accessories (8) ---
    { id: 17, title: "Leather Minimalist Wallet",      price: 45,  old: 59,  category: "Accessories", badge: "Bestseller", img: "https://images.unsplash.com/photo-1627123424574-724758594e93?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 412 },
    { id: 18, title: "Aviator Polarized Sunglasses",   price: 89,  old: 129, category: "Accessories", badge: "Sale",       img: "https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 287 },
    { id: 19, title: "Canvas Travel Backpack",         price: 79,  old: 99,  category: "Accessories", badge: "New",        img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 156 },
    { id: 20, title: "Stainless Steel Water Bottle",   price: 35,  old: 45,  category: "Accessories", badge: "",           img: "https://images.unsplash.com/photo-1602143407151-7111542de6e8?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 621 },
    { id: 21, title: "Wireless Charging Pad",          price: 39,  old: 55,  category: "Accessories", badge: "Sale",       img: "https://images.unsplash.com/photo-1591290619762-49e2c3a5f5f2?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 183 },
    { id: 22, title: "Everyday Leather Belt",          price: 55,  old: 0,   category: "Accessories", badge: "",           img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 241 },
    { id: 23, title: "Compact Travel Umbrella",        price: 29,  old: 39,  category: "Accessories", badge: "Sale",       img: "https://images.unsplash.com/photo-1535916707207-35f97e715e1c?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 168 },
    { id: 24, title: "Noise-Isolating Earplugs",       price: 19,  old: 25,  category: "Accessories", badge: "New",        img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 92 }
  ];

  // =========================================================
