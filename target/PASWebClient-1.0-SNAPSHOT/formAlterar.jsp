<!DOCTYPE html>
<%@ page import="web.*, dominio.*,java.util.*" %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>MENSAGEMS</title>
</head>
<body>
	<form action="PASWebClient" method="post">
		<% Mensagem msg = (Mensagem) request.getAttribute("msg"); %>
	    <label for="txtNome">ID:</label>
		<% out.print("<input type='text' id='txtId' name='id' value=" + msg.getId() + "><br>"); %>
	
		<label for="txtNome">Destinatario:</label>
		<% out.print("<input type='text' id='txtDestinatario' name='destinatario' value=" + msg.getDestinatario() + "><br>"); %>
		
		<label for="txtNome">Remetente:</label>
		<% out.print("<input type='text' id='txtRemetente' name='remetente' value=" + msg.getRemetente() + "><br>"); %>
		
		<label for="txtCredito">Mensagem:</label>
		<% out.print("<input type='text' id='txtMensagem' name='mensagem' value='" + msg.getMensagem() + "'><br>"); %>
		
		<input type="submit" id="operacao" name="operacao" value="alterar">
	</form>
</body>
</html>