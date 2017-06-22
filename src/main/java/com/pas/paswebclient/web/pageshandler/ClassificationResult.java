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
public class ClassificationResult implements IPage {

    @Override
    public void redirect(HttpServletRequest request, HttpServletResponse response, Entity entity) {
        request.setAttribute("classification", entity);
        RequestDispatcher rd = request.getRequestDispatcher("classification.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(ChatResult.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
