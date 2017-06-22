package com.pas.paswebclient.web;

import com.pas.paswebclient.domain.Entity;
import com.sun.jersey.api.client.ClientResponse;

public interface IFachada {
        public Entity get(Entity entity);
	public Entity create(Entity entity);
        public Entity update(Entity entity);
        public ClientResponse delete(Entity entity);
}
