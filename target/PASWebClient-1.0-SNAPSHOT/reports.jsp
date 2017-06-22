<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.pas.paswebclient.domain.analysis.messages.Message"%>
<%@page import="com.pas.paswebclient.domain.analysis.messages.MessageSender"%>
<%@page import="com.pas.paswebclient.domain.analysis.messages.MessageAnalysis"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
 <html>
    <head>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>Relatórios</title>
      <%
          MessageAnalysis messageAnalysis = (MessageAnalysis) request.getAttribute("messageanalysis");
      %>
    </head>

    <body>
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" src="js/Chart.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script>
            $(document).ready(function(){
                $(".button-collapse").sideNav();
                $('.parallax').parallax();
                $(".dropdown-button").dropdown({
                    hover: false
                });

                google.charts.load('current', {'packages':['line']});
                google.charts.setOnLoadCallback(drawChart);

                function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('date', 'Day');
      data.addColumn('number', 'Paulo');
      data.addColumn('number', 'Luana');

      data.addRows([
        [new Date(2000, 8, 18), 12.8, 13.8],
        [new Date(2000, 8, 19), 13.9, 14.5],
        [new Date(2000, 8, 20), 14.4, 12],
        [new Date(2000, 8, 21), 10.7, 18.8],
        [new Date(2000, 8, 22), 20.9, 17.6],
        [new Date(2000, 8, 23), 0.8, 13.6],
        [new Date(2000, 8, 24), 1.6, 12.3],
        [new Date(2000, 8, 25), 2.3, 20.2],
        [new Date(2000, 8, 26), 5.9, 12.9],
        [new Date(2000, 8, 17), 12.8, 10.9]
      ]);

      var options = {
        chart: {
          title: 'Box Office Earnings in First Two Weeks of Opening',
          subtitle: 'in millions of dollars (USD)'
        },
        width: 900,
        height: 500
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }
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
            <p style="text-align:center; color:teal">Resultado da Classificação.</p>
            <div class="row" id="linechart_material"></div>
            <div class="row" id="area-example"></div>
        </div>
    </body>
</html>
