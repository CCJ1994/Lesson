<h1>判斷及格</h1>
<?php

$score=60;
echo "成績：".$score;
echo "<br>";
echo "判斷結果：";
if($score>=60){
  echo "及格";
}else{
  echo "不及格";
}

?>
<br>
<br><h1>判斷成績等級</h1>
<?php
$score=159;

echo "成績：".$score;
echo "<br>";
echo "等級：";

if($score<0 || $score>100){
  echo "<span style='color: red'>分數必須在0~100之間</span>";
}else if($score>=90){
  echo "A";
}else if($score>=75){
  echo "B" ; 
}else if($score>=60){
  echo "C";
}else{
  echo "D";
}
?>
<br>
<br>
<h1>閏年判斷</h1>

<?php

$year=3200;
echo "年份：".$year;
echo "<br>";
echo "是否為閏年：";

if(($year%4==0 && $year%100!=0)||($year%400==0 && $year%3200!=0)){
  echo "是閏年";
}else{
  echo "不是";
}

?>
<br>
<br>
<br>
<h1>switch...case 選擇</h1>
<pre><code>
switch(){
  case "":
  break;
  case "":
  break;
  default:
}
</code></pre>


<hr>
<h1>給予評價</h1>
<?php
$score=99;
$level="";

if($score<0 || $score>100){
  echo "<span style='color: red'>分數必須在0~100之間</span><br>";
}else if($score>=90){
  $level="A";
}else if($score>=75){
  $level="B" ; 
}else if($score>=60){
  $level="C";
}else{
  $level="D";
}

echo "成績：".$score;
echo "<br>";
echo "等級：".$level;
echo "<br>";

switch($level){
  case "A":
    echo "評價：非常好，請努力保持";
  break;
  case "B":
    echo "評價：可圈可點，但還有進步空間";
  break;
  case "C":
    echo "評價：一般水平，需要更多的努力";
  break;
  case "D":
    echo "評價：用心不足，請加強";
  break;
  default:
  echo "資料錯誤";
}


?>

<br>
<br>
<br>
<h1>給予評價</h1>
<?php

$score=100;

echo "成績：".$score;
echo "<br>";
echo "等級：";


if($score<0 || $score>100){
  echo "<span style='color: red'>分數必須在0~100之間</span>";
}else if($score>=90){
  echo "A<br>評價：非常好，請努力保持";
}else if($score>=75){
  echo "B<br>評價：可圈可點，但還有進步空間" ; 
}else if($score>=60){
  echo "C<br>評價：一般水平，需要更多的努力";
}else{
  echo "D<br>評價：用心不足，請加強";
}
?>
<br>
<br>
<h1>九九乘法表</h1>
<?php

    for($s=1;$s<=9;$s++){
        echo "<br>";
        for($y=1;$y<=9;$y++){
            echo "<span style='display: inline-block;width: 85px;margin-bottom:5px;'>".$y." * ".$s." = ".$y * $s."</span>";
        }
    }

?>