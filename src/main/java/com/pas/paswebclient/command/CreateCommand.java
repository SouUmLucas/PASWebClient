package com.pas.paswebclient.command;

import com.pas.paswebclient.domain.Entity;

public class CreateCommand extends AbstractCommand {
	
    @Override
    public Entity executar(Entity entity) {
        return fachada.create(entity);
    }
	
}
