<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hello World - Full Background</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      width: 100vw;
      background: url('https://www.shutterstock.com/image-vector/little-kid-playing-rain-feel-260nw-2350636093.jpg') no-repeat center center fixed;
      background-size: cover; /* Ensures the image fills the screen */
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    h2 {
      color: white;
      font-size: 60px;
      text-shadow: 4px 4px 10px rgba(0, 0, 0, 0.6);
      background: rgba(0, 0, 0, 0.3);
      padding: 20px 40px;
      border-radius: 15px;
    }
  </style>
</head>
<body>
  <h2>Hello World!</h2>
</body>
</html>
