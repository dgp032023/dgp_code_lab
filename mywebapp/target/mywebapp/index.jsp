<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hello World - Rainy Effect</title>
  <style>
    /* Full-screen background image */
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      width: 100vw;
      overflow: hidden;
      background: url('https://www.shutterstock.com/image-vector/little-kid-playing-rain-feel-260nw-2350636093.jpg') no-repeat center center fixed;
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      position: relative;
    }

    /* "Hello World!" text styling */
    h2 {
      color: white;
      font-size: 60px;
      text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.7);
      background: rgba(0, 0, 0, 0.4);
      padding: 25px 50px;
      border-radius: 20px;
      z-index: 2;
    }

    /* Rain animation */
    .rain {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-image: 
        linear-gradient(transparent, rgba(255, 255, 255, 0.2)),
        linear-gradient(transparent, rgba(255, 255, 255, 0.3));
      background-size: 2px 100%, 1px 100%;
      background-repeat: repeat;
      animation: rain 0.5s linear infinite;
      pointer-events: none;
      z-index: 1;
    }

    @keyframes rain {
      from {
        background-position: 0 0, 50px 0;
      }
      to {
        background-position: 0 100%, 50px 100%;
      }
    }
  </style>
</head>
<body>
  <div class="rain"></div>
  <h2>Hello World!</h2>
</body>
</html>
