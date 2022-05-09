

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加学生缴费信息</title>
    </head>
     <body background="../image/11.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/contactManage/addContactCheck.jsp" method="post">
            <table align="center" width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/contactManage/lookContact.jsp">学生缴费查询</a></td>
                    <td>学生缴费添加</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                    <th colspan="6" align="center">添加学生缴费信息</th>
                 </tr>
                 <tr>
                     <td>学生姓名</td>
                     <td><input type="text" name="clientName"/></td>
                 </tr>
                 <tr>
                     <td>班级</td>
                     <td><input type="text" name="contactName"/></td>
                 </tr>
                 <tr>
                     <td>学院</td>
                     <td><input type="text" name="contactContents"/></td>
                 </tr>
                 <tr>
                     <td>学校</td>
                     <td><input type="text" name="contactStart"/></td>
                </tr>
                <tr>
                     <td>学费是否缴齐</td>
                     <td><input type="text" name="contactEnd"/></td>
                </tr>
                <tr>
                     <td>辅导员</td>
                     <td><input type="text" name="StaffName"/></td>
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
