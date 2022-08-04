//clock1
const now=new Date();
const valm=now.getMinutes(),vals=now.getSeconds(),valh=now.getHours();
// console.log(valh,valm,vals) 13 52 39

const degs=vals*6; //360度/60秒=>6度/秒
const degm=valm*6+vals*0.1;  //360度/60分=>6度/分 && 6度/60秒=>0.1度/秒 秒影響的偏移量
const degh=valh*30+valm*0.5;  //360度/12時=>30度/時 && 30度/60分=>0.5度/分 分影響的偏移量 && 0.5度/60s =>(0.5/60)/秒 秒影響的偏移量 
// document.write(`
// <style>
// @keyframes js{
// from{
// transform: rotate(${degs}deg);
// }
// to{
// transform: rotate(${degs+360}deg);
// }
// }
// @keyframes jm{
// from{
// transform: rotate(${degm}deg);
// }
// to{
// transform: rotate(${degm+360}deg);
// }
// }
// @keyframes jh{
// from{
// transform: rotate(${degh}deg);
// }
// to{
// transform: rotate(${degh+360}deg);
// }
// }
// </style>
// `);

let kf=document.createElement('style');
kf.innerHTML=`
@keyframes js{
from{transform: rotate(${degs}deg);}
to{transform: rotate(${degs+360}deg);}
}
@keyframes jm{
from{transform: rotate(${degm}deg);}
to{transform: rotate(${degm+360}deg);}
}
@keyframes jh{
from{transform: rotate(${degh}deg);}
to{transform: rotate(${degh+360}deg);}
}
`;
document.querySelector("head").append(kf);


//clock setInterval
onload=()=>{
  const domH=document.querySelector('.no4>.jhour1');
  const domM=document.querySelector('.no4>.jmin1');
  const domS=document.querySelector('.no4>.jsec1');
  
  domH.style.transform=`rotate(${degh}deg`;
  domM.style.transform=`rotate(${degm}deg`;
  domS.style.transform=`rotate(${degs}deg`;
}

setInterval(function(){
  const now=new Date();
const valm=now.getMinutes(),vals=now.getSeconds(),valh=now.getHours();

  const degs=vals*6; //360度/60秒=>6度/秒
const degm=valm*6+vals*0.1;  //360度/60分=>6度/分 && 6度/60秒=>0.1度/秒 秒影響的偏移量
const degh=valh*30+valm*0.5;  //360度/12時=>30度/時 && 30度/60分=>0.5度/分 分影響的偏移量 && 0.5度/60s =>(0.5/60)/秒 秒影響的偏移量 

const domH=document.querySelector('.no4>.jhour1');
  const domM=document.querySelector('.no4>.jmin1');
  const domS=document.querySelector('.no4>.jsec1');
  
  domH.style.transform=`rotate(${degh}deg`;
  domM.style.transform=`rotate(${degm}deg`;
  domS.style.transform=`rotate(${degs}deg`;

},1000)