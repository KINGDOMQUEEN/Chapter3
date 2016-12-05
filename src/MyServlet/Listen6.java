package MyServlet;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Listen6 implements HttpSessionAttributeListener
{
	public void attributeAdded(HttpSessionBindingEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("新加一个session属性,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());
	}

	public void attributeRemoved(HttpSessionBindingEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("删除一个session属性,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());

	}

	public void attributeReplaced(HttpSessionBindingEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("修改了一个session属性,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());

		
	}

}
