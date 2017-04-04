package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dominio.*;

public class DAOMensagem implements IDAO {
	Connection conn;
	
	private final String URL = "jdbc:postgresql://localhost:65432/les";
	private final String USER = "admin";
	private final String PASSWORD = "admin";
	private final String DRIVER = "org.postgresql.Driver";
	
	public DAOMensagem() throws ClassNotFoundException {
		Class.forName(DRIVER);
	}
	
	public Mensagem select(EntidadeDominio entDominio) throws SQLException {
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		Mensagem msg = (Mensagem) entDominio;
		
		String sql = "SELECT id, remetente, destinatario, mensagem FROM Mensagem WHERE id = ?";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, msg.getId());
		ResultSet rs = ps.executeQuery();
		
		Mensagem mensagem = new Mensagem();
		while(rs.next()) {
			mensagem.setId(rs.getInt("ID"));
			mensagem.setRemetente(rs.getString("REMETENTE"));
			mensagem.setDestinatario(rs.getString("DESTINATARIO"));
			mensagem.setMensagem(rs.getString("MENSAGEM"));
		}
		
		conn.close();
		ps.close();
		rs.close();
		
		return mensagem;
	}

	public void insert(EntidadeDominio entDominio) throws SQLException {
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		Mensagem msg = (Mensagem) entDominio;
		String sql = "INSERT INTO Mensagem (remetente, destinatario, mensagem) VALUES (?, ?, ?)";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, msg.getRemetente());
		ps.setString(2, msg.getDestinatario());
		ps.setString(3, msg.getMensagem());
		
		ps.executeUpdate();
		conn.close();
		ps.close();
		
	}

	public void update(EntidadeDominio entDominio) throws SQLException {
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		Mensagem msg = (Mensagem) entDominio;
		String sql = "UPDATE Mensagem  SET remetente = ?, destinatario = ?, mensagem = ? WHERE id = ?";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, msg.getRemetente());
		ps.setString(2, msg.getDestinatario());
		ps.setString(3, msg.getMensagem());
		ps.setInt(4, entDominio.getId());
		
		ps.executeUpdate();
		conn.close();
		ps.close();
		
	}

	public void delete(EntidadeDominio entDominio) throws SQLException {
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		String sql = "DELETE FROM Mensagem WHERE id = ?";
		
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setInt(1, entDominio.getId());
		
		ps.executeUpdate();
		conn.close();
		ps.close();
	}
}


