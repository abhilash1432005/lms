<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #fd7b03, #fff4e0);
            display: flex;
            justify-content: center;
            align-items: flex-start; /* Align content to top */
            overflow-y: auto; /* Enable vertical scrolling */
            min-height: 100vh; /* Ensure body takes at least the height of the viewport */
        }

        /* Form Container Box */
        .form-container {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 400px;
            text-align: center;
            position: relative;
            color: #fff;
            animation: slideUp 1s ease-out;
            margin-top: 30px; /* Add margin to the top */
        }

        /* Heading Animations */
        .form-container h3 {
            margin-bottom: 20px;
            font-size: 28px;
            text-transform: uppercase;
            border-bottom: 2px solid #ffffff;
            padding-bottom: 5px;
            display: inline-block;
        }

        /* Input Focus Animations */
        input[type="text"],
        input[type="password"],
        textarea,
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            color: #555;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 10px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        /* Hover Animation on Input Boxes */
        input[type="text"]:hover,
        input[type="password"]:hover,
        textarea:hover,
        input[type="email"]:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Captcha Styling */
        .captcha-container {
            margin-bottom: 20px;
        }

        .captcha-error {
            color: red;
            display: none;
        }

        /* Submit Button */
        .button {
            background-color: #ff5722;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
        }

        .button:hover {
            background-color: #e64a19;
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        /* Back Link */
        .back-link {
            text-decoration: none;
            font-size: 14px;
            color: #fff;
            font-weight: bold;
            margin-top: 10px;
            display: inline-block;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        /* Spacing between form fields */
        .form-container table {
            width: 100%;
            margin-bottom: 15px;
        }

        td {
            padding: 8px;
        }

        td label {
            text-align: left;
            display: inline-block;
            width: 100%;
            margin-bottom: 10px;
        }

        /* Animations for Text */
        @keyframes slideUp {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

    <!-- Form Container -->
    <div class="form-container">
        <h3>Add Student</h3>

        <form:form method="post" action="insertcustomer" modelAttribute="customer" onsubmit="return validateCaptcha()">
            <table>
                <!-- Name -->
                <tr>
                    <td><label for="name">Name</label></td>
                    <td><form:input path="name" id="name" required="required"></form:input></td>
                </tr>

                <!-- Gender -->
                <tr>
                    <td><label>Gender</label></td>
                    <td>
                        <form:radiobutton path="gender" value="Male" required="required" id="genderMale" />
                        <label for="genderMale">Male</label>
                        <form:radiobutton path="gender" value="Female" required="required" id="genderFemale" />
                        <label for="genderFemale">Female</label>
                    </td>
                </tr>

                <!-- Email -->
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><form:input path="email" id="email" required="required" /></td>
                </tr>

                <!-- Password -->
                <tr>
                    <td><label for="password">Password</label></td>
                    <td><form:password path="password" id="password" required="required" /></td>
                </tr>

                <!-- Address -->
                <tr>
                    <td><label for="address">Address</label></td>
                    <td><form:textarea path="address" id="address" required="required"></form:textarea></td>
                </tr>

                <!-- Contact Number -->
                <tr>
                    <td><label for="contactno">Contact No</label></td>
                    <td><form:input path="contactno" id="contactno" required="required" /></td>
                </tr>

                <!-- Captcha Section -->
                <tr>
                    <td><label for="captcha">Captcha</label></td>
                    <td>
                        <div class="captcha-container">
                            <label id="captchaQuestion"></label><br>
                            <input type="text" id="captchaAnswer" class="captcha-input" placeholder="Enter answer" required>
                            <span id="captchaError" class="captcha-error">Incorrect answer, please try again.</span>
                        </div>
                    </td>
                </tr>

                <!-- Submit Button -->
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Add" class="button">
                        <br>
                        <a href="adminhome" class="back-link">Back</a>
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

    <script>
        var correctCaptchaAnswer;

        // Simple Math Captcha Generation
        function generateCaptcha() {
            var num1 = Math.floor(Math.random() * 10) + 1;
            var num2 = Math.floor(Math.random() * 10) + 1;
            var operator = (Math.random() > 0.5) ? "+" : "-"; 
            var captchaQuestion = num1 + " " + operator + " " + num2 + " = ?";
            var captchaAnswer = (operator === "+") ? num1 + num2 : num1 - num2;

            correctCaptchaAnswer = captchaAnswer;
            document.getElementById("captchaQuestion").innerHTML = captchaQuestion;
        }

        // Validate Captcha Answer
        function validateCaptcha() {
            var userAnswer = document.getElementById("captchaAnswer").value;
            if (parseInt(userAnswer) !== correctCaptchaAnswer) {
                document.getElementById("captchaError").style.display = "block";
                return false;
            }
            document.getElementById("captchaError").style.display = "none";
            return true;
        }

        // Generate Captcha when the page loads
        window.onload = generateCaptcha;
    </script>

</body>
</html>