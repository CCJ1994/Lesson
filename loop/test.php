<style>
  table{
    border-collapse: collapse;
    text-align:center;
  }

  td{
    border: 1px solid gray;
    width: 70px;
    padding: 15px 10px;
  }
</style>
<br>
<table>
<?php
for($i=1;$i<=9;$i++){
  echo "<tr";
  for($j=1;$j<=9;$j++){
    echo "<td>".$j."x".$i."=".$i*$j."</td>";
  }
  echo "</tr>";
}



?>

</table>

<br>
<table>
<?php
for($i=1;$i<=9;$i++){
  echo "<tr>";
  for($j=1;$j<=9;$j++){
    echo "<td>".$j."x".$i."=".$i*$j."</td>";
  }
  echo "</tr>";
}
?>
</table>
<br>
<table>
<?php
for($i=0;$i<10;$i++){
  echo "<tr>";
  for($j=0;$j<10;$j++){
    if($i==0 && $j==0){
      echo "<td></td>";
    }else if($i==0){
      echo "<td>$j</td>";
    }else if($j==0){
      echo "<td>$i</td>";
    }else{
      echo "<td>".$i*$j."</td>";
    }
  }
  echo "</tr>";
}

?>
</table>


<br>


<table>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>