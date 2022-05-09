

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>班级成员删除</title>
    </head>
    <body background="../image/3.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/clientManage/deleteClientCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/clientManage/lookClient.jsp">班级成员查询</a></td>
                    <td><a href="http://localhost:8080/EIMS/clientManage/addClient.jsp">班级成员添加</td>
                    <td><a href="http://localhost:8080/EIMS/clientManage/updateClient.jsp">班级成员修改</a></td>
                    <td>班级成员删除</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center">
                <tr>
                    <th colspan="2">删除班级成员信息</th>
                </tr>
                <tr>
                    <td>班级成员姓名</td>
                    <td><input type="text" name="clientName"/>输入要删除的班级成员姓名</td>
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