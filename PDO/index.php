<?php
$dsn="mysql:host=localhost;dbname=students_step3;charset=utf8";
$pdo=new PDO($dsn,'root','');

$sql="select * from `students` where `dept`='1'";

// $rows=$pdo->query($sql)->fetch();
// 一次取一筆
$rows=$pdo->query($sql);
$row=$rows->fetch(PDO::FETCH_ASSOC);
echo "<pre>";
print_r($row);
echo "</pre>";

$row=$rows->fetch(PDO::FETCH_NUM);
echo "<pre>";
print_r($row);
echo "</pre>";

// 一次取全部
$rows=$pdo->query($sql)->fetchAll();
echo "<pre>";
print_r($rows);
echo "</pre>";


echo "<br>";
echo $rows['id'];
echo "<br>";
echo $rows[0];



?>