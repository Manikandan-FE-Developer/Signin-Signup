<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
  <!--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.css"> -->
    <title>Signup Page</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background-color: #a9a9a9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form{
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="number"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid black;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"]{
            background-color: #26527d;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover{
            background-color: #507396;
        }
        .error-message{
            color: red;
            margin-bottom: 10px;
        }
        .custom-alert {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background-color: white;
            border: 2px solid #26527d;
            border-radius: 8px;
            z-index: 9999;
        }
    </style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

    <form action="register" method="post">
        <h1>Signup</h1>

        <div class="error-message"><!-- Display error messages here --></div>

        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <label for="confirmpassword">Confirm Password</label>
        <input type="password" id="confirmpassword" name="confirmpassword" required>
        
        <label for="contact">Contact</label>
        <input type="number" id="contact" name="contact" required>
        
        <a href="login.jsp">Already member</a><br><br>
        
        <input type="submit" id="signup" name="signup" value="Register">
    </form>


<!-- <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.16.3/dist/sweetalert2.min.js"></script>  -->

<script>
    var status = document.getElementById('status').value;
    if (status === 'success') {
        alert('Account created successfully');
    }
</script>

</body>
</html>
