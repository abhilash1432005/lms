<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Courses - Java Full Stack</title>
    <style>
        /* Global Styling */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            margin: 0;
            padding: 0;
            color: #333;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        header {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            padding: 30px 0;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        h1 {
            margin: 0;
            font-size: 40px;
            font-weight: 600;
            animation: slideIn 1s ease-out;
        }

        @keyframes slideIn {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        section {
            margin: 20px;
            padding: 20px 0;
        }

        .content {
            max-width: 1000px;
            margin: 0 auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .content:hover {
            transform: translateY(-8px);
            box-shadow: 0 16px 32px rgba(0, 0, 0, 0.3);
        }

        h2 {
            font-size: 32px;
            color: #333;
            margin-bottom: 20px;
            position: relative;
        }

        h2::after {
            content: '';
            width: 60px;
            height: 4px;
            background: #007bff;
            display: block;
            margin-top: 10px;
            border-radius: 2px;
        }

        p,
        ul {
            font-size: 18px;
            line-height: 1.8;
        }

        ul li {
            margin-bottom: 10px;
        }

        /* Table Styling */
        table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
            border-radius: 12px;
            overflow: hidden;
        }

        th,
        td {
            padding: 16px;
            font-size: 16px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
            font-weight: 600;
        }

        tr:nth-child(even) {
            background: #f9f9f9;
        }

        tr:hover {
            background: #f1f9ff;
            transition: background 0.3s;
        }

        /* Video Section */
        .video-section {
            margin-top: 40px;
            background: linear-gradient(135deg, #ffffff, #e9ecef);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .video-links {
            list-style: none;
            padding: 0;
        }

        .video-links li {
            margin-bottom: 20px;
        }

        .video-links a {
            font-size: 18px;
            color: #007bff;
            padding: 12px;
            text-decoration: none;
            border: 2px solid #007bff;
            border-radius: 8px;
            display: inline-block;
            width: 100%;
            text-align: center;
            transition: all 0.3s ease;
            animation: fadeIn 0.8s ease-in-out;
        }

        .video-links a:hover {
            background: #007bff;
            color: white;
            transform: scale(1.05);
            box-shadow: 0 8px 20px rgba(0, 123, 255, 0.3);
        }

        /* Footer Styling */
        footer {
            background: linear-gradient(135deg, #0056b3, #003d82);
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 16px;
        }

        footer p {
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 28px;
            }

            .content {
                padding: 20px;
            }

            table th,
            table td {
                padding: 12px;
            }

            .video-links a {
                font-size: 16px;
            }
        }
    </style>
</head>

<body>

<header>
    <h1>Welcome to Java Full Stack Development</h1>
</header>

<section class="content">
    <h2>What is Java Full Stack Development?</h2>
    <p>
        Java Full Stack Development refers to the development of both front-end and back-end portions of an application. 
        A full-stack Java developer is skilled in using the Java programming language for server-side logic, 
        along with technologies like HTML, CSS, JavaScript, and frameworks such as Angular or React for client-side development. 
        The goal is to build robust and scalable web applications.
    </p>

    <h2>Sample Student Courses</h2>
    <table>
        <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Description</th>
                <th>Duration</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>101</td>
                <td>Introduction to Java</td>
                <td>Learn the basics of Java programming.</td>
                <td>4 Weeks</td>
            </tr>
            <tr>
                <td>102</td>
                <td>Front-End with Angular</td>
                <td>Master building user interfaces with Angular.</td>
                <td>6 Weeks</td>
            </tr>
            <tr>
                <td>103</td>
                <td>Spring Boot Essentials</td>
                <td>Understand back-end development with Spring Boot.</td>
                <td>8 Weeks</td>
            </tr>
            <tr>
                <td>104</td>
                <td>Full Stack Project</td>
                <td>Apply skills in a real-world full-stack project.</td>
                <td>12 Weeks</td>
            </tr>
        </tbody>
    </table>

    <div class="video-section">
        <h2>Recommended Videos on Java Full Stack Development</h2>
        <ul class="video-links">
            <li><a href="https://www.youtube.com/watch?v=8cm1x4bC610" target="_blank">Java Full Stack Tutorial</a></li>
            <li><a href="https://www.youtube.com/watch?v=HxvJd3JxE6I" target="_blank">Angular Full Course</a></li>
            <li><a href="https://www.udemy.com/course/spring-framework-5-beginner-to-guru/" target="_blank">Spring Framework Course</a></li>
        </ul>
    </div>
</section>

<footer>
    <p>&copy; 2024 Java Full Stack Learning Platform | All rights reserved</p>
</footer>

</body>

</html>
