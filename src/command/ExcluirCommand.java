package command;

import java.sql.SQLException;

import dominio.EntidadeDominio;

public class ExcluirCommand extends AbstractCommand {

	public String executar(EntidadeDominio entidade) throws SQLException {
		return fachada.delete(entidade);
	}

}
