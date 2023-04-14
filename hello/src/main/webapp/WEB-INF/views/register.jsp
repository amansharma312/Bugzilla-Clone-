<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Here</title>
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
            font-family: 'FiraGO', sans-serif;
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
            color: black;
        }
        .container form .form-control{
            width: 100%;
            height: 40px;
            background: whitesmoke;
            border-radius: 4px;
            border: 1px solid silver;
            margin: 10px 0 18px 0;
            padding: 0 10px;
        }
        .container form a{
            margin-left: 35%;
            margin-top: 40%;
            transform: translateX(-50%);
            width: 120px;
            height: 34px;
        }
        .container form .btn1{
        
            margin-left: auto;
            margin-top: auto;
            left: 230px;
            transform: translateX(-50%);
            position: relative;
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
        .container form .btn1:hover{
            opacity: .7;
            margin-top: 5%;
            transform: translateX(-50%);
            width: 120px;
            height: 34px;
        }
        .dis{
            color: black;
        }
        .fa-eye{
            margin-top: auto;
            margin-left: auto;
            position: absolute;
            top: 470px;
            right: 15.5%;
            cursor: pointer;
            display: flex;
        }
        .fa-sharp{
            position: absolute;
            top: 58%;
            cursor: pointer;
            display: flex;
        }
        .error-text{
            padding: 8px 0;
            border-radius: 5px;
            color: #8b3e46;
            margin-top: -6%;
            font-size: small;
            display: none;
        }
        .container .password-policies{
            position: relative;
            top: 0px;
            left: 50%;
            transform: translateX(-50%);
            width: 90%;
            padding: 0px;
            height: 0px;
            background: rgb(201, 223, 218);
            border-radius: 5px;
            box-sizing: border-box;
            opacity: 1;
            overflow: hidden;
            margin-top: -15px;
            transition: height  300ms ease-in-out,
                        opacity 300ms ease-in-out;
        }
        .container .password-policies.active{
            opacity: 1;
            padding: 10px;
            height: 180px;

        }
        .container .password-policies > div{
            margin: 15px 10px;
            font-size: 500;
            color: #888;

        }
        .container .password-policies > div.active{
            color: #111;
        }
        
    </style>
</head>
<body>
    <div>
        <img src="https://drive.google.com/uc?export=view&id=1aqNm3lno5AWK55Qn1ol7gXnTd6K4lZTy" class="image">
    </div>
    <div class="container">
        <form action="testing" method="post">
            <h1>Create User</h1>
            <div class="form-group">
                <label class="dis" for="">Full name</label>
                <input placeholder="Enter your full name" type="text" name="name" class="form-control" >
            </div>
            <div class="form-group">
                <label class="dis" for="">Email ID</label>
                <input placeholder="Enter your Email ID" type="email" name="email" class="form-control" >
            </div>
            <div class="form-group">
                <label class="dis" for="">Password</label>
            <div>
                <input placeholder="Your password should be above 15 characters" id="password" name="password1" type="password" class="form-control" required>
                <!-- <i class="fa-sharp fa-solid fa-eye" id="show-password"></i></div> -->
                <input type="checkbox" onclick="myFunction()"> Show Password 
            </div></div><br />
            <div class="form-group">
                <label class="dis" for="">Confirm Password</label>
                <div>
                <input placeholder="Confirm Password" id="password1" name="password2" type="password" class="form-control" required>
                <!-- <i class="fa-solid fa-eye" id="show-password1"></i></div> -->
                <input type="checkbox" onclick="myFunction1()"> Show Password 
            </div></div>
            <div class="error-text">Password does not match</div>
            <input type="submit" id="btn1" name="btn1" class="btn1" value="Register">
        </form>
    </div>
    <script>
        function myFunction() {
            var x = document.getElementById("password");
            if (x.type == "password") {
            x.type = "text";
          } else {
            x.type = "password";
        }
        } 
        function myFunction1() {
            var x = document.getElementById("password1");
            if (x.type == "password") {
            x.type = "text";
          } else {
            x.type = "password";
        }
        } 
    </script>    
</body>
</html>