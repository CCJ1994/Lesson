<?php 
//修改頁面編碼 
header("Content-type: text/html; charset=utf-8"); 
//如果沒有傳入年份則獲取當前系統年份 
$year=!isset($_GET['y'])?$_GET['y']:date('Y'); 
//如果沒有傳入月份則獲取當前系統月份 
$month=$_GET['m']?$_GET['m']:date('m');

//獲取當前月有多少天 
$days=date('t',strtotime("{$year}-{$month}-1")); 
//當前1號是星期幾 
$week=date('w',strtotime("{$year}-{$month}-1")); 
//輸出表頭 
echo "<center>"; 
echo "<h2>{$year}年{$month}月</h2>"; 
//輸出日期表格 
echo "<table width='700px' border='1px'>"; 
echo "<tr>"; 
echo "<th>週日</th>"; 
echo "<th>週一</th>"; 
echo "<th>週二</th>"; 
echo "<th>週三</th>"; 
echo "<th>週四</th>"; 
echo "<th>週五</th>"; 
echo "<th>週六</th>"; 
echo "</tr>"; 
//鋪表格 
for($i=1-$week;$i<=$days;){ 
  echo "<tr>"; 
  for($j=0;$j<7;$j++){ 
    if($i>$days || $i<=0){ 
      echo "<td>&nbsp;</td>"; 
    }else{ 
      echo "<td>{$i}</td>"; 
  } $i++; } echo "</tr>"; 
} 
echo "</table>"; 
//實現上一月和上一年 
if($month==1){ 
  $premonth = 12; 
  $preyear = $year - 1; 
}else{ 
  $premonth = $month-1; 
  $preyear = $year; 
} 
//實現下一月和下一年 
if($month==12){ 
  $nextmonth = 1; 
  $nextyear = $year + 1; 
  }else{ 
    $nextmonth = $month + 1; 
    $nextyear = $year; 
    } 
    //上一月、下一月的實現 
    echo "<a href='2.php?y={$preyear}&m={$premonth}'>上個月</a>";
    echo "<a href='2.php?y={$nextyear}&m={$nextmonth}'>下個月</a>"; 
    echo "</center>"; 
    ?>
