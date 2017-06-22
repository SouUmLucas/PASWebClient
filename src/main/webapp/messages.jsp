<%@page import="com.pas.paswebclient.domain.Messages"%>
<%@page import="com.pas.paswebclient.domain.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <%
          Messages messages = (Messages) request.getAttribute("messages");
      %>
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

        <div id="messages" class="col s12">
            <div class="container">
                
                <form action="Messages" method="post">
                    <div class="row">
                        <input id='classificationId' class="col s2" type='text' name='messageId' placeholder="ID da mensagem"/>
                        <input type="submit" id="operacao" name="action" value="get">
                        <input type="submit" id="operacao" name="action" value="delete">
                    </div>
                    <div class="row">
                        <div class="col s2">ID da mensagem</div>
                        <div class="col s6">Conteúdo da mensagem</div>
                    </div>
                    <%
                        for(Message message : messages.getMessages()) {
                            out.print("<div class='row'>\n");
                                out.print("<div class='col s2'>\n");
                                    out.print("<p>" + message.getId() + "</p>");
                                out.print("</div>\n");

                                out.print("<div class='col s8'>\n");
                                    out.print("<p>" + message.getMessageContent() + "</p>");
                                out.print("</div>");
                            out.print("</div>\n");
                        }
                    %>
                </form>
            </div>
        </div>
   </body>
</html>
