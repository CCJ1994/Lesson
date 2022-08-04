<h1>程式練習</h1>
<h3>if...else 判斷式</h3>
<hr>
<h5>成績及格判斷</h5>
<?php

$score=39;

echo "成績:".$score;
echo "<br>判斷結果";

if($score>=60){
  echo "及格";
}else{
  echo "不及格";
}

?>

<h5>成績等級判斷</h5>
<?php

$score=101;
echo "成績:".$score;
echo "<br>";
echo "等級:";

if($score>=0 && $score<=100){

    if($score>=90 && $score<=100){  
      echo "A";
  }else{

        if($score>=75 && $score<90){
            echo "B";
        }else{

            if($score>=60 && $score<75){
                echo "C";
            }else{
                echo "D";
            }
        }
  }

}else{
    echo "<span Style='color:red'>成績必須在0~100分之內</span>";
}
?>
<br>
<pre><code>
  
if($score>=0 && $score<=100){

if($score>=90 && $score<=100){  
  echo "A";
}else{

    if($score>=75 && $score<90){
        echo "B";
    }else{

        if($score>=60 && $score<75){
            echo "C";
        }else{
            echo "D";
        }
    }
}

}else{
echo "&ltspan Style='color:red'&gt成績必須在0~100分之內"&lt/span&gt";
}

</code></pre>

<br>
<pre><code>
  
if($score<=0 || $score>100){

if($score>=90){  
        echo "A";
  }else if($score>=75){
        echo "B";
  }else if($score>=60){
        echo "C";
  }else{
        echo "D";
        }
}else{
echo "&ltspan Style='color:red'&gt成績必須在0~100分之內"&lt/span&gt";
}

</code></pre>

<?php

$score=0;
echo "成績:".$score;
echo "<br>";
echo "等級:";
  if($score<0 || $score>100){
        echo "<span Style='color:red'>成績必須在0~100分之內</span>";
  }else if($score>=90){  
        echo "A";
  }else if($score>=75){
        echo "B";
  }else if($score>=60){
        echo "C";
  }else{
        echo "D";
  }
?>

<h5>閏年判斷</h5>
<?php
$year=3600;
echo "公元年分:".$year;
echo "<br>";
echo "是否為閏年:";

if($year%4 == 0){
  if($year%100 != 0){

    echo "閏年";
  }else{
  
    if($year%400==0){
      if($year%3200==0){
        echo "不是";
    }else{
      echo "閏年";
    }
    }else{
      echo "不是";
    }
  }
}else{
    echo "不是";
}

?>
<br>
<?php

$year=3600;
echo "公元年分:".$year;
echo "<br>";
echo "是否為閏年:";

if($year%4==0 && ($year%100 !=0 ||($year%400==0 && $year%3200 !=0))){
  echo "閏年";
  }else{
    echo "不是";
  }

      

?>
