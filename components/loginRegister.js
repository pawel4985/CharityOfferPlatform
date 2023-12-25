const lInputs = document.querySelectorAll(".forms .inputs .login input");
const lBtn = document.querySelector(".forms .inputs .login button");
const feedback = document.querySelector(".forms p.wrong");

lBtn.addEventListener('click',async()=>{
const data = {
    login: lInputs[0].value,  
    password:  lInputs[1].value
}
await fetch('./modules/login.php',{
    method: 'POST',
    headers:{
        'Content-Type':'aplication/json',
    },
    body: JSON.stringify(data),
    }).then((response)=>response.json()).then((data)=>{
        feedback.textContent=data;
    })

})



const rInputs = document.querySelectorAll(".forms .inputs .register input");
const rBtn = document.querySelector(".forms .inputs .register button");
rBtn.addEventListener('click',async ()=>{
if(rInputs[1].value===rInputs[2].value){
    const data = {
        login: rInputs[0].value,  
        password:  rInputs[1].value
   }
   await fetch('./modules/register.php',{
    method: 'POST',
    headers:{
        'Content-Type':'aplication/json',
    },
    body: JSON.stringify(data),
    }).then((response)=>response.json()).then((data)=>{
        feedback.textContent=data;
    })
}else{
    feedback.textContent = "Podane hasła różnią się!"
}   
})