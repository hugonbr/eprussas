const fruits = ["Banana", "Orange", "Apple", "Mango"];
let fLen = fruits.length;

let text = "<ul>";
for (let i = 0; i < fLen; i++) {
    text += "<li>" + fruits[i] + "</li>";
}
text += "</ul>";

document.getElementById("r").innerHTML = text;

// https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_ul_type_css

