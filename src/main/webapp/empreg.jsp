<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Enhanced Employee Registration Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4A90E2;
            --secondary-color: #2C3E50;
            --background-gradient: linear-gradient(135deg, #4A90E2, #6A5ACD);
            --input-border-color: #E0E0E0;
            --text-color: #333;
            --error-color: #E74C3C;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: var(--background-gradient);
            padding: 20px;
            line-height: 1.6;
        }

        .container {
            max-width: 800px;
            width: 100%;
            background-color: #FFFFFF;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.8s ease-out;
        }

        .title {
            font-size: 32px;
            font-weight: 700;
            color: var(--primary-color);
            text-align: center;
            margin-bottom: 30px;
            position: relative;
            padding-bottom: 15px;
        }

        .title::after {
            content: "";
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: var(--primary-color);
            border-radius: 2px;
        }

        .user-details {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .input-box {
            margin-bottom: 20px;
        }

        .input-box span.details {
            display: block;
            font-weight: 600;
            margin-bottom: 10px;
            color: var(--secondary-color);
        }

        .input-box input, 
        .input-box select {
            width: 100%;
            padding: 12px 15px;
            font-size: 16px;
            border: 2px solid var(--input-border-color);
            border-radius: 10px;
            outline: none;
            transition: all 0.3s ease;
        }

        .input-box input:focus, 
        .input-box select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 2px rgba(74, 144, 226, 0.2);
        }

        .gender-details {
            margin-bottom: 20px;
        }

        .gender-title {
            font-weight: 600;
            color: var(--secondary-color);
            margin-bottom: 10px;
            display: block;
        }

        .category {
            display: flex;
            justify-content: space-between;
        }

        .category label {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .category label input[type="radio"] {
            display: none;
        }

        .category label .dot {
            height: 20px;
            width: 20px;
            border-radius: 50%;
            margin-right: 10px;
            border: 2px solid var(--input-border-color);
            transition: all 0.3s ease;
        }

        .category label input[type="radio"]:checked + .dot {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
        }

        .captcha-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }

        .captcha-container label {
            margin-bottom: 10px;
            font-weight: 600;
            color: var(--secondary-color);
        }

        .captcha-container input {
            width: 100px;
            text-align: center;
            padding: 10px;
            font-size: 18px;
            border-radius: 10px;
            border: 2px solid var(--input-border-color);
        }

        .captcha-error {
            color: var(--error-color);
            margin-top: 10px;
            display: none;
            text-align: center;
        }

        .button {
            margin-top: 20px;
        }

        .button input[type="submit"] {
            width: 100%;
            padding: 15px;
            background: var(--primary-color);
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .button input[type="submit"]:hover {
            background: #3A7BD5;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: var(--secondary-color);
            text-decoration: none;
            font-weight: 500;
        }

        @media (max-width: 600px) {
            .user-details {
                grid-template-columns: 1fr;
            }

            .container {
                padding: 30px 20px;
            }

            .category {
                flex-direction: column;
            }

            .category label {
                margin-bottom: 10px;
            }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">Employee Registration</div>
        <div class="content">
            <form action="insertemp" method="post" onsubmit="return validateForm()">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Full Name</span>
                        <input type="text" placeholder="Enter your name" name="name" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <input type="email" placeholder="Enter your email" name="email" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Salary</span>
                        <input type="number" placeholder="Enter your salary" name="salary" required min="0">
                    </div>
                    <div class="input-box">
                        <span class="details">Contact No</span>
                        <input type="tel" name="contact" pattern="[6789][0-9]{9}" placeholder="10-digit mobile number" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Password</span>
                        <input type="password" placeholder="Enter your password" name="pwd" required minlength="8">
                    </div>
                    <div class="input-box">
                        <span class="details">Location</span>
                        <input type="text" placeholder="Enter Your Location" name="location" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Date of Birth</span>
                        <input type="date" name="dob" required max="2005-12-31">
                    </div>
                    <div class="input-box">
                        <span class="details">Department</span>
                        <select name="dept" required>
                            <option value="" disabled selected>Select Department</option>
                            <option value="CSE">Computer Science (CSE)</option>
                            <option value="ECE">Electronics (ECE)</option>
                            <option value="others">Others</option>
                        </select>
                    </div>
                </div>

                <div class="gender-details">
                    <span class="gender-title">Gender</span>
                    <div class="category">
                        <label>
                            <input type="radio" name="gender" value="Male" required>
                            <span class="dot"></span>
                            <span class="gender">Male</span>
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Female" required>
                            <span class="dot"></span>
                            <span class="gender">Female</span>
                        </label>
                        <label>
                            <input type="radio" name="gender" value="Other" required>
                            <span class="dot"></span>
                            <span class="gender">Other</span>
                        </label>
                    </div>
                </div>

                <div class="captcha-container">
                    <label for="captcha">Solve: <span id="captchaQuestion"></span></label>
                    <input type="text" id="captcha" name="captcha" placeholder="Answer" required>
                    <div class="captcha-error" id="captchaError">Incorrect answer, please try again.</div>
                </div>

                <div class="button">
                    <input type="submit" value="Register">
                </div>

                <a href="emplogin" class="back-link">Back to Login</a>
            </form>
        </div>
    </div>

    <script>
        var correctCaptchaAnswer = 0;

        function generateCaptcha() {
            var num1 = Math.floor(Math.random() * 10) + 1;
            var num2 = Math.floor(Math.random() * 10) + 1;
            var operator = (Math.random() > 0.5) ? "+" : "-";
            var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
            correctCaptchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

            document.getElementById("captchaQuestion").innerText = captchaQuestion;
        }

        function validateCaptcha() {
            var userAnswer = document.getElementById("captcha").value;
            if (parseInt(userAnswer) !== correctCaptchaAnswer) {
                document.getElementById("captchaError").style.display = "block";
                return false;
            }
            document.getElementById("captchaError").style.display = "none";
            return true;
        }

        function validateForm() {
            return validateCaptcha();
        }

        window.onload = generateCaptcha;
    </script>
</body>
</html>
