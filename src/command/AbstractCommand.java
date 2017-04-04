package command;

import web.Fachada;
import web.IFachada;

public abstract class AbstractCommand implements ICommand {
	public IFachada fachada = new Fachada();
}
