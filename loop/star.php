<style>
body{
  font-family:courier;
}
</style>
<h1>直角三角形</h1>
<?php
for($i=1;$i<=5;$i++){
  for($j=1;$j<=$i;$j++){
    echo "*";
  }
  echo "<br>";
}
?>
<hr>
<h1>倒直角三角形</h1>
<h3>1</h3>
<?php
for($i=1;$i<=5;$i++){
  for($j=1;$j<=(6-$i);$j++){
    echo "*";
  }
  echo "<br>";
}
?>
<h3>2</h3>
<?php
for($i=1;$i<=5;$i++){
  for($j=5;$j>=$i;$j--){
    echo "*";
  }
  echo "<br>";
}
?>
<hr>
<h1>正三角形</h1>

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
<hr>
<h1>倒正三角形</h1>
<h3>1</h3>
<?php
for($i=1;$i<=5;$i++){
  for($s=1;$s<=($i-1);$s++){
    echo "&nbsp;";
  }
  for($j=1;$j<=(11-2*$i);$j++){
    echo "*";
  }
  echo "<br>";
}
?>
<h3>2</h3>
<?php
for($i=1;$i<=5;$i++){
  for($s=1;$s<=($i-1);$s++){
    echo "&nbsp;";
  }
  for($j=9;$j>=(2*$i-1);$j--){
    echo "*";
  }
  echo "<br>";
}


?>
<hr>
<h1>菱形</h1>
<h3>方法１</h3>
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
for($i=1;$i<=4;$i++){
  for($s=1;$s<=$i;$s++){
    echo "&nbsp;";
  }
  for($j=1;$j<=(9-2*$i);$j++){
    echo "*";
  }
  echo "<br>";
}

?>
<h3>方法２</h3>
<?php
for($i=1;$i<=9;$i++){
  if($i<=5){
    for($s=1;$s<=(5-$i);$s++){
      echo "&nbsp;";
    }
    for($j=1;$j<=(2*$i-1);$j++){
      echo "*";
    }
    echo "<br>";
  }else{

    for($s=1;$s<=($i-5);$s++){
      echo "&nbsp;";
    }
    for($j=1;$j<=(19-2*$i);$j++){
      echo "*";
    }
    echo "<br>";
  }
}
?>
<h1>矩形</h1>
<?php
for($i=1;$i<=7;$i++){  
  for($j=1;$j<=7;$j++){
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
