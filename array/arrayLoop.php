<h1>以迴圈產生陣列</h1>
<hr>
<?php

$nine=[];
for($i=1;$i<=9;$i++){
  for($j=1;$j<=9;$j++){
      $nine[]=$i."x".$j."=".($i*$j);
  }
}
print_r($nine);

?>
<hr>
<?php
echo $nine[71];
?>
<hr>
<?php
$nine=[];
for($i=1;$i<=9;$i++){
  for($j=1;$j<=9;$j++){
      $nine[$i.$j]=$i."x".$j."=".($i*$j);
  }
}
print_r($nine);
echo "<br>";
echo $nine[76];

?>
<h1>程式產生二維陣列</h1>

<?php
$nine=[];
for($i=1;$i<=9;$i++){
  for($j=1;$j<=9;$j++){
      $nine[$i][$j]=$i."x".$j."=".($i*$j);
  }
}
print_r($nine);
echo "<br>";
echo $nine[8][9];

?>