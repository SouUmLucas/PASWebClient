package dao;

import java.sql.SQLException;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import dominio.*;

public interface IDAO {
	public Mensagem select(EntidadeDominio entDominio) throws SQLException;
	public void insert(EntidadeDominio entDominio) throws SQLException;
	public void update(EntidadeDominio entDominio) throws SQLException;
	public void delete(EntidadeDominio entDominio) throws SQLException;
}
