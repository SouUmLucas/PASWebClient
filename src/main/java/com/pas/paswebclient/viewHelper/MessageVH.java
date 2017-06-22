/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.viewHelper;

import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.Message;
import com.pas.paswebclient.domain.Messages;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author lucas
 */
public class MessageVH extends AbstractVH {

    public MessageVH(String nmEntidade) {
        super(nmEntidade);
    }

    @Override
    public Entity getEntidade(HttpServletRequest request) {
        Message message = new Message();
        if(null == request.getParameter("action")) {
            return new Messages();
        } else switch (request.getParameter("action")) {
            case "create":
                message.setMessageContent(request.getParameter("messagecontent"));
                break;
            case "get":
                message.setId(Integer.parseInt(request.getParameter("messageId")));
                break;
            default:
                message.setId(Integer.parseInt(request.getParameter("messageId")));
                message.setMessageContent(request.getParameter("messagecontent"));
                break;
        }
        return message;
    }
    
}
