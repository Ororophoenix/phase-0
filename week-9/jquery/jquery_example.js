// U3.W9:JQuery


// I worked on this challenge with:
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image
<img src="dbc_logo.png">
//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
bodyElement = $('body');
imageElement = $( "img" );

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
$(".header").css ({"color": "green", "border": "2px solid black", "visibility": "initial"});
$(".mascot h1").html("Chorus Frogs");

//RELEASE 5: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://data.whicdn.com/images/5664475/original.jpg')
  })

$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })
//RELEASE 6: Experiment on your own
$( "img" ).click(function() {
  $( "img" ).animate({
    width: "toggle",
    height: "toggle"
  })
  })


})

  // end of the document.ready function: do not remove or write DOM manipulation below this.

//What is jQuery?
//  JQuery is a Javascript library that allows users to add animation and things to html documents.
//What does jQuery do for you?
//  It makes it easier to use javascript on your website.
//What did you learn about the DOM while working on this challenge?
//  I didnt really learn anything about the DOM from this challenge but I looked it up on my own.