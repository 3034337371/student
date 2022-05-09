


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生缴费查询</title>
    </head>
     <body background="../image/11.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center"width="500">
            <tr>
                <td>学生缴费查询</td>
                <td><a href="http://localhost:8080/EIMS/contactManage/addContact.jsp">学生缴费添加</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="6">查看学生缴费信息</th>
            </tr>
            <tr>
                <td>学生姓名</td>
                <td>班级</td>
                <td>学院</td>
                <td>学校</td> 
                <td>学费是否缴齐</td> 
                <td>辅导员</td> 
            </tr>
            <%
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                /*url后面加的?useUnicode=true&characterEncoding=gbk，是为了处理向数据库中添加数据时出现乱码的问题。*/
                String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=UTF-8";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String sql="select * from contact";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("clientName")%></td>
               <td><%=rs.getString("contactName")%></td>
               <td><%=rs.getString("contactContents")%></td>
               <td><%=rs.getString("contactStart")%></td>   
               <td><%=rs.getString("contactEnd")%></td>  
               <td><%=rs.getString("StaffName")%></td>  
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

