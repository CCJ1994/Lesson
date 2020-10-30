<?php
$users=[
      ['acc'=>'mack','pw'=>'1234','type'=>'vip'],
      ['acc'=>'andy','pw'=>'5678','type'=>'mem'],
      ['acc'=>'lucy','pw'=>'9999','type'=>'vip']
];

if(!empty($_POST['acc']) && !empty($_POST['pw'])){
  $acc=$_POST['acc'];
  $pw=$_POST['pw'];
  $chk='';;
  foreach($users as $user){
  if($user['acc']==$acc){
      $chk=$user;
    
  }
}
  if(!empty($chk)){
    if($chk['pw']==$pw){
      header('location:mem.php');
    }else{
      header("location:error.php");
    }
  }else{
    header("location:error.php");
  }
}else{
  header("location:login.html");
}

?>