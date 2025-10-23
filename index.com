<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LGT Science & Technology</title>
  <style>
    body {
      margin: 0;
      font-family: "Segoe UI", sans-serif;
      background-color: #f4f4f4;
      display: flex;
    }

    /* Sidebar */
    #sidebar {
      width: 250px;
      background-color: #000;
      color: gold;
      height: 100vh;
      padding: 20px;
      box-sizing: border-box;
    }

    #sidebar h2 {
      color: gold;
      text-align: center;
      margin-bottom: 30px;
    }

    #username {
      font-size: 1.2em;
      font-weight: bold;
      margin-top: 20px;
      text-align: center;
    }

    /* Main content */
    #main {
      flex: 1;
      padding: 40px;
    }

    h1 {
      color: #000;
    }

    a {
      color: gold;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div id="sidebar">
    <h2>LGT</h2>
    <p id="username">Not signed in</p>
    <p><a href="signin.html">Sign In</a></p>
  </div>

  <div id="main">
    <h1>Welcome to LGT Science & Technology</h1>
    <p>Explore innovations, research, and Ethiopian scientific discoveries.</p>
  </div>

  <script>
    const name = localStorage.getItem("username");
    if (name) {
      document.getElementById("username").textContent = name;
    }
  </script>
</body>
</html>
