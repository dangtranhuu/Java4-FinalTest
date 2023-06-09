<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Login Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"
          integrity="sha384-p8+Wfdi32ZsNFoZbAxLthvsXarQ//FZY7V0aztR0a7voE8Wwwq3hVGRa0rRsFcON"
          crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

  <div style="width: 50%;margin-top: 50px;">
  <ol>
    <li>Thiết kế trang đăng nhập, tạo các entities và sử dụng db có sẵn để load thông tin người dùng hiện tại bằng JPA,
       nếu người dùng nhập đúng sẽ vào trang home, ngược lại sẽ thông báo lỗi nếu nhập sai thông tin  - 4 điểm </li>
    <li>Lập trình hiển thị lịch sử đăng nhập và đăng xuất vào bảng  - 3 điểm </li>  
    <li>Ghi lại thông tin người dùng khi đăng nhập hoặc đăng xuất vào DB - 1 điểm</li>
    <li>Khi người dùng chọn Remember me sẽ không yêu cầu đăng nhập lần nữa và vào thằng 
      trang Home băng cách sử dụng session - 2 điểm</li>
  </ol>
</div>


  <div class="container">
    <h2>Login</h2>
    
    <c:if test="${error == true}">
    	<h2>Đăng nhập không thành công</h2>
    </c:if>
    
    <form id="login-form" method="post" action="/Final-Java4/Login">
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" name="email" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" name="password" required>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
        <label class="form-check-label" for="exampleCheck1">Remember me?</label>
      </div>
      <br/>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>
  </div>
</body>
</html>
