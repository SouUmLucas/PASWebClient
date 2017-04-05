<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <title>Análises</title>
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
	  
	  <nav class="nav-extended teal">
	    <div class="nav-wrapper">
	      
	      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
	      <ul id="nav-mobile" class="left hide-on-med-and-down">
	      	<li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
	        <li><a href="#" class="brand-logo">Análises</a></li>
	      </ul>
	      <ul class="side-nav" id="mobile-demo">
		    <li><a href="index.jsp" class="waves-effect"><i class="material-icons">view_module</i>Início</a></li>
		    <li><a href="analysis.jsp" class="waves-effect"><i class="material-icons">assessment</i>Análises</a></li>
		    <li><a href="data.jsp" class="waves-effect"><i class="material-icons">receipt</i>Dados</a></li>
		    <li><a href="settings.jsp" class="waves-effect"><i class="material-icons">settings</i>Ajustes</a></li>
	      </ul>
	    </div>
	    <div class="nav-content">
	      <ul class="tabs tabs-transparent">
	        <li class="tab"><a href="#messages">Mensagens</a></li>
	        <li class="tab"><a href="#training">Arquivo de treinamento</a></li>
	        <li class="tab"><a href="#ind_messages">Mensagens individuais</a></li>
	      </ul>
	    </div>
	  </nav>
	  
	  <div id="messages" class="col s12">
	  	<div class="container">
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
				<a href="chatpreview.jsp" class="waves-effect waves-light btn-large"><i class="material-icons right">file_upload</i>Enviar</a>
		    </div>
		  </form>
	  	</div>
	  </div>
	  
	  <div id="training" class="col s12">
	  	<div class="container">
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
				<a href="training.jsp" class="waves-effect waves-light btn-large"><i class="material-icons right">file_upload</i>Enviar</a>
		    </div>
		  </form>
	  	</div>
	  </div>
	  
	  <div id="ind_messages" class="col s12">
	  	<div class="container">
		  <form action="#">
			<div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="input-field col s6">
			          <input id="remetente" type="text" name="remetente" class="validate">
			          <label for="remetente">Remetente</label>
			        </div>
			        <div class="input-field col s6">
			          <input id="destinatario" type="text" name="destinatario" class="validate">
			          <label for="destinatario">Destinatário</label>
			        </div>
			      </div>
			      <div class="row">
					<div class="input-field col s12">
			          <textarea id="mensagem" name="mensagem" class="materialize-textarea"></textarea>
			          <label for="mensagem">Mensagem</label>
			        </div>
			      </div>
			      <div class="submit-button">
					<a class="waves-effect waves-light btn-large"><i class="material-icons right">file_upload</i>Enviar</a>
			      </div>
			    </form>
			  </div>
		  </form>
	  	</div>
	  </div>
   </body>
 </html>
