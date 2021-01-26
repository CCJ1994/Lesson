<h1>數列</h1>
<h2>求1+2+3+4+5....+n</h2>
<?php

$n=5;
$sum=0;
for($i=1;$i<=$n;$i++){
  
  $sum=$sum+$i;
}
echo '$n='.$n;
echo '<br>';
echo '總和'.$sum;

?>
<br>
<h2>求0+1-2+3-4+5.......+n的和</h2>
<?php
$n=9;
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
<br>
<h1>費氏數列0,1,1,2,3,5,8</h1>
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