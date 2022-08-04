<h1>字串常用函式</h1>
<h3>substr/mb_substr</h3>

<?php
  $str="Lorem ipsum dolor sit amet consectetur, adipisicing 
  elit. Laboriosam modi, tempore voluptatibus dolorum nesciunt 
  eligendi velit ipsam cupiditate non doloremque perferendis 
  illum suscipit labore! Quas obcaecati ex aliquid neque quasi?";

  // 擷取字串片段   字串,位置,長度
  $substr=mb_substr($str,40,11); 
  echo $substr;
  echo "<hr>";

  $str="Lorem ipsum dolor sit amet consectetur, adipisicing 
  elit. Laboriosam modi, tempore voluptatibus dolorum nesciunt 
  eligendi velit ipsam cupiditate non doloremque perferendis 
  illum suscipit labore! Quas obcaecati ex aliquid neque quasi?";

  // 擷取字串片段(從尾巴開始抓) 字串,位置,長度
  $substr_from_tail=mb_substr($str,-13,7);
  echo $substr_from_tail;
?> 
<hr>
<h1>去頭尾空白</h1>
<h3>trim()</h3>

<?php



?>
<hr>
<h1>重複字元</h1>
<h3>str_repeat()</h3>

<?php
            // 字元,次數
echo str_repeat("me",20);
echo "<br>";
echo str_repeat('*',10);

?>

<h1>字串取代</h1>
<h3>str_replace()</h3>
<?php

$str_replace='me';

                // 被取代的字元,取代的字串,原本字串
$results=str_replace('Lorem',$str_replace,$str);

echo $str;
echo "<br>";
echo $results;

?>
<h1>分割字串</h1>
<h3>explode()</h3>
<?php

          // 切割的元素,被切割的字串
$str_array=explode(' ',$str);

echo "<pre>";
print_r($str_array);
echo "</pre>";

?>
<h1>尋找字串在某個字串首次出現的位置</h1>
<h3>strpos()</h3>

<?php
$target='ipsum';

    // 被找的字串,要找的字
echo strpos($str,$target);

?>

<h1>字串長度</h1>
<h3>strlen()</h3>
<?php

$mb_str='今天的天氣很chill';
echo strlen($mb_str);
echo "<br>";
echo mb_strlen($mb_str);
echo "<br>";

echo mb_substr($mb_str,0,4);

?>