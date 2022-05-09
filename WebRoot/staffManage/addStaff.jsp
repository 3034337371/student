
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加小组成员信息</title>
    </head>
    <body background="../image/9.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/staffManage/addStaffCheck.jsp" method="post">
            <table align="center" width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/staffManage/lookStaff.jsp">小组成员查询</a></td>
                    <td>小组成员添加</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center" width="300" >
                 <tr>
                    <th colspan="8" align="center">添加小组成员信息</th>
                 </tr>
                 <tr>
                     <td>姓名</td>
                     <td><input type="text" name="staffName"/></td>
                 </tr>
                 <tr>
                     <td>性别</td>
                     <td><input type="text" name="staffSex"/></td>
                 </tr>
                 <tr>
                     <td>年龄</td>
                     <td><input type="text" name="staffAge"/></td>
                 </tr>
                 <tr>
                     <td>学历</td>
                     <td><input type="text" name="staffEducation"/></td>
                </tr>
                <tr>
                     <td>班级</td>
                     <td><input type="text" name="staffDepartment"/></td>
                </tr>
                <tr>
                     <td>入学时间</td>
                     <td><input type="text" name="staffDate"/></td>
                </tr>
                <tr>
                     <td>职务</td>
                     <td><input type="text" name="staffDuty"/></td>
                </tr>
                <tr>
                     <td>政治面貌</td>
                     <td><input type="text" name="staffWage"/></td>
                </tr>
                <tr align="center">
                     <td colspan="2">
                         <input name="sure" type="submit" value="确认">
                         &nbsp; &nbsp; &nbsp; &nbsp;
                         <input name="clear" type="reset" value="取消">
                     </td>
                </tr>
            </table>
        </form>
    </body>
</html>
