const buttons = document.querySelectorAll(".forms .control button");
const login = document.querySelector(".forms .inputs .login");
const register = document.querySelector(".forms .inputs .register");
let check;

for(let i=0;i<2;i++){
   buttons[i].addEventListener('click',()=>{
      check=i;
      for(let i=0;i<2;i++){
         buttons[i].classList.remove("click")
      }
      buttons[i].classList.add("click")
      if(check==1){
         register.classList.remove("hide")
         login.classList.add("hide")
      }else{
         register.classList.add("hide")
         login.classList.remove("hide")
      }
   })
}
