<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<html> 
<head> 
    <link type="text/css" rel="stylesheet" href="css/style.css"> 

    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: black; /* Changed text color to black */
            margin: 0;
            padding: 0;
        }

        /* Navbar inclusion */
        #navbar {
            background-color: #333;
            padding: 10px;
            text-align: center;
        }

        #navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin: 5px;
            font-size: 16px;
            text-transform: uppercase;
        }

        #navbar a:hover {
            background-color: #ff5722;
        }

        /* Heading */
        h3 {
            color: black; /* Changed text color to black */
            font-size: 28px;
            text-align: center;
            margin-top: 30px;
            text-decoration: underline;
        }

        /* Table Styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #2575fc;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f9f9f9;
            cursor: pointer;
        }

        /* Action Button Styling */
        a {
            padding: 10px 15px;
            background-color: #ff5722;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #e64a19;
        }

        /* Back Link */
        .back-link {
            display: block;
            text-align: center;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none;
            color: black; /* Changed text color to black */
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head> 
<body> 

    <%@ include file="adminnavbar.jsp" %>

    <h3>View All Employees</h3>

    <table>
        <tr> 
            <th>ID</th> 
            <th>NAME</th> 
            <th>DEPARTMENT</th> 
            <th>LOCATION</th> 
            <th>EMAIL ID</th> 
            <th>CONTACT NO</th> 
            <th>ACTION</th>
        </tr> 

        <c:forEach items="${empdata}" var="emp"> 
            <tr> 
                <td><c:out value="${emp.id}" /></td> 
                <td><c:out value="${emp.name}" /></td> 
                <td><c:out value="${emp.department}" /></td> 
                <td><c:out value="${emp.location}" /></td> 
                <td><c:out value="${emp.email}" /></td> 
                <td><c:out value="${emp.contact}" /></td> 
                <td>
                    <a href='<c:url value="view?id=${emp.id}"></c:url>'>View</a>
                </td>
            </tr> 
        </c:forEach> 
    </table>

    <a href="adminhome" class="back-link">Back</a>

</body> 
</html>
