<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Petal & Bloom · Cute Flower Shop</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link crossorigin="anonymous" href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700;800&family=Fredoka+One:wght@400&family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" crossorigin="anonymous" integrity="sha384-oqVuAfXRKap7fdgcCY5uykM6+R9GqQ8K/uxy9rx7HNQlGYl1kPzQho1wx4JwY8wC">
  <style>
    :root {
      --bg: #fef9fb;
      --surface: #ffffff;
      --surface-2: #fdf2f6;
      --ink: #3d2c3a;
      --muted: #b89baf;
      --line: #f5dce6;
      --line-2: #fce8f0;
      --primary: #e87a9f;
      --primary-dark: #d45a82;
      --primary-soft: #fce4ef;
      --accent: #f9c2d4;
      --success: #a8d8b9;
      --rose: #c94f7c;
      --shadow: 0 10px 30px rgba(200, 120, 160, 0.10);
      --shadow-lg: 0 22px 50px rgba(200, 120, 160, 0.16);
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
      overflow-x: hidden;
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

    /* ============ KEYFRAME ANIMATIONS ============ */
    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeInDown {
      from {
        opacity: 0;
        transform: translateY(-20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes fadeInScale {
      from {
        opacity: 0;
        transform: scale(0.85);
      }
      to {
        opacity: 1;
        transform: scale(1);
      }
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0) rotate(0deg);
      }
      50% {
        transform: translateY(-12px) rotate(3deg);
      }
    }

    @keyframes floatSlow {
      0%, 100% {
        transform: translateY(0) rotate(0deg);
      }
      50% {
        transform: translateY(-8px) rotate(-2deg);
      }
    }

    @keyframes pulse {
      0%, 100% {
        transform: scale(1);
      }
      50% {
        transform: scale(1.06);
      }
    }

    @keyframes shimmer {
      0% {
        background-position: -200% center;
      }
      100% {
        background-position: 200% center;
      }
    }

    @keyframes wiggle {
      0%, 100% {
        transform: rotate(0deg);
      }
      25% {
        transform: rotate(-8deg);
      }
      75% {
        transform: rotate(8deg);
      }
    }

    @keyframes popIn {
      0% {
        opacity: 0;
        transform: scale(0.6) rotate(-8deg);
      }
      70% {
        transform: scale(1.08) rotate(2deg);
      }
      100% {
        opacity: 1;
        transform: scale(1) rotate(0deg);
      }
    }

    @keyframes slideInRight {
      from {
        opacity: 0;
        transform: translateX(60px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    @keyframes slideInLeft {
      from {
        opacity: 0;
        transform: translateX(-60px);
      }
      to {
        opacity: 1;
        transform: translateX(0);
      }
    }

    @keyframes bounceIn {
      0% {
        opacity: 0;
        transform: scale(0.3);
      }
      50% {
        opacity: 1;
        transform: scale(1.08);
      }
      70% {
        transform: scale(0.96);
      }
      100% {
        transform: scale(1);
      }
    }

    @keyframes petalFall {
      0% {
        opacity: 0;
        transform: translateY(-20px) rotate(0deg) scale(0.6);
      }
      20% {
        opacity: 1;
      }
      80% {
        opacity: 1;
      }
      100% {
        opacity: 0;
        transform: translateY(110vh) rotate(360deg) scale(1);
      }
    }

    @keyframes heartBeat {
      0%, 100% {
        transform: scale(1);
      }
      14% {
        transform: scale(1.25);
      }
      28% {
        transform: scale(1);
      }
      42% {
        transform: scale(1.25);
      }
      70% {
        transform: scale(1);
      }
    }

    @keyframes gradientShift {
      0%, 100% {
        background-position: 0% 50%;
      }
      50% {
        background-position: 100% 50%;
      }
    }

    @keyframes spinSlow {
      from {
        transform: rotate(0deg);
      }
      to {
        transform: rotate(360deg);
      }
    }

    /* Petal animation elements */
    .petal {
      position: fixed;
      top: -30px;
      pointer-events: none;
      z-index: 0;
      font-size: 22px;
      animation: petalFall linear infinite;
      opacity: 0;
    }

    /* ----- HEADER ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(254, 249, 251, 0.93);
      backdrop-filter: blur(16px);
      border-bottom: 2px dashed var(--line);
      animation: fadeInDown 0.6s ease-out;
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
      transition: transform 0.3s ease;
    }

    .brand:hover {
      transform: scale(1.04);
    }

    .brand-mark {
      width: 46px;
      height: 46px;
      border-radius: 50% 50% 50% 8px;
      display: grid;
      place-items: center;
      background: linear-gradient(135deg, #f9c2d4, #e87a9f);
      color: white;
      font-size: 22px;
      box-shadow: 0 6px 16px rgba(232, 122, 159, 0.4);
      transform: rotate(-4deg);
      transition: transform 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .brand:hover .brand-mark {
      transform: rotate(360deg) scale(1.1);
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      letter-spacing: 0.2px;
      position: relative;
    }

    nav a:hover,
    nav a.active {
      background: var(--primary-soft);
      color: var(--primary-dark);
      transform: translateY(-2px);
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
      transition: all 0.3s ease;
    }

    .search:focus-within {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px var(--primary-soft);
      transform: scale(1.02);
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
      color: #d9b8cc;
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      position: relative;
      font-size: 16px;
    }

    .icon-btn:hover {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      transform: scale(1.12) rotate(-6deg);
      box-shadow: 0 8px 20px rgba(232, 122, 159, 0.35);
    }

    .icon-btn:active {
      transform: scale(0.95);
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
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .cart-badge.bump {
      animation: heartBeat 0.6s ease;
    }

    .mobile-btn {
      display: none;
    }

    #mobileMenu {
      display: none;
      background: var(--surface);
      border-top: 2px dashed var(--line);
      animation: fadeInDown 0.3s ease;
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
      transition: padding-left 0.2s ease;
    }

    #mobileMenu a:hover {
      padding-left: 16px;
      color: var(--primary);
    }

    #mobileMenu a:last-child {
      border-bottom: 0;
    }

    /* ----- HERO ----- */
    .hero-strip {
      background: linear-gradient(145deg, #fdf2f6 0%, #fce4ef 100%);
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
      border: 3px dashed rgba(232, 122, 159, 0.25);
      animation: fadeInUp 0.8s ease-out;
    }

    .hero-strip:before {
      content: "🌸";
      position: absolute;
      right: 8%;
      top: 10%;
      font-size: 90px;
      opacity: 0.3;
      pointer-events: none;
      animation: float 5s ease-in-out infinite;
    }

    .hero-strip:after {
      content: "🌷";
      position: absolute;
      left: 2%;
      bottom: 6%;
      font-size: 100px;
      opacity: 0.25;
      pointer-events: none;
      animation: floatSlow 6s ease-in-out infinite;
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
      color: #3d2c3a;
    }

    .hero-strip h1 em {
      font-style: normal;
      background: linear-gradient(135deg, #d45a82, #f9c2d4, #d45a82);
      background-size: 200% auto;
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      display: inline-block;
      animation: gradientShift 4s ease infinite;
    }

    .hero-strip p {
      color: #7a5a6e;
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      white-space: nowrap;
      letter-spacing: 0.2px;
      position: relative;
      overflow: hidden;
    }

    .btn-white {
      background: white;
      color: var(--primary-dark);
      box-shadow: 0 8px 18px rgba(212, 90, 130, 0.15);
    }

    .btn-white:hover {
      background: var(--primary);
      color: white;
      transform: translateY(-4px) scale(1.03);
      box-shadow: 0 16px 30px rgba(212, 90, 130, 0.35);
    }

    .btn-white:active {
      transform: translateY(-1px) scale(1.01);
    }

    .btn-outline-light {
      border: 2.5px solid var(--primary);
      color: var(--primary-dark);
      background: rgba(255, 255, 255, 0.6);
      backdrop-filter: blur(4px);
    }

    .btn-outline-light:hover {
      background: var(--primary-soft);
      transform: translateY(-4px) scale(1.03);
      box-shadow: 0 12px 24px rgba(212, 90, 130, 0.2);
    }

    .btn-outline-light:active {
      transform: translateY(-1px) scale(1.01);
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
      animation: fadeInUp 0.8s ease-out 0.1s both;
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      letter-spacing: 0.2px;
    }

    .filter-btn:hover,
    .filter-btn.active {
      background: var(--primary);
      color: white;
      border-color: var(--primary);
      box-shadow: 0 6px 16px rgba(232, 122, 159, 0.35);
      transform: scale(1.05) translateY(-2px);
    }

    .filter-btn:active {
      transform: scale(0.98);
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
      transition: all 0.3s ease;
      appearance: none;
      background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23b89baf' stroke-width='2'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
      background-repeat: no-repeat;
      background-position: right 16px center;
      padding-right: 48px;
    }

    .sort-select:focus {
      border-color: var(--primary);
      box-shadow: 0 0 0 4px var(--primary-soft);
      transform: scale(1.02);
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
      transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      display: flex;
      flex-direction: column;
      position: relative;
      cursor: pointer;
      animation: fadeInUp 0.6s ease-out both;
    }

    .product-card:nth-child(1) { animation-delay: 0.05s; }
    .product-card:nth-child(2) { animation-delay: 0.10s; }
    .product-card:nth-child(3) { animation-delay: 0.15s; }
    .product-card:nth-child(4) { animation-delay: 0.20s; }
    .product-card:nth-child(5) { animation-delay: 0.25s; }
    .product-card:nth-child(6) { animation-delay: 0.30s; }
    .product-card:nth-child(7) { animation-delay: 0.35s; }
    .product-card:nth-child(8) { animation-delay: 0.40s; }

    .product-card:hover {
      transform: translateY(-10px) rotate(0.5deg) scale(1.02);
      box-shadow: var(--shadow-lg);
      border-color: var(--primary-soft);
    }

    .product-card:active {
      transform: translateY(-4px) scale(1.01);
    }

    .product-media {
      height: 210px;
      position: relative;
      overflow: hidden;
      background: #fdf2f6;
    }

    .product-media img {
      height: 100%;
      object-fit: cover;
      transition: transform 0.6s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .product-card:hover .product-media img {
      transform: scale(1.12) rotate(1deg);
    }

    .product-media::after {
      content: "";
      position: absolute;
      inset: 0;
      background: linear-gradient(to top, rgba(61, 44, 58, 0.15), transparent 60%);
      opacity: 0;
      transition: opacity 0.4s ease;
      pointer-events: none;
    }

    .product-card:hover .product-media::after {
      opacity: 1;
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
      box-shadow: 0 4px 12px rgba(232, 122, 159, 0.4);
      animation: popIn 0.5s cubic-bezier(0.34, 1.56, 0.64, 1) both;
    }

    .badge.sale {
      background: var(--accent);
      color: #3d2c3a;
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      z-index: 2;
      border: 2px solid rgba(255, 255, 255, 0.8);
      cursor: pointer;
      font-size: 15px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
    }

    .wish-btn:hover {
      color: var(--rose);
      transform: scale(1.2) rotate(10deg);
      background: white;
      border-color: var(--rose);
      box-shadow: 0 6px 18px rgba(201, 79, 124, 0.3);
    }

    .wish-btn:active {
      transform: scale(0.95);
    }

    .wish-btn.liked i {
      animation: heartBeat 0.6s ease;
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
      color: #d4b8c4;
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
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      border: none;
      cursor: pointer;
      letter-spacing: 0.3px;
      box-shadow: 0 6px 14px rgba(61, 44, 58, 0.15);
      position: relative;
      overflow: hidden;
    }

    .add-btn:hover {
      background: var(--primary);
      transform: scale(1.04) translateY(-2px);
      box-shadow: 0 10px 24px rgba(232, 122, 159, 0.45);
    }

    .add-btn:active {
      transform: scale(0.98);
    }

    .add-btn.added {
      background: var(--success);
    }

    .add-btn i {
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .add-btn:hover i {
      transform: scale(1.2) rotate(-8deg);
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
      animation: fadeInScale 0.5s ease;
    }

    /* ============ PRODUCT MODAL ============ */
    .modal-overlay {
      position: fixed;
      inset: 0;
      background: rgba(61, 44, 58, 0.45);
      backdrop-filter: blur(8px);
      z-index: 300;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.4s ease, visibility 0.4s ease;
    }

    .modal-overlay.active {
      opacity: 1;
      visibility: visible;
    }

    .modal {
      background: var(--surface);
      border-radius: 40px 40px 40px 16px;
      width: min(920px, 100%);
      max-height: 90vh;
      overflow-y: auto;
      position: relative;
      transform: scale(0.85) translateY(30px);
      opacity: 0;
      transition: all 0.45s cubic-bezier(0.34, 1.56, 0.64, 1);
      box-shadow: 0 30px 80px rgba(61, 44, 58, 0.3);
      border: 2px solid var(--line);
    }

    .modal-overlay.active .modal {
      transform: scale(1) translateY(0);
      opacity: 1;
    }

    .modal-close {
      position: absolute;
      top: 18px;
      right: 18px;
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      border: 2px solid var(--line);
      display: grid;
      place-items: center;
      font-size: 18px;
      color: var(--ink);
      z-index: 10;
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      cursor: pointer;
    }

    .modal-close:hover {
      background: var(--rose);
      color: white;
      border-color: var(--rose);
      transform: rotate(90deg) scale(1.1);
    }

    .modal-close:active {
      transform: rotate(90deg) scale(0.95);
    }

    .modal-body {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 0;
    }

    .modal-image {
      position: relative;
      overflow: hidden;
      border-radius: 38px 0 0 14px;
      min-height: 420px;
      background: #fdf2f6;
    }

    .modal-image img {
      height: 100%;
      width: 100%;
      object-fit: cover;
      transition: transform 0.8s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .modal-image:hover img {
      transform: scale(1.08);
    }

    .modal-image .badge {
      position: absolute;
      top: 18px;
      left: 18px;
      font-size: 11px;
      padding: 7px 16px;
    }

    .modal-content {
      padding: 42px 40px 36px;
      display: flex;
      flex-direction: column;
      animation: slideInRight 0.5s ease-out 0.1s both;
    }

    .modal-category {
      font-size: 11px;
      color: var(--primary);
      font-weight: 800;
      letter-spacing: 1.5px;
      text-transform: uppercase;
      margin-bottom: 8px;
    }

    .modal-title {
      font-family: "Fredoka One", cursive;
      font-size: 32px;
      line-height: 1.15;
      color: var(--ink);
      margin-bottom: 14px;
      letter-spacing: -0.5px;
    }

    .modal-rating {
      display: flex;
      align-items: center;
      gap: 8px;
      color: #f7b731;
      font-size: 15px;
      margin-bottom: 18px;
    }

    .modal-rating span {
      color: var(--muted);
      font-size: 13px;
      font-weight: 600;
    }

    .modal-price-row {
      display: flex;
      align-items: baseline;
      gap: 12px;
      margin-bottom: 20px;
    }

    .modal-price {
      font-size: 32px;
      font-weight: 800;
      color: var(--primary-dark);
    }

    .modal-old-price {
      font-size: 18px;
      color: #d4b8c4;
      text-decoration: line-through;
      font-weight: 500;
    }

    .modal-save {
      font-size: 12px;
      font-weight: 800;
      color: white;
      background: var(--success);
      padding: 4px 12px;
      border-radius: 40px;
      letter-spacing: 0.3px;
    }

    .modal-desc {
      color: #7a5a6e;
      font-size: 15px;
      line-height: 1.8;
      margin-bottom: 24px;
      font-weight: 500;
    }

    .modal-features {
      list-style: none;
      display: grid;
      gap: 10px;
      margin-bottom: 28px;
    }

    .modal-features li {
      display: flex;
      align-items: center;
      gap: 10px;
      font-size: 14px;
      color: var(--ink);
      font-weight: 600;
    }

    .modal-features li i {
      color: var(--primary);
      font-size: 14px;
      width: 20px;
      text-align: center;
    }

    .modal-actions {
      display: flex;
      gap: 12px;
      margin-top: auto;
      flex-wrap: wrap;
    }

    .modal-qty {
      display: flex;
      align-items: center;
      border: 2px solid var(--line);
      border-radius: 40px;
      overflow: hidden;
      background: var(--surface);
    }

    .qty-btn {
      width: 44px;
      height: 48px;
      display: grid;
      place-items: center;
      font-size: 16px;
      color: var(--ink);
      transition: all 0.2s ease;
      cursor: pointer;
    }

    .qty-btn:hover {
      background: var(--primary-soft);
      color: var(--primary-dark);
    }

    .qty-btn:active {
      transform: scale(0.9);
    }

    .qty-value {
      width: 40px;
      text-align: center;
      font-weight: 800;
      font-size: 16px;
      color: var(--ink);
    }

    .modal-add-btn {
      flex: 1;
      min-width: 180px;
      background: var(--primary);
      color: white;
      padding: 14px 28px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 15px;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      transition: all 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      box-shadow: 0 8px 20px rgba(232, 122, 159, 0.35);
      cursor: pointer;
    }

    .modal-add-btn:hover {
      background: var(--primary-dark);
      transform: translateY(-3px) scale(1.03);
      box-shadow: 0 14px 30px rgba(232, 122, 159, 0.45);
    }

    .modal-add-btn:active {
      transform: translateY(-1px) scale(1.01);
    }

    .modal-add-btn.added {
      background: var(--success);
    }

    .modal-add-btn i {
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }

    .modal-add-btn:hover i {
      transform: scale(1.2) rotate(-8deg);
    }

    /* ----- TOAST & FOOTER ----- */
    .toast {
      position: fixed;
      right: 24px;
      bottom: 24px;
      z-index: 400;
      background: var(--ink);
      color: white;
      padding: 16px 24px;
      border-radius: 50px;
      font-size: 15px;
      font-weight: 600;
      box-shadow: var(--shadow-lg);
      opacity: 0;
      transform: translateY(16px) scale(0.9);
      pointer-events: none;
      transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      border: 2px solid var(--primary);
      letter-spacing: 0.2px;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .toast.show {
      opacity: 1;
      transform: translateY(0) scale(1);
    }

    footer {
      background: #fdf0f5;
      color: #7a5a6e;
      padding: 48px 0 28px;
      margin-top: 20px;
      border-top: 4px dashed #f5dce6;
      animation: fadeInUp 0.8s ease-out 0.2s both;
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
      color: #a88b9a;
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
      color: #a88b9a;
      transition: all 0.25s ease;
      font-weight: 500;
      display: inline-block;
    }

    footer li a:hover {
      color: var(--primary-dark);
      transform: translateX(6px);
    }

    .footer-bottom {
      border-top: 2px dashed #f0d9e4;
      padding-top: 24px;
      display: flex;
      justify-content: space-between;
      font-size: 13px;
      color: #b89baf;
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

      .modal-body {
        grid-template-columns: 1fr;
      }

      .modal-image {
        min-height: 280px;
        border-radius: 38px 38px 0 0;
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
        border-radius: 50% 50% 50% 6px;
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

      .modal-content {
        padding: 28px 24px 24px;
      }

      .modal-title {
        font-size: 24px;
      }

      .modal-price {
        font-size: 26px;
      }

      .modal-close {
        width: 38px;
        height: 38px;
        font-size: 15px;
        top: 12px;
        right: 12px;
      }

      .modal-image {
        min-height: 220px;
      }
    }

    @media (max-width: 420px) {
      .product-grid {
        grid-template-columns: 1fr;
      }

      .product-media {
        height: 230px;
      }

      .modal-actions {
        flex-direction: column;
      }

      .modal-qty {
        width: 100%;
        justify-content: center;
      }

      .modal-add-btn {
        width: 100%;
      }
    }
  </style>
</head>
<body>

<!-- Falling petals decoration -->
<div class="petal" style="left: 5%; animation-duration: 9s; animation-delay: 0s;">🌸</div>
<div class="petal" style="left: 15%; animation-duration: 11s; animation-delay: 2s;">🌷</div>
<div class="petal" style="left: 28%; animation-duration: 8s; animation-delay: 4s;">🌸</div>
<div class="petal" style="left: 42%; animation-duration: 12s; animation-delay: 1s;">💮</div>
<div class="petal" style="left: 58%; animation-duration: 10s; animation-delay: 3s;">🌺</div>
<div class="petal" style="left: 72%; animation-duration: 9s; animation-delay: 5s;">🌸</div>
<div class="petal" style="left: 85%; animation-duration: 13s; animation-delay: 0.5s;">🌷</div>
<div class="petal" style="left: 94%; animation-duration: 10s; animation-delay: 2.5s;">🌼</div>

<header>
  <div class="container header-inner">
    <button class="icon-btn mobile-btn" id="mobileToggle" aria-label="Open menu">
      <i class="fa-solid fa-bars"></i>
    </button>
    <a class="brand" href="#">
      <span class="brand-mark"><i class="fa-solid fa-seedling"></i></span>
      <span class="brand-name">Petal <span>&amp; Bloom</span></span>
    </a>
    <nav id="desktopNav">
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Bouquets</a></li>
        <li><a href="#">Plants</a></li>
        <li><a href="#">Gifts</a></li>
      </ul>
    </nav>
    <div class="header-tools">
      <label class="search" aria-label="Search flowers">
        <input id="searchInput" type="search" placeholder="Search flowers...">
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
      <a href="#">Bouquets</a>
      <a href="#">Plants</a>
      <a href="#">Gifts</a>
    </div>
  </div>
</header>

<main class="container">
  <section class="hero-strip">
    <div>
      <h1>Fresh flowers.<br><em>Happy moments.</em></h1>
      <p>Discover our hand-tied bouquets, blooming plants, and thoughtful gifts — delivered with love and a smile.</p>
    </div>
    <div class="hero-cta">
      <button class="btn btn-white" id="shopNowBtn">
        Shop flowers <i class="fa-solid fa-arrow-right"></i>
      </button>
      <button class="btn btn-outline-light" id="dealsBtn">
        Today's picks
      </button>
    </div>
  </section>

  <div class="toolbar">
    <div class="filter-buttons" id="filterContainer">
      <button class="filter-btn active" data-filter="all">All Flowers</button>
      <button class="filter-btn" data-filter="Bouquets">Bouquets</button>
      <button class="filter-btn" data-filter="Plants">Plants</button>
      <button class="filter-btn" data-filter="Gifts">Gifts</button>
    </div>
    <select class="sort-select" id="sortSelect" aria-label="Sort flowers">
      <option value="default">Sort: Featured</option>
      <option value="price-low">Price: Low to High</option>
      <option value="price-high">Price: High to Low</option>
      <option value="rating">Top Rated</option>
    </select>
    <span class="results-count" id="resultsCount"></span>
  </div>

  <div class="product-grid" id="productGrid"></div>
</main>

<!-- Product Modal -->
<div class="modal-overlay" id="modalOverlay">
  <div class="modal" id="modal">
    <button class="modal-close" id="modalClose" aria-label="Close">
      <i class="fa-solid fa-xmark"></i>
    </button>
    <div class="modal-body">
      <div class="modal-image">
        <img id="modalImage" src="" alt="">
        <span class="badge" id="modalBadge"></span>
      </div>
      <div class="modal-content">
        <div class="modal-category" id="modalCategory"></div>
       <h2 class="modal-title" id="modalTitle">Product details</h2>
        <div class="modal-rating" id="modalRating"></div>
        <div class="modal-price-row">
          <span class="modal-price" id="modalPrice"></span>
          <span class="modal-old-price" id="modalOldPrice"></span>
          <span class="modal-save" id="modalSave"></span>
        </div>
        <p class="modal-desc" id="modalDesc"></p>
        <ul class="modal-features" id="modalFeatures"></ul>
        <div class="modal-actions">
          <div class="modal-qty">
            <button class="qty-btn" id="qtyMinus" aria-label="Decrease quantity">
              <i class="fa-solid fa-minus"></i>
            </button>
            <span class="qty-value" id="qtyValue">1</span>
            <button class="qty-btn" id="qtyPlus" aria-label="Increase quantity">
              <i class="fa-solid fa-plus"></i>
            </button>
          </div>
          <button class="modal-add-btn" id="modalAddBtn">
            <i class="fa-solid fa-cart-plus"></i> Add to bag
          </button>
        </div>
      </div>
    </div>
  </div>
</div>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="footer-brand">
        <a class="brand" href="#">
          <span class="brand-mark"><i class="fa-solid fa-seedling"></i></span>
          <span class="brand-name">Petal <span>&amp; Bloom</span></span>
        </a>
        <p>Your neighbourhood flower shop for fresh bouquets, happy plants, and little gifts that say everything. Delivered with a smile.</p>
      </div>
      <div>
        <h4>Shop</h4>
        <ul>
          <li><a href="#">Bouquets</a></li>
          <li><a href="#">Plants</a></li>
          <li><a href="#">Gifts</a></li>
          <li><a href="#">Subscriptions</a></li>
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
      <span>© <span id="year"></span> Petal &amp; Bloom. All rights reserved.</span>
      <span>Grown with 🌱 · Free delivery over $40</span>
    </div>
  </div>
</footer>

<div class="toast" id="toast"></div>

<script>
  // ============================================================
  //  CUTE FLOWER SHOP PRODUCT DATA
  // ============================================================
  const PRODUCTS = [
    // --- Bouquets (8) ---
    { id: 1,  title: "Blush Peony Bouquet", price: 42, old: 55, category: "Bouquets", badge: "New", img: "https://images.unsplash.com/photo-1591886960571-74d43a9d4166?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 342, desc: "A dreamy bouquet of soft blush peonies, hand-tied with love and wrapped in our signature tissue.", features: ["Fresh-cut peonies", "Hand-tied with care", "Free vase included", "Same-day delivery"] },
    { id: 2,  title: "Sunshine Sunflower Bunch", price: 28, old: 36, category: "Bouquets", badge: "Sale", img: "https://images.unsplash.com/photo-1597848212624-a19eb35e2651?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 128, desc: "Brighten anyone's day with this cheerful bunch of golden sunflowers, straight from the farm.", features: ["6-8 stems", "Bright yellow blooms", "Long-lasting", "Perfect gift"] },
    { id: 3,  title: "Romantic Red Roses (12)", price: 58, old: 72, category: "Bouquets", badge: "Bestseller", img: "https://images.unsplash.com/photo-1548586196-aa5803b77379?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 456, desc: "A classic dozen of velvety red roses, the timeless way to say 'I love you'.", features: ["12 premium roses", "Red ribbon wrap", "Gift message card", "Fresh guarantee"] },
    { id: 4,  title: "Wildflower Meadow Mix", price: 34, old: 0, category: "Bouquets", badge: "", img: "https://images.unsplash.com/photo-1490750967868-88aa4486c946?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 215, desc: "A rustic, natural mix of wildflowers that brings the meadow straight to your home.", features: ["Seasonal wildflowers", "Rustic kraft wrap", "Natural look", "Long vase life"] },
    { id: 5,  title: "Pastel Tulip Trio", price: 38, old: 48, category: "Bouquets", badge: "New", img: "https://images.unsplash.com/photo-1524386416438-98b9b2d4b433?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 87, desc: "Three shades of spring tulips in soft pastel pink, lilac, and cream.", features: ["15 tulip stems", "3 pastel colours", "Spring favourite", "Vase-ready"] },
    { id: 6,  title: "Lavender Dream Bundle", price: 26, old: 34, category: "Bouquets", badge: "Sale", img: "https://images.unsplash.com/photo-1499002238440-d264edd596ec?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 312, desc: "Calming dried lavender bundle, perfect for a restful bedroom or as a thoughtful gift.", features: ["Dried lavender", "Calming scent", "Long-lasting", "Rustic twine"] },
    { id: 7,  title: "Cherry Blossom Branch", price: 44, old: 56, category: "Bouquets", badge: "", img: "https://images.unsplash.com/photo-1522383225653-ed111181a951?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 178, desc: "Delicate cherry blossom branches that bring a touch of Japanese spring to any room.", features: ["3 branches", "Delicate pink blooms", "Zen aesthetic", "Tall vase ready"] },
    { id: 8,  title: "White Lily Elegance", price: 48, old: 62, category: "Bouquets", badge: "Bestseller", img: "https://images.unsplash.com/photo-1596438459194-f275f413d6ff?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 94, desc: "Pure white lilies with a heavenly fragrance, a symbol of grace and purity.", features: ["6 lily stems", "Sweet fragrance", "Elegant wrap", "Perfect for occasions"] },

    // --- Plants (8) ---
    { id: 9,  title: "Monstera Deliciosa", price: 32, old: 42, category: "Plants", badge: "Bestseller", img: "https://images.unsplash.com/photo-1614594975525-e45190c55d0b?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 267, desc: "The iconic Swiss cheese plant with glossy, split leaves. Easy to care for and stunning.", features: ["Air-purifying", "Easy care", "Ceramic pot included", "Pet-friendly*"] },
    { id: 10, title: "Fiddle Leaf Fig", price: 45, old: 58, category: "Plants", badge: "Sale", img: "https://images.unsplash.com/photo-1597055181300-e3633a917c9c?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 534, desc: "A statement plant with large, violin-shaped leaves. Loves bright, indirect light.", features: ["Statement plant", "Large glossy leaves", "60-70cm tall", "Pot included"] },
    { id: 11, title: "Golden Pothos Hanging", price: 22, old: 28, category: "Plants", badge: "", img: "https://images.unsplash.com/photo-1602923668104-8f9e03e77e62?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 189, desc: "Trailing golden pothos, perfect for hanging baskets and shelves. Nearly indestructible.", features: ["Trailing vines", "Air-purifying", "Hanging pot", "Beginner-friendly"] },
    { id: 12, title: "Peace Lily in Bloom", price: 28, old: 36, category: "Plants", badge: "New", img: "https://images.unsplash.com/photo-1593691509543-c55fb32e5cee?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 76, desc: "Elegant peace lily with white blooms, a symbol of peace and a natural air purifier.", features: ["White blooms", "Air-purifying", "Low light tolerant", "Pot included"] },
    { id: 13, title: "Snake Plant Sansevieria", price: 24, old: 30, category: "Plants", badge: "Sale", img: "https://images.unsplash.com/photo-1593482892290-f54927ae1bb6?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 145, desc: "Architectural snake plant, one of the most forgiving houseplants you can own.", features: ["Hardy plant", "Air-purifying", "Low water needs", "Modern pot"] },
    { id: 14, title: "String of Pearls Succulent", price: 18, old: 0, category: "Plants", badge: "", img: "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 223, desc: "Cascading strings of bead-like pearls, a unique trailing succulent for hanging pots.", features: ["Trailing succulent", "Unique texture", "Hanging pot", "Easy care"] },
    { id: 15, title: "ZZ Plant Zamioculcas", price: 26, old: 34, category: "Plants", badge: "Bestseller", img: "https://images.unsplash.com/photo-1632207691143-643e2a9a9361?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 398, desc: "The ZZ plant with waxy green leaves that thrives on neglect. Perfect for busy people.", features: ["Extremely hardy", "Low light ok", "Air-purifying", "Ceramic pot"] },
    { id: 16, title: "Calathea Peacock Plant", price: 34, old: 44, category: "Plants", badge: "New", img: "https://images.unsplash.com/photo-1616500163251-93b6b6b6b6b6?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 62, desc: "Stunning calathea with patterned leaves that fold up at night. A true showstopper.", features: ["Patterned leaves", "Night-folding", "Pet-safe", "Decorative pot"] },

    // --- Gifts (8) ---
    { id: 17, title: "Bloom & Candle Gift Set", price: 52, old: 68, category: "Gifts", badge: "Bestseller", img: "https://images.unsplash.com/photo-1603006905003-be475563bc59?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 412, desc: "A thoughtful gift set pairing a small bouquet with a hand-poured soy candle.", features: ["Mini bouquet", "Soy candle", "Gift box", "Personal message"] },
    { id: 18, title: "Pressed Flower Frame", price: 36, old: 46, category: "Gifts", badge: "Sale", img: "https://images.unsplash.com/photo-1519378058457-4c29a0a2efac?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 287, desc: "Real pressed flowers beautifully arranged in a wooden frame. A lasting keepsake.", features: ["Real pressed flowers", "Wooden frame", "Wall or desk", "Handmade"] },
    { id: 19, title: "Floral Scented Diffuser", price: 28, old: 36, category: "Gifts", badge: "New", img: "https://images.unsplash.com/photo-1608571423902-eed4a5ad8108?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 156, desc: "A reed diffuser with a soft floral scent that lasts for months.", features: ["Floral scent", "Reed diffuser", "Lasts 3+ months", "Gift-ready box"] },
    { id: 20, title: "Botanical Tea Sampler", price: 24, old: 30, category: "Gifts", badge: "", img: "https://images.unsplash.com/photo-1571934811356-5cc061b6821f?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 621, desc: "A curated sampler of floral and botanical teas, perfect for a cosy afternoon.", features: ["8 tea varieties", "Floral blends", "Gift box", "Brewing guide"] },
    { id: 21, title: "Mini Succulent Trio", price: 22, old: 28, category: "Gifts", badge: "Sale", img: "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 183, desc: "Three adorable mini succulents in tiny pots, a sweet little gift for any plant lover.", features: ["3 mini succulents", "Tiny pots", "Easy care", "Gift box"] },
    { id: 22, title: "Rose Petal Bath Soak", price: 18, old: 0, category: "Gifts", badge: "", img: "https://images.unsplash.com/photo-1607006344380-b6775a0824a7?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 241, desc: "Relaxing bath soak made with real rose petals and soothing essential oils.", features: ["Real rose petals", "Essential oils", "Relaxing", "Glass jar"] },
    { id: 23, title: "Wildflower Seed Kit", price: 16, old: 22, category: "Gifts", badge: "Sale", img: "https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?w=600&q=80&auto=format&fit=crop", rating: 4, reviews: 168, desc: "A complete kit to grow your own wildflower meadow at home. Fun and eco-friendly.", features: ["Seed mix", "Peat pots", "Instructions", "Eco-friendly"] },
    { id: 24, title: "Floral Notebook & Pen", price: 20, old: 26, category: "Gifts", badge: "New", img: "https://images.unsplash.com/photo-1531346878377-a5be20888e57?w=600&q=80&auto=format&fit=crop", rating: 5, reviews: 92, desc: "A beautiful floral-patterned notebook with a matching pen. Perfect for journaling.", features: ["Floral cover", "Matching pen", "A5 size", "Lined pages"] }
  ];

  // ============================================================
  //  APP STATE & ELEMENTS
  // ============================================================
  let activeFilter = "all";
  let activeSort = "default";
  let cartCount = 0;
  let currentProduct = null;
  let modalQty = 1;

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

  // Modal elements
  const modalOverlay = document.getElementById("modalOverlay");
  const modalClose = document.getElementById("modalClose");
  const modalImage = document.getElementById("modalImage");
  const modalBadge = document.getElementById("modalBadge");
  const modalCategory = document.getElementById("modalCategory");
  const modalTitle = document.getElementById("modalTitle");
  const modalRating = document.getElementById("modalRating");
  const modalPrice = document.getElementById("modalPrice");
  const modalOldPrice = document.getElementById("modalOldPrice");
  const modalSave = document.getElementById("modalSave");
  const modalDesc = document.getElementById("modalDesc");
  const modalFeatures = document.getElementById("modalFeatures");
  const qtyMinus = document.getElementById("qtyMinus");
  const qtyPlus = document.getElementById("qtyPlus");
  const qtyValue = document.getElementById("qtyValue");
  const modalAddBtn = document.getElementById("modalAddBtn");

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

    resultsCount.textContent = list.length + " bloom" + (list.length !== 1 ? "s" : "");

    if (!list.length) {
      productGrid.innerHTML = `<div class="empty-message">🌸 No flowers found — try a different search!</div>`;
      return;
    }

    let html = "";
    list.forEach((p, index) => {
      const hasOld = p.old && p.old > 0;
      const badgeClass = p.badge === "Sale" ? "sale" : (p.badge === "New" ? "new" : "");
      const badgeHtml = p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : "";
      const delay = Math.min(index * 0.05, 0.4);

      html += `
        <article class="product-card" data-id="${p.id}" style="animation-delay: ${delay}s">
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

    // ---- Card click → open modal ----
    productGrid.querySelectorAll(".product-card").forEach(card => {
      card.addEventListener("click", (e) => {
        // Ignore clicks on buttons inside the card
        if (e.target.closest(".add-btn") || e.target.closest(".wish-btn")) return;
        const id = Number(card.dataset.id);
        openModal(id);
      });
    });

    // ---- Add to cart handlers ----
    productGrid.querySelectorAll(".add-btn").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const id = Number(btn.dataset.id);
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;

        addToCart(1);
        btn.classList.add("added");
        btn.innerHTML = '<i class="fa-solid fa-check"></i> Added!';
        setTimeout(() => {
          btn.classList.remove("added");
          btn.innerHTML = '<i class="fa-solid fa-cart-plus"></i> Add to bag';
        }, 1200);

        showToast(`🌸 ${product.title} added to your bag!`);
      });
    });

    // ---- Wishlist button ----
    productGrid.querySelectorAll(".wish-btn").forEach(btn => {
      btn.addEventListener("click", (e) => {
        e.stopPropagation();
        const icon = btn.querySelector("i");
        const isLiked = icon.classList.contains("fa-solid");
        icon.classList.toggle("fa-regular");
        icon.classList.toggle("fa-solid");
        if (!isLiked) {
          btn.classList.add("liked");
          btn.style.color = "var(--rose)";
          showToast("💖 Saved to your wishlist!");
          setTimeout(() => btn.classList.remove("liked"), 600);
        } else {
          btn.style.color = "";
        }
      });
    });
  }

  // ---- Cart helpers ----
  function addToCart(qty) {
    cartCount += qty;
    cartCountEl.textContent = cartCount;
    cartCountEl.classList.remove("bump");
    // Trigger reflow to restart animation
    void cartCountEl.offsetWidth;
    cartCountEl.classList.add("bump");
    setTimeout(() => cartCountEl.classList.remove("bump"), 600);
  }

  // ---- Modal ----
  function openModal(id) {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;

    currentProduct = p;
    modalQty = 1;
    qtyValue.textContent = modalQty;

    modalImage.src = p.img;
    modalImage.alt = p.title;
    modalCategory.textContent = p.category;
    modalTitle.textContent = p.title;
    modalRating.innerHTML = renderStars(p.rating) + `<span>(${p.reviews} reviews)</span>`;
    modalPrice.textContent = `$${p.price}`;

    if (p.old && p.old > 0) {
      modalOldPrice.textContent = `$${p.old}`;
      modalOldPrice.style.display = "inline";
      const saveAmount = p.old - p.price;
      modalSave.textContent = `Save $${saveAmount}`;
      modalSave.style.display = "inline-block";
    } else {
      modalOldPrice.style.display = "none";
      modalSave.style.display = "none";
    }

    // Badge
    if (p.badge) {
      modalBadge.textContent = p.badge;
      modalBadge.className = "badge " + (p.badge === "Sale" ? "sale" : (p.badge === "New" ? "new" : ""));
      modalBadge.style.display = "inline-block";
    } else {
      modalBadge.style.display = "none";
    }

    // Description
    modalDesc.textContent = p.desc || "A beautiful addition to any home or a thoughtful gift for someone special.";

    // Features
    const features = p.features || ["Fresh quality", "Beautifully packaged", "Satisfaction guaranteed"];
    modalFeatures.innerHTML = features.map(f => `<li><i class="fa-solid fa-check-circle"></i> ${f}</li>`).join("");

    // Reset add button
    modalAddBtn.classList.remove("added");
    modalAddBtn.innerHTML = '<i class="fa-solid fa-cart-plus"></i> Add to bag';

    modalOverlay.classList.add("active");
    document.body.style.overflow = "hidden";
  }

  function closeModal() {
    modalOverlay.classList.remove("active");
    document.body.style.overflow = "";
    currentProduct = null;
  }

  modalClose.addEventListener("click", closeModal);

  modalOverlay.addEventListener("click", (e) => {
    if (e.target === modalOverlay) closeModal();
  });

  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && modalOverlay.classList.contains("active")) {
      closeModal();
    }
  });

  // ---- Quantity controls ----
  qtyMinus.addEventListener("click", () => {
    if (modalQty > 1) {
      modalQty--;
      qtyValue.textContent = modalQty;
    }
  });

  qtyPlus.addEventListener("click", () => {
    if (modalQty < 99) {
      modalQty++;
      qtyValue.textContent = modalQty;
    }
  });

  // ---- Modal add to cart ----
  modalAddBtn.addEventListener("click", () => {
    if (!currentProduct) return;
    addToCart(modalQty);
    modalAddBtn.classList.add("added");
    modalAddBtn.innerHTML = `<i class="fa-solid fa-check"></i> Added ${modalQty} to bag!`;
    showToast(`🌸 ${modalQty} × ${currentProduct.title} added to your bag!`);
    setTimeout(() => {
      modalAddBtn.classList.remove("added");
      modalAddBtn.innerHTML = '<i class="fa-solid fa-cart-plus"></i> Add to bag';
    }, 1500);
  });

  // ---- Toast ----
  let toastTimer;
  function showToast(msg) {
    toast.innerHTML = msg;
    toast.classList.add("show");
    clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove("show"), 2400);
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
    showToast("🌷 Showing sweet picks first!");
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
