/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.domain.analysis.messages;

import com.pas.paswebclient.domain.Entity;

/**
 *
 * @author lucas
 */
public class MessageSender extends Entity {
    private String name;

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }    
}
