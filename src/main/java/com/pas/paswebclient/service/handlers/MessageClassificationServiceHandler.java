/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.service.handlers;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.MessageClassification;
import com.pas.paswebclient.domain.MessagesClassifications;
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
public class MessageClassificationServiceHandler implements IServiceHandler {

    @Override
    public Entity get(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Entity create(Entity entity) {
        Type listType = new TypeToken<ArrayList<MessageClassification>>(){}.getType();
        Gson gson = new Gson();
        MessageClassification messageClassification = (MessageClassification) entity;
        String messageClassificationJson = gson.toJson(messageClassification);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/messageclassification");
        ClientResponse response = webResource.type("application/json").post(ClientResponse.class, messageClassificationJson);
        
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        
        String messageClassificationResultJson = response.getEntity(String.class);
        MessagesClassifications messagesClassifications = new MessagesClassifications();
        messagesClassifications.setMessagesClassification((ArrayList<MessageClassification>) gson.fromJson(messageClassificationResultJson, listType));
        
        return messagesClassifications;
    }

    @Override
    public Entity update(Entity entity) {
        Gson gson = new Gson();
        MessagesClassifications messagesClassifications = (MessagesClassifications) entity;
        
        String messagesClassificationsJson = gson.toJson(messagesClassifications);
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/messageclassification");
        ClientResponse response = webResource.type("application/json").put(ClientResponse.class, messagesClassificationsJson);
        
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        
        String messagesClassificationResultJson = response.getEntity(String.class);
        MessagesClassifications newMessages = gson.fromJson(messagesClassificationResultJson, MessagesClassifications.class);
        
        return newMessages;
    }

    @Override
    public ClientResponse delete(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
