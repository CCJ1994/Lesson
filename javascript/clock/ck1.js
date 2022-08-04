// function chkzero(num){
//   if(num<10) return "0"+num;
//   else return num;
// }
const chkzero=num=>(num<10) ? "0"+num:num;

onload=()=>{
  const retime1=()=>{
    setTimeout(retime1,1000);
    const nt=new Date();
    // console.log(nt);

  //個位數
  const hd=nt.getHours()%10;
  const md=nt.getMinutes()%10;
  const sd=nt.getSeconds()%10;
  //十位數
  const ht=Math.floor(nt.getHours()/10);
  const mt=Math.floor(nt.getMinutes()/10);
  const st=Math.floor(nt.getSeconds()/10);

  document.getElementById("ck1").className="c"+ht;
  document.getElementById("ck2").className="c"+hd;
  document.getElementById("ck3").className="c"+mt;
  document.getElementById("ck4").className="c"+md;
  document.getElementById("ck5").className="c"+st;
  document.getElementById("ck6").className="c"+sd;
  
  document.getElementsByClassName("cc")[0].style.opacity="1";
  document.getElementsByClassName("cc")[1].style.opacity="1";

  setTimeout(function(){
  document.getElementsByClassName("cc")[0].style.opacity="0";
  document.getElementsByClassName("cc")[1].style.opacity="0";
  },500)
  
}
retime1();
/////////////////////////////////////////////////////////////
const retime2=()=>{
  const nt=new Date();
  // console.log(nt);

  const ch=nt.getHours();
  let cm=nt.getMinutes();
  if(cm<10){
    cm="0"+cm;
  }
  let cs=nt.getSeconds();
  if(cs<10){
    cs="0"+cs;
  }
  const yy=nt.getFullYear();
  let mm=nt.getMonth()+1;
  if(mm<10){
    mm="0"+mm;
  }
  let dd=nt.getDate();
  if(dd<10){
    dd="0"+dd;
  }
  const da=nt.getDay();

  const week=["Sun","Mon","Tus","Wed","Thu","Fri","Sat"];

  const dot="<span>:</span>"
  const hy="-"


  document.getElementById("clkTime").innerHTML=ch+dot+cm+dot+cs;
  document.getElementById("clkDate").innerHTML=yy+hy+mm+hy+dd+" "+week[da];

  
  document.getElementsByTagName("span")[0].style.opacity="1";
  document.getElementsByTagName("span")[1].style.opacity="1";
 
  
  
  

  setTimeout(function(){
    document.getElementsByTagName("span")[0].style.opacity="0";
  document.getElementsByTagName("span")[1].style.opacity="0";
  },500)
  
}
retime2();
setInterval(retime2,1000);







}