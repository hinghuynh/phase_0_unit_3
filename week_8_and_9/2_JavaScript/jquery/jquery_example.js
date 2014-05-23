$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$("h1").css({'background-color': 'gray', 'color': 'white', 'border': '3px solid black', opacity: 0.2 });
/**$("div.mascot").html(  "<h1> YOUR COHORT MASCOT </h1>" ); **/
$( ".mascot h1" ).html( "Coyotes");
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
$('img').on('mouseover', function(e){
	e.preventDefault()
	$(this).attr('src', 'http://img4.wikia.nocookie.net/__cb20110319145625/looneytunes/images/2/23/Wileecoyte.gif')
}) 
$('img').on('mouseleave',function(e){
    $(this).attr('src', 'dbc_logo.jpg')
});
//RELEASE 4 : Experiment on your own
 $('img').css({'border': '3px solid white'})
 
 $('img').click(function() {
  $('img').animate({
 width: "70%",
    opacity: 0.4,
    marginLeft: "0.6in",
    fontSize: "3em",
    borderWidth: "10px"
  }, 1500 );
});
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
