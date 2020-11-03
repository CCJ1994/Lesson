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
    
    
    if(isset($_GET['Y'])){
      $year=$_GET['Y'];
    }else{
      $year=date("Y");
    }
          
    if(isset($_GET['m'])){
      $month=$_GET['m'];
    }else{
      $month=date("m");
    }

    $first="$year-$month-01";
    $startweekday=date("w",strtotime($first));
    $days=date("t",strtotime($first));

    


  ?>
    <h1>月曆</h1>
  <div class="container">
    <h2><?php echo date("Y",strtotime($first))."/".date("m",strtotime($first))?></h2>
      <?php
      if(($month-1)>0){
      ?>
      <a href="test.php?y=<?=$year?>&m=<?=($month-1)?>">Prev</a>
      <?php
      }else{
        ?>
      <a href="test.php?y=<?=($year-1)?>&m=12">Prev</a>
      <?php
      }
      ?>
      <?php
      if(($month+1)<13){
      ?>
      <a href="test.php?y=<?=$year?>&m=<?=($month+1)?>">Next</a>
      <?php
      }else{
        ?>
      <a href="test.php?y=<?=($year+1)?>&m=1">Next</a>
      <?php
      }
      ?>

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
