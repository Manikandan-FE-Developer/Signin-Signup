<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Website</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #a9a9a9;
            line-height: 1.6;
        }
        header{
            text-align: center;
            display: flex;
            background-color: #26527d;
            border-radius: 25px;
            padding: 5px;
            align-items: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2{
         	color:white;
        	margin:0;
            font-weight: bold;
            padding-left: 10px;
        }
        ul{
            display: flex;
            list-style: none;
            margin-left:400px;
            justify-content: space-between;
        }
        li{
        	color:white;
            letter-spacing: 3px;
            padding-right: 40px;
        }
        li a{
            color:white;
            text-decoration: none;
        }
        li a:hover{
            color:black;
            text-decoration: none;
        }
        button{
            width: 100px;
            height: 40px;
            text-align: center;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-left:30px;
            font-weight:bold;
            justify-content: space-between;
        }
        h1{
            margin: 20px;
            color: blue;
            font-size: 30px;
            margin-top: 30px;  
        }
        .container h2{
        	color:black;
        }
        .card{
            margin: 10px;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        footer{
            text-align: center;
            padding: 20px 0;
            background-color: #333;
            color: #fff;
        }
        footer p{
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <h2>Beginner Codes</h2>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Settings</a></li>			
        </ul>
        <a href="login.jsp"><button>Login</button></a>
        <a href="register.jsp"><button>Sign-up</button></a>
    </header>
    
    <h1>Welcome to my website!!!</h1>
    
    <div class="container">
	    <div class="card 1">
	        <h2>About</h2>
	        <p>This is a simple website created for beginners to learn and practice HTML, CSS, and other web development technologies.</p>
	    </div>
	    <div class="card 2">
	        <h2>Contact</h2>
	        <p>If you have any questions or feedback, feel free to contact us through the following email: beginnercodes1@gmail.com</p>
	    </div>
	    <div class="card 3">
	        <h2>Settings</h2>
	        <p>Adjust your preferences and settings here to customize your experience on our website.</p>
	    </div>
	</div>
	
    <footer>
        <p>&copy; 2023 Beginner_Codes. All rights reserved.</p>
    </footer>
</body>
</html>
