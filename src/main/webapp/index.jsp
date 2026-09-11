<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>New Products · Eternal Jewels</title>
  <!-- Google Fonts + Font Awesome (same as original) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    /* ===== ORIGINAL THEME VARIABLES + JEWELLERY THEME OVERRIDES ===== */
    :root {
      --ink: #211b1d;
      --muted: #766d70;
      --cream: #f8f3ed;
      --paper: #fffdf9;
      --rose: #a85661;
      --rose-dark: #873f4a;
      --rose-soft: #ead4d5;
      --gold: #b58a48;
      --line: #e9dfd7;
      --white: #fff;
      --shadow: 0 18px 50px rgba(43,28,31,.09);
      --shadow-sm: 0 8px 25px rgba(43,28,31,.07);
      --radius: 22px;
      --max: 1220px;
    }
    /* Jewellery theme layer */
    :root {
      --bg: #fbf8f1;
      --surface: #fffdf8;
      --ink: #17251f;
      --muted: #6f756e;
      --green: #173c32;
      --green-2: #285b4d;
      --gold: #b28a3b;
      --gold-light: #d8bc78;
      --line: #e7dfce;
      --shadow: 0 18px 45px rgba(36,48,40,.10);
    }
    * { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      font-family: "DM Sans", system-ui, sans-serif;
      background: var(--bg);
      color: var(--ink);
      line-height: 1.5;
    }
    a { color: inherit; text-decoration: none; }
    button, input { font: inherit; }
    button { border: 0; background: none; cursor: pointer; }
    img { display: block; width: 100%; }
    .container { width: min(var(--max), calc(100% - 40px)); margin: auto; }

    /* ===== HEADER (adapted from original) ===== */
    header {
      position: sticky; top: 0; z-index: 100;
      background: rgba(251, 248, 241, .96);
      backdrop-filter: blur(18px);
      border-bottom: 1px solid var(--line);
    }
    .header-inner {
      min-height: 76px; display: flex; align-items: center; gap: 28px;
    }
    .brand { display: flex; align-items: center; gap: 10px; white-space: nowrap; }
    .brand-mark {
      width: 40px; height: 40px; border-radius: 50%;
      display: grid; place-items: center;
      background: var(--green); color: #f5dfb0;
      font-size: 17px;
    }
    .brand-name {
      font-family: "Playfair Display", serif; font-size: 22px; font-weight: 700;
      letter-spacing: -.3px; color: var(--green);
    }
    .brand-name span { color: var(--gold); }
    nav { margin-left: auto; }
    nav ul { display: flex; list-style: none; gap: 6px; }
    nav a {
      padding: 9px 13px; border-radius: 999px; font-size: 14px; color: var(--muted);
      transition: .2s;
    }
    nav a:hover, nav a.active { background: #f0e6df; color: var(--ink); }
    .header-tools { display: flex; align-items: center; gap: 8px; }
    .search {
      width: 190px; height: 42px; border: 1px solid var(--line);
      background: var(--paper); border-radius: 999px;
      display: flex; align-items: center; padding: 0 14px; gap: 8px;
    }
    .search input {
      width: 100%; border: 0; outline: 0; background: transparent;
      font-size: 13px; color: var(--ink);
    }
    .search i { color: var(--muted); font-size: 13px; }
    .icon-btn {
      width: 42px; height: 42px; border: 1px solid var(--line);
      border-radius: 50%; display: grid; place-items: center; color: var(--ink);
      background: var(--paper); transition: .2s; position: relative;
    }
    .icon-btn:hover { background: var(--ink); color: white; transform: translateY(-1px); }
    .cart-badge {
      position: absolute; right: -2px; top: -3px; width: 19px; height: 19px;
      display: grid; place-items: center; border-radius: 50%; background: var(--gold);
      color: white; font-size: 10px; font-weight: 700; border: 2px solid var(--paper);
    }
    .mobile-btn { display: none; }
    #mobileMenu { display: none; background: #fffdf9; border-top: 1px solid var(--line); }
    #mobileMenu .container { padding: 12px 0 18px; }
    #mobileMenu a { display: block; padding: 8px 0; color: var(--ink); font-weight: 500; }

    /* ===== PAGE TITLE & TOOLBAR ===== */
    .page-header {
      padding: 42px 0 18px;
    }
    .page-header h1 {
      font-family: "Playfair Display", serif;
      font-size: clamp(38px, 5vw, 58px);
      font-weight: 600;
      letter-spacing: -1.5px;
      color: var(--green);
      line-height: 1.1;
    }
    .page-header p {
      color: var(--muted);
      font-size: 16px;
      max-width: 600px;
      margin-top: 10px;
    }
    .toolbar {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      gap: 16px;
      padding: 18px 0 28px;
      border-bottom: 1px solid var(--line);
      margin-bottom: 32px;
    }
    .filter-buttons {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
    }
    .filter-btn {
      padding: 8px 18px;
      border-radius: 999px;
      border: 1px solid var(--line);
      background: var(--paper);
      font-size: 13px;
      font-weight: 600;
      color: var(--muted);
      transition: .2s;
    }
    .filter-btn:hover,
    .filter-btn.active {
      background: var(--green);
      color: white;
      border-color: var(--green);
    }
    .sort-select {
      margin-left: auto;
      padding: 8px 16px;
      border-radius: 999px;
      border: 1px solid var(--line);
      background: var(--paper);
      font-size: 13px;
      color: var(--ink);
      outline: none;
      cursor: pointer;
    }
    .results-count {
      font-size: 13px;
      color: var(--muted);
    }

    /* ===== PRODUCT GRID (enhanced) ===== */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 22px;
      margin-bottom: 60px;
    }
    .product-card {
      background: var(--surface);
      border: 1px solid var(--line);
      border-radius: 22px;
      overflow: hidden;
      transition: transform .25s, box-shadow .25s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow);
    }
    .product-media {
      height: 320px;
      position: relative;
      overflow: hidden;
      background: #eee;
    }
    .product-media img {
      height: 100%;
      object-fit: cover;
      transition: transform .45s;
    }
    .product-card:hover .product-media img {
      transform: scale(1.05);
    }
    .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--green);
      color: white;
      border-radius: 999px;
      padding: 6px 12px;
      font-size: 10px;
      font-weight: 800;
      letter-spacing: .5px;
      text-transform: uppercase;
      z-index: 1;
    }
    .badge.sale {
      background: var(--gold);
      color: #231b13;
    }
    .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 38px;
      height: 38px;
      border-radius: 50%;
      background: rgba(255,255,255,.92);
      display: grid;
      place-items: center;
      color: var(--ink);
      transition: .2s;
      z-index: 2;
      border: none;
      cursor: pointer;
    }
    .wish-btn:hover {
      color: var(--rose);
      transform: scale(1.1);
      background: white;
    }
    .product-info {
      padding: 18px 18px 12px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .product-category {
      font-size: 10px;
      color: var(--muted);
      font-weight: 800;
      letter-spacing: 1px;
      text-transform: uppercase;
    }
    .product-title {
      font-family: "Playfair Display", serif;
      font-size: 20px;
      line-height: 1.25;
      margin: 6px 0 8px;
      color: var(--green);
      font-weight: 600;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .price {
      font-weight: 800;
      color: var(--gold);
      font-size: 17px;
    }
    .old-price {
      color: #aaa;
      text-decoration: line-through;
      font-size: 12px;
    }
    .rating {
      margin-top: 6px;
      color: var(--gold);
      font-size: 12px;
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .rating span {
      color: var(--muted);
      font-size: 11px;
    }
    .add-btn {
      margin: 12px 18px 18px;
      background: var(--green);
      color: white;
      padding: 12px;
      border-radius: 12px;
      font-weight: 700;
      font-size: 13px;
      transition: .2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: none;
      cursor: pointer;
    }
    .add-btn:hover {
      background: var(--gold);
      color: #1e1a17;
    }
    .add-btn.added {
      background: #2f806f;
      color: white;
    }
    .empty-message {
      grid-column: 1 / -1;
      text-align: center;
      padding: 70px 20px;
      color: var(--muted);
      font-size: 16px;
    }

    /* ===== TOAST & FOOTER (consistent) ===== */
    .toast {
      position: fixed;
      right: 20px;
      bottom: 20px;
      z-index: 200;
      background: var(--ink);
      color: white;
      padding: 13px 17px;
      border-radius: 12px;
      font-size: 13px;
      box-shadow: var(--shadow);
      opacity: 0;
      transform: translateY(10px);
      pointer-events: none;
      transition: .25s;
    }
    .toast.show {
      opacity: 1;
      transform: translateY(0);
    }
    footer {
      background: #102b24 !important;
      color: #e9e2d2 !important;
      padding: 40px 0 20px;
      margin-top: 30px;
    }
    .footer-bottom {
      border-top: 1px solid rgba(255,255,255,.1);
      padding-top: 20px;
      display: flex;
      justify-content: space-between;
      font-size: 11px;
      color: #b9b0a0;
    }
    .footer-bottom a { color: #d8bc78; }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1050px) {
      nav { display: none; }
      .mobile-btn { display: grid; }
      .header-inner { justify-content: space-between; }
      .search { width: 170px; }
      .product-grid { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 820px) {
      .product-grid { grid-template-columns: repeat(2, 1fr); }
      .toolbar { flex-direction: column; align-items: stretch; }
      .sort-select { margin-left: 0; width: 100%; }
    }
    @media (max-width: 680px) {
      .container { width: min(var(--max), calc(100% - 24px)); }
      .header-inner { min-height: 64px; gap: 8px; }
      .brand-name { font-size: 19px; }
      .brand-mark { width: 35px; height: 35px; font-size: 15px; }
      .search { width: 42px; padding: 0; justify-content: center; }
      .search input { display: none; }
      .search i { font-size: 14px; }
      .icon-btn { width: 38px; height: 38px; }
      .header-tools { gap: 5px; }
      .page-header { padding: 28px 0 12px; }
      .page-header h1 { font-size: 36px; }
      .product-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .product-media { height: 200px; }
      .product-title { font-size: 16px; }
      .price { font-size: 14px; }
      .add-btn { margin: 8px 12px 14px; padding: 10px; font-size: 12px; }
      .product-info { padding: 12px 12px 6px; }
      .badge { font-size: 8px; padding: 4px 8px; }
      .wish-btn { width: 32px; height: 32px; top: 8px; right: 8px; }
    }
    @media (max-width: 420px) {
      .product-grid { grid-template-columns: 1fr; }
      .product-media { height: 280px; }
    }
  </style>
</head>
<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <button class="icon-btn mobile-btn" id="mobileToggle" aria-label="Open menu">
      <i class="fa-solid fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <span class="brand-mark"><i class="fa-solid fa-feather-pointed"></i></span>
      <span class="brand-name">Eternal <span>Jewellery</span></span>
    </a>
    <nav id="desktopNav">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Weaves</a></li>
        <li><a class="active" href="#">New Products</a></li>
        <li><a href="#">Our Story</a></li>
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
      <a href="#">Weaves</a>
      <a href="#">New Products</a>
      <a href="#">Our Story</a>
    </div>
  </div>
</header>

<!-- ===== MAIN CONTENT ===== -->
<main class="container">

  <!-- Page header -->
  <div class="page-header">
    <h1>New arrivals</h1>
    <p>Freshly curated pieces — modern silhouettes, timeless craft.</p>
  </div>

  <!-- Toolbar: filters & sorting -->
  <div class="toolbar">
    <div class="filter-buttons" id="filterContainer">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="Silk">Silk</button>
      <button class="filter-btn" data-filter="Cotton">Cotton</button>
      <button class="filter-btn" data-filter="Bridal Gold">Bridal Gold</button>
      <button class="filter-btn" data-filter="Kanchipuram">Kanchipuram</button>
      <button class="filter-btn" data-filter="Chanderi">Chanderi</button>
      <button class="filter-btn" data-filter="Designer">Designer</button>
    </div>
    <select class="sort-select" id="sortSelect" aria-label="Sort products">
      <option value="default">Sort: Featured</option>
      <option value="price-low">Price: Low to High</option>
      <option value="price-high">Price: High to Low</option>
      <option value="rating">Top Rated</option>
    </select>
    <span class="results-count" id="resultsCount"></span>
  </div>

  <!-- Product grid container -->
  <div class="product-grid" id="productGrid"></div>

</main>

<!-- ===== FOOTER ===== -->
<footer>
  <div class="container">
    <div class="footer-bottom">
      <span>© <span id="year"></span> Eternal Jewels — New Products</span>
      <span>Handcrafted with care · Indian craft, global style</span>
    </div>
  </div>
</footer>

<!-- Toast notification -->
<div class="toast" id="toast"></div>

<script>
  // ============================================================
  //  PRODUCT DATA — expanded with new items (all original + new)
  // ============================================================
  const PRODUCTS = [
    // --- Original eight (prices kept) ---
    { id: 1, title: "Crimson Bridal Gold Silk", price: 4299, old: 6500, category: "Bridal Gold", badge: "New", img: "https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 128 },
    { id: 2, title: "Rose Temple Border", price: 5899, old: 8200, category: "Kanchipuram", badge: "Bestseller", img: "https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 86 },
    { id: 3, title: "Ivory Chanderi", price: 2499, old: 3200, category: "Chanderi", badge: "Sale", img: "https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 214 },
    { id: 4, title: "Emerald Silk Draped", price: 6999, old: 9500, category: "Silk", badge: "Limited", img: "https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 53 },
    { id: 5, title: "Festive Red & Gold", price: 7490, old: 10200, category: "Designer", badge: "New", img: "https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=1200", rating: 5, reviews: 42 },
    { id: 6, title: "Garden Green Jewellery", price: 3199, old: 4600, category: "Cotton", badge: "", img: "https://images.pexels.com/photos/1454171/pexels-photo-1454171.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 189 },
    { id: 7, title: "Classic Crimson Drape", price: 3899, old: 5200, category: "Silk", badge: "Sale", img: "https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 67 },
    { id: 8, title: "Contemporary Jewellery Edit", price: 4599, old: 0, category: "Designer", badge: "", img: "https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 156 },
    // --- New additions for the "New Products" application ---
    { id: 9, title: "Golden Hour Kanjivaram", price: 5899, old: 7900, category: "Kanchipuram", badge: "New", img: "https://images.pexels.com/photos/1458867/pexels-photo-1458867.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 37 },
    { id: 10, title: "Ivory & Gold Chanderi", price: 3299, old: 4400, category: "Chanderi", badge: "", img: "https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 91 },
    { id: 11, title: "Ruby Silk Heritage", price: 6999, old: 9200, category: "Silk", badge: "Limited", img: "https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 24 },
    { id: 12, title: "Pearl Cotton Elegance", price: 2199, old: 3100, category: "Cotton", badge: "Sale", img: "https://images.pexels.com/photos/1454171/pexels-photo-1454171.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 77 },
    { id: 13, title: "Royal Bridal Gold Set", price: 8999, old: 12500, category: "Bridal Gold", badge: "New", img: "https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=1200", rating: 5, reviews: 15 },
    { id: 14, title: "Midnight Blue Designer", price: 5799, old: 7500, category: "Designer", badge: "", img: "https://images.pexels.com/photos/2735970/pexels-photo-2735970.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 48 },
    { id: 15, title: "Temple Border Silk", price: 6499, old: 8800, category: "Silk", badge: "Bestseller", img: "https://images.pexels.com/photos/1091930/pexels-photo-1091930.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 5, reviews: 112 },
    { id: 16, title: "Mint Fresh Cotton", price: 1899, old: 2500, category: "Cotton", badge: "Sale", img: "https://images.pexels.com/photos/1454171/pexels-photo-1454171.jpeg?auto=compress&cs=tinysrgb&w=900", rating: 4, reviews: 203 }
  ];

  // ============================================================
  //  STATE & DOM REFERENCES
  // ============================================================
  let cartCount = 0;
  let currentFilter = "all";
  let currentSort = "default";
  let searchQuery = "";

  const productGrid = document.getElementById("productGrid");
  const filterContainer = document.getElementById("filterContainer");
  const sortSelect = document.getElementById("sortSelect");
  const searchInput = document.getElementById("searchInput");
  const resultsCount = document.getElementById("resultsCount");
  const cartCountEl = document.getElementById("cartCount");
  const toast = document.getElementById("toast");
  const yearEl = document.getElementById("year");
  const mobileToggle = document.getElementById("mobileToggle");
  const mobileMenu = document.getElementById("mobileMenu");

  // ============================================================
  //  UTILITIES
  // ============================================================
  function money(n) {
    return "₹" + n.toLocaleString("en-IN");
  }
  function stars(rating) {
    return "★".repeat(rating) + "☆".repeat(5 - rating);
  }
  function showToast(message) {
    toast.textContent = message;
    toast.classList.add("show");
    clearTimeout(showToast.timer);
    showToast.timer = setTimeout(() => toast.classList.remove("show"), 2200);
  }

  // ============================================================
  //  FILTER + SORT LOGIC
  // ============================================================
  function getVisibleProducts() {
    let list = [...PRODUCTS];

    // 1. Filter by category
    if (currentFilter !== "all") {
      list = list.filter(p => p.category === currentFilter);
    }

    // 2. Filter by search query
    if (searchQuery.trim()) {
      const q = searchQuery.trim().toLowerCase();
      list = list.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
    }

    // 3. Sort
    if (currentSort === "price-low") {
      list.sort((a, b) => a.price - b.price);
    } else if (currentSort === "price-high") {
      list.sort((a, b) => b.price - a.price);
    } else if (currentSort === "rating") {
      list.sort((a, b) => b.rating - a.rating || b.reviews - a.reviews);
    }
    // 'default' keeps insertion order (featured)

    return list;
  }

  // ============================================================
  //  RENDER PRODUCTS
  // ============================================================
  function renderProducts() {
    const list = getVisibleProducts();

    // Update results count
    resultsCount.textContent = `${list.length} item${list.length !== 1 ? "s" : ""}`;

    if (list.length === 0) {
      productGrid.innerHTML = `<div class="empty-message">No products match your criteria. Try a different filter or search term.</div>`;
      return;
    }

    productGrid.innerHTML = list.map(p => {
      const badgeHtml = p.badge
        ? `<span class="badge ${p.badge === "Sale" ? "sale" : ""}">${p.badge}</span>`
        : "";
      const oldPriceHtml = p.old
        ? `<span class="old-price">${money(p.old)}</span>`
        : "";
      return `
        <article class="product-card" data-id="${p.id}">
          <div class="product-media">
            <img src="${p.img}" alt="${p.title}" loading="lazy">
            ${badgeHtml}
            <button class="wish-btn" aria-label="Add ${p.title} to wishlist" data-wish="${p.id}">
              <i class="fa-regular fa-heart"></i>
            </button>
          </div>
          <div class="product-info">
            <div class="product-category">${p.category}</div>
            <h3 class="product-title">${p.title}</h3>
            <div class="price-row">
              <span class="price">${money(p.price)}</span>
              ${oldPriceHtml}
            </div>
            <div class="rating">
              ${stars(p.rating)} <span>(${p.reviews})</span>
            </div>
          </div>
          <button class="add-btn" data-add="${p.id}">
            <i class="fa-solid fa-plus"></i> Add to bag
          </button>
        </article>
      `;
    }).join("");

    // Attach "Add to bag" listeners
    productGrid.querySelectorAll("[data-add]").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const id = Number(btn.dataset.add);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        btn.classList.add("added");
        btn.innerHTML = '<i class="fa-solid fa-check"></i> Added';
        showToast(`${product.title} added to bag`);
        setTimeout(() => {
          btn.classList.remove("added");
          btn.innerHTML = '<i class="fa-solid fa-plus"></i> Add to bag';
        }, 1400);
      });
    });

    // Wishlist toggle (visual only)
    productGrid.querySelectorAll("[data-wish]").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const icon = btn.querySelector("i");
        if (icon.classList.contains("fa-regular")) {
          icon.classList.remove("fa-regular");
          icon.classList.add("fa-solid");
          icon.style.color = "#a85661";
          showToast("Added to wishlist");
        } else {
          icon.classList.remove("fa-solid");
          icon.classList.add("fa-regular");
          icon.style.color = "";
          showToast("Removed from wishlist");
        }
      });
    });
  }

  // ============================================================
  //  EVENT LISTENERS
  // ============================================================

  // Filter buttons
  filterContainer.addEventListener("click", (e) => {
    const btn = e.target.closest(".filter-btn");
    if (!btn) return;
    filterContainer.querySelectorAll(".filter-btn").forEach(b => b.classList.remove("active"));
    btn.classList.add("active");
    currentFilter = btn.dataset.filter;
    renderProducts();
  });

  // Sort
  sortSelect.addEventListener("change", () => {
    currentSort = sortSelect.value;
    renderProducts();
  });

  // Search (debounced)
  let searchTimeout;
  searchInput.addEventListener("input", () => {
    clearTimeout(searchTimeout);
    searchTimeout = setTimeout(() => {
      searchQuery = searchInput.value;
      renderProducts();
    }, 200);
  });

  // Cart button
  document.getElementById("cartBtn").addEventListener("click", () => {
    showToast(cartCount ? `Your bag has ${cartCount} item${cartCount > 1 ? "s" : ""}` : "Your bag is empty");
  });

  // Mobile menu toggle
  mobileToggle.addEventListener("click", () => {
    const isOpen = mobileMenu.style.display === "block";
    mobileMenu.style.display = isOpen ? "none" : "block";
    mobileToggle.innerHTML = isOpen
      ? '<i class="fa-solid fa-bars"></i>'
      : '<i class="fa-solid fa-xmark"></i>';
  });

  // Close mobile menu when clicking a link
  mobileMenu.querySelectorAll("a").forEach(a => {
    a.addEventListener("click", () => {
      mobileMenu.style.display = "none";
      mobileToggle.innerHTML = '<i class="fa-solid fa-bars"></i>';
    });
  });

  // Set year
  yearEl.textContent = new Date().getFullYear();

  // ============================================================
  //  INITIAL RENDER
  // ============================================================
  renderProducts();
</script>
</body>
</html>
