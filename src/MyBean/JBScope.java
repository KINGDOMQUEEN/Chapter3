package MyBean;

public class JBScope
{
	private String myName = "tom";
	private String pw = "123";

	public JBScope()
	{
		System.out.println("JavaBean≥ı ºªØ...");
	}

	public void setMyName(String s)
	{
		myName = s;
	}

	public String getMyName()
	{
		return myName;
	}
	public void setPw(String s)
	{
		pw=s;
	}
	public String getPw()
	{
		return pw;
	}
}
