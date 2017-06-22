package com.pas.paswebclient.web;

import com.pas.paswebclient.command.CreateCommand;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pas.paswebclient.command.UpdateCommand;
import com.pas.paswebclient.command.DeleteCommand;
import com.pas.paswebclient.command.GetCommand;
import com.pas.paswebclient.command.ICommand;
import com.pas.paswebclient.domain.Chat;
import com.pas.paswebclient.domain.Entity;
import com.pas.paswebclient.domain.Message;
import com.pas.paswebclient.domain.Messages;
import com.pas.paswebclient.domain.MessagesClassifications;
import com.pas.paswebclient.domain.analysis.messages.MessageAnalysis;

import java.util.Map;
import java.util.HashMap;

import com.pas.paswebclient.viewHelper.*;
import com.pas.paswebclient.web.pageshandler.ChatResult;
import com.pas.paswebclient.web.pageshandler.ClassificationResult;
import com.pas.paswebclient.web.pageshandler.IPage;
import com.pas.paswebclient.web.pageshandler.MessageAnalysisResult;
import com.pas.paswebclient.web.pageshandler.MessageResult;
import javax.servlet.annotation.MultipartConfig;

@MultipartConfig(maxFileSize = 10*1024*1024,maxRequestSize = 20*1024*1024,fileSizeThreshold = 5*1024*1024)
public class PASServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private Map<String, ICommand> commands;
    private Map<String, IViewHelper> viewHelpers;
    private Map<String, IPage> redirectPages;

	
    public PASServlet() {
        commands = new HashMap<>();
        commands.put("create", new CreateCommand());
        commands.put("update", new UpdateCommand());
        commands.put("delete", new DeleteCommand());
        commands.put("get", new GetCommand());
        commands.put(null, new GetCommand());
        
        viewHelpers = new HashMap<String, IViewHelper>();
        viewHelpers.put("/PASWebClient/ChatFile", new ChatFileVH("ChatFile"));
        viewHelpers.put("/PASWebClient/MessageClassification", new MessageClassificationVH("MessageClassification"));
        viewHelpers.put("/PASWebClient/Analysis", new MessageAnalysisVH("MessageAnalysis"));
        viewHelpers.put("/PASWebClient/Messages", new MessageVH("Messages"));
        viewHelpers.put("/PASWebClient/Message", new MessageVH("Messages"));
        
        redirectPages = new HashMap<>();
        redirectPages.put(Chat.class.getName(), new ChatResult());
        redirectPages.put(MessagesClassifications.class.getName(), new ClassificationResult());
        redirectPages.put(MessageAnalysis.class.getName(), new MessageAnalysisResult());
        redirectPages.put(Messages.class.getName(), new MessageResult());
        redirectPages.put(Message.class.getName(), new MessageResult());
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        String action = null;
        IViewHelper vh = viewHelpers.get(uri);
        ICommand cmd = commands.get(action);
        Entity entity = cmd.executar(vh.getEntidade(request));
        IPage redirectPage = redirectPages.get(entity.getClass().getName());
        redirectPage.redirect(request, response, entity);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processar(request, response);
    }
	
    private void processar(HttpServletRequest request, HttpServletResponse response) {
        String uri = request.getRequestURI();
        String action = request.getParameter("action");
        IViewHelper vh = viewHelpers.get(uri);
        ICommand cmd = commands.get(action);
        Entity entity = cmd.executar(vh.getEntidade(request));
        IPage redirectPage = redirectPages.get(entity.getClass().getName());
        redirectPage.redirect(request, response, entity);
    }
}
