<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	  <div class="container">
	      <table>
	        <thead>
	          <tr>
	              <th>Mensagem</th>
	              <th>Classificação</th>
	          </tr>
	        </thead>
	
	        <tbody>
	          <tr>
	            <td>I'm alright damn baby girl your young :p</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box" checked="checked" />
				      <label for="filled-in-box"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>
	            Age is just numbers tho but I'm 25 m Chicago but I look way younger than my age... I get carded if I'm buying a blunt or cig lol
	            </td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box1" checked="checked" />
				      <label for="filled-in-box1"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>hahaha well thts cooool :P wht u up 2?</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box2" checked="checked" />
				      <label for="filled-in-box2"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>Nothing really just in my room bored... What are you upto</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box3" checked="checked" />
				      <label for="filled-in-box3"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>Yeah I was gonna say how many guys you giving out your sn</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box4" checked="checked" />
				      <label for="filled-in-box4"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>lol ur the only 1</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box5" checked="checked" />
				      <label for="filled-in-box5"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>Nothing just here in my room</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box6" checked="checked" />
				      <label for="filled-in-box6"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>I hope I'm the only one lol</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box7" checked="checked" />
				      <label for="filled-in-box7"></label>
	            </td>
	          </tr>
	          <tr>
	            <td>And I'm blessed :p</td>
	            <td>
				      <input type="checkbox" class="filled-in" id="filled-in-box8" checked="checked" />
				      <label for="filled-in-box8"></label>
	            </td>
	          </tr>
	        </tbody>
	      </table>
		  <div class="submit-button">
			<a href="success.jsp" class="waves-effect waves-light btn-large"><i class="material-icons right">assignment</i>Treinar</a>
		  </div>
	  </div>
   </body>
 </html>
