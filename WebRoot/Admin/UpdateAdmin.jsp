

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改管理员信息</title>
    </head>
    <body background="../image/13.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/Admin/UpdateAdminCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/Admin/Adminlogin.jsp">管理员信息查询</a></td>
                    <td><a href="http://localhost:8080/EIMS/Admin/AddAdmin.jsp">管理员信息添加</td>
                    <td>管理员信息修改</td>
                    <td><a href="http://localhost:8080/EIMS/Admin/DeleteAdmin.jsp">管理员信息删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                <tr>
                    <th colspan="2" align="center">修改管理员信息</th>
                </tr>
                <tr>
                    <td>管理员账号</td>
                    <td><input type="text" name="userName"/></td>
                </tr>
                <tr>
                    <td>管理员密码</td>
                    <td><input type="text" name="password"/></td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input name="sure"type="submit"value="确认">
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        <input name="clear"type="reset"value="取消">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
