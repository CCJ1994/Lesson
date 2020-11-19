<?php
session_start();
$_SESSION['err']=[];

$acc=$_POST['acc'];
if(empty($acc)){
  $_SESSION['err']['acc']['empty']=true;
}
if(strlen($acc)>10 || strlen($acc)<4){
  $_SESSION['err']['acc']['len']=true;
}

$pw=$_POST['pw'];
if(empty($pw)){
  $_SESSION['err']['pw']['empty']=true;
}

if(strlen($pw)>16 || strlen($pw)<8){
  $_SESSION['err']['pw']['len']=true;
}

$name=$_POST['name'];
$birthday=$_POST['birthday'];
$addr=$_POST['addr'];
$tel=$_POST['tel'];
$email=$_POST['email'];



//欄位都檢查完畢後
if(empty($_SESSION['err'])){
  $sql="select,update,delete,insert";
  $pdo->exec($sql);
}

header("location:index.php");
?>