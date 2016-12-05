package MyHello;

import java.io.UnsupportedEncodingException;

public class RegForm
{
	private String userName;
	private String password;
	private String gender;
	
	
	/**
	 * 
	 */
	public RegForm() {
		super();
	}
	public String getGender() throws UnsupportedEncodingException {
		return this.toGBK(gender).trim();
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	private String hobby[];
	private String memo;
	
    public void setUserName(String s)
    {
    	userName=s;
    }
    public String getUserName()
    {
    	return userName;
    }
    public void setPassword(String s)
    {
    	password=s;
    }
    public String getPassword()
    {
    	return password;
    }
    
    
    public void setHobby(String s[])
    {
    	hobby=s;
    }
    public String[] getHobby() throws UnsupportedEncodingException
    {
    	for (int i = 0; i < hobby.length; i++) {
			hobby[i]=this.toGBK(hobby[i]).trim();
		}
    	return hobby;
    }
    public void setMemo(String s)
    {
    	memo=s;
    }
    public String getMemo()
    {
    	return memo;
    }
    
    private String toGBK(String str) throws java.io.UnsupportedEncodingException
    {
    return new String(str.getBytes("ISO-8859-1"), "GBK");
    }

}
