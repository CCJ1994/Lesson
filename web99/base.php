<?php
date_default_timezone_set("Asia/Taipei");
session_start();

$tstr=[
  'title'=>'網站標題管理',
  'ad'=>'動態文字廣告管理',
  'mvim'=>'動畫圖片管理',
  'image'=>'校園映像資料管理',
  'total'=>'進站總人數管理',
  'bottom'=>'頁尾版權區管理',
  'news'=>'最新消息資料管理',
  'admin'=>'管理者帳號管理',
  'menu'=>'選單管理'
];
$addstr=[
  'title'=>'新增標題區圖片',
  'ad'=>'新增動態文字廣告',
  'mvim'=>'新增動畫圖片',
  'image'=>'新增校園映像圖片',
  'news'=>'新增最新消息資料',
  'admin'=>'新增管理者帳號',
  'menu'=>'新增主選單'
];

class DB{
  protected $table;
  protected $dsn="mysql:host=localhost;dbname=db99;charset=utf8";
  protected $pdo;

  function __construct($table){
    $this->table=$table;
    $this->pdo=new PDO($this->dsn,'root','');
  }


  function all(...$arg){
    $sql="select * from $this->table ";
    if(isset($arg[0])){
      if(is_array($arg[0])){
        foreach($arg[0] as $key => $value){
          $tmp[]=sprintf("`%s`='%s'",$key,$value);
        }
        $sql .=" where ".implode(" && ",$tmp);
      }else{
        $sql .=$arg[0];
      }

    }
    if(isset($arg[1])){
      $sql .=$arg[1];
    }
    return $this->pdo->query($sql)->fetchAll();
  }
  function count(...$arg){
    $sql="select count(*) from $this->table ";
    if(isset($arg[0])){
      if(is_array($arg[0])){
        foreach($arg[0] as $key => $value){
          $tmp[]=sprintf("`%s`='%s'",$key,$value);
        }
        $sql .=" where ".implode(" && ",$tmp);
      }else{
        $sql .=$arg[0];
      }

    }
    if(isset($arg[1])){
      $sql .=$arg[1];
    }
    return $this->pdo->query($sql)->fetchColumn();

  }
  function find($id){
    $sql="select * from $this->table ";
    if(is_array($id)){
      foreach($id as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
      }
      $sql .=" where ".implode(" && ",$tmp);
    }else{
      $sql .=" where `id`='$id'";
    }
    return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);

  }
  function del($id){
    $sql=" delete from $this->table ";
    if(is_array($id)){
      foreach($id as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
      }
      $sql .=" where ".implode(" && ",$tmp);
    }else{
      $sql .=" where `id`='$id'";
    }
      return $this->pdo->exec($sql);
  }
  function save($arr){
    // update
    if(is_array($arr)){
      foreach($arr as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
      }
      $sql=" update $this->table set ".implode(',',$tmp)." where `id`='{$arr['id']}'";
  }else{
    // insert
    $sql=" insert into $this->table (`".implode("`,`",array_keys($arr))."`) values ('".implode("','",$arr)."')";
  }
  return $this->pdo->exec($sql);
}
function q($sql){
  return $this->pdo->query($sql)->fetchAll();
}

}

function to($url){
  header("location:".$url);
}

$Title=new DB("title");
$Ad=new DB("ad");
$Mvim=new DB("mvim");
$Image=new DB("image");
$Total=new DB("total");
$Bottom=new DB("bottom");
$News=new DB("news");
$Admin=new DB("admin");
$Menu=new DB("menu");


?>