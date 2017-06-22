/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.service.handlers;

import com.pas.paswebclient.domain.Entity;
import com.sun.jersey.api.client.ClientResponse;

/**
 *
 * @author lucas
 */
public interface IServiceHandler {
    public Entity get(Entity entity);
    public Entity create(Entity entity);
    public Entity update(Entity entity);
    public ClientResponse delete(Entity id);
}
