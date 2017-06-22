/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.web.pageshandler;

import com.pas.paswebclient.domain.Entity;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lucas
 */
public interface IPage {
    public void redirect(HttpServletRequest request, HttpServletResponse response, Entity entity);
}
