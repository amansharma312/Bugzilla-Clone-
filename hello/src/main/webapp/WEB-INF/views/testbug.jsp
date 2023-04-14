<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recheck</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">
<style>

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            margin-top: 10px;
            margin-bottom: 10px;
        }

body{   
       background-image: url("https://drive.google.com/uc?export=view&id=1G3E7ce6gDpa3230xpl6fArZ-L6cpcxH_");		  
}
.card{
margin: auto;
width:500px;
max-width: 90%;
margin-top: 20px;
background-image: url("https://drive.google.com/uc?export=view&id=1G3E7ce6gDpa3230xpl6fArZ-L6cpcxH_");
}
.list-group{
	   width:500px;
	   }
.list-group-item{
          background-color:white;
          width:100%;
          height: 40px;
          list-style:none;
          text-align:left;
          line-spacing: 5.0;
        }
 /*a:link, a:visited {
  		 background-color: #32CD32;
  		 color: white;
   		 padding: 14px 25px;
 	 	 text-align: center;
  		 text-decoration: none;
  		 display: inline-block;
		}*/
		.card .btn{
		margin-left: auto;
		margin-top: auto;
		position: relative;	
		top: 22px;
		left: -250px;
		transform: translateX(-50%);
		width: 120px;
		height: 34px;
		border: none;
		outline: none;
		background: #00FF00;
		cursor: pointer;
		font-size: 16px;
		text-transform: uppercase;
		color: white;	
		border-radius: 4px;	
		transition: .3s;	
		font-family: 'Courier New', monospace;
		}
		.card .btn1{
		margin-left: auto;
		margin-top: auto;
		position: relative;	
		top: -22px;
		left: -10px;
		text-align:center;
		transform: translateX(-50%);
		width: 120px;
		height: 34px;
		border: none;
		outline: none;
		background: #00FF00;
		cursor: pointer;
		font-size: 16px;
		text-transform: uppercase;
		color: white;	
		border-radius: 4px;	
		transition: .3s;	
		font-family: 'Courier New', monospace;
		}
		
		.btn-info:hover{
		 background-color: #FF0000;
         text-decoration: none;
         cursor: pointer;
		}
		
		.link{
		right: 200px;	
		}
</style>
</head>
<body>
<div class="card">
  <ul class="list-group list-group-flush">
    <h2>Please Recheck your details</h2>
    <li class="list-group-item">${user.bugNumber}</li>
    <li class="list-group-item">${user.productField}</li>
    <li class="list-group-item">${user.componentError}</li>
    <li class="list-group-item">${user.version}</li>
    <li class="list-group-item">${user.severity}</li>
    <li class="list-group-item">${user.hardwareInfected}</li>
    <li class="list-group-item">${user.operatingSystem}</li>
    <li class="list-group-item">${user.summary}</li>
    <li class="list-group-item">${user.description}</li> 
    <li class="list-group-item">${user.pf}</li>
  </ul>
  	 <a href="savefilebug"  class="btn btn-info" role="button">Save</a>
  	 <a href="bugupdateprocessForm" class="btn1 btn-info" role="button">Edit</a>
</div>
</body>
</html>