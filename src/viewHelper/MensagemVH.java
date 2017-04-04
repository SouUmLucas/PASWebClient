package viewHelper;

import javax.servlet.http.HttpServletRequest;

import dominio.EntidadeDominio;
import dominio.Mensagem;

public class MensagemVH extends AbstractVH {
	public MensagemVH() {
		super("Mensagem");
	}
	
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		operacao = request.getParameter("operacao");
		
		Mensagem msg = new Mensagem();
		
		if(operacao.equals("salvar")) {
			String destinatario = request.getParameter("destinatario");
			String remetente = request.getParameter("remetente");
			String mensagem = request.getParameter("mensagem");
			
			msg.setDestinatario(destinatario);
			msg.setRemetente(remetente);
			msg.setMensagem(mensagem);
		} else if (operacao.equals("excluir") || (operacao.equals("consultar")) || (operacao.equals("formAlterar"))) {
			int id = Integer.parseInt(request.getParameter("id"));
			msg.setId(id);
		} else if (operacao.equals("alterar")) {
			int id = Integer.parseInt(request.getParameter("id"));
			String destinatario = request.getParameter("destinatario");
			String remetente = request.getParameter("remetente");
			String mensagem = request.getParameter("mensagem");
			
			msg.setId(id);
			msg.setDestinatario(destinatario);
			msg.setRemetente(remetente);
			msg.setMensagem(mensagem);
		}
		
		return msg;
	}
}
