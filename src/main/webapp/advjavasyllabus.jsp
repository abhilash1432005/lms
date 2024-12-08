<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Advanced Java Syllabus</title>
    <style>
        /* Gradient Background for the Body */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
            color: #333;
            text-rendering: optimizeLegibility;
            -webkit-font-smoothing: antialiased;
            box-sizing: border-box;
        }

        /* Main container with smooth animations */
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            animation: fadeIn 1.5s ease-in-out;
        }

        .container:hover {
            transform: scale(1.02);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        /* Header styles */
        h1 {
            text-align: center;
            color: #fff;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-transform: uppercase;
            font-weight: bold;
            background: linear-gradient(45deg, #ff6a00, #ee0979);
            -webkit-background-clip: text;
            color: transparent;
            animation: glowText 1.5s ease-in-out infinite;
        }

        @keyframes glowText {
            0% { text-shadow: 0 0 10px #ff6a00, 0 0 20px #ff6a00, 0 0 30px #ff6a00; }
            50% { text-shadow: 0 0 20px #ff0979, 0 0 30px #ff0979, 0 0 40px #ee0979; }
            100% { text-shadow: 0 0 10px #ff6a00, 0 0 20px #ff6a00, 0 0 30px #ff6a00; }
        }

        h2 {
            color: #4CAF50;
            margin-top: 30px;
            font-size: 1.8em;
            text-transform: capitalize;
        }

        /* Styled list */
        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            background: #f0f0f0;
            margin: 10px 0;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        li:hover {
            background-color: #e0e0e0;
            transform: scale(1.05);
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            animation: slideIn 1s ease-in-out;
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateY(50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
            transition: background-color 0.3s ease;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        tr:hover td {
            background-color: #f1f1f1;
        }

        /* Back button styling */
        .back-button {
            display: block;
            width: 100%;
            padding: 12px;
            margin-top: 30px;
            text-align: center;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .back-button:hover {
            background-color: #45a049;
            transform: scale(1.05);
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }
            h1, h2 {
                font-size: 1.5em;
            }
            li {
                padding: 10px;
            }
            .back-button {
                font-size: 1em;
            }
        }

    </style>
</head>
<body>

<div class="container">
    <h1>Advanced Java Syllabus</h1>

    <h2>Course Topics</h2>
    <ul>
        <li>Java Collections Framework</li>
        <li>Multithreading and Concurrency</li>
        <li>Java I/O and NIO</li>
        <li>Java Networking</li>
        <li>Java Database Connectivity (JDBC)</li>
        <li>Java Servlets and JSP</li>
        <li>Spring Framework Basics</li>
        <li>Java Design Patterns</li>
        <li>RESTful Web Services</li>
        <li>Java Security</li>
    </ul>

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
                <td>Java Collections Framework</td>
                <td>Understand the core collections and their usage.</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Multithreading and Concurrency</td>
                <td>Learn about threads, synchronization, and concurrent collections.</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Java I/O and NIO</td>
                <td>Explore file handling and non-blocking I/O operations.</td>
            </tr>
            <tr>
                <td>4</td>
                <td>Java Networking</td>
                <td> Understand sockets, server-client architecture, and protocols.</td>
            </tr>
            <tr>
                <td>5</td>
                <td>Java Database Connectivity (JDBC)</td>
                <td>Learn how to connect and interact with databases.</td>
            </tr>
            <tr>
                <td>6</td>
                <td>Java Servlets and JSP</td>
                <td>Implement web applications using Servlets and JSP for dynamic content generation.</td>
            </tr>
            <tr>
                <td>7</td>
                <td>Spring Framework Basics</td>
                <td>Get introduced to the Spring framework and its core concepts.</td>
            </tr>
            <tr>
                <td>8</td>
                <td>Java Design Patterns</td>
                <td>Understand common design patterns and their applications in Java.</td>
            </tr>
            <tr>
                <td>9</td>
                <td>RESTful Web Services</td>
                <td>Learn how to create and consume RESTful services.</td>
            </tr>
            <tr>
                <td>10</td>
                <td>Java Security</td>
                <td>Explore security practices and frameworks in Java applications.</td>
            </tr>
        </tbody>
    </table>

    <a href="emphome.jsp" class="back-button">Back</a>
</div>

</body>
</html>
