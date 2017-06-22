/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.viewHelper;

import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.Message;
import com.pas.paswebclient.domain.MessageClassification;
import com.pas.paswebclient.domain.MessagesClassifications;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author lucas
 */
public class MessageClassificationVH extends AbstractVH {

    public MessageClassificationVH(String nmEntidade) {
        super(nmEntidade);
    }

    @Override
    public Entity getEntidade(HttpServletRequest request) {
        if(request.getParameter("action").equals("create")) {
            MessageClassification messageClassification = new MessageClassification();
            String[] messageIds = request.getParameterValues("messageId");
            ArrayList<Message> messages = new ArrayList<>();

            for(String id : messageIds) {
                Message message = new Message();
                message.setId(Integer.parseInt(id));
                messages.add(message);
            }


            messageClassification.setMessages(messages);
            return messageClassification;
        } else {
            MessagesClassifications messagesClassifications = new MessagesClassifications();
            messagesClassifications.setMessagesClassification(getClassifications(request));
            return messagesClassifications;
        }
    }
    
    private ArrayList<MessageClassification> getClassifications(HttpServletRequest request) {
        ArrayList<MessageClassification> messagesClassifications = new ArrayList<>();
        String[] classificationIds = request.getParameterValues("classificationId");
        
        for(String strId : classificationIds) {
            int id = Integer.parseInt(strId);
            MessageClassification messageClassification = new MessageClassification();
            messageClassification.setId(id);
            messageClassification.setAccuracy(Double.parseDouble(request.getParameter("accuracy[" + id + "]")));
            messageClassification.setClassification(request.getParameter("classification[" + id + "]"));
            messagesClassifications.add(messageClassification);
        }
        
        return messagesClassifications;
    }
    
}
