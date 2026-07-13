
html_code = '''<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SS Beauty Salon - Amrit Singh Charak</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #c2185b;
            --primary-dark: #880e4f;
            --primary-light: #f8bbd9;
            --gold: #d4a574;
            --gold-light: #f5e6d3;
            --dark: #1a1a2e;
            --light: #faf7f2;
            --white: #ffffff;
            --shadow: 0 10px 40px rgba(0,0,0,0.1);
            --shadow-hover: 0 20px 60px rgba(0,0,0,0.15);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: var(--light);
            color: var(--dark);
            overflow-x: hidden;
        }

        h1, h2, h3, h4 {
            font-family: 'Playfair Display', serif;
        }

        /* Scrollbar */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: var(--light);
        }
        ::-webkit-scrollbar-thumb {
            background: var(--primary);
            border-radius: 4px;
        }

        /* Navigation */
        nav {
            position: fixed;
            top: 0;
            width: 100%;
            background: rgba(255,255,255,0.95);
            backdrop-filter: blur(10px);
            z-index: 1000;
            padding: 15px 0;
            box-shadow: 0 2px 20px rgba(0,0,0,0.05);
            transition: all 0.3s ease;
        }

        .nav-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
        }

        .logo span {
            color: var(--gold);
        }

        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.3s;
            position: relative;
        }

        .nav-links a::after {
            content: '';
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0;
            height: 2px;
            background: var(--primary);
            transition: width 0.3s;
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            color: var(--primary);
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            min-height: 100vh;
            background: linear-gradient(135deg, var(--dark) 0%, #2d1b4e 50%, var(--primary-dark) 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 100px 20px 60px;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><circle cx="50" cy="50" r="40" fill="none" stroke="rgba(255,255,255,0.03)" stroke-width="0.5"/></svg>');
            background-size: 80px 80px;
            animation: float 20s linear infinite;
        }

        @keyframes float {
            0% { transform: translateY(0); }
            100% { transform: translateY(-50px); }
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
        }

        .hero-badge {
            display: inline-block;
            background: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.2);
            padding: 8px 20px;
            border-radius: 50px;
            color: var(--gold);
            font-size: 0.85rem;
            margin-bottom: 20px;
            backdrop-filter: blur(10px);
        }

        .hero h1 {
            font-size: 4rem;
            color: var(--white);
            margin-bottom: 15px;
            line-height: 1.1;
        }

        .hero h1 span {
            color: var(--gold);
            display: block;
        }

        .hero-subtitle {
            font-size: 1.2rem;
            color: rgba(255,255,255,0.8);
            margin-bottom: 10px;
            font-weight: 300;
        }

        .hero-owner {
            color: var(--gold-light);
            font-size: 1rem;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .btn {
            padding: 14px 35px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            font-size: 0.95rem;
            transition: all 0.3s ease;
            cursor: pointer;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .btn-primary {
            background: var(--primary);
            color: var(--white);
            box-shadow: 0 5px 20px rgba(194,24,89,0.4);
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(194,24,89,0.5);
        }

        .btn-outline {
            background: transparent;
            color: var(--white);
            border: 2px solid rgba(255,255,255,0.3);
        }

        .btn-outline:hover {
            background: rgba(255,255,255,0.1);
            border-color: var(--gold);
            transform: translateY(-3px);
        }

        .hero-hours {
            margin-top: 30px;
            padding: 15px 30px;
            background: rgba(255,255,255,0.05);
            border-radius: 15px;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            color: rgba(255,255,255,0.9);
            font-size: 0.9rem;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .hero-hours i {
            color: var(--gold);
        }

        /* Section Styles */
        section {
            padding: 80px 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-header {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-header h2 {
            font-size: 2.5rem;
            color: var(--dark);
            margin-bottom: 10px;
        }

        .section-header p {
            color: #666;
            font-size: 1.1rem;
        }

        .section-header .line {
            width: 60px;
            height: 3px;
            background: var(--primary);
            margin: 15px auto 0;
            border-radius: 2px;
        }

        /* About Section */
        .about {
            background: var(--white);
        }

        .about-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 60px;
            align-items: center;
        }

        .about-image {
            position: relative;
        }

        .about-image img {
            width: 100%;
            border-radius: 20px;
            box-shadow: var(--shadow);
        }

        .about-image::before {
            content: '';
            position: absolute;
            top: -20px;
            left: -20px;
            width: 100%;
            height: 100%;
            border: 3px solid var(--gold);
            border-radius: 20px;
            z-index: -1;
        }

        .about-content h3 {
            font-size: 2rem;
            color: var(--dark);
            margin-bottom: 20px;
        }

        .about-content p {
            color: #555;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        .about-info {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-top: 30px;
        }

        .info-card {
            background: var(--light);
            padding: 20px;
            border-radius: 15px;
            text-align: center;
            transition: transform 0.3s;
        }

        .info-card:hover {
            transform: translateY(-5px);
        }

        .info-card i {
            font-size: 2rem;
            color: var(--primary);
            margin-bottom: 10px;
        }

        .info-card h4 {
            font-size: 1rem;
            margin-bottom: 5px;
        }

        .info-card p {
            font-size: 0.9rem;
            color: #666;
            margin: 0;
        }

        /* Services Section */
        .services {
            background: linear-gradient(to bottom, var(--light), var(--white));
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .service-card {
            background: var(--white);
            border-radius: 20px;
            padding: 35px 30px;
            text-align: center;
            box-shadow: var(--shadow);
            transition: all 0.4s ease;
            border: 1px solid rgba(0,0,0,0.03);
            position: relative;
            overflow: hidden;
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, var(--primary), var(--gold));
            transform: scaleX(0);
            transition: transform 0.4s;
        }

        .service-card:hover::before {
            transform: scaleX(1);
        }

        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow-hover);
        }

        .service-icon {
            width: 70px;
            height: 70px;
            background: linear-gradient(135deg, var(--primary-light), var(--gold-light));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 1.8rem;
            color: var(--primary);
        }

        .service-card h3 {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: var(--dark);
        }

        .service-card p {
            color: #777;
            font-size: 0.9rem;
            line-height: 1.6;
        }

        /* Gallery Section */
        .gallery {
            background: var(--white);
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }

        .gallery-item {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            height: 300px;
            cursor: pointer;
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .gallery-item:hover img {
            transform: scale(1.1);
        }

        .gallery-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 30px 20px 20px;
            background: linear-gradient(to top, rgba(0,0,0,0.8), transparent);
            color: var(--white);
            transform: translateY(100%);
            transition: transform 0.4s;
        }

        .gallery-item:hover .gallery-overlay {
            transform: translateY(0);
        }

        /* Booking Section */
        .booking {
            background: linear-gradient(135deg, var(--dark) 0%, #2d1b4e 100%);
            color: var(--white);
        }

        .booking .section-header h2,
        .booking .section-header p {
            color: var(--white);
        }

        .booking-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 50px;
            align-items: start;
        }

        .booking-form {
            background: rgba(255,255,255,0.05);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 20px;
            border: 1px solid rgba(255,255,255,0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 0.9rem;
            color: rgba(255,255,255,0.9);
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 14px 18px;
            border: 1px solid rgba(255,255,255,0.2);
            border-radius: 12px;
            background: rgba(255,255,255,0.05);
            color: var(--white);
            font-family: 'Poppins', sans-serif;
            font-size: 0.95rem;
            transition: all 0.3s;
        }

        .form-group input:focus,
        .form-group select:focus,
        .form-group textarea:focus {
            outline: none;
            border-color: var(--gold);
            background: rgba(255,255,255,0.1);
        }

        .form-group input::placeholder {
            color: rgba(255,255,255,0.4);
        }

        .form-row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
        }

        .time-slots {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            margin-top: 10px;
        }

        .time-slot {
            padding: 10px;
            border: 1px solid rgba(255,255,255,0.2);
            border-radius: 10px;
            text-align: center;
            cursor: pointer;
            font-size: 0.8rem;
            transition: all 0.3s;
            background: rgba(255,255,255,0.05);
        }

        .time-slot:hover {
            border-color: var(--gold);
            background: rgba(212,165,116,0.1);
        }

        .time-slot.selected {
            background: var(--primary);
            border-color: var(--primary);
        }

        .time-slot.booked {
            opacity: 0.4;
            cursor: not-allowed;
            text-decoration: line-through;
        }

        .payment-options {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }

        .payment-option {
            flex: 1;
            padding: 15px;
            border: 2px solid rgba(255,255,255,0.2);
            border-radius: 12px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
        }

        .payment-option:hover {
            border-color: var(--gold);
        }

        .payment-option.selected {
            border-color: var(--primary);
            background: rgba(194,24,89,0.1);
        }

        .payment-option i {
            font-size: 1.5rem;
            margin-bottom: 8px;
            display: block;
        }

        .payment-option span {
            font-size: 0.85rem;
        }

        .submit-btn {
            width: 100%;
            padding: 16px;
            background: linear-gradient(135deg, var(--primary), var(--primary-dark));
            color: var(--white);
            border: none;
            border-radius: 12px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 10px;
        }

        .submit-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 30px rgba(194,24,89,0.4);
        }

        .booking-info {
            padding: 20px;
        }

        .info-box {
            background: rgba(255,255,255,0.05);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 20px;
        }

        .info-box h3 {
            color: var(--gold);
            margin-bottom: 15px;
            font-size: 1.2rem;
        }

        .info-box ul {
            list-style: none;
        }

        .info-box ul li {
            padding: 8px 0;
            border-bottom: 1px solid rgba(255,255,255,0.05);
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 0.9rem;
        }

        .info-box ul li:last-child {
            border-bottom: none;
        }

        .info-box ul li i {
            color: var(--gold);
            width: 20px;
        }

        /* Payment Modal */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0,0,0,0.7);
            z-index: 2000;
            display: none;
            align-items: center;
            justify-content: center;
            backdrop-filter: blur(5px);
        }

        .modal-overlay.active {
            display: flex;
        }

        .modal {
            background: var(--white);
            border-radius: 20px;
            padding: 40px;
            max-width: 450px;
            width: 90%;
            text-align: center;
            animation: modalIn 0.4s ease;
        }

        @keyframes modalIn {
            from { opacity: 0; transform: scale(0.9) translateY(20px); }
            to { opacity: 1; transform: scale(1) translateY(0); }
        }

        .modal h3 {
            font-size: 1.5rem;
            color: var(--dark);
            margin-bottom: 10px;
        }

        .modal p {
            color: #666;
            margin-bottom: 25px;
        }

        .qr-container {
            background: var(--light);
            padding: 20px;
            border-radius: 15px;
            margin-bottom: 20px;
        }

        .qr-container img {
            max-width: 200px;
            border-radius: 10px;
        }

        .upi-id {
            background: var(--dark);
            color: var(--white);
            padding: 12px 20px;
            border-radius: 10px;
            font-family: monospace;
            font-size: 1rem;
            margin: 15px 0;
            display: inline-block;
        }

        .modal-buttons {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .modal-buttons .btn {
            flex: 1;
            justify-content: center;
        }

        .btn-success {
            background: #4caf50;
            color: white;
        }

        .btn-success:hover {
            background: #388e3c;
        }

        .btn-secondary {
            background: #e0e0e0;
            color: var(--dark);
        }

        .btn-secondary:hover {
            background: #bdbdbd;
        }

        /* Contact Section */
        .contact {
            background: var(--white);
        }

        .contact-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
        }

        .contact-card {
            background: var(--light);
            padding: 40px 30px;
            border-radius: 20px;
            text-align: center;
            transition: all 0.3s;
        }

        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .contact-card i {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .contact-card h3 {
            margin-bottom: 10px;
            color: var(--dark);
        }

        .contact-card p {
            color: #666;
            font-size: 0.95rem;
        }

        .contact-card a {
            color: var(--primary);
            text-decoration: none;
            font-weight: 500;
        }

        /* Footer */
        footer {
            background: var(--dark);
            color: var(--white);
            padding: 50px 20px 20px;
        }

        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-brand h3 {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .footer-brand h3 span {
            color: var(--gold);
        }

        .footer-brand p {
            color: rgba(255,255,255,0.6);
            line-height: 1.8;
            font-size: 0.9rem;
        }

        .footer-links h4 {
            color: var(--gold);
            margin-bottom: 20px;
            font-size: 1.1rem;
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links ul li {
            margin-bottom: 10px;
        }

        .footer-links ul li a {
            color: rgba(255,255,255,0.6);
            text-decoration: none;
            font-size: 0.9rem;
            transition: color 0.3s;
        }

        .footer-links ul li a:hover {
            color: var(--gold);
        }

        .footer-bottom {
            border-top: 1px solid rgba(255,255,255,0.1);
            padding-top: 20px;
            text-align: center;
            color: rgba(255,255,255,0.4);
            font-size: 0.85rem;
        }

        /* Toast Notification */
        .toast {
            position: fixed;
            bottom: 30px;
            right: 30px;
            background: var(--dark);
            color: var(--white);
            padding: 16px 24px;
            border-radius: 12px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.3);
            z-index: 3000;
            transform: translateX(400px);
            transition: transform 0.4s ease;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .toast.show {
            transform: translateX(0);
        }

        .toast i {
            color: #4caf50;
            font-size: 1.2rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .hero h1 {
                font-size: 2.5rem;
            }

            .about-grid,
            .booking-container {
                grid-template-columns: 1fr;
            }

            .time-slots {
                grid-template-columns: repeat(3, 1fr);
            }

            .footer-content {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .form-row {
                grid-template-columns: 1fr;
            }
        }

        /* Animations */
        .fade-in {
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.8s ease;
        }

        .fade-in.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* Loading spinner */
        .spinner {
            width: 20px;
            height: 20px;
            border: 2px solid rgba(255,255,255,0.3);
            border-top-color: var(--white);
            border-radius: 50%;
            animation: spin 0.8s linear infinite;
            display: none;
        }

        @keyframes spin {
            to { transform: rotate(360deg); }
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav id="navbar">
        <div class="nav-container">
            <a href="#" class="logo">SS <span>Beauty Salon</span></a>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#gallery">Gallery</a></li>
                <li><a href="#booking">Book Now</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <button class="mobile-menu-btn" onclick="toggleMobileMenu()">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero" id="home">
        <div class="hero-content">
            <div class="hero-badge">
                <i class="fas fa-sparkles"></i> Premium Beauty Services
            </div>
            <h1>SS Beauty <span>Salon</span></h1>
            <p class="hero-subtitle">Where Beauty Meets Excellence</p>
            <p class="hero-owner">Owned by Amrit Singh Charak</p>
            <div class="hero-buttons">
                <a href="#booking" class="btn btn-primary">
                    <i class="fas fa-calendar-check"></i> Book Appointment
                </a>
                <a href="#services" class="btn btn-outline">
                    <i class="fas fa-list"></i> Our Services
                </a>
            </div>
            <div class="hero-hours">
                <i class="fas fa-clock"></i>
                <span>Open Daily: 9:00 AM - 5:00 PM</span>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about" id="about">
        <div class="container">
            <div class="section-header fade-in">
                <h2>About Us</h2>
                <p>Your trusted beauty destination</p>
                <div class="line"></div>
            </div>
            <div class="about-grid">
                <div class="about-image fade-in">
                    <img src="1000029811.png" alt="SS Beauty Salon Interior">
                </div>
                <div class="about-content fade-in">
                    <h3>Welcome to SS Beauty Salon</h3>
                    <p>At SS Beauty Salon, we believe that everyone deserves to look and feel their best. Our salon offers a wide range of premium beauty services in a relaxing and welcoming environment. From bridal makeovers to everyday grooming, our skilled professionals are dedicated to enhancing your natural beauty.</p>
                    <p>We use only high-quality products and the latest techniques to ensure you receive the best care possible. Your satisfaction is our top priority.</p>
                    <div class="about-info">
                        <div class="info-card">
                            <i class="fas fa-user-tie"></i>
                            <h4>Owner</h4>
                            <p>Amrit Singh Charak</p>
                        </div>
                        <div class="info-card">
                            <i class="fas fa-phone"></i>
                            <h4>Contact</h4>
                            <p>8082815770</p>
                        </div>
                        <div class="info-card">
                            <i class="fas fa-envelope"></i>
                            <h4>Email</h4>
                            <p>vuranimation767@gmail.com</p>
                        </div>
                        <div class="info-card">
                            <i class="fas fa-clock"></i>
                            <h4>Hours</h4>
                            <p>9 AM - 5 PM Daily</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section class="services" id="services">
        <div class="container">
            <div class="section-header fade-in">
                <h2>Our Services</h2>
                <p>Comprehensive beauty solutions for every need</p>
                <div class="line"></div>
            </div>
            <div class="services-grid">
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-cut"></i></div>
                    <h3>Haircut</h3>
                    <p>Professional haircuts tailored to your face shape and style preferences.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-wind"></i></div>
                    <h3>Hairstyling</h3>
                    <p>Creative styling for any occasion, from casual to glamorous.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-paint-brush"></i></div>
                    <h3>Make-up</h3>
                    <p>Flawless makeup application using premium products.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-ring"></i></div>
                    <h3>Bridal Services</h3>
                    <p>Complete bridal packages for your special day.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-heart"></i></div>
                    <h3>Make-up Services</h3>
                    <p>Specialized makeup services for events and photoshoots.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-spa"></i></div>
                    <h3>Facials</h3>
                    <p>Rejuvenating facial treatments for glowing, healthy skin.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-hand-sparkles"></i></div>
                    <h3>Manicure</h3>
                    <p>Beautiful nail care and polish for perfect hands.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-shoe-prints"></i></div>
                    <h3>Pedicure</h3>
                    <p>Relaxing foot care and nail treatment.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-hand-holding-heart"></i></div>
                    <h3>Massage</h3>
                    <p>Soothing massages to relieve stress and tension.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-eye"></i></div>
                    <h3>Eyebrow Shaping</h3>
                    <p>Precision shaping to frame your face perfectly.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-thread"></i></div>
                    <h3>Eyebrow Threading</h3>
                    <p>Expert threading for clean, defined brows.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-spray-can"></i></div>
                    <h3>Body Waxing</h3>
                    <p>Smooth, long-lasting hair removal for all body areas.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-sun"></i></div>
                    <h3>Tanning</h3>
                    <p>Safe, even tanning for a sun-kissed glow.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-shower"></i></div>
                    <h3>Shampoo & Conditioning</h3>
                    <p>Deep cleansing and nourishing hair treatments.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-car"></i></div>
                    <h3>Mobile Salon Service</h3>
                    <p>Beauty services brought to your doorstep.</p>
                </div>
                <div class="service-card fade-in">
                    <div class="service-icon"><i class="fas fa-calendar-alt"></i></div>
                    <h3>Wedding & Event Prep</h3>
                    <p>Complete preparation services for your big events.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Gallery Section -->
    <section class="gallery" id="gallery">
        <div class="container">
            <div class="section-header fade-in">
                <h2>Our Salon</h2>
                <p>Take a look inside our beautiful space</p>
                <div class="line"></div>
            </div>
            <div class="gallery-grid">
                <div class="gallery-item fade-in">
                    <img src="1000029811.png" alt="Salon Interior">
                    <div class="gallery-overlay">
                        <h3>Salon Interior</h3>
                        <p>Modern and comfortable styling stations</p>
                    </div>
                </div>
                <div class="gallery-item fade-in">
                    <img src="1000029811.png" alt="Salon View">
                    <div class="gallery-overlay">
                        <h3>Styling Area</h3>
                        <p>Well-lit mirrors and premium equipment</p>
                    </div>
                </div>
                <div class="gallery-item fade-in">
                    <img src="1000029811.png" alt="Salon Ambience">
                    <div class="gallery-overlay">
                        <h3>Relaxing Ambience</h3>
                        <p>Designed for your comfort and relaxation</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Booking Section -->
    <section class="booking" id="booking">
        <div class="container">
            <div class="section-header fade-in">
                <h2>Book Your Appointment</h2>
                <p>Schedule your beauty session with us</p>
                <div class="line"></div>
            </div>
            <div class="booking-container">
                <div class="booking-form fade-in">
                    <form id="bookingForm" onsubmit="handleBooking(event)">
                        <div class="form-row">
                            <div class="form-group">
                                <label><i class="fas fa-user"></i> Full Name</label>
                                <input type="text" id="customerName" placeholder="Enter your name" required>
                            </div>
                            <div class="form-group">
                                <label><i class="fas fa-phone"></i> Phone Number</label>
                                <input type="tel" id="customerPhone" placeholder="8082815770" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label><i class="fas fa-envelope"></i> Email</label>
                            <input type="email" id="customerEmail" placeholder="your@email.com" required>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label><i class="fas fa-calendar"></i> Select Date</label>
                                <input type="date" id="bookingDate" required onchange="loadTimeSlots()">
                            </div>
                            <div class="form-group">
                                <label><i class="fas fa-list"></i> Service</label>
                                <select id="serviceSelect" required>
                                    <option value="">Choose a service</option>
                                    <option value="haircut">Haircut</option>
                                    <option value="hairstyling">Hairstyling</option>
                                    <option value="makeup">Make-up</option>
                                    <option value="bridal">Bridal Services</option>
                                    <option value="makeup-services">Make-up Services</option>
                                    <option value="facial">Facials</option>
                                    <option value="manicure">Manicure</option>
                                    <option value="pedicure">Pedicure</option>
                                    <option value="massage">Massage</option>
                                    <option value="eyebrow-shaping">Eyebrow Shaping</option>
                                    <option value="eyebrow-threading">Eyebrow Threading</option>
                                    <option value="body-waxing">Body Waxing</option>
                                    <option value="tanning">Tanning</option>
                                    <option value="shampoo-conditioning">Shampoo & Conditioning</option>
                                    <option value="mobile-salon">Mobile Salon Service</option>
                                    <option value="wedding-event">Wedding & Event Preparation</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label><i class="fas fa-clock"></i> Select Time Slot (30 min intervals)</label>
                            <div class="time-slots" id="timeSlots">
                                <!-- Generated by JS -->
                            </div>
                            <input type="hidden" id="selectedTime" required>
                        </div>
                        <div class="form-group">
                            <label><i class="fas fa-credit-card"></i> Payment Method</label>
                            <div class="payment-options">
                                <div class="payment-option" onclick="selectPayment('online')" id="payOnline">
                                    <i class="fas fa-mobile-alt"></i>
                                    <span>Online Payment (UPI)</span>
                                </div>
                                <div class="payment-option selected" onclick="selectPayment('cash')" id="payCash">
                                    <i class="fas fa-money-bill-wave"></i>
                                    <span>Pay by Cash</span>
                                </div>
                            </div>
                            <input type="hidden" id="paymentMethod" value="cash">
                        </div>
                        <div class="form-group">
                            <label><i class="fas fa-comment"></i> Special Requests (Optional)</label>
                            <textarea id="specialRequests" rows="3" placeholder="Any allergies, preferences, or special requirements..."></textarea>
                        </div>
                        <button type="submit" class="submit-btn" id="submitBtn">
                            <span id="btnText">Confirm Booking</span>
                            <div class="spinner" id="btnSpinner"></div>
                        </button>
                    </form>
                </div>
                <div class="booking-info fade-in">
                    <div class="info-box">
                        <h3><i class="fas fa-info-circle"></i> Booking Information</h3>
                        <ul>
                            <li><i class="fas fa-check"></i> Each slot is 30 minutes</li>
                            <li><i class="fas fa-check"></i> Booked slots are unavailable</li>
                            <li><i class="fas fa-check"></i> Cancellations update automatically</li>
                            <li><i class="fas fa-check"></i> Online payment via UPI QR</li>
                            <li><i class="fas fa-check"></i> Cash payment also accepted</li>
                            <li><i class="fas fa-check"></i> Confirmation sent to your email</li>
                        </ul>
                    </div>
                    <div class="info-box">
                        <h3><i class="fas fa-clock"></i> Working Hours</h3>
                        <ul>
                            <li><i class="fas fa-sun"></i> Monday - Sunday: 9:00 AM - 5:00 PM</li>
                            <li><i class="fas fa-moon"></i> Last appointment: 4:30 PM</li>
                            <li><i class="fas fa-phone"></i> Call: 8082815770</li>
                        </ul>
                    </div>
                    <div class="info-box">
                        <h3><i class="fas fa-map-marker-alt"></i> Contact Details</h3>
                        <ul>
                            <li><i class="fas fa-user"></i> Amrit Singh Charak</li>
                            <li><i class="fas fa-phone"></i> 8082815770</li>
                            <li><i class="fas fa-envelope"></i> vuranimation767@gmail.com</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="contact" id="contact">
        <div class="container">
            <div class="section-header fade-in">
                <h2>Get In Touch</h2>
                <p>We'd love to hear from you</p>
                <div class="line"></div>
            </div>
            <div class="contact-grid">
                <div class="contact-card fade-in">
                    <i class="fas fa-phone-alt"></i>
                    <h3>Phone</h3>
                    <p><a href="tel:8082815770">8082815770</a></p>
                </div>
                <div class="contact-card fade-in">
                    <i class="fas fa-envelope"></i>
                    <h3>Email</h3>
                    <p><a href="mailto:vuranimation767@gmail.com">vuranimation767@gmail.com</a></p>
                </div>
                <div class="contact-card fade-in">
                    <i class="fas fa-clock"></i>
                    <h3>Working Hours</h3>
                    <p>9:00 AM - 5:00 PM<br>Daily</p>
                </div>
                <div class="contact-card fade-in">
                    <i class="fas fa-user"></i>
                    <h3>Owner</h3>
                    <p>Amrit Singh Charak</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="footer-content">
            <div class="footer-brand">
                <h3>SS <span>Beauty Salon</span></h3>
                <p>Your premier destination for beauty and wellness. We are committed to providing exceptional services that enhance your natural beauty and boost your confidence.</p>
            </div>
            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#booking">Book Now</a></li>
                </ul>
            </div>
            <div class="footer-links">
                <h4>Services</h4>
                <ul>
                    <li><a href="#services">Haircut & Styling</a></li>
                    <li><a href="#services">Bridal Services</a></li>
                    <li><a href="#services">Facials & Spa</a></li>
                    <li><a href="#services">Make-up</a></li>
                </ul>
            </div>
            <div class="footer-links">
                <h4>Contact</h4>
                <ul>
                    <li><a href="tel:8082815770">8082815770</a></li>
                    <li><a href="mailto:vuranimation767@gmail.com">vuranimation767@gmail.com</a></li>
                    <li>Amrit Singh Charak</li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p> 2024 SS Beauty Salon. All rights reserved. Designed for Amrit Singh Charak.</p>
        </div>
    </footer>

    <!-- Payment Modal -->
    <div class="modal-overlay" id="paymentModal">
        <div class="modal">
            <h3><i class="fas fa-qrcode"></i> Complete Payment</h3>
            <p>Scan the QR code below with any UPI app to complete your booking payment.</p>
            <div class="qr-container">
                <img src="1000029818.png" alt="UPI QR Code - Amrit Singh Charak">
                <div class="upi-id">rajputveena177@oksbi</div>
                <p style="font-size: 0.85rem; color: #888; margin-top: 10px;">UPI ID: rajputveena177@oksbi</p>
            </div>
            <p style="font-size: 0.9rem; color: #666;">After payment, click "Payment Done" to confirm your booking.</p>
            <div class="modal-buttons">
                <button class="btn btn-success" onclick="confirmPayment()">
                    <i class="fas fa-check"></i> Payment Done
                </button>
                <button class="btn btn-secondary" onclick="closePaymentModal()">
                    <i class="fas fa-times"></i> Cancel
                </button>
            </div>
        </div>
    </div>

    <!-- Toast -->
    <div class="toast" id="toast">
        <i class="fas fa-check-circle"></i>
        <span id="toastMessage">Booking confirmed successfully!</span>
    </div>

    <script>
        // ====== DATA STORAGE (Simulating Spreadsheet) ======
        // In a real implementation, this would connect to Google Sheets API
        const bookingsDB = JSON.parse(localStorage.getItem('ss_salon_bookings')) || [];
        
        // ====== TIME SLOTS GENERATION ======
        function generateTimeSlots() {
            const slots = [];
            for (let hour = 9; hour < 17; hour++) {
                slots.push(`${hour.toString().padStart(2, '0')}:00`);
                slots.push(`${hour.toString().padStart(2, '0')}:30`);
            }
            return slots;
        }

        function loadTimeSlots() {
            const date = document.getElementById('bookingDate').value;
            const container = document.getElementById('timeSlots');
            const selectedTimeInput = document.getElementById('selectedTime');
            
            if (!date) {
                container.innerHTML = '<p style="color: rgba(255,255,255,0.5); font-size: 0.9rem;">Please select a date first</p>';
                return;
            }

            const slots = generateTimeSlots();
            const today = new Date().toISOString().split('T')[0];
            const currentTime = new Date();
            const currentHour = currentTime.getHours();
            const currentMin = currentTime.getMinutes();

            container.innerHTML = '';
            
            slots.forEach(slot => {
                const slotHour = parseInt(slot.split(':')[0]);
                const slotMin = parseInt(slot.split(':')[1]);
                
                // Check if slot is in the past for today
                let isPast = false;
                if (date === today) {
                    if (slotHour < currentHour || (slotHour === currentHour && slotMin <= currentMin)) {
                        isPast = true;
                    }
                }

                // Check if slot is already booked
                const isBooked = bookingsDB.some(b => 
                    b.date === date && b.time === slot && b.status !== 'cancelled'
                );

                const div = document.createElement('div');
                div.className = `time-slot ${isBooked ? 'booked' : ''} ${isPast ? 'booked' : ''}`;
                div.textContent = slot;
                
                if (!isBooked && !isPast) {
                    div.onclick = () => selectTimeSlot(div, slot);
                }
                
                container.appendChild(div);
            });

            selectedTimeInput.value = '';
        }

        function selectTimeSlot(element, time) {
            document.querySelectorAll('.time-slot').forEach(el => el.classList.remove('selected'));
            element.classList.add('selected');
            document.getElementById('selectedTime').value = time;
        }

        // ====== PAYMENT SELECTION ======
        function selectPayment(method) {
            document.getElementById('paymentMethod').value = method;
            document.querySelectorAll('.payment-option').forEach(el => el.classList.remove('selected'));
            
            if (method === 'online') {
                document.getElementById('payOnline').classList.add('selected');
            } else {
                document.getElementById('payCash').classList.add('selected');
            }
        }

        // ====== BOOKING HANDLER ======
        let pendingBooking = null;

        function handleBooking(e) {
            e.preventDefault();
            
            const name = document.getElementById('customerName').value;
            const phone = document.getElementById('customerPhone').value;
            const email = document.getElementById('customerEmail').value;
            const date = document.getElementById('bookingDate').value;
            const time = document.getElementById('selectedTime').value;
            const service = document.getElementById('serviceSelect').value;
            const payment = document.getElementById('paymentMethod').value;
            const requests = document.getElementById('specialRequests').value;

            if (!time) {
                showToast('Please select a time slot!', 'error');
                return;
            }

            // Check again if slot is taken (double-check)
            const isBooked = bookingsDB.some(b => 
                b.date === date && b.time === time && b.status !== 'cancelled'
            );

            if (isBooked) {
                showToast('Sorry, this slot was just booked! Please choose another.', 'error');
                loadTimeSlots();
                return;
            }

            pendingBooking = {
                id: Date.now().toString(),
                name,
                phone,
                email,
                date,
                time,
                service,
                payment,
                requests,
                status: 'pending',
                paymentStatus: payment === 'cash' ? 'pending_cash' : 'pending_online',
                createdAt: new Date().toISOString()
            };

            if (payment === 'online') {
                document.getElementById('paymentModal').classList.add('active');
            } else {
                finalizeBooking();
            }
        }

        function confirmPayment() {
            if (pendingBooking) {
                pendingBooking.paymentStatus = 'paid_online';
                finalizeBooking();
            }
            closePaymentModal();
        }

        function closePaymentModal() {
            document.getElementById('paymentModal').classList.remove('active');
            if (pendingBooking && pendingBooking.payment === 'online') {
                // If they cancel payment, treat as cash
                pendingBooking.payment = 'cash';
                pendingBooking.paymentStatus = 'pending_cash';
                finalizeBooking();
            }
        }

        function finalizeBooking() {
            if (!pendingBooking) return;

            // Add to "database"
            bookingsDB.push(pendingBooking);
            localStorage.setItem('ss_salon_bookings', JSON.stringify(bookingsDB));

            // Send to Google Sheets (simulated - would need Apps Script)
            sendToSpreadsheet(pendingBooking);

            // Show success
            showToast('Booking confirmed! Check your email for details.');
            
            // Reset form
            document.getElementById('bookingForm').reset();
            document.getElementById('selectedTime').value = '';
            document.querySelectorAll('.time-slot').forEach(el => el.classList.remove('selected'));
            loadTimeSlots();
            
            pendingBooking = null;
        }

        // ====== SPREADSHEET INTEGRATION ======
        function sendToSpreadsheet(booking) {
            // This function would normally send data to Google Sheets via Apps Script
            // For now, we log it and store in localStorage
            console.log('Booking data for spreadsheet:', booking);
            
            // To connect to real Google Sheets, you would use:
            // fetch('YOUR_GOOGLE_APPS_SCRIPT_URL', {
            //     method: 'POST',
            //     body: JSON.stringify(booking)
            // });
            
            // The spreadsheet would have columns:
            // ID | Name | Phone | Email | Date | Time | Service | Payment | Payment Status | Special Requests | Status | Created At
        }

        // ====== CANCELLATION SYSTEM ======
        function cancelBooking(bookingId) {
            const booking = bookingsDB.find(b => b.id === bookingId);
            if (booking) {
                booking.status = 'cancelled';
                booking.cancelledAt = new Date().toISOString();
                localStorage.setItem('ss_salon_bookings', JSON.stringify(bookingsDB));
                
                // Update spreadsheet
                sendToSpreadsheet(booking);
                showToast('Booking cancelled successfully.');
                loadTimeSlots();
            }
        }

        // ====== TOAST NOTIFICATIONS ======
        function showToast(message, type = 'success') {
            const toast = document.getElementById('toast');
            const msg = document.getElementById('toastMessage');
            const icon = toast.querySelector('i');
            
            msg.textContent = message;
            
            if (type === 'error') {
                icon.className = 'fas fa-exclamation-circle';
                icon.style.color = '#f44336';
            } else {
                icon.className = 'fas fa-check-circle';
                icon.style.color = '#4caf50';
            }
            
            toast.classList.add('show');
            setTimeout(() => toast.classList.remove('show'), 4000);
        }

        // ====== SCROLL ANIMATIONS ======
        function initScrollAnimations() {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('visible');
                    }
                });
            }, { threshold: 0.1 });

            document.querySelectorAll('.fade-in').forEach(el => observer.observe(el));
        }

        // ====== NAVBAR SCROLL ======
        window.addEventListener('scroll', () => {
            const nav = document.getElementById('navbar');
            if (window.scrollY > 50) {
                nav.style.padding = '10px 0';
                nav.style.boxShadow = '0 2px 20px rgba(0,0,0,0.1)';
            } else {
                nav.style.padding = '15px 0';
                nav.style.boxShadow = '0 2px 20px rgba(0,0,0,0.05)';
            }
        });

        // ====== SMOOTH SCROLL ======
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function(e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth', block: 'start' });
                }
            });
        });

        // ====== SET MIN DATE TO TODAY ======
        document.getElementById('bookingDate').min = new Date().toISOString().split('T')[0];

        // ====== MOBILE MENU ======
        function toggleMobileMenu() {
            const nav = document.querySelector('.nav-links');
            nav.style.display = nav.style.display === 'flex' ? 'none' : 'flex';
        }

        // ====== INITIALIZE ======
        document.addEventListener('DOMContentLoaded', () => {
            initScrollAnimations();
            loadTimeSlots();
        });
    </script>
</body>
</html>'''

# Save the file
with open('/mnt/agents/output/ss_beauty_salon.html', 'w', encoding='utf-8') as f:
    f.write(html_code)

print("Website created successfully!")
print(f"Total lines: {len(html_code.splitlines())}")
print(f"File size: {len(html_code)} characters")
