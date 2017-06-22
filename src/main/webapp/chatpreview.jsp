<%@page import="com.pas.paswebclient.domain.Message"%>
<%@page import="com.pas.paswebclient.domain.Chat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html>
    <head>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <%
          Chat chat = (Chat) request.getAttribute("chat");
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
                    padding-top: 1%
            }
        </style>

        <nav>
          <div class="nav-wrapper teal">
            <ul id="nav-mobile" class="left hide-on-med-and-down">
              <li><a href="#" data-activates="slide-out" class="button-collapse show-on-large"><i class="material-icons">menu</i></a></li>
              <li><a href="#" class="brand-logo">PAS Web Client</a></li>
            </ul>
          </div>
        </nav>
        <div id="messages" class="col s12">
            <div class="container">
                <% out.print("<p><h5>Dados do chat '" + chat.getAlias() + "'</h5></p>\n"); %>
                <% out.print("<p><h5>ID: " + chat.getId() + "</h5></p>\n"); %>
                <form action="MessageClassification" method="POST">
                <%
                        out.print("<div class='row'>\n");
                            out.print("<div class='col s2'>\n");
                                out.print("<p><b>ID da mensagem</b></p>\n");
                            out.print("</div>\n");
                            out.print("<div class='col s2'>\n");
                                out.print("<p><b>Hora da mensagem</b></p>\n");
                            out.print("</div>\n");
                            out.print("<div class='col s2'>\n");
                                out.print("<p><b>Remetente</b></p>\n");
                            out.print("</div>\n");
                            out.print("<div class='col s6'>\n");
                                out.print("<p><b>Conteudo da mensagem</b></p>\n");
                            out.print("</div>\n");
                        out.print("</div>\n");
                        for(Message message : chat.getMessages()) {
                            out.print("<div class='row'>\n");
                                out.print("<div class='col s2'>\n");
                                    out.print("<input id='conversaId' type='text' name='messageId' value='" + message.getId() + "'/>\n");
                                out.print("</div>\n");
                                out.print("<div class='col s2'>\n");
                                    out.print("<input id='messageTimestamp' type='text' name='messageTimestamp' value='" + message.getTimestamp() + "'/>\n");
                                out.print("</div>\n");
                                out.print("<div class='col s2'>\n");
                                    out.print("<input id='sender' type='text' value='" + message.getSender().getName() + "'/>\n");
                                out.print("</div>\n");
                                out.print("<div class='col s8'>\n");
                                    out.print("<input id='content' type='text'value='" + message.getMessageContent() + "'/>\n");
                                out.print("</div>\n");
                            out.print("</div>\n");
                        }
                %>
                <input type="submit" value="create" name="action" />
                </form>
            </div>
        </div>
    </body>
</html>
