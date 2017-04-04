package command;

import java.sql.SQLException;

import dominio.EntidadeDominio;

public class AlterarCommand extends AbstractCommand {

	public String executar(EntidadeDominio entidade) throws SQLException {
		return fachada.update(entidade);
	}

}
