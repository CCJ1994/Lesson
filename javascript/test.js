function writeIt(){
  // document.write("<h2>我的第一個JS網頁</h2>"); //文件寫入
  document.getElementById("demo").textContent="我的第一個JS網頁";//事後行為:DOM模型操作
}
writeIt();