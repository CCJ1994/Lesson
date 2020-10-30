<h1>字串處理</h1>
<h3>將"aaddw1123"改成"*********"</h3>
<?php
echo str_repeat("*",mb_strlen("aaddw1123"));
echo "<br>";
?>
<h3>將"this,is,a,book"用逗號分割</h3>
<?php
$str='this,is,a,book';
$str_array=explode(',',$str);

print_r(explode(',',$str));

?>
<h3>將"this,is,a,book"改成"this is a book"</h3>
<?php
echo implode(" ",$str_array);
echo "<br>";

?>

<h3>將"The reason why a great man is great is that he resolves to be a great man"取代"The reason..."</h3>

<?php
$str='The reason why a great man is great is that he resolves to be a great man';
echo mb_substr($str,0,10)."...";


?>


