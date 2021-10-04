package br.com.alura.gerenciador.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.acao.Acao;

//@WebFilter("/entrada")
public class ControlerFilter implements Filter {

	
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		
		String paramAcao = request.getParameter("acao");
		System.out.println("Controlador");
		
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
	}
}
