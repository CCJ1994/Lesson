<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>統一發票紀錄及對獎系統</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@600&display=swap" rel="stylesheet">
  <style>
    *{
      font-family: 'Noto Serif TC', serif;
    }
    .container{
      width: 600px;
      height: 700px;
      background-color: #ecf0f3;
      margin:50px auto;
      padding-top: 40px;
      border-radius: 10px;
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288),
                  inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .nav{
      width: 500px;
      height: 60px;
      margin:0 auto;
      border-radius: 10px;
      display: flex;
      justify-content: space-between;
    }
    .btn1{
      width: 100px;
      height:60px;
      font-size: 20px;
      background-color:#ecf0f3;
      border:0px;
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288);
      border-radius: 10px;
      outline:none;
    }
    
    .btn1:active{
      color:#7f8c8d;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .btn2{
      width: 100px;
      height:60px;
      font-size: 20px;
      background-color:#ecf0f3;
      border:0px;
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288);
      border-radius: 10px;
      outline:none;
    }
    .btn2:active{
      color:#7f8c8d;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .btn3{
      width: 100px;
      height:60px;
      font-size: 20px;
      background-color:#ecf0f3;
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288);
      border:0px;
      border-radius: 10px;
      outline:none;
    }
    
    .btn3:active{
      color:#7f8c8d;
      box-shadow:inset -3px -3px 7px #ffffff73,inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .btn4{
      width: 100px;
      height:60px;
      font-size: 20px;
      background-color:#ecf0f3;
      box-shadow: -3px -3px 7px #ffffff73, 3px 3px 5px rgba(94,104,121,0.288);
      border:0px;
      border-radius: 10px;
      outline:none;
    }
    
    .btn4:active{
      color:#7f8c8d;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .line{
      border-radius: 2px;
      margin:30px auto;
      width: 500px;
      height: 5px;
      background-color: #ecf0f3;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }

    .date{
      margin-top:30px;
      display: flex;
      font-size: 25px;
      position: relative;
    }
    .date1{
      position: absolute;
      left: 50px;
    }
    .date2{
      position: absolute;
      left: 290px;
    }
    .dateP{
      width: 100px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    .dateD{
      width: 130px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    .num{
      position: relative;
      top: 70px;
      left: 50px;
      font-size: 25px;
    }
    .num1{
      width: 100px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    .num2{
      width: 230px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      left: 240px;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    .pay{
      position: relative;
      top: 100px;
      left: 50px;
      font-size: 25px;
    }
    .pay1{
      width: 370px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    
    .item{
      position: relative;
      top:130px;
      left: 50px;
      font-size: 25px;
    }
    .item1{
      width: 370px;
      height: 35px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    .note{
      position: relative;
      top: 160px;
      left: 50px;
      font-size: 25px;
    }
    .note1{
      width: 370px;
      height: 150px;
      margin-left: 20px;
      position: absolute;
      border: 0;
      border-radius: 5px;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
      outline:none;
    }
    input{
      padding-left: 10px;
    }
    input:hover{
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288),
                  inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
    .btm{
      margin:300px auto;
      width: 300px;
      display: flex;
    }
    
    .btm2{
      text-align: center;
      line-height: 20px;
      margin: 20px;
      width: 80px;
      height: 50px;
      border-radius: 10px;
      border: 0;
      outline:none;
      background-color: #ecf0f3;
      box-shadow: -3px -3px 7px #ffffff73, 
                  3px 3px 5px rgba(94,104,121,0.288);
    }
    .btm2:active{
      color:#7f8c8d;
      box-shadow:inset -3px -3px 7px #ffffff73,
                inset 3px 3px 5px rgba(94,104,121,0.288);
    }
  </style>

</head>
<body>
  <?php 
            $month=[
                1=>"1,2月",
                2=>"3,4月",
                3=>"5,6月",
                4=>"7,8月",
                5=>"9,10月",
                6=>"11,12月",
            ];
            $m=ceil(date('m')/2);

            ?>
  <div class="container"> 
    <div class="nav">
      <div class="bar1">
        <a href="index.php">
          <button class="btn1">登錄發票</button>
        </a>
      </div>
      <div class="bar2">
        <a href="?do=invoice_list">
          <button class="btn2">當期發票</button>
        </a>
      </div>
      <div class="bar3">
        <a href="?do=add_awards">
          <button class="btn3">輸入獎號</button>
        </a>
      </div>
      <div class="bar4">
        <a href="?do=award_numbers">
          <button class="btn4">對&nbsp;&nbsp;&nbsp;&nbsp;獎</button>
        </a>
      </div>
    </div>
    <div class="line"></div>
    <?php 
                
                if(isset($_GET['do'])){
                    $file=$_GET['do'].".php";
                    include $file;
                }else{

                    include("main.php");
                }
                
                ?>

    
  
  </div>
</body>
</html>