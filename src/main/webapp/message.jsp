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
          Message message = (Message) request.getAttribute("message");
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
                <div class="row">
                    <div class="col s1">ID da mensagem</div>
                    <div class="col s6">Conteúdo da mensagem</div>
                </div>
                <form action="Message" method="POST">
                    <%
                        out.print("<div class='row'>\n");
                            out.print("<div class='col s1'>\n");
                                out.print("<input id='classificationId' type='text' name='messageId' value='" + message.getId() + "'/>");
                            out.print("</div>\n");

                            out.print("<div class='col s8'>\n");
                                out.print("<input id='classificationId' type='text' name='messagecontent' value='" + message.getMessageContent() + "'/>");
                            out.print("</div>");
                        out.print("</div>\n");
                    %>
                    <input type="submit" id="operacao" name="action" value="delete">
                    <input type="submit" id="operacao" name="action" value="update">
                </form>
            </div>
        </div>
   </body>
</html>
