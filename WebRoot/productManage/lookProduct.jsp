

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生兴趣爱好查询</title>
    </head>
    <body background="../image/12.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center" width="500">
            <tr>
                <td>学生兴趣爱好查询</td>
                <td><a href="http://localhost:8080/EIMS/productManage/addProduct.jsp">学生兴趣爱好添加</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center" width="700" border=2" >
            <tr>
                <th colspan="4">查看学生兴趣爱好信息</th>
            </tr>
            <tr>
                <td>学生姓名</td>
                <td>学生性别</td>
                <td>学生年龄</td>
                <td>兴趣爱好</td>    
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
                String sql="select * from product";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("productName")%></td>
               <td><%=rs.getString("productModel")%></td>
               <td><%=rs.getString("productNumber")%></td>
               <td><%=rs.getString("productPrice")%></td>                 
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

