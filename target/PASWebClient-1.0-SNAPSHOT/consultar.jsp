<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="web.*, dominio.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	Mensagem msg = (Mensagem) request.getAttribute("msg");
	out.print("ID: ");
	out.print(msg.getId() + "<br>");
	
	out.print("DESTINATARIO: ");
	out.print(msg.getDestinatario()+ "<br>");
	
	out.print("REMETENTE: ");
	out.print(msg.getRemetente()+ "<br>");
	
	out.print("MENSAGEM: ");
	out.print(msg.getMensagem()+ "<br>");
	%>
	<form action="http://localhost:8080/PASWebClient/principal.jsp">
		<input type="submit" id="operacao" name="operacao" value="principal">
	</form>
</body>
</html>