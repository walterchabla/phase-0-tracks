var h1 = document.getElementsByTagName("h1")
var header = h1[0];
header.style.border = "3px solid black"

function color(event) {
  event.target.style.border="2px solid blue";
  console.log("hi");
}

function background_color(event) {
  event.target.style.background="border-box yellow";
}

var img = document.getElementsByTagName("img");
var photo = img[0];
photo.addEventListener("click", color);

header.addEventListener("mouseover", background_color);