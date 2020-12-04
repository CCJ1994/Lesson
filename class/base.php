<?php
  //可以連線資料庫
  //可以指定要操作的資料表
  //可以從資料表撈資料
class DB{

  private $dsn="mysql:host=localhost;dbname=invoice;charset=utf8";
  private $dbuser='root';
  private $password='';
  private $pdo;
  private $table;

  public function __construct($table){
    $this->table=$table;
    $this->pdo=new PDO($this->dsn,'root','');
    // $this->pdo=new PDO($this->dsn,$this->dbuser,$this->password);
    
  }
  public function find($id){
    $sql="select * from $this->table where ";
    if(is_array($id)){
        foreach($id as $key => $value){
            $tmp[]=sprintf("`%s`='%s'",$key,$value);
            //$tmp[]="`".$key."`='".$value."'";
        }
        $sql=$sql.implode(' && ',$tmp);
    }else{
        $sql=$sql . " id='$id' ";
    }
    $row=$this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
  
    return $row;
  }

  public function all(...$arg){
    $sql="select * from $this->table ";
  if(isset($arg[0])){

    if(is_array($arg[0])){
      foreach($arg[0] as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
        // $tmp[]="`".$key."`='".$value."'";
      }
      $sql=$sql." where ".implode(" && ",$tmp);
    }else{
      //製作非陣列的語句接在$sql後面
        $sql=$sql.$arg[0];  
    }
  }
    if(isset($arg[1])){
      //製作接在最後面的句子字串
      $sql=$sql.$arg[1];
    
    }
    
    return $this->pdo->query($sql)->fetchAll();
  }

  public function count(...$arg){
    $sql="select count(*) from $this->table ";
  if(isset($arg[0])){

    if(is_array($arg[0])){
      foreach($arg[0] as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
        // $tmp[]="`".$key."`='".$value."'";
      }
      $sql=$sql." where ".implode(" && ",$tmp);
    }else{
      //製作非陣列的語句接在$sql後面
        $sql=$sql.$arg[0];  
    }
  }
    if(isset($arg[1])){
      //製作接在最後面的句子字串
      $sql=$sql.$arg[1];
    
    }
    
    return $this->pdo->query($sql)->fetchColumn();
  }

  public function del($id){
    $sql="delete from $this->table where ";
    if(is_array($id)){
      foreach($id as $key => $value){
        $tmp[]=sprintf("`%s`='%s'",$key,$value);
        // $tmp[]="`".$key."`='".$value."'";
      }
      $sql=$sql.implode(' && ',$tmp);
    }else{
      $sql=$sql . " id='$id' ";
    }
    return $this->pdo->exec($sql);
  }

  
  public function save($array){
    if(isset($array['id'])){
      //update
      foreach($array as $key => $value){
        if($key!='id'){
          $tmp[]=sprintf("`%s`='%s'",$key,$value);
          // $tmp[]="`".$key."`='".$value."'";
        }
      }
      $sql="update $this->table set ".implode(",",$tmp)." where `id`='{$array['id']}'";

      
    }else{
      //insert

      $sql="insert into $this->table (`".implode("`,`",array_keys($array))."`) values('".implode("','",$array)."')";
    }
    return $this->pdo->exec($sql);
  }

  public function q($sql){
    return $this->pdo->query($ql)->fetchAll();
  }

  

}

function to($url){
  header("location:".$url);
}

$inv=new DB('invoices');

// $inv->all(['period'=>6])
// $inv->all(['period'=>6],'limit 10')
// $inv->all(['period'=>6],'limit 20,5')
// $inv->del(['code'=>'AA'])

$data=[
  'code'=>'AB',
  'period'=>1,
  'payment'=>'1000000',
  'number'=>'11111111',
  'date'=>'2020-12-04'
];

$inv->save($data);
// save('invoices',$data);


// $row=$inv->find(1);
// $row['code']='AA';
// $inv->save($row);


// echo $inv->count(['period'=>5]);

//$rows=$inv->all(['period'=>5]);
//echo count($rows);

?>



