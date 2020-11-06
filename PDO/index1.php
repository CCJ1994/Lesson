<?php
$dsn="mysql:host=localhost;dbname=students_step3;charset=utf8";
$pdo=new PDO($dsn,'root','');

$sql="select * from `students` where `dept`='2'";

$rows=$pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);

foreach($rows as $row){
  echo $row['school_num']."=>".$row['name']."=>".$row['dept'];
  echo "<br>";
}





?>