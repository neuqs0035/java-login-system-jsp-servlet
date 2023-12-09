<%
  Cookie ck[] = request.getCookies();
  boolean login = false;
  for(Cookie c:ck){
    if(c.getName().equals("logincookie")){
      login = true;
    }
  }

  if(!login){
    %>
      <script>alert("Page Access Denied: Login To Access This Page"); window.location.href="index.jsp"</script>
    <%
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Java Login System: Logout</title>
  <link rel="icon" href="GITHUB_PROFILE_ICON.jfif" type="image/png">

  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    button:hover {
      background-color: #0056b3;
    }

    .container {
      text-align: center;
    }

    .home-button {
      margin-top: 20px;
    }
  </style>
</head>
<body>

  <div class="container">
    <button onclick="confirmLogout()">Logout</button>
    <a class="home-button" href="index.jsp">
      <button>Home</button>
    </a>
  </div>

  <script>
    function confirmLogout() {
      var result = confirm("Are you sure you want to logout?");

      if (result) {
        alert("Logging out...");
        window.location.href = "logout"; // Assuming "/logout" is the servlet URL pattern
      } else {
        alert("Logout canceled.");
      }
    }
  </script>

</body>
</html>
