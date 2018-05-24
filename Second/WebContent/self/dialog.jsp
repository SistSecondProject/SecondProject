<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>Insert title here</title>
<style type="text/css">

body {
	background-color: #9CCC65;
	/* Remove space around window edge */
	margin-top: 0;
	margin-left: 0;
	margin-right: 0;
	margin-bottom: 0;
}

/*
The attributes below style the css
property transitions.
*/

div {
  -webkit-transition-property: all;
  -webkit-transition-duration: 0.2s;
  -webkit-transition-timing-function: ease;
  -webkit-transition-delay: 0s;
}

/*
The two classes below work together
to center the content vertically and
horizontally on the screen.
*/

.wrapperOutside {
   display: table;
   width: 100vw;
   height: 100vh;
}

.wrapperInside {
   display: table-cell;
   text-align: center;
   vertical-align: middle;
}

/*
The attributes below style the css
dialog window, and content.
*/

.dialogContainer {
  /* Form */
  width: 280px;
  height: auto;
  /*
  Drop Shadow
  a. Horizontal shadow
  b. Vertical shadow
  c. Blur
  d. Spread
  e. Color
  */
  -webkit-box-shadow: 0 -2px 25px 0 rgba(0, 0, 0, 0.15), 0 13px 25px 0 rgba(0, 0, 0, 0.3);
  background-color: #FFFFFF;
  /* Internal padding */
  padding-top: 0;
  padding-left: 0;
  padding-right: 0;
  padding-bottom: 0;
  /* External padding */
  margin-top: 0;
  margin-left: auto;
  margin-right: auto;
  margin-bottom: 0; 
}

.dialogContent { 
  /* Form */   
  width: auto;
  height: auto;
  background-color: #FFFFFF;
  /* Corner radius */
  border-top-left-radius:2px;
  border-top-right-radius:2px;
  border-bottom-right-radius:0;
  border-bottom-left-radius:0;    
  /* Internal padding */
  padding-top: 21px;
  padding-left: 24px;
  padding-right: 24px;
  padding-bottom: 12px;
  /* External padding */
  margin-top: 0;
  margin-left: 0;
  margin-right: 0;
  margin-bottom: 0;     
}

.dialogContentTitle {
  /* Form */  
  background-color: #FFFFFF; 
  /* Typography */  
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  font-size: 20px;
  color: rgba(0,0,0,.8);
  line-height: 24px;  
  text-align: left;
  letter-spacing: 0.03px;
  /* Internal padding */
  padding-top: 0;
  padding-left: 0;
  padding-right: 0;
  padding-bottom: 0;
  /* External padding */
  margin-top: 0;
  margin-left: 0;
  margin-right: 0;
  margin-bottom: 0;    
}

.dialogContentBody {
  /* Typography */
  font-family: 'Roboto', sans-serif;
  font-weight: 400;
  font-size: 16px;
  color: rgba(0,0,0,.5);
  line-height: 24px;    
  text-align: left;
  letter-spacing: 0.03px;
  /* Internal padding */
  padding-top: 14px;
  padding-left: 0;
  padding-right: 0;
  padding-bottom: 0;   
  /* External padding */
  margin-top: 0;
  margin-left: 0;
  margin-right: 0;
  margin-bottom: 0;       
}

.dialogActionBar {
  /* Form */
  width: auto;
  height: 48px;
  background-color: #FFFFFF;
  text-align: right;
  /* Corner radius */
  border-top-left-radius:0;
  border-top-right-radius:0;
  border-bottom-right-radius:2px;
  border-bottom-left-radius:2px;  
  /* Internal padding */
  padding-top: 0;
  padding-left: 16px;
  padding-right: 15px;
  padding-bottom: 8px;  
  /* External padding */
  margin-top: 0;
  margin-left: 0;
  margin-right: 0;
  margin-bottom: 0;      
}

/*
The attributes below style the
hit target.
*/

.buttonTouchTarget {
  display: inline-block;
  background-color: rgba(0,0,0,0);
  /* Remove grey background on link clicked in ios safari */
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

/*
The attributes below style the
flat button based on the Google
material design language.
*/

.buttonFlat {
  /* Form */
  display: inline-block;
  height: 36px;
  background-color: rgba(9,9,9,0);
  /* Typography */
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  font-size: 14px;
  color: rgba(33,150,243,0.9);
  line-height: 36px;    
  text-align: center;
  letter-spacing: 0.4px;     
  /* Internal padding */
  padding-top: 0;
  padding-left: 8px;
  padding-right: 8px;
  padding-bottom: 0;
  /* External padding â Touch target size */
  margin-top: 6px;
  margin-left: 4px;
  margin-right: 4px;
  margin-bottom: 6px;
}
</style>
<script type="text/JavaScript">

/*
The code below will manage
the mouseover, onclick, and
mouseout events.
*/

// Capture touch capability
var touchEnabled = false;

//
// DIV BUTTON ONE
//

// First add the button id found in the html
var buttonOneTouchTarget = "buttonOneTouchTarget";
var buttonOne = "buttonOne";

// Declare function to manage mouse over event.
var buttonOneOnMouseOver = document.getElementById(buttonOneTouchTarget);
buttonOneOnMouseOver.onmouseover = function(){
	console.log("Div button " + buttonOne + " on mouse over");
	document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0.2)";
}

