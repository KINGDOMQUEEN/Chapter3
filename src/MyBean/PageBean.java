package MyBean;

import java.sql.*;
import javax.servlet.http.*;

public class PageBean {
	private String strPage = null;// page��������

	   private int current_Pages;//��ǰҳ��

	   private int page_record; //����ÿҳ��ʾ��¼��

	   private int total_Pages;// ��ҳ��

	   

	 /*

	  * ȡ��xxx.jspҳ���ļ����xxx.jsp?page=<%=current_Pages-1%>����page=<%=current_Pages+1%>��ֵ������strPage

	  * @param request

	  * @param page  Ϊ��ת����ҳ��

	  * @return  strPage

	  */  

	   public String strPage(HttpServletRequest request, String page){

	      try{

	       strPage = request.getParameter(page);// request����ȡ��page��ֵ

	      }

	      catch(Exception e){

	           System.out.println("delcolumn"+e.getMessage());    

	      }

	      return strPage;

	   }

	/**

	 * ����Ҫ��ʾ�ĵ�ǰҳ��

	 * @param strPage

	 * @return current_Pages������ҳ������

	 */

	   public int current_Pages(String strPage){

	       try{

	           if(strPage == null){   // Ĭ��û�о������ǵ�һҳ

	               current_Pages = 1;

	           }

	           else{

	               current_Pages = Integer.parseInt(strPage);// ȡ��strPage������ֵ

	               if(current_Pages < 1)    // ���С��1,ͬ�������ǵ�һҳ

	                   current_Pages = 1;

	           }

	       }

	       catch(Exception e){

	           System.out.print("current_Pages");

	       }

	       return current_Pages;// ����ҳ����

	   }

	/**

	 * @param page_record ����ÿҳҪ��ʾ�ļ�¼��

	 */    

	   public void setPage_record(int page_record){

	       this.page_record=page_record;

	   }

	/**

	 * ȡ����ҳ��

	 * @param total_record �ܼ�¼������ѯ���ݿ��ã�

	 * @return total_Pages ������ҳ��

	 */   

	   public int getTotal_Pages(int total_record){

	       int test;// ����

	       test=total_record%page_record;// ȡ������

	       if(test==0)

	           total_Pages = total_record/page_record;// ÿҳ��ʾ������

	           else

	           total_Pages=total_record/page_record+1;// ���������ͼ�һ

	       return total_Pages;

	   }

	   /**

	    * ������ķ���

	    * @param rs �����

	    * @param current_Pages ҳ��

	    * @return rs �����

	    */ 

	   public ResultSet getPageSet(ResultSet rs,int current_Pages){

	       if(current_Pages==1){

	           return rs;// �����һҳ���ͷ������rs

	       }

	       else{

	           int i=1;

	           try{

	               while(rs.next()){

	                   i=i+1;

	                   if(i>((current_Pages-1)*page_record))

	                       break;// �˳�

	               }

	               return rs;// ���˳���ʼ�����������

	           }

	           catch(Exception e){

	               System.out.print(e.getMessage());

	           }

	       }

	       return rs;

	   }


}
