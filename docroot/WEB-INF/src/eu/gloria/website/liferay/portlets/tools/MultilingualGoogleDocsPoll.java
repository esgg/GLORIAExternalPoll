package eu.gloria.website.liferay.portlets.tools;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletRequestDispatcher;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.liferay.util.bridges.mvc.MVCPortlet;

public class MultilingualGoogleDocsPoll extends MVCPortlet {

	private static Log log = LogFactory.getLog(MultilingualGoogleDocsPoll.class);
	protected String editJSP;
	protected String viewJSP;
	
	public void init() throws PortletException {
		
		editJSP = getInitParameter("edit-jsp");
		viewJSP = getInitParameter("view-jsp");
		
		super.init();
	}
	
	public void processAction(ActionRequest actionRequest,
			ActionResponse actionResponse) throws PortletException, IOException {

		super.processAction(actionRequest, actionResponse);
	}
	
	public void doView(RenderRequest request, RenderResponse response)
			throws PortletException, IOException {
		
		include(viewJSP, request, response);
		
	}
	
	public void doEdit(RenderRequest request, RenderResponse response)
			throws PortletException, IOException {
		include(editJSP, request, response);
	}
	
	protected void include(String path, RenderRequest renderRequest,
			RenderResponse renderResponse) throws IOException, PortletException {
		PortletRequestDispatcher portletRequestDispatcher = getPortletContext()
				.getRequestDispatcher(path);
		if (portletRequestDispatcher == null) {
			log.error(path + " is not a valid include");
		} else {
			portletRequestDispatcher.include(renderRequest, renderResponse);
		}
	}
}
