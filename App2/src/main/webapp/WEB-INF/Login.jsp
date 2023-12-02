<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ConcourDoc2UC</title>
    <!-- Main CSS File -->
    
    <style type="text/css">
    <%@include file="/WEB-INF/css/Login.css"%>
     <%@include file="/WEB-INF/css/normalize.css"%>
    </style>
    

    <!-- Font Awesome Library -->
    <script
      src="https://kit.fontawesome.com/d563012c9e.js"
      crossorigin="anonymous"
    ></script>
    <!-- Googl Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;500;600;700;800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="login-form">
      <div class="logo">
        <i class="fas fa-graduation-cap fa-3x"></i>
        <h2>ConcourDoc<span>2</span>UC2</h2>
      </div>

      <form action="/App2/AuthenticationController" method="post">
        <div class="input" style="margin-bottom: -20px">
          <label for="Email">Username</label>
          <input type="text" name="username" placeholder="Enter Email" required />
        </div>
        <div class="input">
          <label for="Password">Password</label>
          <input
            type="password"
            name="password"
            placeholder="Enter Password"
            required
          />
        </div>
        <h3>${message}</h3>
        <div class="input">
          <!-- this button(input) is used to add a new user use attribute of form (action="") to pass link "backend"-->
          <input type="submit" value="Login" />
        </div>
      </form>
    </div>
  </body>
</html>
