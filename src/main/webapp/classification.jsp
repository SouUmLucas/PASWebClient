<%@page import="com.pas.paswebclient.domain.Message"%>
<%@page import="com.pas.paswebclient.domain.MessageClassification"%>
<%@page import="com.pas.paswebclient.domain.MessagesClassifications"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
     <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
     <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <%
          MessagesClassifications messagesClassifications = (MessagesClassifications) request.getAttribute("classification");
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
                <form action="MessageClassification" method="POST">
                <%
                    out.print("<div class='row'>\n");
                        out.print("<div class='col s2'>\n");
                            out.print("<p><b>ID da classificação</b></p>\n");
                        out.print("</div>\n");
                        out.print("<div class='col s6'>\n");
                            out.print("<p><b>Conteúdo da mensagem</b></p>\n");
                        out.print("</div>");
                        out.print("<div class='col s2'>\n");
                            out.print("<p><b>Classificação</b></p>\n");
                        out.print("</div>\n");
                        out.print("<div class='col s2'>\n");
                            out.print("<p><b>Acurácia</b></p>\n");
                        out.print("</div>\n");
                    out.print("</div>\n");
                    int i = 0;
                    for(MessageClassification classification : messagesClassifications.getMessagesClassification()) {
                        out.print("<div class='row'>\n");
                            out.print("<div class='col s2'>\n");
                                out.print("<input id='classificationId' type='text' name='classificationId' value='" + classification.getId() + "'/>");
                            out.print("</div>\n");
                            out.print("<div class='col s6'>\n");
                                out.print("<input type='text' value='" + classification.getMessage().getMessageContent() + "'/>");
                            out.print("</div>");
                            out.print("<div class='col s2'>\n");
                                out.print("<input id='classification' type='text' name='classification[" + classification.getId() + "]' value='" + classification.getClassification() + "'/>");
                            out.print("</div>\n");
                            out.print("<div class='col s2'>\n");
                                out.print("<input id='accuracy' type='text' name='accuracy[" + classification.getId() + "]' value='" + classification.getAccuracy() + "'/>");
                            out.print("</div>\n");
                        out.print("</div>\n");
                        i++;
                    }
                %>
                <input type="submit" value="update" name="action" />
                </form>
            </div>
        </div>
   </body>
</html>
