<form action="api/add_invoice.php" method="post"> 
      <div class="date">
        <div class="date1">
          期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;別
          <select class="dateP" name="period">
            <option value="1">01,02月</option>
            <option value="2">03,04月</option>
            <option value="3">05,06月</option>
            <option value="4">07,08月</option>
            <option value="5">09,10月</option>
            <option value="6">11,12月</option>
          </select>
        </div>
        <div class="date2">
          日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期
          <input class="dateD" type="date" name="date">
        </div>
      </div>
      <div class="num">發票號碼
        <input class="num1" type="text" name="code">
        <input class="num2" type="number"name="number" min="1" max="99999999">
      </div>
      <div class="pay">消費金額
        <input class="pay1" type="number" name="payment" min="1">
      </div>
      <!-- <div class="item">
        品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;項
        <input class="item1" type="text">
        
      </div>
      <div class="note">
        備&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;註
        <input class="note1" type="text" name="note">
      </div> -->
      <div class="btm">
        <div class="btm1">
          <input class="btm2" type="submit" value="儲存">
        </div>
        <div class="btm1">
          <input class="btm2" type="reset" value="重填">
        </div>
      </div>
    </form>