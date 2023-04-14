<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="hello.model.Cameo"%>
<%@page import="java.util.ArrayList" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FILE A BUG</title>
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
            height: 120%;
            padding: 20px;
            background: #eee;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0, 0, 0,.3);
        }
      /*  .container ul{
        	background-color: black;
        }
        .container ul li{
        	list-style-type:none;
            width: 100%;
            height: 120%;
            padding: 20px;
            background: #eee;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0, 0, 0,.3);
        }*/
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
        
            margin-left: 50%;
            margin-top: 5%;
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
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto; 
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
        }
        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close { 
            color: #aaaaaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover, .close:focus {
          color: #000;
          text-decoration: none;
          cursor: pointer;
        }
       .list-group-item{
          background-color:black;
          list-style:none;
          color:white;
          text-align:center;
          line-spacing: 5.0;
          background-image: url("https://drive.google.com/uc?export=view&id=1G3E7ce6gDpa3230xpl6fArZ-L6cpcxH_");
        }
        a:link, a:visited {
  		 background-color: #32CD32;
  		 color: white;
   		 padding: 14px 25px;
 	 	 text-align: center;
  		 text-decoration: none;
  		 display: inline-block;
		}
		.link{
		right: 200px
		
		}
    </style>
</head>
<body>

 <!-- <script type="text/javascript">
     function validateSize(input){
    	 const fileSize = input.files[0].size /1024 /1024;
    	 if(fileSize > 2){
    		 alert('File size exceeds 2MB');
    		 
    	 }
     }
     </script> -->
     

    <div class="container">
       <form action="bugupdateprocessForm" method="post" enctype="multipart/form-data">
            <h1>File a Bug</h1>
            <div class="form-group">
                <label class="dis" for="">Product name</label>
                <input placeholder="Product Field" value="${user.productField}" type="text" name="productField" id="productField" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Issue you are facing</label>
                <input placeholder="Component Field" value="${user.componentError}" type="text" name="componentError" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Version of the product</label>
                <input placeholder="Version of the product" value="${user.version}" type="text" name="version" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Severity of the Bug</label>
                <select name="severity" value="${user.severity}" id="severity" class="form-control" required>
                  <option value="High">High</option>
                  <option value="Medium">Medium</option>
                  <option value="Low">Low</option>
                </select>
            </div>
            <div class="form-group">
                <label class="dis" for="">Hardware infected by the bug</label>
                <input placeholder="Name of the Hardware" value="${user.hardwareInfected}" type="text" name= "hardwareInfected" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Your Operation System</label>
                <select name="operatingSystem" value="${user.operatingSystem}" id="severity" class="form-control" required>
                  <option value="Windows">Windows</option>
                  <option value="Linux">Linux</option>
                  <option value="MacOS">MacOS</option>
                </select>
            </div>
            <div class="form-group">
                <label class="dis" for="">Summary of the bug</label>
              <textarea id="dsc" value="${user.summary}" name="summary" rows="4" cols="50" class="form-control" required></textarea></div>
            <div class="form-group">
                <label class="dis" for="">Description of the bug</label>
              <textarea id="dsc" value="${user.description}" name="description" rows="4" cols="50" class="form-control"></textarea></div>
       <div class="form-group">
                <label class="dis" for="">Any attachments i.e Screenshots or Files</label>
                <input type="file"  name="picfile" id="upload" onchange="validateSize(this)"></div> 
            <input type="submit" id="btn1" name="btn1" class="btn1" value="Submit">
       </form>    
    </div>  



<div class="card mb-3">
 <p>Your bugfile is confirmed successfully. Please, re-check the details.</p>  
  <div class="card-body">
   <div class="form-group">
                <label class="dis" for="">Issue you are facing</label>
                <input placeholder="Product Field" type="text" name="productField" class="form-control" required>
            </div>
<ul class="list-group">   
  <li class="list-group-item">Bug Number : ${updateduser.bugNumber}</li>
  <li class="list-group-item">Product name : ${updateduser.productField}</li>
  <li class="list-group-item">Issue you are facing : ${updateduser.componentError}</li>
  <li class="list-group-item">Version of the product : ${updateduser.version}</li>
  <li class="list-group-item">Severity of the Bug : ${updateduser.severity}</li>
  <li class="list-group-item">Hardware infected by the bug : ${updateduser.hardwareInfected}</li>
  <li class="list-group-item">Your Operation System : ${updateduser.operatingSystem}</li>
  <li class="list-group-item">Summary of the bug : ${updateduser.summary}</li>
  <li class="list-group-item">Description of the bug : ${updateduser.description}</li>
</ul>
 <a href="updatefilebug" class="link">Edit</a>
  </div>

 
</div>

</body>
</html>