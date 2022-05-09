


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>班级成员查询</title>
    </head>
    <body background="../image/3.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center"width="500">
            <tr>
                <td>班级成员查询</td>
                <td><a href="http://localhost:8080/EIMS/clientManage/addClient.jsp">班级成员添加</a></td>
                <td><a href="http://localhost:8080/EIMS/clientManage/updateClient.jsp">班级成员修改</a></td>
                <td><a href="http://localhost:8080/EIMS/clientManage/deleteClient.jsp">班级成员删除</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="4">查看班级成员信息</th>
            </tr>
            <tr>
                <td>姓名</td>
                <td>电话</td>
                <td>班级</td>
                <td>邮箱 </td>    
            </tr>
            <%
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                /*url后面加的?useUnicode=true&characterEncoding=gbk，是为了处理向数据库中添加数据时出现乱码的问题。*/
                String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String sql="select * from client";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("clientName")%></td>
               <td><%=rs.getString("clientTelephone")%></td>
               <td><%=rs.getString("clientAddress")%></td>
               <td><%=rs.getString("clientEmail")%></td>                 
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

