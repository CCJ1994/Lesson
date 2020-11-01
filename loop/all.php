<style>
  body{
    font-family:courier;
  }
  table{
    border-collapse:collapse;
    text-align:center;
  }
  td{
    border:1px solid gray;
    width:100px;
    padding:20px;
  }
  
</style>
<h1>數列</h1>
<h2>求1+2+3+4+5....+n</h2>
<?php
$n=2;
$sum=0;
for ($i=1;$i<=$n;$i++){ 
  $sum=$sum+$i;
}
echo '$n='.$n."<br>";
echo "總和".$sum;
?>

<h2>求0+1-2+3-4+5.......+n的和</h2>
<?php
$n=2;
$sum=0;
for($i=0;$i<=$n;$i++){

  if($i%2==1){
    $sum=$sum+$i;

  }else{
    $sum=$sum-$i;
  }
  
}
echo '$n='.$n;
echo '<br>';
echo '總和'.$sum;

?>

<h2>費氏數列0,1,1,2,3,5,8</h2>
<?php
$n=10;
$pre=0;
$now=1;
for($i=0;$i<$n;$i++){
    $sum=$pre+$now;
    $pre=$now;
    $now=$sum;
    echo "位置:".$i;
    echo "值".$sum."<br>";
  
}

?>

<h1>矩形內有對角線</h1>
<?php
for ($i=1; $i<=7;$i++) { 
  for ($j=1;$j<=7;$j++) {
    if($i==1 || $i==7){
      echo "*";
    }else if($j==1 || $j==7 || $i==$j || $i==(8-$j)){
      echo "*";
    }else{
      echo "&nbsp;";
    } 
  }
  echo "<br>";
}
?>
<h1>矩形</h1>
<?php
for ($i=1;$i<=7;$i++) { 
  for ($j=1;$j<=7;$j++) { 
    if($i==1 || $i==7){
      echo "*";
  }else{
    if($j==1 || $j==7){
      echo "*";
    }else{
      echo "&nbsp;";
    }
  }
  }
  echo "<br>";
}
?>
<h1>菱形</h1>
<?php
for ($i=1;$i<=9;$i++) { 
  if($i>5){
    for ($s=1;$s<=($i-5);$s++){ 
      echo "&nbsp;";
    }
    for ($j=1;$j<=(19-2*$i) ;$j++) { 
      echo "*";
    }
    }else{
      for ($s=1;$s<=(5-$i);$s++) { 
      echo "&nbsp;";
    }
  for ($j=1;$j<=(2*$i-1);$j++) { 
    echo "*";
  }
  }
  echo "<br>";
}
?>
<h1>倒角三角形</h1>
<?php
for ($i=1;$i<=5;$i++){ 
  for ($s=1;$s<=(5-$i);$s++) { 
    echo "&nbsp;";
  }
  for ($j=1;$j<=(2*$i-1);$j++) { 
    echo "*";
  }
  echo "<br>";
}
?>
<h1>倒角三角形</h1>
<?php
for ($i=1;$i<=5;$i++){ 
  for ($j=1;$j<=(6-$i);$j++){ 
    echo "*";
  }
  echo "<br>";
}

?>
<h1>直角三角形</h1>
<?php
for($i=1;$i<=5;$i++){
  for ($j=1;$j<=$i; $j++){ 
    echo "*";
  }
    echo "<br>";
}
?>

<h1>判斷及格</h1>
<?php
$score="59";
echo "分數:".$score;
echo "<br>";
echo "成績:";
if($score>=60){
  echo "及格";
}else{
  echo "不及格";
}
?>

<h1>判斷成績等級</h1>

<?php
$score="100";
echo "成績:".$score;
echo "<br>";
echo "等級:";
if($score<0||$score>100){
  echo "分數必須在0~100之間";
}else if($score>=90){
  echo "A";
}else if($score>=75){
  echo "B";
}else if($score>=60){
  echo "C";
}else{
  echo "D";
}
?>
<h1>閏年判斷</h1>
<?php
$year="4";
echo "西元年份:".$year;
echo "<br>";
echo "是否為閏年:";

if(($year%4==0 && $year%100!=0)||($year%400==0 && $year%3200!=0)){
  echo "是閏年";
}else{
  echo "不是";
}

?>
<h1>給予評價</h1>
<?php
$score="101";
$level="";

if($score<0 || $score>100){
  echo "成績必須在0~100之間<br>";
}else if($score>=90){
  $level="A";
}else if($score>=75){
  $level="B";
}else if($score>=60){
  $level="C";
}else{
  $level="D";
}
echo "成績:".$score;
echo "<br>";
echo "等級:".$level;
echo "評價:";
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


<h1>9X9表格</h1>
<table>
<?php

for($i=1;$i<=9;$i++){
  echo "<tr>";
  for($j=1;$j<=9;$j++){
    echo "<td></td>";
  }
  echo "</tr>";
}
?>
</table>
<h1>99乘法表</h1>
<table>  
<?php
for($i=1;$i<=9;$i++){
  echo "<tr>";
  for($j=1;$j<=9;$j++){
    echo "<td>".$i."x".$j."=".($i*$j)."</td>";
  }
  echo "</tr>";
}
?>
</table>

<h1>99乘法表</h1>
<table>
  <?php
for($i=0;$i<10;$i++){
  echo "<tr>";
  for ($j=0;$j<10;$j++){
    if($i==0 && $j==0){
      echo "<td></td>";
    }else if($i==0){
      echo "<td>".$j."</td>";      
    }else if($j==0){
      echo "<td>".$i."</td>";
    }else{
      echo "<td>".($i*$j)."</td>";
    }
  }
  echo "</td>";
}
?>
</table>

<h1>尋找中文字元</h1>
<?php
$str="今天星期日";
$target="日";
$found=false;
$pos=0;

echo "字串:".$str."<br>";
echo "尋找:".$target."<br>";
while(!$found){
  $s=mb_substr($str,$pos,1);
  if($s==$target){
    echo "找到了<br>位置在:".$pos;
    $found=true;
  }else{
      $pos++;
  }
}
?>
<h1>尋找英文字元</h1>
<?php
$str="Lorem ipsum dolor sit amet"; 
$target="sit";
$found=false;
$pos=0;

echo "英文字串:".$str."<br>";
echo "尋找:".$target."<br>";
while(!$found){
  $s=substr($str,$pos,3);
  if($s==$target){
    echo "找到了<br>位置在:".$pos;
    $found=true;
  }else{
    $pos++;
  }
}
?>


