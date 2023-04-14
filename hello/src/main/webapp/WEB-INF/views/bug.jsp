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
            margin-top: 10px;
            margin-bottom: 10px;
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
/*       .list-group-item{
          background-color:black;
          list-style:none;
          color:white;
          text-align:center;
          line-spacing: 5.0;
          background-image: url("https://drive.google.com/uc?export=view&id=1G3E7ce6gDpa3230xpl6fArZ-L6cpcxH_");
        }*/
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
		.container form .btn{
		margin-left: auto;
		margin-top: auto;
		position: relative;	
		top: 22px;
		left: -15px;
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
		.container form .btn2{
		margin-left: auto;
		margin-top: auto;
		right: -160px;
		top: -20px;
		position: relative;
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
     
<%String property = (String) request.getAttribute("property"); %>

    <div class="container">
       <form action="Form" method="post" enctype="multipart/form-data">
            <h1>File a Bug</h1>
            <div class="form-group">
                <label class="dis" for="">Product name</label>
                <input placeholder="Product Field" value="${updateduser.productField}" type="text" name="productField" id="productField" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Issue you are facing</label>
                <input placeholder="Component Field" value="${updateduser.componentError}" type="text" name="componentError" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Version of the product</label>
                <input placeholder="Version of the product" value="${updateduser.version}" type="text" name="version" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Severity of the Bug</label>
                <select name="severity" value="${updateduser.severity}" id="severity" class="form-control" required>
                  <option value="High">High</option>
                  <option value="Medium">Medium</option>
                  <option value="Low">Low</option>
                </select>
            </div>
            <div class="form-group">
                <label class="dis" for="">Hardware infected by the bug</label>
                <input placeholder="Name of the Hardware" value="${updateduser.hardwareInfected}" type="text" name="hardwareInfected" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Your Operation System</label>
                <select name="operatingSystem" value="${updateduser.operatingSystem}" id="severity" class="form-control" required>
                  <option value="Windows">Windows</option>
                  <option value="Linux">Linux</option>
                  <option value="MacOS">MacOS</option>
                </select>
            </div> 
            <div class="form-group">
                <label class="dis" for="">Summary of the bug</label>
                <input name="summary" value="${updateduser.summary}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Description of the bug</label>
                <input name="description" value="${updateduser.description}" type="text" class="form-control" required>
            </div> 
            
 <!--             <div class="form-group">
                <label class="dis" for="">Summary of the bug</label>
              <textarea id="dsc" name="summary" value="${updateduser.summary}"  rows="20" cols="50" class="form-control" required></textarea></div>
            <div class="form-group">
                <label class="dis" for="">Description of the bug</label>
              <textarea id="dsc" name="description" value="${updateduser.description}" rows="20" cols="50" class="form-control"></textarea></div> -->
  	 		<div class="form-group">
                <label class="dis" for="">Any attachments i.e Screenshots or Files</label>
                <input type="file" name="picfile" id="upload" onchange="validateSize(this)"></div>
            <input type="submit" id="btn1" name="btn1" class="btn1" value="Submit">
       </form>    
    </div>  

 <!--<p>Your bugfile is confirmed successfully. Please, re-check the details.</p>  -->
<!-- <div class="card-body">
   <div class="form-group">
                <label class="dis" for="">Issue you are facing</label>
                <input placeholder="Product Field" type="text" name="productField" class="form-control" required>
            </div>
 <ul class="list-group">   
  <li name="bugNumber" class="list-group-item">Bug Number : ${user.bugNumber}</li>
  <li class="list-group-item">Product name : ${user.productField}</li>
  <li class="list-group-item">Issue you are facing : ${user.componentError}</li>
  <li class="list-group-item">Version of the product : ${user.version}</li>
  <li class="list-group-item">Severity of the Bug : ${user.severity}</li>
  <li class="list-group-item">Hardware infected by the bug : ${user.hardwareInfected}</li>
  <li class="list-group-item">Your Operation System : ${user.operatingSystem}</li>
  <li class="list-group-item">Summary of the bug : ${user.summary}</li>
  <li class="list-group-item">Description of the bug : ${user.description}</li>
</ul>
 <a href="updatefilebug" class="link">Edit</a>
 <a href="savefilebug" class="link">Save</a> 
  </div> 
</div> -->

<!-- <div class="container"  <%=property %>>
        <form action="savefilebug" method="post">
            <h3>PLease re-check your details here!</h3>
            
             <div class="form-group">
                <label class="dis" for="">Bug Number</label>
                <input name="bugNumber" value="${user.bugNumber}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Product name</label>
                <input name="productField" value="${user.productField}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Issue you are facing</label>
                <input name="componentError" value="${user.componentError}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Version of the product</label>
                <input name="version" value="${user.version}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Severity of the Bug</label>
                <input name="severity" value="${user.severity}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Hardware infected by the bug</label>
                <input name="hardwareInfected" value="${user.hardwareInfected}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Your Operation System</label>
                <input name="operatingSystem" value="${user.operatingSystem}" type="text" class="form-control" required>
            </div>
     		<div class="form-group">
                <label class="dis" for="">Summary of the bug</label>
                <input name="summary" value="${user.summary}" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Description of the bug</label>
                <input name="description" value="${user.description}" type="text" class="form-control" required>
            </div> 
            
            <div class="buttons1">
            <a>
               <input type="submit" class="btn" id="btn" value="save">
            </a></div>
            <div class="container1">
            <a >
                <input type="submit" formaction="bugupdateprocessForm" class="btn2" value="Edit">
            </a></div>
            </form>
        </div>      
    </div>-->

</body>
</html>