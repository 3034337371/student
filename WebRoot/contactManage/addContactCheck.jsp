

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理学生缴费添加数据</title>
    </head>
    <body>
        <%
            String clientName=new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"UTF-8");
            String contactName=new String(request.getParameter("contactName").getBytes("ISO-8859-1"),"UTF-8");
            String contactContents=new String(request.getParameter("contactContents").getBytes("ISO-8859-1"),"UTF-8");
            String contactStart=new String(request.getParameter("contactStart").getBytes("ISO-8859-1"),"UTF-8");
            String contactEnd=new String(request.getParameter("contactEnd").getBytes("ISO-8859-1"),"UTF-8");
            String StaffName=new String(request.getParameter("StaffName").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into contact(clientName,contactName,contactContents,contactStart,contactEnd,StaffName) values ('"+clientName+"','"+contactName+"','"+contactContents+"','"+contactStart+"','"+contactEnd+"','"+StaffName+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/EIMS/contactManage/lookContact.jsp");    
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
