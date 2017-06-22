package com.pas.paswebclient.viewHelper;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pas.paswebclient.domain.Entity;

public interface IViewHelper {
	public void setView(Object resultado, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
	public Entity getEntidade(HttpServletRequest request);
}
