

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理员信息删除</title>
    </head>
    <body background="../image/13.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/Admin/DeleteAdminCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/Admin/Adminlogin.jsp">管理员信息查询</a></td>
                    <td><a href="http://localhost:8080/EIMS/Admin/AddAdmin.jsp">管理员信息添加</td>
                    <td><a href="http://localhost:8080/EIMS/Admin/UpdateAdmin.jsp">管理员信息修改</a></td>
                    <td>管理员信息删除</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center">
                <tr>
                    <th colspan="2">删除管理员信息</th>
                </tr>
                <tr>
                    <td>管理员账号</td>
                    <td><input type="text" name="userName"/>输入要删除的管理员账号</td>
                </tr>
                <tr align="center">
                     <td colspan="2">
                        <input type="submit" name="sure" value="确认"/>
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        <input name="clear"type="reset"value="取消"/>
                     </td>
                </tr>
             </table>
        </form>
    </body>
</html>