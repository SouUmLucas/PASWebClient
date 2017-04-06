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
			padding-top: 5%
		}
	 </style>
	  <ul id="slide-out" class="side-nav">
	    <li><a href="index.jsp" class="waves-effect"><i class="material-icons">view_module</i>Início</a></li>
	    <li><a href="analysis.jsp" class="waves-effect"><i class="material-icons">assessment</i>Análises</a></li>
	    <li><a href="data.jsp" class="waves-effect"><i class="material-icons">receipt</i>Dados</a></li>
	    <li><a href="settings.jsp" class="waves-effect"><i class="material-icons">settings</i>Ajustes</a></li>
	  </ul>
	  <div class="navbar-fixed">
		  <nav>
		    <div class="nav-wrapper teal">
		      <ul id="nav-mobile" class="left hide-on-med-and-down">
		        <li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
		        <li><a href="#" class="brand-logo">PAS Web Client</a></li>
		      </ul>
		    </div>
		  </nav>
	  </div>

	  <div class="constainer">
	  	<div class="row">
		  <div class="col s4">
		      <div class="row">
		        <div class="col s12">
		          <div class="card">
		            <div class="card-image">
		              <img src="images/material1.jpg">
		              <span class="card-title">Pedófilo identificado</span>
		            </div>
		            <div class="card-content">
					    <ul class="collection">
					      <li class="collection-item">Acurácia: 98,99%</li>
					      <li class="collection-item">Mensagens analisadas: 1247</li>
					      <li class="collection-item">Mensagens classificadas com positivo: 178</li>
					    </ul>
		            </div>
		            <div class="card-action">
		              <a href="index.jsp"><i class="material-icons right">done</i>Salvar</a>
		            </div>
		          </div>
		        </div>
		      </div>
		  </div>
		  <div class="col s8">
			  <ul class="collection with-header">
		        <li class="collection-header"><h5>Conversa</h5></li>
		        <li class="collection-item"><div>hi how are you?<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">98%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>hi<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">100%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>figured this was easier then email although i did email you too<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">99%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>so where did you move here from?<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">99%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>what? i didnt even see it<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">97%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>oh...from matt should have one i just sent it a few mins ago<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">98%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>there it is<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">100%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>just popped up<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">98%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		        <li class="collection-item"><div>im brandy 14 from near santa maria<a href="#!" class="secondary-content"><span class="new badge" data-badge-caption="accy">99%</span><i class="material-icons">check_box_outline_blank</i></a></div></li>
		      </ul>
		  </div>
	  	</div>
	  </div>
   </body>
 </html>
