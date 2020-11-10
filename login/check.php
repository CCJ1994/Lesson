<?php
$dsn="mysql:host=localhost;dbname=member;charset=utf8";
$pdo=new PDO($dsn,'root','');
$acc=$_POST['acc'];
$pw=$_POST['pw'];

$sql="select * from `login` where `acc`='$acc' && `pw`='$pw'";
$check=$pdo->query($sql)->fetch();
echo $sql;

if(!empty($check)){
  echo "登入成功";
  $member_sql="select * from `member` where `login_id`='{$check['id']}'";
  $member=$pdo->query($member_sql)->fetch();
  $role=$member['role'];

  switch($role){
    case '會員':
      header('location:mem.php');
    break;
    case 'VIP':
      header('location:vip.php');
    break;
    case '管理員':
      header('location:admin.php');
    break;
  }
}else{
  
  header('location:index.php?meg=帳密不正確，請重新登入或註冊帳號');


}




?>