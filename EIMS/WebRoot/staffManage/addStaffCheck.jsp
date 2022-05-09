<%-- 
    Document   : lookClientCheck
    Created on : 2012-3-23, 21:24:08
    Author     : Administrator
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理小组成员添加数据</title>
    </head>
    <body>
        <%
            String staffName=new String(request.getParameter("staffName").getBytes("ISO-8859-1"),"UTF-8");
            String staffSex=new String(request.getParameter("staffSex").getBytes("ISO-8859-1"),"UTF-8");
            String staffAge=new String(request.getParameter("staffAge").getBytes("ISO-8859-1"),"UTF-8");
            String staffEducation=new String(request.getParameter("staffEducation").getBytes("ISO-8859-1"),"UTF-8");
            String staffDepartment=new String(request.getParameter("staffDepartment").getBytes("ISO-8859-1"),"UTF-8");
            String staffDate=new String(request.getParameter("staffDate").getBytes("ISO-8859-1"),"UTF-8");
            String staffDuty=new String(request.getParameter("staffDuty").getBytes("ISO-8859-1"),"UTF-8");
            String staffWage=new String(request.getParameter("staffWage").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","root");
               st=con.createStatement();
               String sql="insert into staff(staffName,staffSex,staffAge,staffEducation,staffDepartment,staffDate,staffDuty,staffWage) values ('"+staffName+"','"+staffSex+"','"+staffAge+"','"+staffEducation+"','"+staffDepartment+"','"+staffDate+"','"+staffDuty+"','"+staffWage+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/EIMS/staffManage/lookStaff.jsp");    
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
