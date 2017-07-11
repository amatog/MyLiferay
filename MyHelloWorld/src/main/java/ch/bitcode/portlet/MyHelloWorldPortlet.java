package ch.bitcode.portlet;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import java.io.IOException;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;

@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=MyHello",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=MyHelloWorld Portlet",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class MyHelloWorldPortlet extends MVCPortlet {
	public void doView(RenderRequest request,
			  RenderResponse response) throws
			  PortletException, IOException {
			        response.setContentType("text/html");
			        response.getWriter().println("Hello Portlet From Giuseppe");
			        }
}