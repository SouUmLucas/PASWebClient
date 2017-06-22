<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="web.*, dominio.*,java.util.*" %>
 <!DOCTYPE html>
 <html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <title>Trainamento</title>
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
	  <% ArrayList<EntidadeDominio> trainingMessages = (ArrayList<EntidadeDominio>) request.getAttribute("trainingMessages");  %>
	  <div class="container">
	  	<p style="text-align:center; color:teal">Selecione abaixo as mensagens que contenham conteúdo sexual</p>
	  	<form action="TrainingMessages" method="post">
	  	  <% 
	  	  	for(EntidadeDominio training : trainingMessages) {
	  	  		TrainingMessage t = (TrainingMessage) training;
	  	  		if (t.getIsPedophile())
	  	  			out.print("<p><input type='checkbox' class='filled-in' id='" + t.getId()+t.getMessage() + "' checked name='is_pedophile' value='"+ t.getId() + "'/><label for='" + t.getId()+t.getMessage() +"'>"+t.getMessage()+"</label></p>");
	  	  		else
	  	  			out.print("<p><input type='checkbox' class='filled-in' id='" + t.getId()+t.getMessage() + "' name='is_pedophile' value='"+ t.getId() + "'/><label for='" + t.getId()+t.getMessage() +"'>"+t.getMessage()+"</label></p>");
	  	  			
	  	  	}
	  	  %>
		  <div class="submit-button">
			<button name="operacao" value="atualizar" class="waves-effect waves-light btn-large"><i class="material-icons right">file_upload</i>Atualizar</button>
		  </div>
	  	</form>
	  </div>
   </body>
 </html>
