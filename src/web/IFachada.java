package web;

import java.sql.SQLException;

import dominio.*;

public interface IFachada {
	public String insert(EntidadeDominio entidade) throws SQLException;
	public String update(EntidadeDominio entidade) throws SQLException;
	public String delete(EntidadeDominio entidade) throws SQLException;
	public EntidadeDominio select(EntidadeDominio entidade) throws SQLException;
}
