<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=UTF-8"%>

<%@ page import="java.sql.*"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<title>分页显示</title>



<meta http-equiv="pragma" content="no-cache">

<meta http-equiv="cache-control" content="no-cache">

<meta http-equiv="expires" content="0">

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">

<meta http-equiv="description" content="This is my page">





</head>



<body>

	<jsp:useBean id="Pages" scope="page" class="MyBean.PageBean"></jsp:useBean>

	<jsp:useBean id="Search" scope="page" class="MyBean.SearchBean" />

	<%
		int Page_record = 10;//定义每页显示的记录数

		int curPages = Pages.current_Pages(Pages.strPage(request, "page"));

		Pages.setPage_record(Page_record);//设置每页显示记录数
	%>

	<%
		String title = null;
		if (request.getParameter("title") != null) {
			title = new String(request.getParameter("title").getBytes(
					"ISO8859-1"), "UTF-8");
			request.setAttribute("title", title);
		} else
			title = request.getAttribute("title").toString();
		ResultSet rs_count = Search.getSearchTitle(title);//传递进数据库处理的javabean
		int resultconts = 0;
		while (rs_count.next())

		{
			resultconts++; //取得总的数据数
		}
		//  out.println(resultconts);
		int totalPages = Pages.getTotal_Pages(resultconts);//取出总页数
		out.println(totalPages);
		ResultSet rs = Pages.getPageSet(Search.getSearchTitle(title),
				curPages);//获取指针的结果集参数是(结果集，页数)
	%>

	<p align="center">分类表</p>

	<table border="0.5" align="center">

		<tr>
			<td>书号</td>
			<td>书名</td>
			<td>分类</td>
			<td>单价</td>
		</tr>

		<%
			int i = 1;
		%>

		<%
			while (rs.next()) {
		%>

		<tr>

			<td><%=rs.getString("recID")%></td>
			<td><%=rs.getString("title")%></td>
			<td><%=rs.getString("type")%></td>
			<td><%=rs.getString("price")%></td>

		</tr>

		<%
			i = i + 1;

				if (i > Page_record)

					break;

			}
		%>

	</table>

	<p align="center">
		<%
			if (curPages > 1) {
		%>
		<a href="exam317.jsp?page=<%=curPages - 1%>">上一页</a>
		<%
			}
		%>
		<%
			if (curPages < totalPages) {
		%>
		<a href="exam317.jsp?page=<%=curPages + 1%>">下一页</a>
		<%
			}
		%>
	</p>



</body>

</html>

