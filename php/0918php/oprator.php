<h2>運算子</h2>
<hr>
<h3>一元運算子</h3>
<h5>!相反</h5>
<?php

$a=true;
echo !$a;
?>
<h5>++</h5>
<?php

$a=13;

// $a=$a+1;
$a++;

echo $a;

?>

<h3>二元運算子</h3>
<h5>+</h5>
<?php
$a=15;
$b=20;
$c=$a+$b;
echo $c;

?>
<h5>%取餘數</h5>
<?php

$a=17;
$b=5;

echo $a%$b;

?>
<hr>
<h3>三元運算子</h3>
<?php

$a=40;

if($a>=60){
  echo "及格";
}else{
  echo "不及格";
}
?>

<?php

echo ($a>=60)?"及格":"不及格";

?>

