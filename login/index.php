<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>登入畫面</title>
  <style>
    body {
      background-color: #bdc3c7;
      text-align: center;
      font-family: Arial, Helvetica, sans-serif;
    }

    .container {
      margin: 100px auto;
      width: 400px;
      height: 300px;
      border: 1px solid grey;
      background-color: #eee;
    }
  </style>
</head>

<body>
  <div class="container">
    <h2>會員登入</h2>
    <hr>
    <form action="check.php" method="post">
      <p>帳號：<input type="text"></p>
      <p>密碼：<input type="password"></p>
      <p>
        <a href="forget_pw.php">忘記密碼？</a>
        <a href="register.php">註冊新帳號</a>
      </p>
      <input type="submit" value="登入">
    <form>
  </div>
</body>

</html>