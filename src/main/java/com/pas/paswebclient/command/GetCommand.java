package com.pas.paswebclient.command;

import com.pas.paswebclient.domain.Entity;

public class GetCommand extends AbstractCommand {

    @Override
    public Entity executar(Entity entity) {
        return fachada.get(entity);
    }
	
}
