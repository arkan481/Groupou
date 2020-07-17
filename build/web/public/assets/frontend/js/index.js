/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var popupBox = document.getElementById("boxpop");
var nameInput = document.getElementById("nameinput");

var hrIndex = document.getElementById("hrhome");
var hrHow = document.getElementById("hrhow");
var hrAbout = document.getElementById("hrabout");


function showPopUp() {
    popupBox.style.display = "flex";
}

function redirectLogin(session) {
    console.log(session);
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
    showHr(2);
}

function redirectHowTo() {
    window.location = "./howto";
    showHr(3);
}

function redirectIndex() {
    window.location = "./";
    console.log("called");
    showHr(1);
}

function showHr(index) {
    switch (index) {
        case 1:
            hrIndex.style.display = "block";
            hrHow.style.display = "none";
            hrAbout.style.display = "none";
            break;
        case 2:
            hrIndex.style.display = "none";
            hrHow.style.display = "none";
            hrAbout.style.display = "block";
            break;
        case 3:
            hrIndex.style.display = "none";
            hrHow.style.display = "block";
            hrAbout.style.display = "none";
            break;
        default:
            hrIndex.style.display = "block";
            hrHow.style.display = "none";
            hrAbout.style.display = "none";
            break;
    }
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
    showHr(3);
  }


