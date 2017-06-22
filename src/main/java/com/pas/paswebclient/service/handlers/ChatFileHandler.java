/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.service.handlers;

import com.google.gson.Gson;
import com.pas.paswebclient.domain.Chat;
import com.pas.paswebclient.domain.ChatFile;
import com.pas.paswebclient.domain.Entity;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import javax.ws.rs.core.Response;

/**
 *
 * @author lucas
 */
public class ChatFileHandler implements IServiceHandler {
    @Override
    public Entity get(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Entity create(Entity entity) {
        Gson gson = new Gson();
        ChatFile chatfile = (ChatFile) entity;
        String chatFileJson = gson.toJson(chatfile);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/chat");
        ClientResponse response = webResource.type("application/json").post(ClientResponse.class, chatFileJson);
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        String chatJson = response.getEntity(String.class);
        
        Chat chat = gson.fromJson(chatJson, Chat.class);
        
        return chat;
    }

    @Override
    public Entity update(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ClientResponse delete(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
