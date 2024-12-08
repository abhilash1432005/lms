<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            min-height: 100vh;
            margin: 0;
        }

        .courses-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
            margin-top: 70px; /* Adjust space below navbar */
        }

        .course {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            overflow: hidden;
            width: 300px;
            transform: translateY(0);
            transition: all 0.3s ease-in-out;
            cursor: pointer;
            animation: fadeIn 0.6s ease-in-out;
        }

        .course:hover {
            transform: translateY(-10px) scale(1.05);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.3);
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

        .course-preview {
            background: linear-gradient(to right, #f68600, #f2a900);
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .course-preview h6 {
            opacity: 0.8;
            text-transform: uppercase;
            font-weight: 300;
            margin-bottom: 10px;
        }

        .course-preview h2 {
            font-size: 20px;
            font-weight: 600;
        }

        .course-preview a {
            color: #fff;
            font-size: 12px;
            opacity: 0.8;
            text-decoration: none;
            transition: opacity 0.3s;
        }

        .course-preview a:hover {
            opacity: 1;
        }

        .course-info {
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
            height: 100%;
        }

        .progress-container {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }

        .progress {
            background: #ddd;
            border-radius: 5px;
            height: 6px;
            position: relative;
            width: 80%;
            overflow: hidden;
        }

        .progress::after {
            background: linear-gradient(to right, #f68600, #f2a900);
            content: '';
            height: 100%;
            width: 66%; /* Adjust as needed */
            position: absolute;
            top: 0;
            left: 0;
        }

        .progress-text {
            font-size: 12px;
            opacity: 0.7;
            margin-left: 10px;
        }

        .btn {
            background: linear-gradient(to right, #f68600, #f2a900);
            color: #fff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 14px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            align-self: flex-start;
            margin-top: 20px;
        }

        .btn:hover {
            background: linear-gradient(to right, #2575fc, #6a11cb);
            transform: scale(1.1);
        }

        @media (max-width: 768px) {
            .courses-container {
                flex-direction: column;
                align-items: center;
            }

            .course {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <%@ include file="studentloginnavbar.jsp" %>
    
    <div class="courses-container">
        <!-- Course 1 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>JavaScript Fundamentals</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 4</h6>
                <h2>Callbacks & Closures</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">6/9 Challenges</span>
                </div>
                <!-- Continue button -->
                <a href="course1.jsp" class="btn">Continue</a>
            </div>
        </div>

        <!-- Course 2 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>Advanced JavaScript</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 2</h6>
                <h2>Promises & Async/Await</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">4/9 Challenges</span>
                </div>
                <!-- Continue button -->
                <a href="#" class="btn">Continue</a>
            </div>
        </div>

        <!-- Course 3 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>React Basics</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <h6>Chapter 3</h6>
                <h2>Component Lifecycle</h2>
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">5/8 Challenges</span>
                </div>
                <!-- Continue button -->
                <a href="course1.jsp" class="btn">Continue</a>
            </div>
        </div>
    </div>
</body>

</html>
