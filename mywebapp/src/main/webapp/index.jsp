<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hello World with Running Horses</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      overflow: hidden;
      background: linear-gradient(to top, #87CEEB, #E0F7FA); /* sky color */
      height: 100vh;
      position: relative;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Clouds */
    .cloud {
      position: absolute;
      background: white;
      border-radius: 50%;
      opacity: 0.9;
      animation: moveClouds 60s linear infinite;
    }

    .cloud:before, .cloud:after {
      content: '';
      position: absolute;
      background: white;
      width: 100%;
      height: 100%;
      border-radius: 50%;
    }

    .cloud1 { width: 100px; height: 60px; top: 50px; left: -150px; animation-delay: 0s; }
    .cloud2 { width: 150px; height: 80px; top: 120px; left: -200px; animation-delay: 10s; }
    .cloud3 { width: 120px; height: 70px; top: 200px; left: -180px; animation-delay: 20s; }

    @keyframes moveClouds {
      from { left: -200px; }
      to { left: 100%; }
    }

    /* Horses animation */
    .horse {
      position: absolute;
      bottom: 50px;
      width: 200px;
      animation: runHorses 10s linear infinite;
    }

    .horse:nth-child(4) { left: -300px; animation-delay: 0s; }
    .horse:nth-child(5) { left: -500px; animation-delay: 2s; }
    .horse:nth-child(6) { left: -700px; animation-delay: 4s; }

    @keyframes runHorses {
      from { left: -300px; }
      to { left: 100%; }
    }

    h2 {
      position: absolute;
      top: 30%;
      width: 100%;
      text-align: center;
      font-size: 48px;
      color: #2E3A59;
      text-shadow: 2px 2px 6px #ffffff;
    }
  </style>
</head>
<body>
  <!-- Clouds -->
  <div class="cloud cloud1"></div>
  <div class="cloud cloud2"></div>
  <div class="cloud cloud3"></div>

  <!-- Hello World -->
  <h2>Hello World!</h2>

  <!-- Horses -->
  <img src="https://i.imgur.com/N9K7vWQ.gif" alt="Running Horses" class="horse">
  <img src="https://i.imgur.com/N9K7vWQ.gif" alt="Running Horses" class="horse">
  <img src="https://i.imgur.com/N9K7vWQ.gif" alt="Running Horses" class="horse">
</body>
</html>