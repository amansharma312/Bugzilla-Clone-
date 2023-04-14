<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
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
            font-family: 'FiraGo', sans-serif;
        }
        .container form{
            width: 100%;
            height: 100%;
            padding: 20px;
            background: #eee;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0, 0, 0,.3);
        }
        .container form h1{
            text-align: center;
            margin-bottom: 24px;
            color: #222;
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
        .container form .btn1{
            margin-left: 50%;
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
        }
        .container form .btn1:hover{
            opacity: .7;
        }
        .container form .btn{
            margin-left: 50%;
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
        .container form .btn:hover{
            opacity: .7;
        }
        
    </style>
</head>
<body>
    <div>
        <img src="https://drive.google.com/uc?export=view&id=1aqNm3lno5AWK55Qn1ol7gXnTd6K4lZTy" class="image">
    </div>
    <!-- <script>
        function checkStatus()
        {
            document.getElementById("otp-label").style.display="inline";
            document.getElementById("otp-text").style.display="inline";
            document.getElementById("otp-btn").style.display="inline";
        }
    </script> -->
    <div class="container">
        <form action="resetprocess" method="post">
            <h1>Reset Password</h1>
            <div class="form-group">
                <label for="">Enter your Email ID</label>
                <input placeholder="Enter your Email ID" type="email" name="email" class="form-control" required>
            </div>
            <input type="submit" class="btn1" value="SUBMIT" onclick="checkStatus()">
            <!-- <div class="form-group">
                <label hidden id="otp-label" for="" style="display:none">Enter your OTP</label>
                <input hidden placeholder="Enter your OTP" type="password" method= "post" class="form-control" id="otp-text" style="display:none" required>
            </div> -->
            <input hidden type="submit" class="btn" value="Submit" id="otp-btn" style="display:none" >
        </form>
    </div>  
</body>
</html>