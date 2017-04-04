package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.AlterarCommand;
import command.ConsultarCommand;
import command.ExcluirCommand;
import command.ICommand;
import command.SalvarCommand;

import java.util.Map;
import java.util.HashMap;

import viewHelper.*;
import dominio.*;

public class PASServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Map<String, ICommand> commands;
	private Map<String, IViewHelper> viewHelpers;
	
    public PASServlet() {
        commands = new HashMap<String, ICommand>();
        commands.put("salvar", new SalvarCommand());
        commands.put("alterar", new AlterarCommand());
        commands.put("excluir", new ExcluirCommand());
        commands.put("consultar", new ConsultarCommand<EntidadeDominio>());
        commands.put("consultaAlterar", new ConsultarCommand<EntidadeDominio>());
        
        viewHelpers = new HashMap<String, IViewHelper>();
        viewHelpers.put("/PASWebClient/PASWebClient", new MensagemVH());
        
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processar(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processar(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	private void processar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException {
		String uri = request.getRequestURI();
		IViewHelper vh = viewHelpers.get(uri);
		EntidadeDominio entidade = vh.getEntidade(request);
		String operacao = request.getParameter("operacao");
		
		if (operacao.equals("consultar")){
            
			ConsultarCommand<EntidadeDominio> cmd = new ConsultarCommand();
            Mensagem msg = (Mensagem) cmd.executar(entidade);
            request.setAttribute("msg", msg);
            RequestDispatcher rd = request.getRequestDispatcher("consultar.jsp");		
            rd.forward(request, response);
            
        }else if(operacao.equals("formAlterar")) {
           
        	ConsultarCommand<EntidadeDominio> cmd = new ConsultarCommand();
            Mensagem msg = (Mensagem) cmd.executar(entidade);
            request.setAttribute("msg", msg);
            RequestDispatcher rd = request.getRequestDispatcher("formAlterar.jsp");		
            rd.forward(request, response);
            
        } else {
        	
            ICommand cmd = commands.get(operacao);
            String msg = (String) cmd.executar(entidade);
            vh.setView(msg, request, response);
            RequestDispatcher rd = request.getRequestDispatcher("principal.jsp");		
            rd.forward(request, response);
            
        } 
	}
}
