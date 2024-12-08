<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <title>Student Learning Portal</title>
    <style>
        body {
            font-family: 'Space Grotesk', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(120deg, #ff9a9e, #fad0c4);
            animation: backgroundAnimation 10s ease infinite;
        }

        @keyframes backgroundAnimation {
            0%, 100% {
                background: linear-gradient(120deg, #ff9a9e, #fad0c4);
            }
            50% {
                background: linear-gradient(120deg, #fbc2eb, #a6c1ee);
            }
        }

        .navbar {
            animation: slideInDown 1s ease-out;
        }

        @keyframes slideInDown {
            from {
                transform: translateY(-100%);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        /* Hero Section Styling */
        .hero-section {
            display: flex;
            flex-wrap: wrap-reverse;
            align-items: center;
            justify-content: space-between;
            padding: 60px 20px;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: white;
            border-radius: 15px;
            margin-bottom: 30px;
            animation: fadeInZoom 1.5s ease-out;
        }

        @keyframes fadeInZoom {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        .hero-section .text-content {
            width: 60%;
        }

        .hero-section h1 {
            font-size: 3rem;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero-section p {
            font-size: 1.2rem;
            margin-top: 20px;
            line-height: 1.6;
        }

        .hero-section a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 30px;
            font-size: 1rem;
            border-radius: 25px;
            background: linear-gradient(90deg, #ff7eb3, #ff758c);
            color: white;
            text-decoration: none;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .hero-section a:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .hero-image img {
            max-width: 100%;
            border-radius: 15px;
            animation: slideInLeft 1.5s ease-out;
        }

        @keyframes slideInLeft {
            from {
                transform: translateX(-100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }

        /* Cards Section */
        .content-section {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            justify-content: center;
        }

        .content-section .card {
            position: relative;
            overflow: hidden;
            border: none;
            border-radius: 15px;
            background: linear-gradient(145deg, #ffffff, #e6e6e6);
            box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.2), -10px -10px 20px rgba(255, 255, 255, 0.5);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeIn 1s ease;
        }

        .content-section .card img,
        .content-section .card video {
            max-height: 250px;
            object-fit: cover;
            border-bottom: 5px solid #6a11cb;
        }

        .content-section .card .card-body {
            padding: 20px;
            text-align: center;
        }

        .content-section .card:hover {
            transform: scale(1.05);
            box-shadow: 15px 15px 30px rgba(0, 0, 0, 0.3), -15px -15px 30px rgba(255, 255, 255, 0.6);
        }

        .content-section .card:nth-child(even) {
            animation: fadeInFromLeft 1s ease-out;
        }

        .content-section .card:nth-child(odd) {
            animation: fadeInFromRight 1s ease-out;
        }

        @keyframes fadeInFromLeft {
            from {
                opacity: 0;
                transform: translateX(-100%);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeInFromRight {
            from {
                opacity: 0;
                transform: translateX(100%);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @media (max-width: 768px) {
            .hero-section {
                flex-direction: column;
                text-align: center;
            }

            .content-section {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>

    <!-- Navbar Content -->
    <%@ include file="navbar.jsp" %>

    <section class="hero-section">
        <div class="text-content">
            <h1>Student Learning Portal</h1>
            <p>Learn wherever and whenever! Discover interactive courses, AI-driven paths, and much more.</p>
            <div>
                <a href="subscription">Subscribe</a>
                <a href="explore" style="background: linear-gradient(90deg, #7ed6df, #22a6b3);">Explore</a>
            </div>
        </div>
        <div class="hero-image">
            <img src="https://i.pinimg.com/originals/74/47/04/7447042a41a9bff1f39695ec4287c774.gif" alt="Learning Illustration">
        </div>
    </section>

    <section class="content-section">
        <div class="card">
            <img src="https://i.pinimg.com/originals/cc/b2/82/ccb282af38fdb09cf4589356b8bc4767.gif" alt="Learning">
            <div class="card-body">
                <h5 class="card-title">Learning Features</h5>
                <p class="card-text">
                    <ul>
                        <li>Learning content delivery</li>
                        <li>Learner profiles with course data</li>
                        <li>AI-driven personalized paths</li>
                        <li>Online assignments for learners</li>
                    </ul>
                </p>
            </div>
        </div>

        <div class="card">
            <video src="mainvideo.mp4" autoplay muted loop></video>
            <div class="card-body">
                <h5 class="card-title">Content Management</h5>
                <p class="card-text">
                    <ul>
                        <li>Multilingual content</li>
                        <li>Support for various content types</li>
                        <li>User-generated materials</li>
                        <li>Structured storage of learning materials</li>
                    </ul>
                </p>
            </div>
        </div>
    </section>
</body>

</html>
