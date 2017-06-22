<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <title>Início</title>
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
	 	body {
	 		background-color: teal;
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
	      <a href="#" class="brand-logo center">PAS Web Client</a>
	      <ul id="nav-mobile" class="left hide-on-med-and-down">
	        <li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
	      </ul>
	    </div>
	  </nav>
	  <div class="container">
		  <div class="col s12 m7">
		    <h3 style="text-align:center; color:white" } class="header">Resultado</h2>
		    <div class="card horizontal">
		      <div class="card-stacked">
		        <div class="card-content">
		          <p>Mensagem: <b><i>"Like he touched me and I touched him lol more him touching me tho"</i></b></p>
				  <ul class="collection">
				    <li class="collection-item">Classificação: <b>Possível abordagem sexual identificada</b></li>
				    <li class="collection-item">Acurácia: <b>99.874%</b></li>
				    <li>
				    </li>
				  </ul>
					<div class="row">
					    <form class="col s12">
				          <div class="row">
				          <p>O resultado está correto?</p>
					        <div class="input-field col s6">
								<p>
							      <input name="group1" type="radio" id="test1" />
							      <label for="test1">Sim</label>
							    </p>
							    <p>
							      <input name="group1" type="radio" id="test2" />
							      <label for="test2">Não</label>
							    </p>
							    <p>
					        </div>
					      </div>
					    </form>
					  </div>
		        </div>
		        <div class="card-action">
		          <a href="index.jsp">Concluído</a>
		        </div>
		      </div>
		    </div>
		  </div>
	  </div>
	  
   </body>
 </html>
