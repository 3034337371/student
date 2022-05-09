<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理员信息查询</title>
    </head>
    <body background="../image/13.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center"width="500">
            <tr>
                <td>管理员信息查询</td>
                <td><a href="http://localhost:8080/EIMS/Admin/AddAdmin.jsp">管理员信息添加</a></td>
                <td><a href="http://localhost:8080/EIMS/Admin/UpdateAdmin.jsp">管理员信息修改</a></td>
                <td><a href="http://localhost:8080/EIMS/Admin/DeleteAdmin.jsp">管理员信息删除</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="4">查看管理员信息</th>
            </tr>
            <tr>
                <td>管理员账号</td>
                <td>管理员密码</td>
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
                String sql="select * from user";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("userName")%></td>
               <td><%=rs.getString("password")%></td>               
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

