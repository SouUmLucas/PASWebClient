/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.domain;

import java.util.ArrayList;

/**
 *
 * @author lucas
 */
public class MessagesClassifications extends Entity {
    private ArrayList<MessageClassification> messagesClassification = new ArrayList<>();

    public ArrayList<MessageClassification> getMessagesClassification() {
        return messagesClassification;
    }

    public void setMessagesClassification(ArrayList<MessageClassification> messagesClassification) {
        this.messagesClassification = messagesClassification;
    }
    
}
