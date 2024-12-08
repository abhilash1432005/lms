<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Muli&display=swap');

        * {
            box-sizing: border-box;
        }

        body {
            
            font-family: 'Muli', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }

        .courses-container {
    position: relative; 
    height: 60vh;
    width: 100vw;
}

        .course {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
            display: flex;
            max-width: 100%;
            margin: 20px;
            overflow: hidden;
            width: 600px;
             
    top: 20px;     /* Adjust as needed */
    left: 20px;  
        }

        .course h6 {
            opacity: 0.6;
            margin: 0;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .course h2 {
            letter-spacing: 1px;
            margin: 10px 0;
        }

        .course-preview {
            background-color: #f68600;
            color: #fff;
            padding: 30px;
            max-width: 250px;
        }

        .course-preview a {
            color: #fff;
            display: inline-block;
            font-size: 12px;
            opacity: 0.6;
            margin-top: 30px;
            text-decoration: none;
        }

        .course-info {
            padding: 30px;
            position: relative;
            width: 100%;
        }

        .progress-container {
            position: absolute;
            top: 30px;
            right: 30px;
            text-align: right;
            width: 150px;
        }

        .progress {
            background-color: #ddd;
            border-radius: 3px;
            height: 5px;
            width: 100%;
        }

        .progress::after {
            border-radius: 3px;
            background-color:#f68600;
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            height: 5px;
            width: 66%;
        }

        .progress-text {
            font-size: 10px;
            opacity: 0.6;
            letter-spacing: 1px;
        }

        .btn {
            background-color: #f68600;
            border: 0;
            border-radius: 50px;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.2);
            color: #fff;
            font-size: 16px;
            padding: 12px 25px;
            position: absolute;
            bottom: 30px;
            right: 30px;
            letter-spacing: 1px;
        }
    </style>
</head>

<body>
    <div class="courses-container">
        <!-- Original Course Card -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>JavaScript Fundamentals</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">
                        6/9 Challenges
                    </span>
                </div>
                <h6>Chapter 4</h6>
                <h2>Callbacks & Closures</h2>
                <button class="btn">Continue</button>
            </div>
        </div>

        <!-- Duplicated Course Card 1 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>Advanced JavaScript</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">
                        4/9 Challenges
                    </span>
                </div>
                <h6>Chapter 2</h6>
                <h2>Promises & Async/Await</h2>
                <button class="btn">Continue</button>
            </div>
        </div>

        <!-- Duplicated Course Card 2 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>React Basics</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">
                        5/8 Challenges
                    </span>
                </div>
                <h6>Chapter 3</h6>
                <h2>Component Lifecycle</h2>
                <button class="btn">Continue</button>
            </div>
        </div>

        <!-- Duplicated Course Card 3 -->
        <div class="course">
            <div class="course-preview">
                <h6>Course</h6>
                <h2>Vue.js Introduction</h2>
                <a href="#">View all chapters <i class="fas fa-chevron-right"></i></a>
            </div>
            <div class="course-info">
                <div class="progress-container">
                    <div class="progress"></div>
                    <span class="progress-text">
                        3/7 Challenges
                    </span>
                </div>
                <h6>Chapter 1</h6>
                <h2>Reactivity in Vue</h2>
                <button class="btn">Continue</button>
            </div>
        </div>
    </div>
</body>

</html>
