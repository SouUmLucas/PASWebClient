package command;

import java.sql.SQLException;

import dominio.*;

public interface ICommand<T> {
	public T executar(EntidadeDominio entidade) throws SQLException;
}
