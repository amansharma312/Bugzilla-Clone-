<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            min-height: 100vh;
            background: #eee;
            display: flex;
            font-family: sans-serif;
            background-image: url("https://drive.google.com/uc?export=view&id=1G3E7ce6gDpa3230xpl6fArZ-L6cpcxH_");
            
        }
        .container{
            margin: auto;
            width: 500px;
            max-width: 90%;
            position: relative;
            font-family: 'FiraGo', sans-serif;

        }
        .container form{
            width: 100%;
            height: 100%;
            padding: 20px;
            background: #eee;
            border-radius: 4px;
            
        }
        .container1 form{
            margin-top: auto;
            margin-left: auto;
            position: relative;
            top: -48px;
            left: -320px;
            width: 165px;
            height: 34px;
            padding: 10px;
            background: #eee;
            border-radius: 4px;
        }
         .container2 form{
            margin-top: auto;
            margin-left: auto;
            position: relative;
            top: -81px;
            left: -4px;
            width: 125px;
            height: 34px;
            padding: 10px;
            background: #eee;
            border-radius: 4px;
        }
        .container form h1{
            text-align: center;
            margin-bottom: 24px;
            color: black;
        }
        .container form .form-control{
            width: 100%;
            height: 40px;
            background: white;
            border-radius: 4px;
            border: 1px solid silver;
            margin: 10px 0 18px 0;
            padding: 0 10px;
        }
        .container form .btn{
            margin-left: auto;
            margin-top: auto;
            position: relative;
            left: 90px;
            top: 14px;
            transform: translateX(-50%);
            width: 120px;
            height: 34px;
            border: none;
            outline: none;
            background: #007ACC;
            cursor: pointer;
            font-size: 16px;
            text-transform: uppercase;
            color: white;
            border-radius: 4px;
            transition: .3s;
            font-family: 'Courier New', monospace;
        }
        .container form a{
            margin-left: 35%;
            margin-top: 40%;
            transform: translateX(-50%);
            width: 120px;
            height: 34px;
        }
        .container2 form .btn1{
        
            margin-left: auto;
            margin-right: auto;
            position: relative;
            right: 10px;
            bottom: 2px;
            transform: translateX(-40%);
            width: 125px;
            height: 34px;
            border: none;
            outline: none;
            background: #007ACC;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-transform: uppercase;
            color: white;
            border-radius: 4px;
            transition: .3s;
            font-family: 'Courier New', monospace;
            
        }
        .container1 form .btn2{
        
            margin-left: auto;
            margin-top: auto;
            margin-bottom: -0px;
            transform: translateX(-50%);
            position: relative;
            left: 20px;
            bottom: 2px;
            width: 165px;
            height: 34px;
            background: #007ACC;
            border: none;
            outline: none;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            text-transform: uppercase;
            color: white;
            border-radius: 4px;
            transition: .3s;
            font-family: 'Courier New', monospace;
        }
        .container form .btn:hover{
            opacity: .7;
        }
        .container form .btn1:hover{
            opacity: .7;
        }
        .dis{
            color: black;
        }
        .image{
            margin-top: auto;
            margin-left: auto;
            position: relative;
            left: 70px;
        }
    </style>
</head>
<body>
    <div>
        <img src= "https://drive.google.com/uc?export=view&id=1aqNm3lno5AWK55Qn1ol7gXnTd6K4lZTy" class="image">
    </div>
    <div class="container">
        <form action="userLogin" method="post">
            <h1>Login to Bugzilla</h1>
            
            <div class="form-group">
                <label class="dis" for="">Username</label>
                <input name="email" placeholder="Enter your username" type="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Password</label>
                <input name="emailPassword" placeholder="Enter your password" type="password" class="form-control" required>
            </div>
            <div class="buttons1">
            <a>
               <input type="submit" class="btn" id="btn" value="Login">
            </a></div>
        </form>
        <div class="container1">
            <form action="reset">
            <div><a >
                <input type="submit" class="btn2" value="Reset Password">
            </a></div>
            </form>
        </div>
        <div class="container2">
            <form action="register" method="post">
            <div><a>
                <input type="submit" class="btn1" value="Create User"> 
            </a> </div>
            </form>
        </div>

        
    </div>
    
</body>
</html>