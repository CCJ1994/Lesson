<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    body{
      text-align:center;

    }
    table{
      width:400px;
      height:300px;
      border:1px solid gray;
      border-collapse:collapse;
      margin:auto;
    }
    table td{
      border:1px solid gray;
      padding:20px 30px;
    }

  </style>
</head>
<body>
  <?php
    

    date_default_timezone_set("Asia/Taipei");

    $year=date("Y");
    $month=date("m");
    

    if(isset($_GET['y']) && isset($_GET['m'])){
      $year=$_GET['y'];
      $month=$_GET['m'];
      

    }

    if($month>12){
        $month=1;
        $year++;
    }
    if($month<1){
        $month=12;
        $year--;
    }
    $days=date("t");
    $firstDate=strtotime(date("Y-m-")."1");
    $startweekday=date("w",$firstDate);
    
  ?>
    <h1>月曆</h1>
  <div class="container">
    <h2><?echo $year."/".$month?></h2>
      <a href="test.php?y=<?=$year?>&m=<?=($month-1)?>">Prev</a>
      <a href="test.php?y=<?=$year?>&m=<?=($month+1)?>">Next</a>
  </div>
  <table>
    <tr>
      <td>Sun.</td>
      <td>Mon.</td>
      <td>Tue.</td>
      <td>Wed.</td>
      <td>Thu.</td>
      <td>Fri.</td>
      <td>Sat.</td>
    </tr>
  <?php

    for($i=0;$i<6;$i++){
      echo "<tr>";
      for($j=0;$j<7;$j++){
        echo "<td>";
        if($i==0 && $j<$startweekday){
          // echo "(30-$j+1)";
          echo "&nbsp;";
        }else if(((7*$i)+1+$j-$startweekday)>$days){
          // echo ((7*$i)+1+$j-$days);

        }else{
          echo ((7*$i)+1+$j-$startweekday);

        }
        echo "</td>";
      }
      echo "</tr>";
    }

  ?>

  </table>
</body>
</html>
