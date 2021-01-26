<h1>while 迴圈</h1>
<hr>
<h2>尋找字元</h2>
<h4>用for迴圈找字元</h4>
<ol>
  <li>用for迴圈來找</li>
  <li>知道字串長度</li>
  <li>知道擷取一個字元的方法</li>
  <li>代入for迴圈</li>
  <li>每一個字元</li>
  <li>比較為true時就中斷程式</li>
  <li>回傳找到位置</li>
</ol>

<?php
$str="今天天氣真的不太好";
$target="氣";

echo "字串=".$str."<br>";
echo "尋找=".$target."<br>";

echo mb_strlen($str);
echo "<br>";
echo mb_substr($str,0,1);

for ($i=0; $i<mb_strlen($str);$i++) {
  
  $s=mb_substr($str,$i,1);

  if($s==$target){

    echo "找到了，位置在$i";
  break;
  }

}

?>


<br>
<h3>用while迴圈找字元</h3>
<ol>
  <li>用while迴圈來找</li>
  <li>有找到就好</li>
  <li>知道擷取一個字元的方法</li>
  <li>代入while迴圈</li>
  <li>每一個字元</li>
  <li>比較為true時就中斷程式</li>
</ol>

<?php

$str="今天天氣真的不太好";
$target="今";

$notfind=true;
$position=0;

echo "字串=".$str."<br>";
echo "尋找=".$target."<br>";

while($notfind){

  $s=mb_substr($str,$position,1);
  if($s==$target){
    echo "找到了，位置在$position";
    $notfind=false;
  }else{
    $position++;
  }
}


?>

<h3>用函式找</h3>
mb_strpos($sourse,$target)<br>

<?php
echo "字串=".$str."<br>";
echo "尋找=".$target."<br>";

$str="今天天氣真的不太好";
$target="氣";

  echo "找到了".mb_strpos($str,$target);

?>