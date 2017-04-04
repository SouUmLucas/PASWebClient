<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
  <head>
  	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.teal-green.min.css" />
	<script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  </head>

  <body>
	<style>
	.demo-layout-transparent {
	  background: ;
	}
	.demo-layout-transparent .mdl-layout__header,
	.demo-layout-transparent .mdl-layout__drawer-button {
	  color: black;
	}
	</style>
	
	<div class="demo-layout-transparent mdl-layout mdl-js-layout">
	  <header class="mdl-layout__header mdl-layout__header--transparent">
	    <div class="mdl-layout__header-row">
	      <!-- Title -->
	      <span class="mdl-layout-title">PAS Web Client</span>
	      <!-- Add spacer, to align navigation to the right -->
	      <div class="mdl-layout-spacer"></div>
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
	  </main>
	</div>
  </body>
</html>
