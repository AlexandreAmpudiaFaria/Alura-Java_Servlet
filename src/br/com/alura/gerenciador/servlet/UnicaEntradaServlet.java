package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.acao.Acao;
import br.com.alura.gerenciador.acao.AlteraEmpresa;
import br.com.alura.gerenciador.acao.ListaEmpresas;
import br.com.alura.gerenciador.acao.MostraEmpresa;
import br.com.alura.gerenciador.acao.NovaEmpresa;
import br.com.alura.gerenciador.acao.NovaEmpresaForm;
import br.com.alura.gerenciador.acao.RemoveEmpresa;


@WebServlet("/entrada")
public class UnicaEntradaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String paramAcao = request.getParameter("acao");
		
		String nomeDaClasse = "br.com.alura.gerenciador.acao." + paramAcao;
		
		String nomeJSP;
		try {
			Class classe = Class.forName(nomeDaClasse); // carregar a classe com o nome da string
			Acao acao = (Acao) classe.newInstance();
			nomeJSP = acao.executa(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | ServletException
				| IOException e) {
			throw new ServletException(e);
		}
		
		
		//chamar o JSP
		String[] tipoEEndereco = nomeJSP.split(":");
				if(tipoEEndereco[0].equals("forward")) {
					RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/" + tipoEEndereco[1]);
				    rd.forward(request, response);
				} else {
					response.sendRedirect(tipoEEndereco[1]);
					System.out.println("passei aqui");
				}
		
		
//		String nomeJSP = null;
//		
//		if (paramAcao.equals("ListaEmpresas")) {						
//			ListaEmpresas acao = new ListaEmpresas();
//			nomeJSP = acao.executa(request, response);
//		} else if (paramAcao.equals("RemoveEmpresa")) {						
//			RemoveEmpresa acao = new RemoveEmpresa();
//			nomeJSP = acao.executa(request, response);
//		} else if (paramAcao.equals("MostraEmpresa")) {						
//			MostraEmpresa acao = new MostraEmpresa();
//			nomeJSP = acao.executa(request, response);
//		} else if (paramAcao.equals("AlteraEmpresa")) {			
//			AlteraEmpresa acao = new AlteraEmpresa();
//			nomeJSP = acao.executa(request, response);
//		} else if (paramAcao.equals("NovaEmpresa")) {			
//    	    NovaEmpresa acao = new NovaEmpresa();
//    	    nomeJSP = acao.executa(request, response);
//		} else if (paramAcao.equals("NovaEmpresaForm")) {			
//    	    NovaEmpresaForm acao = new NovaEmpresaForm();
//    	    nomeJSP = acao.executa(request, response);
//		}	    
		
}
}