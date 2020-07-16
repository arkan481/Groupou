/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var popupBox = document.getElementById("boxpop");
var nameInput = document.getElementById("nameinput");

function showPopUp() {
    popupBox.style.display = "flex";
}

function hidePopUp() {
    popupBox.style.display = "none";
}

function redirectToChat() {
    var name = nameInput.value
    if (name.length == 0) {
        alert("Please Input Your Name");
    }else {
        localStorage["name"] = name;
        window.location = "../chatpage2.html";
    }
}

function redirectAboutUs() {
    window.location = "./about";
}

function redirectHowTo() {
    window.location = "./howto";
}

function redirectIndex() {
    window.location = "./";
}

// How to script

var slideIndex = 1;
var tutorBox = document.getElementsByClassName("tutorbox");

function changeSlide(option) {
    showDivs(slideIndex += option);
}

function showDivs(index) {
    var i;
    if (index > tutorBox.length) {slideIndex = 1}
    if (index < 1) {slideIndex = tutorBox.length} ;
    for (i = 0; i < tutorBox.length; i++) {
      tutorBox[i].style.display = "none";
    }
    tutorBox[slideIndex-1].style.display = "block";
  }


