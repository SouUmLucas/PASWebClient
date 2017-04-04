package command;

import java.sql.SQLException;

import dominio.EntidadeDominio;

public class ConsultarCommand<T> extends AbstractCommand {

	public T executar(EntidadeDominio entidade) throws SQLException {
		return (T) fachada.select(entidade);
	}
	
}
