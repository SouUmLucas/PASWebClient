package com.pas.paswebclient.domain;

/**
 *
 * @author lucas
 */
public class Sender extends Entity {
    private String name;
    private Chat chat;
    
    public Sender() {}
    
    public Sender(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

	public Chat getChat() {
		return chat;
	}

	public void setChat(Chat chat) {
		this.chat = chat;
	}
    
}
