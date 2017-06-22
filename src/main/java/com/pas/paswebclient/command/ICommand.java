package com.pas.paswebclient.command;

import com.pas.paswebclient.domain.Entity;

public interface ICommand {
	public Entity executar(Entity entidade);
}
