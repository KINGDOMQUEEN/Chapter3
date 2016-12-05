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
		System.out.println("�¼�һ��session����,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());
	}

	public void attributeRemoved(HttpSessionBindingEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("ɾ��һ��session����,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());

	}

	public void attributeReplaced(HttpSessionBindingEvent se)
	{
		HttpSession session = se.getSession();
		System.out.println("�޸���һ��session����,ID" + session.getId());
		System.out.println(se.getName() + "=" + se.getValue());

		
	}

}
