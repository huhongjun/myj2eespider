package org.j2eespider.base.model.rules.filter;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.acegisecurity.context.SecurityContextHolder;
import org.j2eespider.base.model.rules.Layout;
import org.j2eespider.lib.util.strutsmenu.BuildMenuHelper;

public class MenuFilter implements Filter  {
	private static Layout layoutManager;

	@SuppressWarnings("static-access")
	public void setLayoutManager(Layout layoutManager) {
		this.layoutManager = layoutManager;
	}
	
	public void init(FilterConfig arg0) throws ServletException {
        // TODO Auto-generated method stub
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpSession session = request.getSession();
        ServletContext servletContext = session.getServletContext();
                       
        if (servletContext.getAttribute("repositorio") == null) {

            if (SecurityContextHolder.getContext().getAuthentication().isAuthenticated()) {               
                Collection menu = layoutManager.montarMenu();
               
                BuildMenuHelper.buildMenu(menu, servletContext);
            }
        }
       
        filterChain.doFilter(req, resp);
    }
   
    public void destroy() {
        // TODO Auto-generated method stub

    }
}
