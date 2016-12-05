package my;
import java.io.*;
import javax.servlet.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class AddTag extends SimpleTagSupport
{
   private String number=null;
   private String var=null; 
   private String scope=null;
   private JspFragment fra=null;
   private StringWriter str=new StringWriter();
   
   public void setJspBody(JspFragment jspBody)
   {
	   fra=jspBody;
   }
   
   public void setVar(String s)
   {
	   var=s;
   }
   public void setScope(String s)
   {
	   scope=s;
   }
   public void setNumber(String s)
   {
	   number=s;
   }
   int adder(int n)
   {
	   int sum=0;
	   for(int i=1;i<=n;i++)
		   sum=sum+i;
	   return sum;
   }
   public AddTag()
   {
	   
   }
   public void doTag() throws JspException,IOException
   {
	   int n;
	   if(fra!=null&&number!=null)
	   {
		   JspException e=new JspException("不能同时用属性和标记体传入数据。");
		   throw e;
	   }
	   if(fra==null && number==null)
	   {
		   JspException e=new JspException("需要用属性和标记体传入数据。");
		   throw e;
	   }
	   if(number!=null)
	   {
		   n=Integer.parseInt(number);
	   }
	   else
	   {
		   fra.invoke(str);
		   String temp=str.toString();
		   temp=temp.trim();
		   n=Integer.parseInt(temp);
	   }
	   String result=String.valueOf(adder(n));
	   int scopeID;
	   if(scope!=null)
	   {
		   if(scope.equals("request"))
			   scopeID=PageContext.REQUEST_SCOPE;
		   else if(scope.equals("session"))
			   scopeID=PageContext.SESSION_SCOPE;
		   else if(scope.equals("application"))
			   scopeID=PageContext.APPLICATION_SCOPE;
		   else
			   scopeID=PageContext.PAGE_SCOPE;		   
	   }
	   else
		   scopeID=PageContext.PAGE_SCOPE;		
	   JspContext ctx=getJspContext();
	   JspWriter out=ctx.getOut();
	   
	   if(var!=null)
		   ctx.setAttribute(var,result,scopeID);
	   else
		   out.print(result);
   }
}
