package dominio;

public class Mensagem extends EntidadeDominio {
	private String remetente;
	private String destinatario;
	private String mensagem;
	
	public void setRemetente(String remetente) {
		this.remetente = remetente;
	}
	
	public String getRemetente() {
		return this.remetente;
	}
	
	public void setDestinatario(String destinatario) {
		this.destinatario = destinatario;
	}
	
	public String getDestinatario() {
		return this.destinatario;
	}
	
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
	public String getMensagem() {
		return this.mensagem;
	}
}
