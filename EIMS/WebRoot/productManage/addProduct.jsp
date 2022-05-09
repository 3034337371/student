

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加学生兴趣爱好信息</title>
    </head>
    <body background="../image/12.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/productManage/addProductCheck.jsp" method="post">
            <table align="center" width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/productManage/lookProduct.jsp">学生兴趣爱好查询</a></td>
                    <td>学生兴趣爱好添加</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center" width="300" >
                 <tr>
                     <th colspan="2" align="center">添加学生兴趣爱好信息</th>
                 </tr>
                 <tr>
                     <td>学生姓名</td>
                     <td><input type="text" name="productName"/></td>
                 </tr>
                 <tr>
                     <td>学生性别</td>
                     <td><input type="text" name="productModel"/></td>
                 </tr>
                 <tr>
                     <td>学生年龄</td>
                     <td><input type="text" name="productNumber"/></td>
                 </tr>
                 <tr>
                     <td>兴趣爱好</td>
                     <td><input type="text" name="productPrice"/></td>
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
