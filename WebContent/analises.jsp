<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
  <head>
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.teal-green.min.css" />
	<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
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
		.demo-layout-transparent {
		  color: black ;
		}
		.demo-layout-transparent .mdl-layout__header,
		.demo-layout-transparent .mdl-layout__drawer-button {
		  color: black;
		}
		
		.submit-chat {
			text-align: center;
			padding-top: 5%
		}
	</style>
	<!-- Simple header with fixed tabs. -->
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header
	            mdl-layout--fixed-tabs">
	  <header class="mdl-layout__header">
	    <div class="mdl-layout__header-row">
	      <!-- Title -->
	      <span class="mdl-layout-title">PAS Web Client</span>
	    </div>
	    <!-- Tabs -->
	    <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
	      <a href="#fixed-tab-1" class="mdl-layout__tab is-active">Conversas</a>
	      <a href="#fixed-tab-2" class="mdl-layout__tab">Arquivos de treinamento</a>
	      <a href="#fixed-tab-3" class="mdl-layout__tab">Mensagens individuais</a>
	    </div>
	  </header>
	  <div class="mdl-layout__drawer">
	    <span class="mdl-layout-title">Menu</span>
	    <nav class="mdl-navigation">
	      <a class="mdl-navigation__link" href="principal.jsp">Início</a>
	      <a class="mdl-navigation__link" href="analises.jsp">Análises</a>
	      <a class="mdl-navigation__link" href="ajustes.jsp">Ajustes</a>
	    </nav>
	  </div>
	  <main class="mdl-layout__content">
	    <section class="mdl-layout__tab-panel is-active" id="fixed-tab-1">
	      <div class="page-content">
	      		<div class="container submit-chat">
		      		<form action="#">
					    <div class="file-field input-field">
					      <div class="btn">
					        <span>Arquivo</span>
					        <input type="file">
					      </div>
					      <div class="file-path-wrapper">
					        <input class="file-path validate" type="text">
					      </div>
					    </div>
					    <div class="submit-button">
					    	<a class="waves-effect waves-light btn-large"><i class="material-icons right">file_upload</i>Enviar</a>
					    </div>
				  	</form>
				</div>
	      </div>
	    </section>
	    <section class="mdl-layout__tab-panel" id="fixed-tab-2">
	      <div class="page-content"><!-- Your content goes here --></div>
	    </section>
	    <section class="mdl-layout__tab-panel" id="fixed-tab-3">
	      <div class="page-content"><!-- Your content goes here --></div>
	    </section>
	  </main>
	</div>
  </body>
</html>
