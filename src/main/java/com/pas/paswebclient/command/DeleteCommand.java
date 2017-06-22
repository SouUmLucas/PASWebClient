package com.pas.paswebclient.command;

import com.pas.paswebclient.domain.Entity;

public class DeleteCommand extends AbstractCommand {

    @Override
    public Entity executar(Entity entity) {
        fachada.delete(entity);
        
        Entity ent = new Entity();
        ent.setId(entity.getId());
        return ent;
    }

}
