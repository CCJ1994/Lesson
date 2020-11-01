<style>
table{
  border-collapse: collapse;
  text-align: center;
}
td{
  border:1px solid gray;
  width: 50px;
  padding: 15px 10px;
}
.a{
  background-color: lightgray;
}
</style>
<h1>尋找字元</h1>
<hr>
<?php
$str="感謝我有最佳房間";
$target="我";

$found=false;
$pos=0;


echo "字串:".$str."<br>";
echo "尋找:".$target."<br>";

while(!$found){
  $s=mb_substr($str,$pos,1);
  if($s==$target){
    echo "找到了<br>位置在：".$pos;
    $found=true;
    }else{
      $pos++;
    }
}
?>
<br>
<?php
$str="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, doloribus!";
$target="sit";

echo "字串：".$str."<br>";
echo "尋找字元：".$target."<br>";
$found=false;
$pos=0;

while (!$found) {
  $ans=substr($str,$pos,3);
  if($ans==$target){
    echo "找到了<br>位置在：".$pos;
    $found=true;
  }else{
    $pos++;
  }
}




?>
<br>
<h1>九九乘法表</h1>
<hr>
<table>
<?php
for ($i=1;$i<=9;$i++){ 
  echo "<tr>";
  for($j=1;$j<=9;$j++){
    echo "<td>".$i."x".$j."=".($i*$j)."</td>";
  }
  echo "</tr>";
}

?>
</table>
<br>

<table>
<?php
for($i=0;$i<10;$i++){
  echo "<tr>";
  for($j=0;$j<10;$j++){
    if($i==0 && $j==0){
      echo "<td class='a'></td>";
    }else if($i==0){
      echo "<td class='a'>".$j."</td>";
    }else if($j==0){
      echo "<td class='a'>".$i."</td>";
    }else{

      echo "<td>".$i*$j."</td>";
    }
  }
  echo "</tr>";
}

?>
</table>