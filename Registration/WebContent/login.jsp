<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
        input[type="password"]{
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
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
        .error-message {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

    <form action="login" method="post">
        <h1>Login</h1>

        <div class="error-message"><!-- Display error messages here --></div>

        <label for="username">E-mail</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
        
        <a href="register.jsp">Create new account</a><br><br>

        <input type="submit" value="Login">
    </form>
    
<script>
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error"); 
	}
</script>
</body>
</html>
