<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <style>
    table{
      margin:50px auto;
      width:750px;
      border:1px solid #ccc;
    }
    table td{
      border:1px solid #ccc;
      text-align:center;
      padding:10px 0;
    }
    table td:hover{
      background:lightgreen;
    }
  </style>
</head>
<body>
<h1>月曆製作</h1>
<!-- 
1.這個月 date("m")
2.月天數date("t")
3.1號在星期幾date("w")
4.最後一天在星期幾date("W") -->
<?php
$thisMonth=date("m");
echo "這個月=>".$thisMonth;
echo "<br>";
$monthDays=date("t");
echo "這個月天數=>".$monthDays;
echo "<br>";
$firstDate=strtotime(date("Y-m-").'1');
echo $firstDate;
echo "<br>";
$startDayweek=date('w', $firstDate);
echo "這個月第一天在星期=>".$startDayweek;

?>

<table>
<tr></tr>
  <td>日</td>
  <td>一</td>
  <td>二</td>
  <td>三</td>
  <td>四</td>
  <td>五</td>
  <td>六</td>
</tr>
<?php
for($i=0;$i<6;$i++){
  echo "<tr>";
  for($j=0;$j<7;$j++){
    
    echo "<td>";
    if($i==0 && $j<$startDayweek){
      echo "&nbsp;";
    }else if((($i*7)+($j+1)-$startDayweek)>$monthDays){

    }else{
      echo (($i*7)+($j+1)-$startDayweek);
    }
      echo "</td>";
  }
  echo "</tr>";
}

?>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
