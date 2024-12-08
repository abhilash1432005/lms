<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>React Basics Syllabus</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        h1 {
            text-align: center;
            color: #61DAFB; /* React logo color */
            margin-bottom: 20px;
        }
        h2 {
            color: #555;
            margin-top: 20px;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .container:hover {
            transform: scale(1.02);
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            background: #e7e7e7;
            margin: 5px 0;
            padding: 10px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        li:hover {
            background: #d1d1d1;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            transition: background 0.3s;
        }
        th {
            background-color: #61DAFB; /* React logo color */
            color: white;
        }
        tr:hover td {
            background-color: #f1f1f1;
        }
        .back-button {
            display: block;
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            text-align: center;
            background-color: #61DAFB; /* React logo color */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .back-button:hover {
            background-color: #4FC3F7; /* Slightly darker shade */
        }
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            h1, h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h1>React Basics Syllabus</h1>

    <h2>Course Topics</h2>
    <ul>
        <li>Introduction to React</li>
        <li>Setting Up the Development Environment</li>
        <li>JSX and Rendering Elements</li>
        <li>Components and Props</li>
        <li>State and Lifecycle</li>
        <li>Handling Events</li>
        <li>Conditional Rendering</li>
        <li>Lists and Keys</li>
        <li>Forms in React</li>
        <li>React Router Basics</li>
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
                <td>Introduction to React</td>
                <td>Understand what React is and its advantages.</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Setting Up the Development Environment</td>
                <td>Install Node.js, npm, and create a React app using Create React App.</td>
            </tr>
            <tr>
                <td>3</td>
                <td>JSX and Rendering Elements</td>
                <td>Learn about JSX syntax and how to render elements.</td>
            </tr>
 <tr>
                <td>4</td>
                <td>Components and Props</td>
                <td>Understand functional and class components, and how to pass props.</td>
            </tr>
            <tr>
                <td>5</td>
                <td>State and Lifecycle</td>
                <td>Learn how to manage state in components and lifecycle methods.</td>
            </tr>
            <tr>
                <td>6</td>
                <td>Handling Events</td>
                <td>Understand how to handle events in React.</td>
            </tr>
            <tr>
                <td>7</td>
                <td>Conditional Rendering</td>
                <td>Learn how to render components conditionally.</td>
            </tr>
            <tr>
                <td>8</td>
                <td>Lists and Keys</td>
                <td>Understand how to render lists and the importance of keys.</td>
            </tr>
            <tr>
                <td>9</td>
                <td>Forms in React</td>
                <td>Learn how to handle forms and controlled components.</td>
            </tr>
            <tr>
                <td>10</td>
                <td>React Router Basics</td>
                <td>Understand routing in React applications using React Router.</td>
            </tr>
        </tbody>
    </table>
    
    <a href="emphome.jsp" class="back-button">Back</a>
</div>

</body>
</html>