/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.viewHelper;

import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.analysis.messages.MessageAnalysis;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author lucas
 */
public class MessageAnalysisVH extends AbstractVH {

    public MessageAnalysisVH(String nmEntidade) {
        super(nmEntidade);
    }

    @Override
    public Entity getEntidade(HttpServletRequest request) {
        return new MessageAnalysis();
    }
    
}
