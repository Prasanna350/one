<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fluffy Clouds · Bakery &amp; Cute Treats</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700;800&family=Fredoka+One:wght@400&family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    :root {
      --bg: #fff9f5;
      --surface: #ffffff;
      --surface-2: #fff1f0;
      --ink: #4b2e2b;
      --muted: #b28b7e;
      --line: #f0d9d0;
      --line-2: #fae9e2;
      --primary: #ff8c7a;
      --primary-dark: #f16b5c;
      --primary-soft: #ffe2dc;
      --accent: #fbc8b5;
      --success: #8ecf9e;
      --rose: #e05a6b;
      --shadow: 0 10px 30px rgba(189, 122, 107, 0.12);
      --shadow-lg: 0 22px 50px rgba(189, 122, 107, 0.18);
      --radius: 30px;
      --max: 1240px;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      font-family: "Quicksand", "Inter", system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.55;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    button, input, select {
      font: inherit;
    }

    button {
      border: 0;
      background: none;
      cursor: pointer;
    }

    img {
      display: block;
      width: 100%;
    }

    .container {
      width: min(var(--max), calc(100% - 40px));
      margin: auto;
    }

    /* ----- HEADER ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255, 249, 245, 0.92);
      backdrop-filter: blur(16px);
      border-bottom: 2px dashed var(--line);
    }

    .header-inner {
      min-height: 80px;
      display: flex;
      align-items: center;
      gap: 24px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      white-space: nowrap;
      flex-shrink: 0;
    }

    .brand-mark {
      width: 46px;
      height: 46px;
      border-radius: 20px 20px 20px 6px;
      display: grid;
      place-items: center;
      background: linear-gradient(135deg, #ffb6a4, #ff8c7a);
      color: white;
      font-size: 22px;
      box-shadow: 0 6px 16px rgba(255, 140, 122, 0.4);
      transform: rotate(-2deg);
    }

    .brand-name {
      font-family: "Fredoka One", cursive;
      font-size: 28px;
      font-weight: 400;
      letter-spacing: -0.5px;
      color: var(--ink);
      line-height: 1.1;
    }

    .brand-name span {
      color: var(--primary);
    }

    nav {
      margin-left: auto;
    }

    nav ul {
      display: flex;
      list-style: none;
      gap: 6px;
    }

    nav a {
      padding: 10px 18px;
      border-radius: 40px;
      font-size: 15px;
      font-weight: 600;
      color: var(--muted);
      transition: 0.2s;
      letter-spacing: 0.2px;
    }

    nav a:hover,
    nav a.active {
      background: var(--primary-soft);
      color: var(--primary-dark);
    }

    .header-tools {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .search {
      width: 210px;
      height: 46px;
      border: 2px solid var(--line);
      background: var(--surface);
      border-radius: 40px;
      display: flex;
      align-items: center;
      padding: 0 18px;
      gap: 10px;
      transition: 0.2s;
    }

    .search:focus-within {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px var(--primary-soft);
    }

    .search input {
      width: 100%;
      border: 0;
      outline: 0;
      background: transparent;
      font-size: 14px;
      color: var(--ink);
      font-weight: 500;
    }

    .search input::placeholder {
      color: #d9b8ae;
      font-weight: 400;
    }

    .search i {
      color: var(--muted);
      font-size: 15px;
    }

    .icon-btn {
      width: 46px;
      height: 46px;
      border: 2px solid var(--line);
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--ink);
      background: var(--surface);
      transition: 0.2s;
      position: relative;
      font-size: 16px;
    }

    .icon-btn:hover {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      transform: scale(1.05) rotate(-3deg);
    }

    .cart-badge {
      position: absolute;
      right: -4px;
      top: -4px;
      min-width: 22px;
      height: 22px;
      padding: 0 6px;
      display: grid;
      place-items: center;
      border-radius: 999px;
      background: var(--rose);
      color: white;
      font-size: 11px;
      font-weight: 800;
      border: 3px solid var(--surface);
    }

    .mobile-btn {
      display: none;
    }

    #mobileMenu {
      display: none;
      background: var(--surface);
      border-top: 2px dashed var(--line);
    }

    #mobileMenu .container {
      padding: 14px 0 20px;
    }

    #mobileMenu a {
      display: block;
      padding: 12px 6px;
      font-weight: 600;
      color: var(--ink);
      border-bottom: 2px dashed var(--line-2);
      font-size: 16px;
    }

    #mobileMenu a:last-child {
      border-bottom: 0;
    }

    /* ----- HERO ----- */
    .hero-strip {
      background: linear-gradient(145deg, #fff1ec 0%, #ffe6de 100%);
      border-radius: 50px 50px 50px 16px;
      padding: 48px 52px;
      margin: 26px 0 34px;
      color: var(--ink);
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      overflow: hidden;
      position: relative;
      border: 3px dashed rgba(255, 140, 122, 0.3);
    }

    .hero-strip:before {
      content: "☁️";
      position: absolute;
      right: 8%;
      top: 12%;
      font-size: 80px;
      opacity: 0.25;
      pointer-events: none;
      transform: rotate(8deg);
    }

    .hero-strip:after {
      content: "🧁";
      position: absolute;
      left: 2%;
      bottom: 6%;
      font-size: 100px;
      opacity: 0.2;
      pointer-events: none;
      transform: rotate(-12deg);
    }

    .hero-strip > * {
      position: relative;
      z-index: 1;
    }

    .hero-strip h1 {
      font-family: "Fredoka One", cursive;
      font-size: clamp(34px, 4.5vw, 52px);
      line-height: 1.1;
      letter-spacing: -0.5px;
      font-weight: 400;
      margin-bottom: 14px;
      color: #3f2724;
    }

    .hero-strip h1 em {
      font-style: normal;
      background: linear-gradient(135deg, #f16b5c, #ffb6a4);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      display: inline-block;
    }

    .hero-strip p {
      color: #7a5a52;
      font-size: 17px;
      max-width: 480px;
      font-weight: 500;
      line-height: 1.7;
    }

    .hero-cta {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 28px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 15px;
      transition: 0.2s;
      white-space: nowrap;
      letter-spacing: 0.2px;
    }

    .btn-white {
      background: white;
      color: var(--primary-dark);
      box-shadow: 0 8px 18px rgba(241, 107, 92, 0.15);
    }

    .btn-white:hover {
      background: var(--primary);
      color: white;
      transform: translateY(-3px) scale(1.02);
      box-shadow: 0 14px 26px rgba(241, 107, 92, 0.3);
    }

    .btn-outline-light {
      border: 2.5px solid var(--primary);
      color: var(--primary-dark);
      background: rgba(255, 255, 255, 0.6);
      backdrop-filter: blur(4px);
    }

    .btn-outline-light:hover {
      background: var(--primary-soft);
      transform: translateY(-3px);
    }

    /* ----- TOOLBAR ----- */
    .toolbar {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 16px;
      padding: 6px 0 28px;
      border-bottom: 2px dashed var(--line);
      margin-bottom: 36px;
    }

    .filter-buttons {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
    }

    .filter-btn {
      padding: 10px 22px;
      border-radius: 40px;
      border: 2px solid var(--line);
      background: var(--surface);
      font-size: 14px;
      font-weight: 700;
      color: var(--muted);
      transition: 0.2s;
      letter-spacing: 0.2px;
    }

    .filter-btn:hover,
    .filter-btn.active {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      box-shadow: 0 6px 16px rgba(255, 140, 122, 0.35);
      transform: scale(1.02);
    }

    .sort-select {
      margin-left: auto;
      padding: 12px 20px;
      border-radius: 40px;
      border: 2px solid var(--line);
      background: var(--surface);
      font-size: 14px;
      font-weight: 600;
      color: var(--ink);
      outline: none;
      cursor: pointer;
      transition: 0.2s;
      appearance: none;
      background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23b28b7e' stroke-width='2'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
      background-repeat: no-repeat;
      background-position: right 16px center;
      padding-right: 48px;
    }

    .sort-select:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px var(--primary-soft);
    }

    .results-count {
      font-size: 14px;
      color: var(--muted);
      font-weight: 600;
      background: var(--surface);
      padding: 8px 18px;
      border-radius: 40px;
      border: 2px solid var(--line);
    }

    /* ----- PRODUCT GRID ----- */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 24px;
      margin-bottom: 70px;
    }

    .product-card {
      background: var(--surface);
      border: 2px solid var(--line);
      border-radius: 32px 32px 32px 12px;
      overflow: hidden;
      transition: transform 0.3s, box-shadow 0.3s, border-color 0.3s;
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .product-card:hover {
      transform: translateY(-8px) rotate(0.5deg);
      box-shadow: var(--shadow-lg);
      border-color: var(--primary-soft);
    }

    .product-media {
      height: 210px;
      position: relative;
      overflow: hidden;
      background: #fff1f0;
    }

    .product-media img {
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s;
    }

    .product-card:hover .product-media img {
      transform: scale(1.06);
    }

    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--primary);
      color: white;
      border-radius: 40px;
      padding: 6px 14px;
      font-size: 10px;
      font-weight: 800;
      letter-spacing: 0.6px;
      text-transform: uppercase;
      z-index: 1;
      box-shadow: 0 4px 12px rgba(255, 140, 122, 0.4);
    }

    .badge.sale {
      background: var(--accent);
      color: #4b2e2b;
    }

    .badge.new {
      background: var(--success);
    }

    .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      display: grid;
      place-items: center;
      color: var(--ink);
      transition: 0.2s;
      z-index: 2;
      border: 2px solid rgba(255, 255, 255, 0.8);
      cursor: pointer;
      font-size: 15px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
    }

    .wish-btn:hover {
      color: var(--rose);
      transform: scale(1.12) rotate(8deg);
      background: white;
      border-color: var(--rose);
    }

    .product-info {
      padding: 18px 18px 8px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }

    .product-category {
      font-size: 10px;
      color: var(--primary);
      font-weight: 800;
      letter-spacing: 1px;
      text-transform: uppercase;
    }

    .product-title {
      font-size: 17px;
      line-height: 1.35;
      margin: 8px 0 10px;
      color: var(--ink);
      font-weight: 700;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
      font-family: "Quicksand", sans-serif;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: auto;
    }

    .price {
      font-weight: 800;
      color: var(--ink);
      font-size: 18px;
    }

    .old-price {
      color: #c9a89e;
      text-decoration: line-through;
      font-size: 13px;
      font-weight: 500;
    }

    .rating {
      margin-top: 6px;
      color: #f7b731;
      font-size: 13px;
      display: flex;
      align-items: center;
      gap: 6px;
    }

    .rating span {
      color: var(--muted);
      font-size: 12px;
      font-weight: 600;
    }

    .add-btn {
      margin: 12px 18px 18px;
      background: var(--ink);
      color: white;
      padding: 12px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 13px;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: none;
      cursor: pointer;
      letter-spacing: 0.3px;
      box-shadow: 0 6px 14px rgba(75, 46, 43, 0.15);
    }

    .add-btn:hover {
      background: var(--primary);
      transform: scale(1.02);
      box-shadow: 0 10px 20px rgba(255, 140, 122, 0.4);
    }

    .add-btn.added {
      background: var(--success);
    }

    .empty-message {
      grid-column: 1 / -1;
      text-align: center;
      padding: 90px 20px;
      color: var(--muted);
      font-size: 18px;
      font-weight: 600;
      background: var(--surface);
      border-radius: 40px;
      border: 3px dashed var(--line);
    }

    /* ----- TOAST & FOOTER ----- */
    .toast {
      position: fixed;
      right: 24px;
      bottom: 24px;
      z-index: 200;
      background: var(--ink);
      color: white;
      padding: 16px 24px;
      border-radius: 50px;
      font-size: 15px;
      font-weight: 600;
      box-shadow: var(--shadow-lg);
      opacity: 0;
      transform: translateY(16px);
      pointer-events: none;
      transition: 0.3s cubic-bezier(0.2, 0.9, 0.3, 1.1);
      border: 2px solid var(--primary);
      letter-spacing: 0.2px;
    }

    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }

    footer {
      background: #f7e6df;
      color: #7a5a52;
      padding: 48px 0 28px;
      margin-top: 20px;
      border-top: 4px dashed #f0d9d0;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      padding-bottom: 40px;
    }

    .footer-brand p {
      font-size: 14px;
      max-width: 300px;
      margin-top: 14px;
      line-height: 1.8;
      color: #9d7b71;
      font-weight: 500;
    }

    .footer-brand .brand-name {
      color: var(--ink);
    }

    .footer-brand .brand-name span {
      color: var(--primary);
    }

    footer h4 {
      color: var(--ink);
      font-size: 13px;
      text-transform: uppercase;
      letter-spacing: 1.5px;
      margin-bottom: 18px;
      font-weight: 800;
      font-family: "Quicksand", sans-serif;
    }

    footer ul {
      list-style: none;
      display: grid;
      gap: 12px;
    }

    footer li a {
      font-size: 14px;
      color: #9d7b71;
      transition: 0.2s;
      font-weight: 500;
    }

    footer li a:hover {
      color: var(--primary-dark);
      padding-left: 4px;
    }

    .footer-bottom {
      border-top: 2px dashed #e9d3cb;
      padding-top: 24px;
      display: flex;
      justify-content: space-between;
      font-size: 13px;
      color: #b28b7e;
      flex-wrap: wrap;
      gap: 10px;
      font-weight: 500;
    }

    /* ----- RESPONSIVE ----- */
    @media (max-width: 1050px) {
      nav {
        display: none;
      }

      .mobile-btn {
        display: grid;
      }

      .header-inner {
        justify-content: space-between;
      }

      .search {
        width: 170px;
      }

      .product-grid {
        grid-template-columns: repeat(3, 1fr);
      }

      .footer-grid {
        grid-template-columns: 1fr 1fr;
      }

      .footer-brand {
        grid-column: 1 / -1;
      }
    }

    @media (max-width: 820px) {
      .product-grid {
        grid-template-columns: repeat(2, 1fr);
      }

      .toolbar {
        flex-direction: column;
        align-items: stretch;
      }

      .sort-select {
        margin-left: 0;
        width: 100%;
      }

      .hero-strip {
        flex-direction: column;
        align-items: flex-start;
        padding: 38px 30px;
      }

      .hero-strip p {
        max-width: 100%;
      }
    }

    @media (max-width: 680px) {
      .container {
        width: min(var(--max), calc(100% - 24px));
      }

      .header-inner {
        min-height: 70px;
        gap: 8px;
      }

      .brand-name {
        font-size: 22px;
      }

      .brand-mark {
        width: 40px;
        height: 40px;
        font-size: 18px;
        border-radius: 16px 16px 16px 4px;
      }

      .search {
        width: 46px;
        padding: 0;
        justify-content: center;
      }

      .search input {
        display: none;
      }

      .search i {
        font-size: 16px;
      }

      .icon-btn {
        width: 42px;
        height: 42px;
        border-radius: 50%;
      }

      .header-tools {
        gap: 6px;
      }

      .hero-strip {
        padding: 32px 22px;
        margin: 16px 0 24px;
        border-radius: 36px 36px 36px 12px;
      }

      .hero-strip h1 {
        font-size: 30px;
      }

      .hero-strip p {
        font-size: 14px;
      }

      .product-grid {
        grid-template-columns: 1fr 1fr;
        gap: 14px;
      }

      .product-media {
        height: 150px;
      }

      .product-title {
        font-size: 14px;
      }

      .price {
        font-size: 15px;
      }

      .add-btn {
        margin: 8px 12px 14px;
        padding: 10px;
        font-size: 12px;
      }

      .product-info {
        padding: 14px 14px 6px;
      }

      .badge {
        font-size: 8px;
        padding: 5px 10px;
      }

      .wish-btn {
        width: 32px;
        height: 32px;
        top: 10px;
        right: 10px;
        font-size: 12px;
      }

      .footer-grid {
        grid-template-columns: 1fr;
        gap: 28px;
      }

      .footer-bottom {
        flex-direction: column;
        text-align: center;
      }
    }

    @media (max-width: 420px) {
      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-media {
        height: 230px;
      }
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
      <span class="brand-mark"><i class="fa-solid fa-cloud"></i></span>
      <span class="brand-name">Fluffy <span>Clouds</span></span>
    </a>
    <nav id="desktopNav">
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Cakes</a></li>
        <li><a href="#">Pastries</a></li>
        <li><a href="#">Drinks</a></li>
      </ul>
    </nav>
    <div class="header-tools">
      <label class="search" aria-label="Search treats">
        <input id="searchInput" type="search" placeholder="Search treats...">
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
      <a href="#">Cakes</a>
      <a href="#">Pastries</a>
      <a href="#">Drinks</a>
    </div>
  </div>
</header>

<main class="container">
  <section class="hero-strip">
    <div>
      <h1>Freshly baked.<br><em>Made with love.</em></h1>
      <p>Discover our cloud-soft cakes, buttery pastries, and dreamy drinks — delivered to your door with a sprinkle of happiness.</p>
    </div>
    <div class="hero-cta">
      <button class="btn btn-white" id="shopNowBtn">
        Order now <i class="fa-solid fa-arrow-right"></i>
      </button>
      <button class="btn btn-outline-light" id="dealsBtn">
        Today's specials
      </button>
    </div>
  </section>

  <div class="toolbar">
    <div class="filter-buttons" id="filterContainer">
      <button class="filter-btn active" data-filter="all">All Treats</button>
      <button class="filter-btn" data-filter="Cakes">Cakes</button>
      <button class="filter-btn" data-filter="Pastries">Pastries</button>
      <button class="filter-btn" data-filter="Drinks">Drinks</button>
    </div>
    <select class="sort-select" id="sortSelect" aria-label="Sort treats">
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
          <span class="brand-mark"><i class="fa-solid fa-cloud"></i></span>
          <span class="brand-name">Fluffy <span>Clouds</span></span>
        </a>
        <p>Your cozy bakery for cloud-soft cakes, flaky pastries, and magical drinks. Baked fresh every morning with organic ingredients and lots of love.</p>
      </div>
      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#">Cakes</a></li>
          <li><a href="#">Pastries</a></li>
          <li><a href="#">Drinks</a></li>
          <li><a href="#">Gift Boxes</a></li>
        </ul>
      </div>
      <div>
        <h4>Help</h4>
        <ul>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Track Order</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Delivery</a></li>
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
      <span>© <span id="year"></span> Fluffy Clouds Bakery. All rights reserved.</span>
      <span>Baked with 🧁 · Free delivery over $30</span>
    </div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
  // ============================================================
  //  CUTE BAKERY PRODUCT DATA
  // ============================================================
  const PRODUCTS = [
    // --- Cakes (8) ---
    { id: 1,  title: "Strawberry Cloud Cake", price: 32, old: 42, category: "Cakes", badge: "New", img: "https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 342 },
    { id: 2,  title: "Velvet Dream Cupcakes (6)", price: 18, old: 24, category: "Cakes", badge: "Sale", img: "https://images.unsplash.com/photo-1614707267537-b85aaf00c4b7?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 128 },
    { id: 3,  title: "Lemon Sunshine Loaf", price: 22, old: 28, category: "Cakes", badge: "", img: "https://images.unsplash.com/photo-1586985289688-ca3cf47d3e6e?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 215 },
    { id: 4,  title: "Chocolate Lava Cake", price: 36, old: 48, category: "Cakes", badge: "Bestseller", img: "https://images.unsplash.com/photo-1606313564200-e75d5e30476c?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 456 },
    { id: 5,  title: "Matcha Mille Crepe", price: 42, old: 56, category: "Cakes", badge: "New", img: "https://images.unsplash.com/photo-1565958011703-44f9829ba187?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 87 },
    { id: 6,  title: "Blueberry Cheesecake", price: 38, old: 0, category: "Cakes", badge: "Sale", img: "https://images.unsplash.com/photo-1533134242443-d4fd215305ad?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 312 },
    { id: 7,  title: "Carrot Walnut Cake", price: 28, old: 36, category: "Cakes", badge: "", img: "https://images.unsplash.com/photo-1621303837174-89787a7d4729?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 178 },
    { id: 8,  title: "Red Velvet Layer Cake", price: 44, old: 58, category: "Cakes", badge: "", img: "https://images.unsplash.com/photo-1586985289906-406988974504?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 94 },

    // --- Pastries (8) ---
    { id: 9,  title: "Butter Croissant (3 pcs)", price: 12, old: 16, category: "Pastries", badge: "Bestseller", img: "https://images.unsplash.com/photo-1555507036-ab1f4038808a?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 267 },
    { id: 10, title: "Cinnamon Roll Delight", price: 9, old: 12, category: "Pastries", badge: "Sale", img: "https://images.unsplash.com/photo-1583529245878-6b4a0e6d3a4a?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 534 },
    { id: 11, title: "Almond Danish Pastry", price: 7, old: 10, category: "Pastries", badge: "", img: "https://images.unsplash.com/photo-1509365465985-25d11c17e812?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 189 },
    { id: 12, title: "Raspberry Macarons (6)", price: 16, old: 22, category: "Pastries", badge: "New", img: "https://images.unsplash.com/photo-1569864358642-9d1684040f43?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 76 },
    { id: 13, title: "Chocolate Eclair", price: 6, old: 8, category: "Pastries", badge: "Sale", img: "https://images.unsplash.com/photo-1612203985729-70726954388c?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 145 },
    { id: 14, title: "Apple Turnover", price: 5, old: 0, category: "Pastries", badge: "", img: "https://images.unsplash.com/photo-1601050690597-df0568f70950?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 223 },
    { id: 15, title: "Blueberry Muffin", price: 5, old: 7, category: "Pastries", badge: "Bestseller", img: "https://images.unsplash.com/photo-1607958996333-41aef7caefaa?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 398 },
    { id: 16, title: "Pain au Chocolat", price: 6, old: 8, category: "Pastries", badge: "New", img: "https://images.unsplash.com/photo-1608198093002-ad4e005484ec?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 62 },

    // --- Drinks (8) ---
    { id: 17, title: "Strawberry Milkshake", price: 8, old: 11, category: "Drinks", badge: "Bestseller", img: "https://images.unsplash.com/photo-1579954115545-a95591f28bfc?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 412 },
    { id: 18, title: "Iced Matcha Latte", price: 7, old: 9, category: "Drinks", badge: "Sale", img: "https://images.unsplash.com/photo-1536256263959-770b48d82b0a?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 287 },
    { id: 19, title: "Hot Chocolate Dream", price: 6, old: 8, category: "Drinks", badge: "New", img: "https://images.unsplash.com/photo-1542990253-0d0f5be5f0ed?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 156 },
    { id: 20, title: "Vanilla Chai Latte", price: 6, old: 8, category: "Drinks", badge: "", img: "https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 621 },
    { id: 21, title: "Mango Smoothie", price: 9, old: 12, category: "Drinks", badge: "Sale", img: "https://images.unsplash.com/photo-1546173159-315724a31696?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 183 },
    { id: 22, title: "Rose Lemonade", price: 5, old: 0, category: "Drinks", badge: "", img: "https://images.unsplash.com/photo-1523677011781-c91d1bbe2f9d?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 241 },
    { id: 23, title: "Caramel Frappe", price: 8, old: 10, category: "Drinks", badge: "Sale", img: "https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 168 },
    { id: 24, title: "Berry Iced Tea", price: 5, old: 7, category: "Drinks", badge: "New", img: "https://images.unsplash.com/photo-1556679343-c7306c1976bc?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 92 }
  ];

  // ============================================================
  //  CUTE BAKERY APP LOGIC
  // ============================================================
  let activeFilter = "all";
  let activeSort = "default";
  let cartCount = 0;

  const productGrid = document.getElementById("productGrid");
  const filterContainer = document.getElementById("filterContainer");
  const sortSelect = document.getElementById("sortSelect");
  const resultsCount = document.getElementById("resultsCount");
  const searchInput = document.getElementById("searchInput");
  const toast = document.getElementById("toast");
  const cartCountEl = document.getElementById("cartCount");
  const yearEl = document.getElementById("year");
  const mobileToggle = document.getElementById("mobileToggle");
  const mobileMenu = document.getElementById("mobileMenu");

  yearEl.textContent = new Date().getFullYear();

  // ---- Mobile menu ----
  mobileToggle.addEventListener("click", () => {
    mobileMenu.style.display = mobileMenu.style.display === "block" ? "none" : "block";
  });

  // ---- Star rendering ----
  function renderStars(rating) {
    let stars = "";
    for (let i = 1; i <= 5; i++) {
      if (i <= rating) stars += '<i class="fa-solid fa-star"></i>';
      else stars += '<i class="fa-regular fa-star"></i>';
    }
    return stars;
  }

  // ---- Filter & sort products ----
  function getFilteredProducts() {
    let list = [...PRODUCTS];

    if (activeFilter !== "all") {
      list = list.filter(p => p.category === activeFilter);
    }

    const q = searchInput.value.trim().toLowerCase();
    if (q) {
      list = list.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
    }

    switch (activeSort) {
      case "price-low": list.sort((a, b) => a.price - b.price); break;
      case "price-high": list.sort((a, b) => b.price - a.price); break;
      case "rating": list.sort((a, b) => b.rating - a.rating || b.reviews - a.reviews); break;
      default: list.sort((a, b) => a.id - b.id);
    }
    return list;
  }

  // ---- Render product grid ----
  function renderProducts() {
    const list = getFilteredProducts();

    resultsCount.textContent = list.length + " treat" + (list.length !== 1 ? "s" : "");

    if (!list.length) {
      productGrid.innerHTML = `<div class="empty-message">☁️ No treats found — try a different search!</div>`;
      return;
    }

    let html = "";
    list.forEach(p => {
      const hasOld = p.old && p.old > 0;
      const badgeClass = p.badge === "Sale" ? "sale" : (p.badge === "New" ? "new" : "");
      const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : "";

      html += `
        <article class="product-card" data-id="${p.id}">
          <div class="product-media">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add to wishlist"><i class="fa-regular fa-heart"></i></button>
            <img src="${p.img}" alt="${p.title}" loading="lazy">
          </div>
          <div class="product-info">
            <div class="product-category">${p.category}</div>
            <h3 class="product-title">${p.title}</h3>
            <div class="price-row">
              <span class="price">$${p.price}</span>
              ${hasOld ? `<span class="old-price">$${p.old}</span>` : ""}
            </div>
            <div class="rating">
              ${renderStars(p.rating)}
              <span>(${p.reviews})</span>
            </div>
          </div>
          <button class="add-btn" data-id="${p.id}">
            <i class="fa-solid fa-cart-plus"></i> Add to bag
          </button>
        </article>
      `;
    });

    productGrid.innerHTML = html;

    // Attach add-to-cart handlers
    productGrid.querySelectorAll(".add-btn").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const id = Number(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;

        cartCount++;
        cartCountEl.textContent = cartCount;

        btn.classList.add("added");
        btn.innerHTML = '<i class="fa-solid fa-check"></i> Added!';
        setTimeout(() => {
          btn.classList.remove("added");
          btn.innerHTML = '<i class="fa-solid fa-cart-plus"></i> Add to bag';
        }, 1200);

        showToast(`🧁 ${product.title} added to your bag!`);
      });
    });

    // Wishlist button
    productGrid.querySelectorAll(".wish-btn").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const icon = btn.querySelector("i");
        icon.classList.toggle("fa-regular");
        icon.classList.toggle("fa-solid");
        if (icon.classList.contains("fa-solid")) {
          btn.style.color = "var(--rose)";
          showToast("💖 Saved to your wishlist!");
        } else {
          btn.style.color = "";
        }
      });
    });
  }

  // ---- Toast ----
  let toastTimer;
  function showToast(msg) {
    toast.textContent = msg;
    toast.classList.add("show");
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove("show"), 2200);
  }

  // ---- Filter buttons ----
  filterContainer.addEventListener("click", (e) => {
    const btn = e.target.closest(".filter-btn");
    if (!btn) return;

    filterContainer.querySelectorAll(".filter-btn").forEach(b => b.classList.remove("active"));
    btn.classList.add("active");
    activeFilter = btn.dataset.filter;
    renderProducts();
  });

  // ---- Sort ----
  sortSelect.addEventListener("change", () => {
    activeSort = sortSelect.value;
    renderProducts();
  });

  // ---- Search (live) ----
  let searchTimer;
  searchInput.addEventListener("input", () => {
    clearTimeout(searchTimer);
    searchTimer = setTimeout(renderProducts, 200);
  });

  // ---- Hero buttons ----
  document.getElementById("shopNowBtn").addEventListener("click", () => {
    document.getElementById("productGrid").scrollIntoView({ behavior: "smooth", block: "start" });
    showToast("✨ Happy browsing! ✨");
  });

  document.getElementById("dealsBtn").addEventListener("click", () => {
    activeFilter = "all";
    filterContainer.querySelectorAll(".filter-btn").forEach(b => {
      b.classList.toggle("active", b.dataset.filter === "all");
    });
    activeSort = "price-low";
    sortSelect.value = "price-low";
    renderProducts();
    document.getElementById("productGrid").scrollIntoView({ behavior: "smooth", block: "start" });
    showToast("🎉 Showing sweet deals first!");
  });

  // ---- Cart button ----
  document.getElementById("cartBtn").addEventListener("click", () => {
    showToast(`🛍️ Your bag has ${cartCount} item${cartCount !== 1 ? "s" : ""}`);
  });

  // ---- Initial render ----
  renderProducts();
</script>
</body>
</html>
