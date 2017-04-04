package viewHelper;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dominio.EntidadeDominio;

public interface IViewHelper {
	public void setView(Object resultado, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
	
	public EntidadeDominio getEntidade(HttpServletRequest request);
}
