<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JavaScript Syllabus</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap');

        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #8e44ad, #3498db);
            color: #444;
            animation: backgroundFade 5s infinite alternate;
        }

        @keyframes backgroundFade {
            0% { background: linear-gradient(135deg, #8e44ad, #3498db); }
            100% { background: linear-gradient(135deg, #f39c12, #e74c3c); }
        }

        h1 {
            text-align: center;
            color: white;
            font-size: 36px;
            margin-bottom: 20px;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
            border-bottom: 3px solid #3498db;
            display: inline-block;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            padding: 30px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .panel {
            background: #f7f9fb;
            border: 1px solid #ddd;
            border-radius: 10px;
            margin-bottom: 20px;
            padding: 20px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .panel:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        ul li {
            background: #ecf0f1;
            margin: 5px 0;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 500;
            color: #333;
            transition: background 0.3s ease;
        }

        ul li:hover {
            background: #3498db;
            color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background: #3498db;
            color: white;
            font-weight: bold;
        }

        td {
            background: #fdfdfd;
        }

        tr:nth-child(even) td {
            background: #f9f9f9;
        }

        tr:hover td {
            background: #f0f8ff;
            transition: background 0.3s ease;
        }

        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: #3498db;
            color: white;
            text-decoration: none;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background 0.3s ease, transform 0.3s ease;
        }

        .back-button:hover {
            background: #2c80b4;
            transform: translateY(-3px);
        }

        .back-button:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>JavaScript Syllabus</h1>

    <div class="panel">
        <h2>Course Topics</h2>
        <ul>
            <li>Introduction to JavaScript</li>
            <li>Data Types and Variables</li>
            <li>Control Structures (if, switch, loops)</li>
            <li>Functions and Scope</li>
            <li>Objects and Arrays</li>
            <li>DOM Manipulation</li>
            <li>Event Handling</li>
            <li>Asynchronous JavaScript (Promises, Async/Await)</li>
            <li>Introduction to ES6 Features</li>
            <li>JavaScript Frameworks Overview (React, Vue, etc.)</li>
        </ul>
    </div>

    <div class="panel">
        <h2>Session Plan</h2>
        <table>
            <thead>
                <tr>
                    <th>Week</th>
                    <th>Topic</th>
                    <th>Objectives</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Introduction to JavaScript</td>
                    <td>Understand the basics of JavaScript and its role in web development.</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Data Types and Variables</td>
                    <td>Learn about different data types and how to declare variables.</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Control Structures</td>
                    <td>Implement decision-making and looping in JavaScript.</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Functions and Scope</td>
                    <td>Define and invoke functions, understand scope.</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Objects and Arrays</td>
                    <td>Work with objects and arrays to store and manipulate data.</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>DOM Manipulation</td>
                    <td>Learn how to interact with the Document Object Model.</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Event Handling</td>
                    <td>Understand how to handle user events in the browser.</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Asynchronous JavaScript</td>
                    <td>Learn about asynchronous programming and handling API calls.</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Introduction to ES6 Features</td>
                    <td>Explore new features introduced in ES6.</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>JavaScript Frameworks Overview</td>
                    <td>Get an overview of popular JavaScript frameworks like React and Vue.</td>
                </tr>
            </tbody>
        </table>
    </div>

    <a href="emphome.jsp" class="back-button">Back to Home</a>
</div>

</body>
</html>
