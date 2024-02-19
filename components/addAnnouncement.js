const Inputs = document.querySelectorAll(".addannouncement input");
const Btn = document.querySelector(".addannouncement .contact button");
Btn.addEventListener("click", () => {
  const data = {
    title: Inputs[0].value,
    price: Inputs[1].value,
    location: Inputs[4].value,
    date: new Date().toISOString().split("T")[0],
    time: new Date().toLocaleTimeString("en-US", { hour12: false }),
    contactperson: Inputs[5].value,
    phonenumber: Inputs[6].value,
    imgfile: Inputs[2].files[0],
    img: Inputs[2].files[0].name,
    description: Inputs[3].value,
  };
  console.log(data);
  //   await fetch("./modules/addAnnouncement.php", {
  //     method: "POST",
  //     headers: {
  //       "Content-Type": "aplication/json",
  //     },
  //     body: JSON.stringify(data),
  //   })
  //     .then((response) => response.json())
  //     .then((data) => {
  //       alert(data);
  //     });
});
