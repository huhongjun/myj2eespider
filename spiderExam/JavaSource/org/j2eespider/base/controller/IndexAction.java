package org.j2eespider.base.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.web.struts.DispatchActionSupport;

/**
 * @struts.action path="/index" parameter="method" validate="false" scope="request"
 * @struts.action-forward name="index" path="/jsp/index.jsp"
 */
public class IndexAction extends DispatchActionSupport {

	protected ActionForward unspecified(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		return mapping.findForward("index");
	}

}
