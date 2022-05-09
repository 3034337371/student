

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理管理员信息添加数据</title>
    </head>
    <body>
        <%
			String userName =new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
            String password =new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into user(userName,password) values ('"+userName+"','"+password+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/EIMS/Admin/Adminlogin.jsp");    
           }
           catch(Exception e){
               e.printStackTrace();
           }
           finally{
              st.close();
              con.close();
           }
        %>
    </body>
</html>
