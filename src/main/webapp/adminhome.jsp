<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>


.card {
            width: 250px;
            background-color: #fff4e0;
            border-radius: 20px;
            padding: 20px;
            text-align: center;
            margin: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        }

        .button {
            background-color: white;
            border: 1px solid black;
            padding: 5px 10px;
            margin: 5px;
            border-radius: 5px;
            text-decoration: none;
            color: black;
        }

        .button:hover {
            background-color: #ff8c00;
        }
    .modal-background {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
           
        }
        /* Styles for the modal content */
     .modal-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            z-index: 2;
        }
        /* Close button styles */
       .close-button {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }
    
</style>



</head>
 <body style="background-image: linear-gradient(135deg, #fd7b03, #fff4e0);">
 
<%-- 


<div class="statistics-box">
        <h3>Total Employees</h3>
        <p id="anotherStatCount">${ecount}</p>
    </div>
    
<div class="statistics-box">
        <h3>Total Students</h3>
        <p id="anotherStatCount">${ccount}</p>
    </div>    
 --%>
 

 
    <main>
        <section>
            <h2>Admin Dashboard</h2>
            <p>Welcome, admin! This is your admin dashboard where you can manage users and settings.</p>
            
            
            <h3>VIEW DATA</h3>
              <div class="card">
        <h3>View Faculty</h3>
        <a href="viewallemps" class="button">View</a>

    </div>
    
      <div class="card">
        <h3>View Student</h3>
        <a href="#" class="button">View</a>
    </div>
            <h3>ADD DATA</h3>
            
            <div class="card">
        <h3>Add Faculty</h3>
        <a href="empreg" class="button">Add</a>
    </div>
    
     <div class="card">
        <h3>Add Student</h3>
        <a href="addcustomer" class="button">Add</a>
    </div>
    
            <br><br>
            <h3>UPDATIONS</h3>
            <div class="card">
        <h3>Update Faculty</h3>
        <a href="updateprofile" class="button">Update</a>
    </div>
            
        </section>
        <section>
            <h2>User Management</h2>
            <p>You can manage user accounts and access control from this section.</p>
        </section>
        <section>
            <h2>Settings</h2>
            <p>Configure system settings and preferences here.</p>
        </section>
    </main>
     <a href="/" class="button">LogOut</a>
    <footer>
        <p>&copy; 2023 Your Admin Panel. All rights reserved.</p>
    </footer>
</body>
</html>

 
