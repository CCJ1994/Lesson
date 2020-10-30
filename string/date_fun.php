<h4>系統時區設定 date_default_timezone_set()</h4>
<?php
date_default_timezone_set("Asia/Taipei")
?>

<h1>日期函式</h1>
<h3>date()</h3>
<?php

echo date("Y-m-d");
echo "<br>";
echo date("y-m-d");
echo "<br>";
echo date("y-M-d");
echo "<br>";
echo date("y-M-D");


?>
<h3>strtotime()</h3>
<?php
echo strtotime("2020-10-29");
echo "<br>";
echo strtotime("2020-10-29 10:51:50");
echo "<br>";
echo strtotime("+1 days");
echo "<br>";
echo strtotime("+1 month");
echo "<br>";
echo date("Y-m-d H:i:s l",strtotime("+1 year"));
echo "<br>";

                              // 不包含29號
echo date("Y年m月d日",strtotime("2020-10-29 +3 days"));

echo "<br>";
echo date("西元Y-M-d",strtotime("2020-10-29 +3 year"));
echo "<br>";
?>
<h3>計算下一次生日的間隔天數</h3>
<?php
$btd="2021-04-20";
$today=date("Y-m-d");
// abs()絕對值
echo abs(strtotime($btd)-strtotime($today))/(60*60*24);
echo "<br>";

if(strtotime($today)>strtotime($btd)){
  $gap=strtotime($today)-strtotime($bth);
}else{
  $gap=strtotime($btd)-strtotime($today);
}
  echo "<br>".$gap/86400;

?>