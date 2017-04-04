package command;

import java.sql.SQLException;

import dominio.*;

public class SalvarCommand extends AbstractCommand {
	
	public String executar(EntidadeDominio entidade) throws SQLException {
		return fachada.insert(entidade);
	}
	
}
