<style>
  table{
    border-collapse:collapse;
    text-align:center;
  }
  td{
    border:1px solid #999;
    width:50px;
    padding:15px 10px;
  }
 

</style>
<h1>迴圈結構</h1>
<hr>
<table>
<?php
  for($j=0;$j<9;$j++){
    echo "<tr>";
    for($i=0;$i<9;$i++){
      echo "<td></td>";
  }
    echo "</td>";
  }
?>
</table>

<br>
<table>
<?php
  for($j=1;$j<=9;$j++){
    echo "<tr>";
    for($i=1;$i<=9;$i++){
      echo "<td>".$j."x".$i."=".($i*$j)."</td>";
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

          echo "<td style='background:lightgray;'></td>";

        }else if($i==0){
            echo "<td style='background:lightgray;'>$j</td>";

          }else if($j==0){

            echo "<td style='background:lightgray;'>$i</td>";

          }else{

          echo "<td>".($i*$j)."</td>";
        }
      }
      echo "</tr>";
      
    }
  ?>
</table>
<br>
<table>
  <?php
    for($j=0;$j<10;$j++){
      
      echo "<tr>";
      for($i=0;$i<10;$i++){
        if($j==0){
          echo "$i";
        }else{
          
        }
        echo "<td>".$i*$j."</td>";
      }
      echo "</tr>";
    }

  ?>
</table>
