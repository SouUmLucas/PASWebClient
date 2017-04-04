package web;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import dominio.EntidadeDominio;
import dominio.Mensagem;
import dao.*;

public class Fachada implements IFachada {
	private Map<String, IDAO> daos;
	
	public Fachada(){
		daos = new HashMap<String, IDAO>();
		try {
			
			daos.put(Mensagem.class.getName(), new DAOMensagem());
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String insert(EntidadeDominio entidade) throws SQLException {
		String nomeEntidade = entidade.getClass().getName();
		IDAO dao = daos.get(nomeEntidade);
		dao.insert(entidade);
		return null;
	}

	public String update(EntidadeDominio entidade) throws SQLException {
		String nomeEntidade = entidade.getClass().getName();
		IDAO dao = daos.get(nomeEntidade);
		dao.update(entidade);
		return null;
	}

	public String delete(EntidadeDominio entidade) throws SQLException {
		String nomeEntidade = entidade.getClass().getName();
		IDAO dao = daos.get(nomeEntidade);
		dao.delete(entidade);
		return null;
	}

	public EntidadeDominio select(EntidadeDominio entDominio) throws SQLException {
		String nomeEntidade = entDominio.getClass().getName();
		IDAO dao = daos.get(nomeEntidade);
		EntidadeDominio entidade = dao.select(entDominio);
		return entidade;
	}

}
