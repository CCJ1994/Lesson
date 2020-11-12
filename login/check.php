<?php
$dsn="mysql:host=localhost;dbname=member;charset=utf8";
$sql=new PDO($dsn,'root','');
$acc=$_POST['acc'];
$pw=$_POST['pw'];

$sql="select * from `login` where `acc`='$acc' && `pw`='$pw'";
// echo $sql;

$check=$pdo->query($sql)->fetch();
if(!empty($check)){
  echo "登入成功";

  

}


?>