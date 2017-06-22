/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.service.handlers;

import com.google.gson.Gson;
import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.analysis.messages.MessageAnalysis;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import javax.ws.rs.core.Response;

/**
 *
 * @author lucas
 */
public class MessageAnalysisServiceHandler implements IServiceHandler {

    @Override
    public Entity get(Entity entity) {
        Gson gson = new Gson();
        MessageAnalysis messageAnalysis = (MessageAnalysis) entity;
        
        Client client = Client.create();
        WebResource webResource = client.resource("http://localhost:80/PASService/api/analysis/messages");
        ClientResponse response = webResource.type("application/json").get(ClientResponse.class);
        
        if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : " + response.getStatus() + response);
        }
        String messageAnalysisJson = response.getEntity(String.class);
        messageAnalysis = gson.fromJson(messageAnalysisJson, MessageAnalysis.class);
        
        return messageAnalysis;
    }

    @Override
    public Entity create(Entity entity) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
