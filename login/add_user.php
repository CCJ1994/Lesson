<?php
$dsn="mysql:host=localhost;dbname=member;charset=utf8";
$pdo=new PDO($dsn,'root','');

$acc=$_POST['acc'];
$pw=$_POST['pw'];
$name=$_POST['name'];
$birthday=$_POST['birthday'];
$addr=$_POST['addr'];
$email=$_POST['email'];
$education=$_POST['education'];

$insert_to_login="insert into `login`(`acc`,`pw`,`email`)
                  values('$acc','$pw','$email')";
echo $insert_to_login;

$pdo->exec($insert_to_login);
$select_login_user="select * from `login` where `acc`='$acc' AND `pw`='$pw'";
$login_id=$login_user['id'];
echo "<br>註冊使用者ID";
echo $login_id;

$insert_to_member="insert into `member`(`name`,`birthday`,`role`,`addr`,`email`,`education`,`login_id`)
                    values('$name','$birthday','會員','$addr','$email','$education','$login_id')";
$result=$pdo->exec($insert_to_member);
                   
if($result){
  header("location:index.php?meg=新增成功");
}else{
  header("location:index.php?meg=新增失敗");

}


?>