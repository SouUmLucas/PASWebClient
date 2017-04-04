package viewHelper;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class AbstractVH implements IViewHelper {
	protected String operacao;	
	private String nmEntidade;
	public AbstractVH(String nmEntidade){
		this.nmEntidade = nmEntidade;
	}
	
	public void setView(Object resultado, HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out = response.getWriter();
		
		if(resultado != null){
			out.print(resultado.toString());
		}else{	
			if(operacao.equals("salvar")){		
				out.println(nmEntidade+" salvo com sucesso!!!");			
			}else if(operacao.equals("excluir")){		
				out.println(nmEntidade+" excluído com sucesso!!!");		
			}
			
		}		

	}
}
