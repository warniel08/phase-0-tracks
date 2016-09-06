console.log("Orca script is running")

var image = document.getElementsByTagName('img');

var image = image[0];

image.style.border = "2px solid red";


function undoBorderStyle(event) {
	event.target.style.border = "";
}

image.addEventListener("click", undoBorderStyle)
