<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hello World with Horses and Rain</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      overflow: hidden;
      height: 100vh;
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      position: relative;
      background: linear-gradient(to top, #a8def0 20%, #dff6ff 80%);
    }

    /* Clouds */
    .cloud {
      position: absolute;
      background: white;
      border-radius: 50%;
      opacity: 0.85;
      animation: moveClouds 60s linear infinite;
    }

    .cloud1 { width: 160px; height: 80px; top: 40px; left: -200px; animation-delay: 0s; }
    .cloud2 { width: 200px; height: 100px; top: 120px; left: -300px; animation-delay: 10s; }
    .cloud3 { width: 170px; height: 85px; top: 200px; left: -250px; animation-delay: 20s; }

    @keyframes moveClouds {
      from { left: -250px; }
      to { left: 110%; }
    }

    /* Hello World Text */
    h2 {
      position: absolute;
      top: 25%;
      width: 100%;
      text-align: center;
      font-size: 52px;
      color: #1c2833;
      text-shadow: 3px 3px 12px #ffffff;
      z-index: 3;
    }

    /* Moving horse background (strip) */
    .horse-bg {
      position: absolute;
      bottom: 60px;
      width: 300%;
      height: 300px;
      background: url('https://i.imgur.com/sJ1W8cF.png') repeat-x;
      background-size: contain;
      animation: moveHorses 12s linear infinite;
      z-index: 1;
      opacity: 0.95;
    }

    @keyframes moveHorses {
      from { transform: translateX(0); }
      to { transform: translateX(-33.33%); }
    }

    /* Ground */
    .ground {
      position: absolute;
      bottom: 0;
      width: 100%;
      height: 100px;
      background: linear-gradient(to top, #256d1b, #4caf50);
      z-index: 2;
    }

    /* Rain */
    .rain {
      position: absolute;
      width: 100%;
      height: 100%;
      overflow: hidden;
      top: 0;
      left: 0;
      pointer-events: none;
      z-index: 4;
    }

    .raindrop {
      position: absolute;
      width: 2px;
      height: 20px;
      background: rgba(255, 255, 255, 0.6);
      bottom: 100%;
      animation: fall 1s linear infinite;
    }

    @keyframes fall {
      to {
        transform: translateY(100vh);
        opacity: 0;
      }
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

  <!-- Horses background -->
  <div class="horse-bg"></div>

  <!-- Ground -->
  <div class="ground"></div>

  <!-- Rain Effect -->
  <div class="rain">
    <% 
      for (int i = 0; i < 80; i++) {
        int left = (int)(Math.random() * 100);
        double delay = Math.random();
        double duration = 0.8 + Math.random();
    %>
      <div class="raindrop" style="left:<%=left%>%; animation-delay:<%=delay%>s; animation-duration:<%=duration%>s;"></div>
    <% } %>
  </div>
</body>
</html>
