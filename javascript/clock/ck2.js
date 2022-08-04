onload=()=>{
const retime2=()=>{
  setTimeout(retime2,1000);
  const nt=new Date();
  // console.log(nt);


  const ch=nt.getHours();
  const cm=nt.getMinutes();
  const cs=nt.getSeconds();

  const yy=nt.getFullYear();
  const mm=nt.getMonth()+1;
  const dd=nt.getDate();

  console.log(ch);
  

  document.getElementById("clkTime").innerHTML=ch+":"+cm+":"+cs;
  document.getElementById("clkDate").innerHTML=yy+"-"+mm+"-"+dd;

  
  document.getElementsByClassName("cc")[0].style.opacity="1";
  document.getElementsByClassName("cc")[1].style.opacity="1";

  setTimeout(function(){
  document.getElementsByClassName("cc")[0].style.opacity="0";
  document.getElementsByClassName("cc")[1].style.opacity="0";
  },500)
  
}
retime2();



}