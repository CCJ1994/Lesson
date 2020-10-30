<h1>陣列函式</h1>
<h3>is_array()</h3>
<?php
$a=[1,2,3];
$b="天氣";
echo '$a=>'.is_array($a);
echo "<br>";
echo '$b=>'.is_array($b);
echo "<br>";

if(is_array($a)){
  echo '$a is an array';
}else{
  echo '$a is not an array'; 
}

?>
<h3>in_array()</h3>

$a=['A','B','C','D','E'];
<?php
$a=['A','B','C','D','E'];
echo in_array("C",$a);
echo "<br>";
if(in_array('C',$a)){
  echo "C有在陣列中";
}else{
  echo "C不再陣列中";
}


?>
<h3>sort()</h3>
$a=['D','B','A','C','E'];
<?php
$a=['D','B','A','C','E'];
print_r($a);
echo "<br>";
sort($a);
print_r($a);
echo "<br>";

?>

$a=['國文'=>'D',
    '英文'=>'B',
    '數學'=>'A',
    '地理'=>'C',
    '歷史'=>'E'];
<?php
$a=['國文'=>'D',
    '英文'=>'B',
    '數學'=>'A',
    '地理'=>'C',
    '歷史'=>'E'];
sort($a);
print_r($a);

?>
<h3>array_fill()</h3>


<?php

$a=array_fill(0,10,'嗨');
echo "<pre>";
print_r($a);
echo "</pre>";

?>
<h3>array_search()</h3>
<?php
$a=['國文'=>'D',
'英文'=>'B',
'數學'=>'A',
'地理'=>'C',
'歷史'=>'E'];

echo "找成績為A的科目";
echo "<br>";
echo array_search('A',$a);

echo "<br>";

$a=['D','B','A','C','E'];
echo array_search('A',$a);

?>
<h3>array_keys()將key或index取出為一個陣列</h3>
<?php
$a=['國文'=>'D',
'英文'=>'B',
'數學'=>'A',
'地理'=>'C',
'歷史'=>'E'];
$keys=array_keys($a);

echo "<pre>";
print_r($keys);
echo "</pre>";

?>

<h3>array_merge()合併陣列</h3>

<?php
  $a=[1,2,3];
  $b=['A','B','C'];
  $c=array_merge($a,$b);
  echo "<pre>";
  print_r($c);
  echo "</pre>";
  
  $a=array_merge($a,$b);
  echo "<pre>";
  print_r($a);
  echo "</pre>";
?>
<h3>serialize()序列化 字串化陣列</h3>
<?php
$a=['國文'=>'D',
'英文'=>'B',
'數學'=>'A',
'地理'=>'C',
'歷史'=>'E'];
echo serialize($a);

?>
<h3>unserialize()反序列化 字串化陣列</h3>

<?php
$a=['國文'=>'D',
'英文'=>'B',
'數學'=>'A',
'地理'=>'C',
'歷史'=>'E'];

$b=serialize($a);
print_r(unserialize($b));

?>
<h3>implode()以字串或符號把陣列轉為字串</h3>
<?php
$a=['國文'=>'D',
'英文'=>'B',
'數學'=>'A',
'地理'=>'C',
'歷史'=>'E'];

$result=implode(',',$a);

echo $result;
echo "<br>";
print_r(explode(',',$result));

?>