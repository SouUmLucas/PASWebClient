/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.domain.analysis.messages;

import com.pas.paswebclient.domain.Entity;
import java.util.ArrayList;


/**
 *
 * @author lucas
 */
public class MessageAnalysis extends Entity {
    private ArrayList<MessageSender> messageSender;
    private ArrayList<Message> messages;

    public ArrayList<MessageSender> getMessageSenders() {
        return messageSender;
    }

    public void setMessageSenders(ArrayList<MessageSender> messageSender) {
        this.messageSender = messageSender;
    }

    public ArrayList<Message> getMessages() {
        return messages;
    }

    public void setMessages(ArrayList<Message> messages) {
        this.messages = messages;
    }
    
}
