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
      background: linear-gradient(to top, #aee1f9, #e0f7fa);
      height: 100vh;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      position: relative;
    }

    /* Clouds */
    .cloud {
      position: absolute;
      background: white;
      border-radius: 50%;
      opacity: 0.9;
      animation: moveClouds 60s linear infinite;
    }

    .cloud1 { width: 120px; height: 60px; top: 50px; left: -200px; animation-delay: 0s; }
    .cloud2 { width: 180px; height: 90px; top: 130px; left: -250px; animation-delay: 10s; }
    .cloud3 { width: 150px; height: 70px; top: 200px; left: -300px; animation-delay: 20s; }

    @keyframes moveClouds {
      from { left: -250px; }
      to { left: 110%; }
    }

    /* Hello World text */
    h2 {
      position: absolute;
      top: 30%;
      width: 100%;
      text-align: center;
      font-size: 48px;
      color: #2E3A59;
      text-shadow: 2px 2px 8px #ffffff;
    }

    /* Horses */
    .horse {
      position: absolute;
      bottom: 40px;
      width: 180px;
      animation: runHorses 10s linear infinite;
    }

    .horse:nth-of-type(4) { left: -250px; animation-delay: 0s; }
    .horse:nth-of-type(5) { left: -450px; animation-delay: 2s; bottom: 70px; }
    .horse:nth-of-type(6) { left: -650px; animation-delay: 4s; bottom: 100px; }

    @keyframes runHorses {
      from { left: -300px; }
      to { left: 110%; }
    }
  </style>
</head>
<body>
  <div class="cloud cloud1"></div>
  <div class="cloud cloud2"></div>
  <div class="cloud cloud3"></div>

  <h2>Hello World!</h2>

  <!-- Working horse GIFs -->
  <img src="https://media.giphy.com/media/26BRuo6sLetdllPAQ/giphy.gif" alt="Running Horse" class="horse">
  <img src="https://media.giphy.com/media/26BRuo6sLetdllPAQ/giphy.gif" alt="Running Horse" class="horse">
  <img src="https://media.giphy.com/media/26BRuo6sLetdllPAQ/giphy.gif" alt="Running Horse" class="horse">
</body>
</html>
