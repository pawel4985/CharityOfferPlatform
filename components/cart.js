const list = document.querySelector(".cart .products");

const cartContent = document.cookie.match("(^|;) ?cart=([^;]*)(;|$)");
if (cartContent) {
  const cartValue = cartContent[2];
  const cartArray = JSON.parse(cartValue);
  list.textContent = "Zawartość koszyka:";
  window.addEventListener("load", async () => {
    await fetch("./modules/getannouncements.php", {})
      .then((response) => response.json())
      .then((data) => {
        announcements = data;
        announcements.forEach((element) => {
          if (cartArray.includes(element.id)) {
            let div = document.createElement("div");
            div.classList.add("annoucement");

            let img = document.createElement("div");
            img.classList.add("img");
            img.style = `background-image: url('img/annoucements/${element.id}/${element.img}')`;
            div.appendChild(img);

            let title = document.createElement("p");
            title.classList.add("title");
            title.textContent = element.title;
            div.appendChild(title);

            let price = document.createElement("p");
            price.textContent = element.price + " zł";
            price.classList.add("price");
            div.appendChild(price);

            let location = document.createElement("p");
            location.textContent = element.location;
            location.classList.add("location");
            div.appendChild(location);

            let date = document.createElement("p");
            date.textContent = element.date;
            date.classList.add("date");
            div.appendChild(date);

            list.appendChild(div);
          }
        });
      });
  });
} else {
  list.textContent = "Koszyk jest pusty";
}
