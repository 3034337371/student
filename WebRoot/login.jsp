
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>小组成员管理系统--登录页面</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body background="image/login.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <br><br><br><br><br><br>
        <br><br><br><br><br><br>
        <center>
        <form action="loginCheck.jsp" method="post">
            <table border="0">
                <tr>
                   <td>
                      <table border="1" cellspacing="0" cellpadding="0" bgcolor="#FAEBD7" width="300" height="100">
                           <tr height="130">
                              <td align="center">
                                  输入用户姓名<input type="text" name="userName" size="20" ><br>
                                  输入用户密码<input type="password" name="password" size="21" ><br>
                                  <input type="submit" value="登 录" size="12"/>&nbsp;&nbsp;&nbsp;
                                  <input type="reset" value="清  除" size="12"/>
                               </td>
                             </tr>
                             
                         </table>
                      </td>
                  </tr>
              </table>
          </form>
         </center>
    </body>
</html>