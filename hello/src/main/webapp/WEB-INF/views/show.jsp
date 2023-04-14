<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
        <form action="green" method="post">
            <h1>Login to Bugzilla</h1>
            
            <div class="form-group">
                <label class="dis" for="">Username</label>
                <input name="name" placeholder="Enter your username" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">operating system</label>
                <input name="operatingSystem" placeholder="Enter your operating system" type="text" class="form-control" required>
            </div>
            <div class="form-group">
                <label class="dis" for="">Severity of the Bug</label>
                <select name="severity" id="severity" class="form-control" required>
                  <option value="High">High</option>
                  <option value="Medium">Medium</option>
                  <option value="Low">Low</option>
                </select>
            </div>
              <div class="form-group">
                <label class="dis" for=""> Summary of the bug</label>
              <textarea id="dsc" name="summary" rows="4" cols="50" class="form-control" required></textarea></div>
            <div class="buttons1">
            <a>
               <input type="submit" class="btn" id="btn" value="Login">
            </a></div>
        </form>
</div>
</body>
</html>