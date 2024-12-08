<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

    <link rel="stylesheet" type="text/css" href="css/style.css">

    <style>
        /* CSS for the card */
        .card-container {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
        }

        .card {
          position: relative;
          display: flex;
          flex-direction: column;
          align-items: center;
          width: 320px;
          box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
          padding: 32px;
          overflow: hidden;
          border-radius: 10px;
          transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
        }

        .content {
          display: flex;
          flex-direction: column;
          align-items: flex-start;
          gap: 20px;
          color: #e8e8e8;
          transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
        }

        .content .heading {
          font-weight: 700;
          font-size: 32px;
        }

        .content .para {
          line-height: 1.5;
        }

        .content .btn {
          color: #e8e8e8;
          text-decoration: none;
          padding: 10px;
          font-weight: 600;
          border: none;
          cursor: pointer;
          background: linear-gradient(-45deg, #f89b29 0%, #ff0f7b 100% );
          border-radius: 5px;
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        .card::before {
          content: "";
          position: absolute;
          left: 0;
          bottom: 0;
          width: 100%;
          height: 5px;
          background: linear-gradient(-45deg, #f89b29 0%, #ff0f7b 100% );
          z-index: -1;
          transition: all 0.5s cubic-bezier(0.23, 1, 0.320, 1);
        }

        .card:hover::before {
          height: 100%;
        }

        .card:hover {
          box-shadow: none;
        }

        .card:hover .btn {
          color: #212121;
          background: #e8e8e8;
        }

        .content .btn:hover {
          outline: 2px solid #e8e8e8;
          background: transparent;
          color: #e8e8e8;
        }

        .content .btn:active {
          box-shadow: none;
        }
    </style>
</head>

<body style="background-image: url('https://i.pinimg.com/originals/45/0f/29/450f295162cd9928f3c7ba3a4cbc47b2.gif'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">

<%@ include file="navbar.jsp" %>

<div class="card-container">
  <div class="card">
  <span class="blink">
        <h3>${message}</h3>
    </span>
    <div class="content">
      <p class="heading">Admin Login</p>
      <form method="post" action="checkadminlogin">
          <label for="uname">Username</label>
          <input type="text" id="uname" name="uname" required/><br><br>
          <label for="pwd">Password</label>
          <input type="password" id="pwd" name="pwd" required/><br><br>
          <input type="submit" value="Login" class="btn">
      </form>
    </div>
  </div>
</div>

</body>
</html>