// Declare function to manage mouse down event.
var buttonOneOnMouseDown = document.getElementById(buttonOneTouchTarget);
buttonOneOnMouseDown.onmousedown = function(){
	console.log("Div button " + buttonOne + " on mouse down");
	document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0.4)";
}

// Declare function to manage mouse down event on iOS Safari
var buttonOneOnTouchStart = document.getElementById(buttonOneTouchTarget);
buttonOneOnTouchStart.ontouchstart = function(){
	console.log("Div button " + buttonOne + " on touch start");
	document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0.4)";
	touchEnabled = true;
}

// Declare function to manage mouse up event.
var buttonOneOnMouseUp = document.getElementById(buttonOneTouchTarget);
buttonOneOnMouseUp.onmouseup = function(){
	if(touchEnabled === false){
		console.log("Div button " + buttonOne + " on mouse up" + " A");
		document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0.2)";
	}else{
		console.log("Div button " + buttonOne + " on mouse up" + " B");
		document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0)";
	}
}

// Declare function to manage mouse on click event.
var buttonOneOnClick = document.getElementById(buttonOneTouchTarget);
buttonOneOnClick.onclick = function(){
	if(touchEnabled === false){
		console.log("Div button " + buttonOne + " on click" + " A");
		document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0.2)";
	}else{
		console.log("Div button " + buttonOne + " on cick" + " B");
		document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0)";
	}
}

// Declare function to manage mouse out event.
var buttonOneOnMouseOut = document.getElementById(buttonOneTouchTarget);
buttonOneOnMouseOut.onmouseout = function(){
	console.log("Div button " + buttonOne + " on mouse out");
	document.getElementById(buttonOne).style.backgroundColor = "rgba(99,99,99,0)";
}

//
// DIV BUTTON TWO
//

// First add the button id found in the html
var buttonTwoTouchTarget = "buttonTwoTouchTarget";
var buttonTwo = "buttonTwo";

// Declare function to manage mouse over event.
var buttonTwoOnMouseOver = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnMouseOver.onmouseover = function(){
	console.log("Div button " + buttonTwo + " on mouse over");
	document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0.2)";
}

// Declare function to manage mouse down event.
var buttonTwoOnMouseDown = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnMouseDown.onmousedown = function(){
	console.log("Div button " + buttonTwo + " on mouse down");
	document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0.4)";
}

// Declare function to manage mouse down event on iOS Safari
var buttonTwoOnTouchStart = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnTouchStart.ontouchstart = function(){
	console.log("Div button " + buttonTwo + " on touch start");
	document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0.4)";
	touchEnabled = true;	
}

// Declare function to manage mouse up event.
var buttonTwoOnMouseUp = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnMouseUp.onmouseup = function(){
	if(touchEnabled === false){
		console.log("Div button " + buttonTwo + " on mouse up" + " A");
		document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0.2)";
	}else{
		console.log("Div button " + buttonTwo + " on mouse up" + " B");
		document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0)";
	}
}

// Declare function to manage mouse on click event.
var buttonTwoOnClick = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnClick.onclick = function(){
	if(touchEnabled === false){
		console.log("Div button " + buttonTwo + " on click" + " A");
		document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0.2)";
	}else{
		console.log("Div button " + buttonTwo + " on cick" + " B");
		document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0)";
	}
}

// Declare function to manage mouse out event.
var buttonTwoOnMouseOut = document.getElementById(buttonTwoTouchTarget);
buttonTwoOnMouseOut.onmouseout = function(){
	console.log("Div button " + buttonTwo + " on mouse out");
	document.getElementById(buttonTwo).style.backgroundColor = "rgba(99,99,99,0)";
}


</script>
</head>
<body>
<div>
	<!-- Content wrapper -->
	<div class="wrapperOutside">
		<div class="wrapperInside">
			<!-- Dialog -->
			<div class="dialogContainer">
    			<!-- Dialog title and body -->
    			<div class="dialogContent">
    		       <c:forEach var="vo" items="${list }">
    				<div class="dialogContentTitle">${vo.compnyname}</div>
    				<div class="dialogContentBody">${vo.content}</div>
    				</c:forEach>
    				</div>
   		 			<!-- Dialog action bar -->
   		 			<div class="dialogActionBar">
					<!-- Buttons -->
					<a class="buttonTouchTarget" id="buttonOneTouchTarget" href="../main/passinfo.do">
					<div class="buttonFlat" id="buttonOne" fit>목록</div>
					</a><!-- This comment removes 4px gap between buttons
					--><a class="buttonTouchTarget" id="buttonTwoTouchTarget" href="../main/selftest.do">
					
					</a>
    			</div>
			</div>
		</div>
	</div>
	<!-- Javascript -->
	<script src="javascript.js"></script>
</body>
</html>
