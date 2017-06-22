/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.viewHelper;

import com.pas.paswebclient.domain.ChatFile;
import com.pas.paswebclient.domain.Entity;
import java.io.InputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

/**
 *
 * @author lucas
 */
public class ChatFileVH extends AbstractVH {

    public ChatFileVH(String nmEntidade) {
        super(nmEntidade);
    }

    @Override
    public Entity getEntidade(HttpServletRequest request) {
        ChatFile chatFile = new ChatFile();
        try {
            final Part filePart = request.getPart("file");
            final String fileName = getFileName(filePart);
            InputStream filecontent = filePart.getInputStream();
            String content = IOUtils.toString(filecontent, "UTF-8");
            
            chatFile.setFilename(fileName);
            chatFile.setFilecontent(content);
            chatFile.setRecipient(request.getParameter("destinatario"));
            chatFile.setSender(request.getParameter("remetente"));
            
        } catch (Exception ex) {
            System.out.println(ex.fillInStackTrace());
        }
        
        return chatFile;
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }
    
}
