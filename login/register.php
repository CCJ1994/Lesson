<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>註冊帳號</title>
  <style>
    body {
      background-color: #bdc3c7;
      font-family: Arial, Helvetica, sans-serif;
    }

    .container {
      margin: 10px 10px;
      padding:20px;
      width: 350px;
      height: 300px;
      border: 1px solid grey;
      background-color: #eee;
      font-size:20px;
      line-height:2rem;
    }
    li{
      list-style:none;
    }
    .btn{
      margin-left:50px;
    }
  </style>
</head>

<body>
  <h2>註冊帳號</h2>
  <form action="add_user.php" method="post">
    <div class="container">
      <li>帳號：<input type="text"></li>
      <li>密碼：<input type="password"></li>
      <li>姓名：<input type="text"></li>
      <li>生日：<input type="date"></li>
      <li>地址：<input type="text"></li>
      <li>學歷：
        <select name="education" id="">
          <option value="國中">國中</option>
          <option value="高中">高中</option>
          <option value="大學／專科">大學／專科</option>
          <option value="碩士">碩士</option>
          <option value="博士">博士</option>
        </select>
      </li>
    </div>
    <input class="btn" type="submit" value="確認送出">
    <input class="btn" type="reset" value="重置">
      
  <form>
</body>

</html>