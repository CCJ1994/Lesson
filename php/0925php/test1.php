<style>
  table{
    border-collapse:collapse;
    text-align:center;
  }
  td{
    border:1px solid gray;
    width:100px;
    padding:15px 10px;
  }

</style>
<table>
<?php
  for($i=0;$i<10;$i++){
    echo "<tr>";
    for($j=0;$j<10;$j++){
    if($i==0 && $j==0){
      echo "<td></td>";
    }else if($i==0){
      echo "<td>".$j."</td>";
    }else if($j==0){
      echo "<td>".$i."</td>";
    }else{
        echo "<td>".($i*$j)."</td>";
      }
    }
    echo "</tr>";
  }




?>
</table>