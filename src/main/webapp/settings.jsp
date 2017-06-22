<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <title>Ajustes</title>
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
			padding-top: 5%
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
	  
	  <nav>
	    <div class="nav-wrapper teal">
	      <ul id="nav-mobile" class="left hide-on-med-and-down">
	        <li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
	        <li><a href="#" class="brand-logo">PAS Web Client</a></li>
	      </ul>
	    </div>
	  </nav>
	  <div class="container">
		<form action="#">
			<div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="input-field col s12">
			          <input placeholder="Digite aqui o endereço de conexão para o Serviço PAS" id="pas-service" type="text" name="pas-service" class="validate">
			          <label for="remetente">Serviço PAS</label>
			        </div>
			      </div>
			      <div class="row">
					<div class="input-field col s12">
				      <input placeholder="Digite aqui o endereço de conexão com a base de dados" id="pas-database" type="text" name="pas-database" class="validate">
			          <label for="destinatario">Base de dados</label>
			        </div>
			      </div>
			      <div class="submit-button">
					<a href="index.jsp" class="waves-effect waves-light btn-large"><i class="material-icons right">done</i>Salvar</a>
			      </div>
			    </form>
			  </div>
		  </form>	  
	  </div>
   </body>
 </html>
