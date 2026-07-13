
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
            grid-template-columns: repeat(auto-fit, m
