<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Java Login System: Home</title>
    <link rel="icon" href="GITHUB_PROFILE_ICON.jfif" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }

        .navbar {
            font-size: 20px;
            background-color: #ffffff;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-weight: bold;
            color: #007bff;
        }

        .navbar-nav {
            margin-left: 50px;
        }

        .nav-link {
            color: #343a40;
        }

        .nav-link:hover {
            color: #007bff;
        }

        .main-content {
            margin-left: auto;
            margin-right: auto;
            margin-top: 50px;
            margin-bottom: 30px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
        }

        h2 {
            color: #007bff;
        }

        p {
            color: #555;
        }

        .github-promotion {
            text-align: center;
            margin-top: 30px;
        }

        .github-promotion h3 {
            color: #007bff;
        }

        .github-promotion p {
            color: #555;
        }

        .github-promotion img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            margin-top: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .github-promotion img:hover {
            transform: scale(1.1);
        }

        .github-profile-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease-in-out;
        }

        .github-profile-button:hover {
            background-color: #009eb3;
            color: #343a40;
        }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Java: Login System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

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
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="signup.jsp">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <%
                        }
                        else{
        
                            %>
        
                    <li class="nav-item nav-item-margin">
                        <a class="nav-link" href="logout.jsp">Logout</a>
                    </li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </nav>

    <div class="main-content">
        <h2>Welcome to the Java Login System!</h2>
        <p>This is a simple and secure login system built with Java.</p>
        <p>Explore our features and enjoy a seamless login experience.</p>

        
        <div class="github-promotion">
            <h3>Check out our GitHub repository</h3>
            <p>Contribute to the project and stay updated with the latest developments.</p>
            <a href="https://github.com/bhavya416/java-login-system-jsp-servlet.git" target="_blank">
                <img src="github_logo.png" alt="GitHub Logo" width="350px" height="150px"/>
            </a>
            <br>
            <a class="github-profile-button" href="https://github.com/bhavya416" target="_blank">GitHub Profile</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>

</html>
