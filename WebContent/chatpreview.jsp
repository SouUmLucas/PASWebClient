<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   </head>

   <body>
     <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
     <script type="text/javascript" src="js/materialize.min.js"></script>
     <script>
     	$(document).ready(function(){
      		$(".button-collapse").sideNav();
      		$('.parallax').parallax();
      		$(".dropdown-button").dropdown({
          	hover: false
    		});
  		});
	 </script>
	 <style>
	 	.submit-button {
			text-align: center;
			padding-top: 1%
		}
		.container {
			padding-top: 1%
		}
	 </style>
	  <ul id="slide-out" class="side-nav">
	    <li><a href="index.jsp" class="waves-effect"><i class="material-icons">view_module</i>Início</a></li>
	    <li><a href="analysis.jsp" class="waves-effect"><i class="material-icons">assessment</i>Análises</a></li>
	    <li><a href="data.jsp" class="waves-effect"><i class="material-icons">receipt</i>Dados</a></li>
	    <li><a href="settings.jsp" class="waves-effect"><i class="material-icons">settings</i>Ajustes</a></li>
	  </ul>
	  
	  <nav>
	    <div class="nav-wrapper teal">
	      <ul id="nav-mobile" class="left hide-on-med-and-down">
	        <li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
	        <li><a href="#" class="brand-logo">PAS Web Client</a></li>
	      </ul>
	    </div>
	  </nav>
	  <div class="container">
	      <ul class="collection with-header">
	        <li class="collection-header"><h5>Conversa</h5></li>
	        <li class="collection-item"><div>hi how are you?<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>hi<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>figured this was easier then email although i did email you too<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>so where did you move here from?<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>what? i didnt even see it<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>oh...from matt should have one i just sent it a few mins ago<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>there it is<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>just popped up<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	        <li class="collection-item"><div>im brandy 14 from near santa maria<a href="#!" class="secondary-content"><i class="material-icons">send</i></a></div></li>
	      </ul>
		  <div class="submit-button">
			<a href="classification.jsp" class="waves-effect waves-light btn-large"><i class="material-icons right">assignment</i>Classificar</a>
		  </div>
	  </div>
   </body>
 </html>
