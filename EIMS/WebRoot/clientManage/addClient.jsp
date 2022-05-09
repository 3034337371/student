

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加班级成员信息</title>
    </head>
    <body background="../image/3.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/clientManage/addClientCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/clientManage/lookClient.jsp">班级成员查询</a></td>
                    <td>班级成员添加</td>
                    <td><a href="http://localhost:8080/EIMS/clientManage/updateClient.jsp">班级成员修改</a></td>
                    <td><a href="http://localhost:8080/EIMS/clientManage/deleteClient.jsp">班级成员删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                     <th colspan="4" align="center">添加班级成员信息</th>
                 </tr>
                 <tr>
                     <td>姓名</td>
                     <td><input type="text" name="clientName"/></td>
                 </tr>
                 <tr>
                     <td>电话</td>
                     <td><input type="text" name="clientTelephone"/></td>
                 </tr>
                 <tr>
                     <td>班级</td>
                     <td><input type="text" name="clientAddress"/></td>
                 </tr>
                 <tr>
                     <td>邮箱</td>
                     <td><input type="text" name="clientEmail"/></td>
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
