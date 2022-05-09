<%-- 
    Document   : lookClient
    Created on : 2012-3-23, 20:10:11
    Author     : Administrator
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>班级事务反馈查询</title>
    </head>
    <body background="../image/6.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center"width="500">
            <tr>
                <td>班级事务反馈查询</td>
                <td><a href="http://localhost:8080/EIMS/CSManage/addCS.jsp">班级事务反馈添加</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="3">查看班级事务反馈信息</th>
            </tr>
            <tr>
                <td>学生姓名</td>
                <td>学生反馈意见</td>
                <td>班委</td> 
            </tr>
            <%
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String sql="select * from cs";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("clientName")%></td>
               <td><%=rs.getString("clientOpinion")%></td>
               <td><%=rs.getString("StaffName")%></td>  
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

