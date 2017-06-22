<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>MENSAGEMS</title>
</head>
<body>
	<form action="PASWebClient" method="post">
	
		<label for="txtNome">Destinatario:</label>
		<input type="text" id="txtDestinatario" name="destinatario"/><br>
		
		<label for="txtCpf">Remetente:</label>
		<input type="text" id="txtRemetente" name="remetente"/><br>
		
		<label for="txtCredito">Mensagem:</label>
		<input type="text" id="txtMensagem" name="mensagem"/><br>
		
		<input type="submit" id="operacao" name="operacao" value="salvar">
	</form>
</body>
</html>