

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理班级成员修改数据</title>
    </head>
    <body>
         <%
            String clientName=new String(request.getParameter("clientName").getBytes("ISO-8859-1"),"UTF-8");
            String clientTelephone=new String(request.getParameter("clientTelephone").getBytes("ISO-8859-1"),"UTF-8");
            String clientAddress=new String(request.getParameter("clientAddress").getBytes("ISO-8859-1"),"UTF-8");
            String clientEmail=new String(request.getParameter("clientEmail").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
            if(clientName.equals("")){
                response.sendRedirect("http://localhost:8080/EIMS/clientManage/updateClient.jsp");
            }
            else{
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
                    con=DriverManager.getConnection(url,"root","root");
                    st=con.createStatement();
                    String sql="update client set clientName='"+clientName+"',clientTelephone='"+clientTelephone+"',clientAddress='"+clientAddress+"',clientEmail='"+clientEmail+"'where clientName='"+clientName+"'";
                    st.executeUpdate(sql);
                    response.sendRedirect("http://localhost:8080/EIMS/clientManage/lookClient.jsp");
                }
                catch (Exception e){
                    e.printStackTrace();
                }
                finally{
                    st.close();
                    con.close();
                }
            }
        %>
    </body>
</html>