<?php

function load_contents($url){
  //初始化CURL函式
  $curl= curl_init();
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); //回傳移除，預設false:自動輸出至畫面，true:則不輸出(可繼續編輯處裡變數)
  curl_setopt($curl, CURLOPT_URL, $url); //目標網址
  // /*****************************************************************非必要設定*/
  // curl_setopt($curl, CURLOPT_HEADER,false);//是否取得HEAD資訊
  // 預設true驗證伺服器憑證，拜訪https若未做任何SSL設定會出錯，
  // curl_setopt($curl, CURLOPT_SSL_VERIFYPEER,false);
  // 發出端的用戶代理，提供軟體類型、版本號、作業系統，開發者資訊
  // curl_setopt($curl,CURLOPT_USERAGENT,"Mozilla/5.0(Windows NT 10.0;WOW64) AppleWeb")



  $data=curl_exec($curl);
  curl_close($curl);
  return $data;
}

$content=load_contents('https://data.ntpc.gov.tw/api/datasets/71CD1490-A2DF-4198-BEF1-318479775E8A/json');
echo $content;


?>