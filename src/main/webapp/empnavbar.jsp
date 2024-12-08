<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>EMPLOGIN</title>
  <style>
    /* Gradient Background for Navbar */
    @keyframes gradientAnimation {
      0% { background: linear-gradient(45deg, #ff6a00, #ee0979); }
      50% { background: linear-gradient(45deg, #00c6ff, #0072ff); }
      100% { background: linear-gradient(45deg, #ff6a00, #ee0979); }
    }

    /* Applying the Gradient Animation */
    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      background: #f1f1f1;
      text-rendering: optimizeLegibility;
      -webkit-font-smoothing: antialiased;
      box-sizing: border-box;
    }

    .navbar {
      background: linear-gradient(45deg, #ff6a00, #ee0979);
      animation: gradientAnimation 5s ease infinite;
      padding: 15px 50px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: all 0.3s ease;
    }

    .navbar a {
      color: white;
      font-size: 18px;
      font-weight: 500;
      text-decoration: none;
      padding: 10px 20px;
      border-radius: 25px;
      margin: 0 15px;
      transition: background 0.3s ease, transform 0.3s ease;
    }

    .navbar a:hover {
      background: rgba(255, 255, 255, 0.2);
      transform: scale(1.1);
    }

    .navbar a:active {
      transform: scale(1.05);
    }

    .navbar .brand {
      font-size: 24px;
      font-weight: bold;
      letter-spacing: 1px;
      color: white;
      text-transform: uppercase;
      font-family: 'Poppins', sans-serif;
      transition: transform 0.3s ease;
    }

    .navbar .brand:hover {
      transform: scale(1.05);
    }

    .button {
      background-color: #333;
      color: white;
      padding: 12px 20px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #444;
    }

    /* Additional Styling for Body */
    body {
      background-image: url('/coursebg.jpg');
      background-size: cover;
      background-position: center;
      padding: 100px;
    }

    .content {
      background: rgba(255, 255, 255, 0.8);
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
      max-width: 800px;
      margin: auto;
      animation: fadeIn 1.5s ease-in;
    }

    /* Fade-in Animation for Content */
    @keyframes fadeIn {
      0% { opacity: 0; }
      100% { opacity: 1; }
    }
  </style>
</head>

<body>

  <!-- Navbar Section -->
  <div class="navbar">
    <div class="brand">
      Learning Management System
    </div>
    <div>
      <a href="updateprofile">Update</a>
      <a href="emplogin" class="button">Log Out</a>
    </div>
  </div>

  <!-- Main Content -->
  <div class="content">
    <h1>Welcome to the LMS</h1>
    <p>Manage your learning experience with ease and convenience. Keep track of your progress, and stay updated on your courses and assignments.</p>
  </div>

</body>
</html>
