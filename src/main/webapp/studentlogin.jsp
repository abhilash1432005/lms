<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap');

        /* Body and background */
        body {
            background-color: #f7f7f7; /* Light gray background */
            font-family: 'Roboto', sans-serif;
            overflow: hidden; /* To prevent scrollbars */
            margin: 0;
            height: 100vh;
        }

        /* Scrolling Quote Section */
        .scrolling-quote {
            position: fixed;
            bottom: 0; /* Position it at the bottom */
            left: 0;
            right: 0;
            background-color: rgba(0, 0, 0, 0.7);
            color: #fff;
            padding: 10px;
            font-size: 20px;
            text-align: center;
            z-index: 10;
            animation: scroll 15s linear infinite;
        }

        @keyframes scroll {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        /* Header */
        .header {
            text-align: center;
            margin-bottom: 40px;
        }

        .header h1 {
            color: #4CAF50;
            font-size: 50px;
            font-weight: 600;
            text-transform: uppercase;
        }

        .header p {
            font-size: 20px;
            color: #666;
        }

        /* Login box container */
        .login-box {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            border-radius: 10px;
            padding: 30px;
            margin: 50px auto;
            max-width: 400px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            position: relative; /* So it can overlay the moving background */
        }

        .login-box:hover {
            transform: scale(1.05);
        }

        .login-box h3 {
            color: #fff;
            margin-bottom: 30px;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ddd;
            box-shadow: none;
            padding: 12px;
            margin-bottom: 20px;
            font-size: 16px;
        }

        .btn-primary {
            background-color: #4CAF50;
            border: none;
            padding: 12px;
            font-size: 18px;
            border-radius: 5px;
            width: 100%;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #45a049;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .login-footer {
            text-align: center;
            margin-top: 20px;
        }

        .login-footer a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: 500;
        }

        .login-footer a:hover {
            text-decoration: underline;
        }

        /* Carousel section */
        .carousel-inner img {
            height: 80px;
            margin-top: 20px;
        }

        /* Mobile responsiveness */
        @media (max-width: 767px) {
            .login-box {
                padding: 20px;
                width: 90%;
            }

            .hide-on-mobile {
                display: none;
            }
        }

        /* Moving Background Animation */
        .background-animation {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://i.pinimg.com/originals/2a/39/c7/2a39c705e5c82517c6d8bc18d4e1070c.gif') no-repeat center center fixed;
            background-size: cover;
            transition: background-position 0.2s ease-out;
            z-index: -1;
        }
    </style>
</head>
<body>

<!-- Scrolling Quote -->
<div class="scrolling-quote">
    "Education is the key to unlock the golden door of freedom. Your studies today, build your future tomorrow."
</div>

<!-- Include your navbar here -->
<%@ include file="studentnavbar.jsp" %>

<!-- Background animation that follows cursor -->
<div class="background-animation"></div>

<div class="container">
    <div class="row justify-content-center">
        <!-- Login Form Section -->
        <div class="col-sm-12 col-md-6">
            <div class="login-box">
                <h3>Login</h3>
                <span class="blink">
                    <h3 style="color: red" align="center">${message}</h3>
                </span>

                <form class="login-form" method="post" action="checkstudentlogin" onsubmit="return validateCaptcha()">
                    <!-- Email/Username Input -->
                    <div class="form-group">
                        <input type="text" class="form-control" name="email" placeholder="Email or Username" required>
                    </div>

                    <!-- Password Input -->
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password" required>
                    </div>

                    <!-- Math Captcha Section -->
                    <div class="form-group">
                        <label id="mathCaptchaQuestion" style="color: #fff;"></label>
                        <input type="text" id="captchaAnswer" class="form-control" placeholder="Enter answer" required>
                        <span id="captchaError" style="color: red; display:none;">Incorrect answer, please try again.</span>
                    </div>

                    <!-- Submit Button -->
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">Login</button>
                    </div>

                    <!-- Signup Link -->
                    <div class="login-footer">
                        <p>New Member? <a href="addcustomer">Sign up Now</a></p>
                    </div>
                </form>
            </div>
        </div>

        <!-- Carousel Section -->
        <div class="col-sm-12 col-md-6 hide-on-mobile">
            <div id="demo" class="carousel slide" data-ride="carousel" data-interval="3000" data-pause="hover">
                <!-- Slideshow Content -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="slider-feature-card">
                            <img src="https://i.imgur.com/YMn8Xo1.png" alt="Welcome Image">
                            <h3>Welcome To LMS</h3>
                            <p>Grow your skills with the best learning resources.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="slider-feature-card">
                            <img src="https://i.imgur.com/Yi5KXKM.png" alt="Faculty Image">
                            <h3>Best Faculty</h3>
                            <p>Learn from expert mentors with great teaching experience.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var correctCaptchaAnswer = 0;

    function generateCaptcha() {
        var num1 = Math.floor(Math.random() * 10) + 1;
        var num2 = Math.floor(Math.random() * 10) + 1;
        var operator = (Math.random() > 0.5) ? "+" : "-"; 
        var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
        var captchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

        correctCaptchaAnswer = captchaAnswer;

        document.getElementById("mathCaptchaQuestion").innerHTML = captchaQuestion;
    }

    function validateCaptcha() {
        var userAnswer = document.getElementById("captchaAnswer").value;
        if (parseInt(userAnswer) !== correctCaptchaAnswer) {
            document.getElementById("captchaError").style.display = "block";
            return false;
        }
        document.getElementById("captchaError").style.display = "none";
        return true;
    }

    // Generate captcha when page loads
    window.onload = generateCaptcha;
</script>

</body>
</html>
