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
      <script>alert("Page Access Denied : Login To Access This Page"); window.location.href="index.jsp"</script>
    <%
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logout Confirmation</title>
</head>
<body>

<button onclick="confirmLogout()">Logout</button>

<script>
  function confirmLogout() {
    var result = confirm("Are you sure you want to logout?");

    if (result) {
      alert("Logging out...");
      window.location.href = "logout"; // Assuming "/logout" is the servlet URL pattern
    } else {
      alert("Logout canceled.");
      window.location.href = "index.jsp";
    }
  }
</script>

</body>
</html>
