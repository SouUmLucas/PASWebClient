package com.pas.paswebclient.command;

import com.pas.paswebclient.web.Fachada;
import com.pas.paswebclient.web.IFachada;

public abstract class AbstractCommand implements ICommand {
    public IFachada fachada = new Fachada();
}
