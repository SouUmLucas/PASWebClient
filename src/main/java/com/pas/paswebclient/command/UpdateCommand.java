package com.pas.paswebclient.command;

import java.sql.SQLException;

import com.pas.paswebclient.domain.Entity;

public class UpdateCommand extends AbstractCommand {

	public Entity executar(Entity entidade) {
		return fachada.update(entidade);
	}

}
