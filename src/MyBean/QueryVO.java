package MyBean;

import java.io.*;

public class QueryVO implements Serializable
{
   private String recID=null;
   private String title=null;
   private String type=null;
   private String price=null;
   public void setRecID(String s)
   {
	   recID=s;
   }
   public String getRecID()
   {
	   return recID;
   }
   public void setTitle(String s)
   {
	   title=s;
   }
   public String getTitle()
   {
	   return title;
   }
   public void setType(String s)
   {
	   type=s;
   }
   public String getType()
   {
	   return type;
   }
   public void setPrice(String s)
   {
	   price=s;
   }
   public String getPrice()
   {
	   return price;
   }
   
}
