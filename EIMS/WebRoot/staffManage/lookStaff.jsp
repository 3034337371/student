

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查询小组成员</title>
    </head>
    <body background="../image/9.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <table align="center"width="500">
            <tr>
                <td>小组成员查询</td>
                <td><a href="http://localhost:8080/EIMS/staffManage/addStaff.jsp">小组成员添加</a></td>
             </tr>
        </table>
        <br>
        <hr>
        <br>
         <table align="center" width="700" border=2" >
            <tr>
                <th colspan="8">查看小组成员信息</th>
            </tr>
            <tr>
                <td>姓名</td>
                <td>性别</td>
                <td>年龄</td>
                <td>学历</td>
                <td>班级</td>
                <td>入学时间</td>
                <td>职务</td>
                <td>政治面貌</td>
            </tr>
            <%
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"root","root");
                stmt=con.createStatement();
                String sql="select * from staff";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("staffName")%></td>
               <td><%=rs.getString("staffSex")%></td>
               <td><%=rs.getString("staffAge")%></td>
               <td><%=rs.getString("staffEducation")%></td> 
               <td><%=rs.getString("staffDepartment")%></td>
               <td><%=rs.getString("staffDate")%></td>
               <td><%=rs.getString("staffDuty")%></td>
               <td><%=rs.getString("staffWage")%></td>
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>

