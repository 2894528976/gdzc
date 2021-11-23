package com.niuys.gdzc.filter;

import javax.servlet.*;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

	String encoding = null;

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		if (encoding == null) {
			encoding = "UTF-8";
		}
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);// out.print();
		chain.doFilter(request, response);

	}

	public void init(FilterConfig config) throws ServletException {
		encoding = config.getInitParameter("encoding");
	}

}
