<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>表單製作</title>
</head>
<body>
  <h1>表單製作</h1>
  <h3>BMI計算機</h3>
  <div>
    <?php
      if(!empty($_GET['height']) && !empty($_GET['weight'])){
        echo "身高是".$_GET['height'];
        echo "<br>";
        echo "體重是".$_GET['weight'];
        $result=$_GET['weight']/pow($_GET['height']/100,2);
      }else{

    ?>
  </div>
  <form action="form.php" method="get">
    <p>身高:<input type="text"name="height" id="">cm<input type="submit"value="開始計算"></p>
    <p>體重:<input type="text"name="weight" id="">kg<input type="reset" value="清除計算"></p>
  </form>
  <?php
      }
  ?>
  <?php
  if(isset($result)){
  ?>
  <h5>你的BMI為:</h5>
  <div style="background:skyblue; width:200px; height:30px;"><?=round($result,2)?></div>

  <div><a href="student.php?num=<?=$_GET['num'];?>">回到學生查詢頁</a></div>
  <div><a href="form.php">重新計算</a></div>
  <?php
  }
  ?>
</body>
</html>