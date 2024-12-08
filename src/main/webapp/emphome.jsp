<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">

    <style>
        /* General body styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* Purple to blue gradient */
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Greeting style */
        .greeting {
            text-align: left;
            font-size: 20pt;
            font-family: 'Cursive', sans-serif;
            color: white;
            margin: 20px 30px;
        }

        /* Dashboard container styling */
        .dashboard {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
            gap: 20px;
        }

        /* Card styling */
        .card {
            background: linear-gradient(135deg, #00c6ff, #0072ff); /* Light blue gradient */
            color: white;
            border-radius: 15px;
            padding: 25px;
            width: 300px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2); /* Enhanced shadow */
            text-align: center;
            transition: all 0.4s ease;
            transform: scale(1);
            cursor: pointer;
            overflow: hidden; /* To clip hover animations */
            position: relative;
        }

        /* Hover effect */
        .card:hover {
            transform: scale(1.05); /* Slight zoom */
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.3); /* Shadow on hover */
        }

        /* Card title styling */
        .card h2 {
            font-size: 28px;
            margin-bottom: 10px;
            font-weight: bold;
            text-transform: uppercase; /* Uppercase for a strong effect */
            position: relative;
        }

        /* Hover animation for title */
        .card h2:after {
            content: '';
            display: block;
            width: 0;
            height: 3px;
            background: white;
            transition: width 0.4s ease;
            position: absolute;
            bottom: -5px;
            left: 0;
        }

        .card:hover h2:after {
            width: 100%; /* Line grows on hover */
        }

        /* Card paragraph styling */
        .card p {
            font-size: 18px;
            margin-top: 0;
            line-height: 1.6;
            opacity: 0.9;
        }

        /* Responsive design */
        @media (max-width: 768px) {
            .dashboard {
                flex-direction: column;
                align-items: center;
            }

            .card {
                width: 90%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>

<body>
    <%@ include file="empnavbar.jsp" %>

    <p class="greeting">Hi ${ename}</p>

    <div class="dashboard">
        <a href="javasyllabus.jsp">
            <div class="card">
                <h2>Subject 1</h2>
                <p>JavaScript Fundamentals</p>
            </div>
        </a>

        <a href="advjavasyllabus.jsp">
            <div class="card">
                <h2>Subject 2</h2>
                <p>Advanced JavaScript</p>
            </div>
        </a>

        <a href="reactsyllabus.jsp">
            <div class="card">
                <h2>Subject 3</h2>
                <p>React Basics</p>
            </div>
        </a>

        <!-- Add more cards for additional subjects -->
    </div>
</body>
</html>
