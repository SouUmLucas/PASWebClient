/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.web.pageshandler;

import com.pas.paswebclient.domain.Entity;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucas
 */
public class MessageResult implements IPage {

    @Override
    public void redirect(HttpServletRequest request, HttpServletResponse response, Entity entity) {
        if (null == request.getParameter("action")) {
            request.setAttribute("messages", entity);
            RequestDispatcher rd = request.getRequestDispatcher("messages.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException | IOException ex) {
                Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else switch(request.getParameter("action") ) {
            case "create":
                request.setAttribute("message", entity);
                RequestDispatcher rd = request.getRequestDispatcher("message.jsp");
                try {
                    rd.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            case "get":
                request.setAttribute("message", entity);
                RequestDispatcher rds = request.getRequestDispatcher("message.jsp");
                try {
                    rds.forward(request, response);
                } catch (ServletException | IOException ex) {
                    Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            case "delete":
                try {
                    response.sendRedirect("http://localhost:8080/PASWebClient/Messages");
                } catch (Exception ex) {
                     Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
            default:
                try {
                    response.sendRedirect("http://localhost:8080/PASWebClient/Messages");
                } catch (Exception ex) {
                     Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
                }
                break;
        } 
    }
    
}
