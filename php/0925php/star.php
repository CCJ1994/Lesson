<h1>綜合練習</h1>
<h2>直角三角形</h2>
<hr>
<?php

for($i=1;$i<=5;$i++){
  for($j=1;$j<=$i;$j++){
    
    echo "*";
  }
  echo "<br>";
}

?>

<h2>倒直角三角形</h2>
<hr>
<h3>方法1</h3>
<?php
for($i=1;$i<=5;$i++){
  for($j=1;$j<=(6-$i);$j++){
    
    echo "*";
  }
  echo "<br>";
}

?>
<h3>方法2</h3>
<?php
for($i=1;$i<=5;$i++){
  for($j=5;$j>=$i;$j--){
    
    echo "*";
  }
  echo "<br>";
}
?>
<br>
<style>
body{
  font-family:courier;
}
</style>
<h2>正三角形</h2>
<hr>
<h3>方法1</h3>
<?php
for($i=1;$i<=5;$i++){

  for($s=1;$s<=(5-$i);$s++){
    echo "&nbsp;";
  
  }
    for($j=1;$j<=(2*$i-1);$j++){
      echo "*";
  }
  echo "<br>";
}

?>

<h3>方法2</h3>
<?php
for($i=1;$i<=5;$i++){
// 先印空白
  for($s=5;$s>=$i;$s--){
    echo "&nbsp;";
  }
  // 再印星星
    for($j=1;$j<=(2*$i-1);$j++){
      echo "*";
  }
  echo "<br>";
}

?>
<h3>方法3</h3>
<?php
for($i=1;$i<=9;$i=$i+2){

  for($s=1;$s<=(4-floor($i/2));$s++){
    echo "&nbsp;";
  
  }
    for($j=1;$j<=$i;$j++){
      echo "*";
  }
  echo "<br>";
}

?>

<h2>菱形</h2>
<hr>
<h3>方法1，一個正三角形加倒三角形</h3>
<?php

for($i=1;$i<=5;$i++){
    //先印空白
    
    for($k=1;$k<=(5-$i);$k++){

        echo "&nbsp;";

    }  

    //再印星星
    for($j=1;$j<=(2*$i-1);$j++){

        echo "*";

    }
    
    echo "<br>";
}
for($i=4;$i>0;$i--){
    //先印空白
    
    for($k=1;$k<=(5-$i);$k++){

        echo "&nbsp;";

    }  

    //再印星星
    for($j=1;$j<=(2*$i-1);$j++){

        echo "*";

    }
    
    echo "<br>";
}
?>
<br>
<h3>方法2</h3>
<?php
for($i=1;$i<=9;$i++){
    
    if($i<=5){
        //先印空白
        for($k=1;$k<=(5-$i);$k++){
            echo "&nbsp;";
        }  

        //再印星星
        for($j=1;$j<=(2*$i-1);$j++){
            echo "*";
        }
        
        echo "<br>";
    }else{

        //echo ($i-5);
        for($k=1;$k<=($i-5);$k++){
            echo "&nbsp;";

        }  
        //再印星星
        //echo (2*$i-1);
        for($j=1;$j<=(2*(10-$i)-1);$j++){

            echo "*";

        }
        
        echo "<br>";
    }


}

?>
<h3>方法3</h3>
<?php
for ($i=1; $i<=9; $i++){ 
  if($i%5==0){
    $m=5;
  }else{
    $m=$i%5;
  }
  if($i>5){
    $m=5-$m;
  }
  for($k=1;$k<=(5-$m);$k++){
    echo "&nbsp;";
  }
  for($j=1;$j<=(2*$m-1);$j++){
    echo "*";
  }
  echo "<br>";
}


?>
<br>
<h2>矩形</h2>
<hr>
<h3>方法1</h3>
<?php
for ($i=1; $i<=7;$i++){
  if($i==1 || $i==7){
    echo "*******";
  }else{
  for ($j=2;$j<=2;$j++){
    echo "*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*";
    }

    }     
  echo "<br>";
}

?>
<br>
<h3>方法2</h3>
<?php
for($i=1;$i<=7;$i++){
  for ($j=1;$j<=7;$j++){ 
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


<br>
<h2>矩形內有對角線</h2>
<hr>
<?php
for($i=1;$i<=7;$i++){
  for ($j=1;$j<=7;$j++){ 
    if($i==1 || $i==7){
      echo "*";
    }else{
      if($j==1 || $j==7 || $i==$j || $i==(8-$j)){
        echo "*";
      }else{
        echo "&nbsp;";
      }
    }
  }
  echo "<br>";
}

?>
<br>
