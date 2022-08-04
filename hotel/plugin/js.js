//scroll to id
$(document).ready(function(){

  
  $("#mainMenu a,#meFooter a").click(function(){
    const theid = $(this).attr("href");
    const val=$(theid).offset().top-$("#meMenu").innerHeight()+1;

    $("html").animate(
      {scrollTop: val },1000,"swing"
    );
  });


  //scroll spy
  
  function spy(){ //檢查目前滾動位置與對應MENU之影響
    const nowat=$(document).scrollTop();
    $("section").each(function(){
      const 
            id=this.id,
            offset=$(this).offset().top - $("#meMenu").innerHeight(),
            height=$(this).innerHeight();
        if(offset<=nowat && nowat< offset + height){ //目前高度落在section內
          $("#meMenu a").not(`a[href='#${id}']`).removeClass('active');
          $(`#meMenu a[href='#${id}']`).addClass('active');
        }
    })
  
  }

  function bgmenu(){//判斷如果scroll是否在section#meslider內來決定是否提供bg-dark
    const 
    nowat=$(document).scrollTop(),
    height=$("#meslider").innerHeight(),
    offset=$("#meMenu").innerHeight(),
    screenW=$(document).innerWidth();

    if(screenW>=992){

      if(nowat<height-offset){
        $("#meMenu").removeClass("bg-dark");
        $("#meTop").removeClass("showon");
      }else{
        $("#meMenu").addClass("bg-dark");
        $("#meTop").addClass("showon");
      }
    }else{
      $("#meMenu").addClass("bg-dark");
    }

  }

  $(document).scroll(function(){//對document進行滾動
    spy();
    bgmenu();
  });
  $(window).resize(bgmenu); //對window重新調整尺寸時
  spy();
  bgmenu();

  // new Window().init();
  wow = new WOW(
    {
    boxClass:     'ani',      // default
    animateClass: 'animate__zoomInDown', // default
    offset:       200,          // default
    mobile:       true,       // default
    live:         true        // default
  }
  )
  wow.init();



  //鎖右鍵
  // document.onclick=function(){
  //   console.log(123);
  // }
  // document.oncontextmenu=function(){
  //   event.preventDefault();
  // }

});