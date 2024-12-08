<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
    <title>Faculty Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f6f7;
            --text-color: #2c3e50;
            --accent-color: #e74c3c;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            overflow-x: hidden;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 100%;
            max-width: 450px;
        }

        .login-card {
            background: white;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            padding: 40px;
            width: 100%;
            animation: fadeIn 0.7s ease-out;
            position: relative;
            overflow: hidden;
        }

        .login-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 6px;
            background: linear-gradient(to right, #3498db, #2ecc71);
        }

        .card-header {
            text-align: center;
            margin-bottom: 30px;
        }

        .card-header h3 {
            color: var(--text-color);
            font-size: 28px;
            font-weight: 600;
            position: relative;
            display: inline-block;
        }

        .card-header h3::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background: var(--primary-color);
        }

        .login-form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: var(--text-color);
            font-weight: 500;
        }

        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e0e0e0;
            border-radius: 10px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
        }

        .captcha-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            margin-top: 15px;
        }

        .captcha-container label {
            font-weight: 500;
            color: var(--text-color);
        }

        .captcha-error {
            color: var(--accent-color);
            font-size: 14px;
            margin-top: 5px;
            text-align: center;
            display: none; /* Hide initially */
        }

        .login-btn {
            width: 100%;
            padding: 15px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        .login-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
        }

        .registration-link {
            text-align: center;
            margin-top: 20px;
            color: var(--text-color);
        }

        .registration-link a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
        }

        .quote-container {
            width: 100%;
            max-width: 800px;
            margin-top: 30px;
            background: rgba(255,255,255,0.1);
            border-radius: 15px;
            padding: 20px;
        }

        .quote-scroll {
            overflow: hidden;
            position: relative;
            white-space: nowrap;
        }

        .quote-content {
            display: inline-block;
            padding-left: 100%;
            animation: scrollQuote 20s linear infinite;
        }

        @keyframes scrollQuote {
            0% {
                transform: translate(0, 0);
            }
            100% {
                transform: translate(-100%, 0);
            }
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @media (max-width: 480px) {
            .login-card {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar (Assuming you have a separate navbar include) -->
    <%@ include file="navbar.jsp" %>

    <!-- Flash Message -->
    <span class="blink">
        <h3 align="center" style="color:red">${message}</h3>
    </span>

    <div class="container">
        <div class="login-card">
            <div class="card-header">
                <h3>Faculty Login</h3>
            </div>

            <form class="login-form" method="post" action="checkemplogin" onsubmit="return validateCaptcha()">
                <!-- Name Input Field -->
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" required placeholder="Enter your name"/>
                </div>

                <div class="form-group">
                    <label>Email ID</label>
                    <input type="email" name="email" required placeholder="Enter your email"/>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="pwd" required placeholder="Enter your password"/>
                </div>

                <!-- Captcha -->
                <div class="captcha-container">
                    <label id="captchaQuestion">Captcha</label>
                    <input type="text" id="captchaAnswer" name="captchaAnswer" required placeholder="Captcha Answer"/>
                    <span id="captchaError" class="captcha-error">Incorrect answer. Please try again.</span>
                </div>

                <button type="submit" class="login-btn">Login</button>
            </form>

            <div class="registration-link">
                New Registration? <a href="empreg">Click Here</a>
            </div>
        </div>

        <!-- Scrolling Quote Container -->
        <div class="quote-container">
            <div class="quote-scroll">
                <div class="quote-content">
                    "A teacher is a compass that activates the magnets of curiosity, knowledge, and wisdom in the pupils." 
                    - Ever Garrison | "A teacher takes a hand, opens a mind, and touches a heart." 
                    - Anonymous | "The art of teaching is the art of assisting discovery." 
                    - Mark Van Doren | "Teachers are the guardians of civilization, the custodians of human potential." 
                    - Anonymous
                </div>
            </div>
        </div>
    </div>

    <script>
        // Captcha Generation Script
        var correctCaptchaAnswer;

        function generateCaptcha() {
            var num1 = Math.floor(Math.random() * 10) + 1;
            var num2 = Math.floor(Math.random() * 10) + 1;
            var operator = (Math.random() > 0.5) ? "+" : "-";
            var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
            var captchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

            correctCaptchaAnswer = captchaAnswer;
            document.getElementById("captchaQuestion").innerHTML = captchaQuestion;
            document.getElementById("captchaError").style.display = 'none';  // Hide error initially
        }

        function validateCaptcha() {
            var userAnswer = document.getElementById("captchaAnswer").value;
            if (parseInt(userAnswer) !== correctCaptchaAnswer) {
                document.getElementById("captchaError").style.display = 'block'; // Show error if incorrect
                return false;
            } else {
                document.getElementById("captchaError").style.display = 'none'; // Hide error if correct
                return true;
            }
        }

        window.onload = generateCaptcha;
    </script>
</body>
</html>
