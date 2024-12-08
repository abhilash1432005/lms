<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Handout</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        /* Global Styles */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #ff9a9e, #fbc2eb); /* Single gradient color */
            background-size: 400% 400%;
            animation: glitterBackground 8s ease infinite;
            color: #fff; /* Default text color to white */
        }

        @keyframes glitterBackground {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }

        .handout-container {
            max-width: 900px;
            margin: 50px auto;
            background: linear-gradient(135deg, #ff9a9e, #fbc2eb); /* Single gradient color */
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
            animation: fadeIn 1s ease-out forwards;
            color: white;
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(30px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        /* Panel Styles */
        .panel {
            background-color: rgba(0, 0, 0, 0.6); /* Darker background for contrast */
            border-radius: 10px;
            margin-top: 20px;
            padding: 20px;
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.5s ease, transform 0.5s ease;
        }

        /* Popup animation when the panel becomes visible */
        .panel-visible {
            opacity: 1;
            transform: translateY(0);
            animation: popup 0.6s ease-out forwards;
        }

        @keyframes popup {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .panel-title {
            font-size: 24px;
            font-weight: 600;
            color: #fff; /* White text for the title */
            text-align: center;
            margin-bottom: 15px;
            letter-spacing: 1px;
        }

        .panel-content {
            font-size: 16px;
            color: #fff; /* White text for content */
            line-height: 1.6;
        }

        /* Headings Animations */
        h1, h2, h3 {
            color: #fff;
            margin-bottom: 20px;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            0% { opacity: 0; transform: translateX(-20px); }
            100% { opacity: 1; transform: translateX(0); }
        }

        h1 {
            font-size: 32px;
            font-weight: 600;
            text-align: center;
        }

        h2 {
            font-size: 24px;
            font-weight: 500;
            border-bottom: 2px solid #fff;
            display: inline-block;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }

        ul {
            margin-top: 15px;
            list-style: disc;
            padding-left: 20px;
            color: #fff; /* Ensure list items are white */
        }

        /* Button Styles */
        .button {
            padding: 12px 20px;
            background-color: #ff9a9e;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button:hover {
            background-color: #fad0c4;
            transform: scale(1.05);
        }

        /* File Upload Button */
        input[type="file"] {
            padding: 12px;
            background-color: #fff;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
            cursor: pointer;
        }

        input[type="file"]:hover {
            background-color: #ffd3b5;
            transform: scale(1.02);
        }

        /* Back Button */
        a.back-button {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 20px;
            background-color: #6a11cb;
            color: white;
            text-align: center;
            border-radius: 8px;
            font-size: 18px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        a.back-button:hover {
            background-color: #2575fc;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<div class="handout-container">
    <h1>Course Title: JavaScript Fundamentals</h1>

    <div class="panel panel-visible" style="animation-delay: 0.2s;">
        <div class="panel-title">Course Description:</div>
        <div class="panel-content">
            This course dives deep into advanced topics in JavaScript, covering concepts like asynchronous programming, closures, and more.
        </div>
    </div>

    <div class="panel panel-visible" style="animation-delay: 0.4s;">
        <div class="panel-title">Course Curriculum:</div>
        <div class="panel-content">
            <ul>
                <li>Chapter 1: Closures</li>
                <li>Chapter 2: Promises and Async/Await</li>
                <li>Chapter 3: Modules and Bundlers</li>
                <li>Chapter 4: Advanced OOP in JavaScript</li>
            </ul>
        </div>
    </div>

    <div class="panel panel-visible" style="animation-delay: 0.6s;">
        <div class="panel-title">Assignment Schedule:</div>
        <div class="panel-content">
            <form action="insertfile" method="post" enctype="multipart/form-data" onsubmit="return handleFormSubmit()">
                <label for="file-upload">Upload File:</label><br>
                <input type="file" id="file-upload" name="file" required>
                <br>
                <button type="submit" class="button">Add</button>
            </form>
        </div>
    </div>

    <div class="panel panel-visible" style="animation-delay: 0.8s;">
        <div class="panel-title">Quiz:</div>
        <div class="panel-content">
            <a href="javascript.jsp">
                <div class="quiz-card">
                    <h3>Quiz</h3>
                </div>
            </a>
        </div>
    </div>

    <p><strong>Note:</strong> Make sure to keep up with the assignments and reach out if you need help.</p>
    <a href="studenthome.jsp" class="back-button">Back to Home</a>
</div>

<script>
    function handleFormSubmit() {
        alert("File uploaded successfully!");
        window.location.href = "studenthome.jsp"; // Redirect after showing success message
        return false; // Prevent default form submission
    }
</script>

</body>
</html>
