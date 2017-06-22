/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.service.handlers;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.Message;
import com.pas.paswebclient.domain.Messages;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import java.lang.reflect.Type;
import java.util.ArrayList;
import javax.ws.rs.core.Response;

/**
 *
 * @author lucas
 */
public class MessageServiceHandler implements IServiceHandler {

    @Override
    public Entity get(Entity entity) {
        Gson gson = new Gson();
        if(entity.getClass().getName().equals(Message.class.getName())) {
            Message message = (Message) entity;

            Client client = Client.create();
            WebResource webResource = client.resource("http://localhost/PASService/messages/" + message.getId());
            ClientResponse response = webResource.type("application/json").get(ClientResponse.class);

            if(response.getStatus() != 200) {
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
            }
            String messageJson = response.getEntity(String.class);
            message = gson.fromJson(messageJson, Message.class);

            return message;
        } else {
            Type listType = new TypeToken<ArrayList<Message>>(){}.getType();
            ArrayList<Message> _messages = new ArrayList<>();
            
            Client client = Client.create();
            WebResource webResource = client.resource("http://localhost/PASService/messages/allmessages");
            ClientResponse response = webResource.type("application/json").get(ClientResponse.class);
            
            if(response.getStatus() != 200) {
                throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
            }
            String messagesJson = response.getEntity(String.class);
            _messages = gson.fromJson(messagesJson, listType);
            Messages messages = new Messages();
            messages.setMessages(_messages);
            
            return messages;
        }
    }
    
    @Override
    public Entity create(Entity entity) {
        Gson gson = new Gson();
        Message message = (Message) entity;
        String messageJson = gson.toJson(message);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/messages");
        ClientResponse response = webResource.type("application/json").post(ClientResponse.class, messageJson);
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        messageJson = response.getEntity(String.class);
        
        message = gson.fromJson(messageJson, Message.class);
        
        return message;
    }

    @Override
    public Entity update(Entity entity) {
        Gson gson = new Gson();
        Message message = (Message) entity;
        String messageJson = gson.toJson(message);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/messages");
        ClientResponse response = webResource.type("application/json").put(ClientResponse.class, messageJson);
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        messageJson = response.getEntity(String.class);
        
        message = gson.fromJson(messageJson, Message.class);
        
        return message;
    }

    @Override
    public ClientResponse delete(Entity entity) {
        Gson gson = new Gson();
        Message message = (Message) entity;
        String messageJson = gson.toJson(message);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/messages");
        ClientResponse response = webResource.type("application/json").delete(ClientResponse.class, messageJson);
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        
        return response;
    }
    
}
