package com.pas.paswebclient.web;

import com.pas.paswebclient.domain.ChatFile;
import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.Message;
import com.pas.paswebclient.domain.MessageClassification;
import com.pas.paswebclient.domain.Messages;
import com.pas.paswebclient.domain.MessagesClassifications;
import com.pas.paswebclient.domain.analysis.messages.MessageAnalysis;
import com.pas.paswebclient.service.handlers.ChatFileHandler;
import com.pas.paswebclient.service.handlers.IServiceHandler;
import com.pas.paswebclient.service.handlers.MessageAnalysisServiceHandler;
import com.pas.paswebclient.service.handlers.MessageClassificationServiceHandler;
import com.pas.paswebclient.service.handlers.MessageServiceHandler;
import com.sun.jersey.api.client.ClientResponse;
import java.util.HashMap;
import java.util.Map;

public class Fachada implements IFachada {
	Map<String, IServiceHandler> servicesMap;
        
    public Fachada(){
        servicesMap = new HashMap<>();
        servicesMap.put(ChatFile.class.getName(), new ChatFileHandler());
        servicesMap.put(MessageClassification.class.getName(), new MessageClassificationServiceHandler());
        servicesMap.put(MessagesClassifications.class.getName(), new MessageClassificationServiceHandler());
        servicesMap.put(MessageAnalysis.class.getName(), new MessageAnalysisServiceHandler());
        servicesMap.put(Messages.class.getName(), new MessageServiceHandler());
        servicesMap.put(Message.class.getName(), new MessageServiceHandler());
    }

    @Override
    public Entity get(Entity entity) {
        IServiceHandler serviceHandler = servicesMap.get(entity.getClass().getName());
        return serviceHandler.get(entity);
    }

    @Override
    public Entity create(Entity entity) {
        IServiceHandler serviceHandler = servicesMap.get(entity.getClass().getName());
        return serviceHandler.create(entity);
    }

    @Override
    public Entity update(Entity entity) {
        IServiceHandler serviceHandler = servicesMap.get(entity.getClass().getName());
        return serviceHandler.update(entity);
    }

    @Override
    public ClientResponse delete(Entity entity) {
        IServiceHandler serviceHandler = servicesMap.get(entity.getClass().getName());
        return serviceHandler.delete(entity);
    }
}
