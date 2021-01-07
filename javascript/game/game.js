//DOM 節點
let time=document.getElementById("time"); //dom time
let combo=document.getElementById("combo"); //dom combo

let animal=document.getElementsByTagName("img");
// console.log(animal);

let sec=0,count=0;
const btn=document.getElementsByTagName("button")[0]; //button
btn.addEventListener("click",gamestart);

document.onkeydown=keyboard;

function gamestart(){
  sec=60;
  count=0;
  time.textContent=sec;
  combo.textContent=count;
  btn.removeEventListener("click",gamestart);
  const start=setInterval(()=>{
    if(sec==0){
      clearInterval(start); //倒數至0
      btn.addEventListener("click",gamestart);
    } 
    else{
      sec--;
      time.textContent=sec;
    }
  },1000);

  for(let i=0;i<100;i++){//產生100個紅色狀態
    const ontime=Math.floor(Math.random()*57000); // 0<56999ms 出現時間
    const onwhere=Math.floor(Math.random()*9); // 0<8  出現位置
    const ondelay=Math.floor(Math.random()*3)+2; // 2~4秒  停留時間

    setTimeout(()=>{
      showIt(onwhere,ondelay,i); //送往紅色狀態變化
    },ontime)
  }

}

function showIt(where,delay,item){ //觸發紅色狀態處理
  // console.log(where,delay,item);
  if(animal[where].style.backgroundColor != ""){ //是紅或綠，改地方釋放
    // const next=(where!=8)?where+1:0; //method1
    const next=(where+1)%9; //(8+1)%9=0, method2
    setTimeout(() => {
      showIt(next,delay,item);
    }, 100);

  }else{ //是黃，可改成紅色
    animal[where].src="r.png";
    animal[where].style.backgroundColor="red";
    animal[where].alt=item;


    setTimeout(()=>{
      animal[where].src="y.png";
      animal[where].style.backgroundColor=null;
      animal[where].alt=null;
    },delay*1000);
  }


}

function keyboard(){
  // console.log(event.keyCode);
  switch(event.keyCode){
    case 103:
      getCombo(0)
      break;
    case 104:
      getCombo(1)
      break;
    case 105:
      getCombo(2)
      break;
    case 100:
      getCombo(3)
      break;
    case 101:
      getCombo(4)
      break;
    case 102:
      getCombo(5)
      break;
    case 97:
      getCombo(6)   
    break;
    case 98:
      getCombo(7)   
    break;
    case 99:
      getCombo(8)    
    break;
    
  }
  
}
function getCombo(item){ //得分，只有在紅色狀態時給分
  // console.log(item);
  if(animal[item].style.backgroundColor=="red"){
    animal[where].src="g.png";
    animal[where].style.backgroundColor="green";

    count++;
    combo.textContent=count;

    // setTimeout(() => { //綠色會1秒後自動回歸黃色
    //   animal[where].src="y.png";
    //   animal[where].backgroundColor=null;
    //   animal[where].alt=null;
    // }, 1000);
  }
}