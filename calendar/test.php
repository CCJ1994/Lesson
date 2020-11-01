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
    $thisMonth=date("m");
    $days=date("t");
    $firstDate=strtotime(date("Y-m-")."1");
    $startweekday=date("w",$firstDate);
    $nextMonth=date("m",strtotime("+1 month"));
    $prevMonth=date("m",strtotime("-1 month"));
    
  ?>
  <h1>月曆</h1>
  <div>
    <a href="1.php">上一個月</a>
    <a href="1.php">下一個月</a>
  </div>
  <table>
    <tr><td colspan="7";><?echo date('m')?>月</td></tr>
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
          echo "(30-$j+1)";
        }else if(((7*$i)+1+$j-$startweekday)>$days){
          echo ((7*$i)+1+$j-$days);

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
