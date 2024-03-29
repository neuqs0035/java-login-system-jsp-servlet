<%
  Cookie ck[] = request.getCookies();
  
  for(Cookie c:ck){
    if(c.getName().equals("logincookie")){
      %>
      <script>alert("Page Access Denied: Already Logged In"); window.location.href="index.jsp"</script>
      <%
    }
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Java Login System: Login</title>
  <link rel="icon" href="GITHUB_PROFILE_ICON.jfif" type="image/png">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
  <div class="container w-50 mt-5"> 
    <form action="login" method="post">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" required>
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
      </div><br>
      <button type="submit" class="btn btn-primary" name="submitbutton">Submit</button>&nbsp;&nbsp;&nbsp;
      <a class="btn btn-secondary" href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;
      <a class="btn btn-success" href="signup.jsp">Signup</a>
    </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
