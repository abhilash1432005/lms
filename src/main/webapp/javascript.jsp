<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript Quiz</title>
    <style>
        /* General body and background styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #ffffff;
        }

        /* Main container for the quiz */
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            color: #333333;
        }

        /* Title of the quiz */
        h1 {
            text-align: center;
            font-size: 32px;
            color: #6a11cb;
            margin-bottom: 20px;
        }

        /* Styling for each question box */
        .question-panel {
            margin-bottom: 20px;
            padding: 20px;
            background: linear-gradient(to right, #ff6a00, #ee0979);
            border-radius: 8px;
            transition: transform 0.3s ease, box-shadow 0.3s ease, background 0.3s ease;
        }

        .question-panel:hover {
            transform: translateY(-5px);
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            background: linear-gradient(to right, #ee0979, #ff6a00);
        }

        .question-panel p {
            font-size: 18px;
            margin-bottom: 15px;
            color: #ffffff;
            font-weight: bold;
        }

        /* Style for the radio options as boxed buttons */
        .option-box {
            display: block;
            margin-bottom: 12px;
            padding: 15px;
            background-color: #ffffff;
            color: #333;
            border: 2px solid #ff6a00;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        /* Hover effect for option boxes */
        .option-box:hover {
            background-color: #ff6a00;
            color: #fff;
            transform: translateY(-2px);
        }

        /* Style for the selected radio buttons */
        .option-box input[type="radio"] {
            margin-right: 10px;
            transform: scale(1.4);
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        /* Submit button styles */
        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 12px 20px;
            background: linear-gradient(to right, #ff6a00, #ee0979);
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #ee0979, #ff6a00);
            transform: scale(1.05);
        }

        /* Result styling */
        .result {
            text-align: center;
            margin-top: 30px;
            font-size: 22px;
            color: #6a11cb;
        }

        .correct-answer {
            color: #28a745;
            font-weight: bold;
        }

        .incorrect-answer {
            color: #dc3545;
            font-weight: bold;
        }

        /* Fade-in effect for result text */
        .result p {
            animation: fadeIn 1s ease-out;
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        /* Back button styling */
        .back-button {
            display: block;
            width: 100%;
            padding: 12px 20px;
            margin-top: 20px;
            background-color: #6a11cb;
            color: white;
            text-align: center;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .back-button:hover {
            background-color: #2575fc;
            transform: scale(1.05);
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .question-panel {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>JavaScript Quiz</h1>
        <form method="post">
            <div class="question-panel">
                <p>1. What does "DOM" stand for?</p>
                <label class="option-box">
                    <input type="radio" name="q1" value="Document Object Model"> Document Object Model
                </label>
                <label class="option-box">
                    <input type="radio" name="q1" value="Data Object Model"> Data Object Model
                </label>
                <label class="option-box">
                    <input type="radio" name="q1" value="Document Orientation Model"> Document Orientation Model
                </label>
            </div>
            <div class="question-panel">
                <p>2. Which of the following is a JavaScript data type?</p>
                <label class="option-box">
                    <input type="radio" name="q2" value="String"> String
                </label>
                <label class="option-box">
                    <input type="radio" name="q2" value="Character"> Character
                </label>
                <label class="option-box">
                    <input type="radio" name="q2" value="Float"> Float
                </label>
            </div>
            <div class="question-panel">
                <p>3. How do you create a function in JavaScript?</p>
                <label class="option-box">
                    <input type="radio" name="q3" value="function myFunction()"> function myFunction()
                </label>
                <label class="option-box">
                    <input type="radio" name="q3" value="create myFunction()"> create myFunction()
                </label>
                <label class="option-box">
                    <input type="radio" name="q3" value="function:myFunction()"> function:myFunction()
                </label>
            </div>
            <div class="question-panel">
                <p>4. What is the correct way to write a JavaScript array?</p>
                <label class="option-box">
                    <input type="radio" name="q4" value="var colors = ['red', 'green', 'blue']"> var colors = ['red', 'green', 'blue']
                </label>
                <label class="option-box">
                    <input type="radio" name="q4" value="var colors = (1:'red', 2:'green', 3:'blue')"> var colors = (1:'red', 2:'green', 3:'blue')
                </label>
                <label class="option-box">
                    <input type="radio" name="q4" value="var colors = 'red', 'green', 'blue'"> var colors = 'red', 'green', 'blue'
                </label>
            </div>
            <div class="question-panel">
                <p>5. How can you add a comment in JavaScript?</p>
                <label class="option-box">
                    <input type="radio" name="q5" value="// This is a comment"> // This is a comment
                </label>
                <label class="option-box">
                    <input type="radio" name="q5" value="/* This is a comment */"> /* This is a comment */
                </label>
                <label class="option-box">
                    <input type="radio" name="q5" value="<!-- This is a comment -->"> <!-- This is a comment -->
                </label>
            </div>
            <input type="submit" value="Submit">
        </form>

        <%
            if (request.getMethod().equalsIgnoreCase("post")) {
                int score = 0;
                String[] correctAnswers = {"Document Object Model", "String", "function myFunction()", "var colors = ['red', 'green', 'blue']", "// This is a comment"};
                String[] userAnswers = {request.getParameter("q1"), request.getParameter("q2"), request.getParameter("q3"), request.getParameter("q4"), request.getParameter("q5")};

                for (int i = 0; i < correctAnswers.length; i++) {
                    if (userAnswers[i] != null && userAnswers[i].equals(correctAnswers[i])) {
                        score++;
                    }
                }

                out.println("<div class='result'>");
                out.println("<h2>Your Score: " + score + " out of " + correctAnswers.length + "</h2>");
                for (int i = 0; i < correctAnswers.length; i++) {
                    if (userAnswers[i] != null && userAnswers[i].equals(correctAnswers[i])) {
                        out.println("<p class='correct-answer'>Question " + (i+1) + ": Correct</p>");
                    } else {
                        out.println("<p class='incorrect-answer'>Question " + (i+1) + ": Incorrect</p>");
                    }
                }
                out.println("</div>");
            }
        %>

        <a href="course1.jsp" class="back-button">Back to Course</a>
    </div>
</body>
</html>
