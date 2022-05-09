# 1 概述

## 1.1课程设计目的

学生信息档案的管理对于学校的管理者来说至关重要，学生信息是高等学校非常重要的一项数据资源，是一个教育单位不可缺少一部分。特别是近几年来，国家政策的调整，我国高等院校大规模的扩招，给高等院校的教学管理、学生管理、后勤管理等方面都带来不少的冲击。其包含的数据量大，涉及的人员面广，而且需要及时更新，故较为复杂，难以单纯地依人工管理，而且传统的人工管理方式既不易于规范化，管理效率也不高，目前我国各类高等院校中还有相当一部分学生档案管理还停留在纸介质的基础上，尤其是中、小学对学生档案的管理更是落后，这样的管理机制已经不能适应时代发展的要求，其管理方法将浪费许多人力和物力。随着科学技术的不断提高，计算机科学与技术日渐成熟，计算机应用的普及已进入人类社会生活的各个领域，并发挥着越来越重要的作用。这种传统的手工管理模式必然被以计算机为物质基础的信息管理方法所取代。

作为计算机应用的一部分，使用计算机对学生档案进行管理，有着手工管理所无法比拟的优点，如：检索迅速、查找方便、可靠性高、存储量大、保密性好、寿命长、成本低等。这些优点能够极大地提高学生档案管理的效率，也是学校向科学化、正规化管理发展的必要条件，更是各个高等院校与世界接轨的重要条件。

## **1.2预备知识**

### JAVAWeb：

Java Web，是用Java技术来解决相关web互联网领域的技术栈。web包括：web服务端和web客户端两部分。Java在客户端的应用有Java Applet，不过使用得很少，Java在服务器端的应用非常的丰富，比如Servlet，JSP、第三方框架等等。Java技术对Web领域的发展注入了强大的动力。

### MySQL：

MySQL是一个**关系型数据库管理系统，**由瑞典MySQL AB 公司开发，属于 Oracle 旗下产品。MySQL 是最流行的关系型数据库管理系统之一，在 WEB 应用方面，MySQL是最好的 RDBMS (Relational Database Management System，关系数据库管理系统) 应用软件之一。

MySQL是一种关系型数据库管理系统，关系数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。

MySQL所使用的 SQL 语言是用于访问数据库的最常用标准化语言。MySQL 软件采用了双授权政策，分为社区版和商业版，由于其体积小、速度快、总体拥有成本低，尤其是开放源码这一特点，一般中小型网站的开发都选择 MySQL 作为网站数据库。

### JSP：

**JSP**（全称**J**ava**S**erver **P**ages）是由Sun Microsystems公司主导创建的一种动态网页技术标准。JSP部署于网络服务器上，可以响应客户端发送的请求，并根据请求内容动态地生成HTML、XML或其他格式文档的Web网页，然后返回给请求者。JSP技术以Java语言作为脚本语言，为用户的HTTP请求提供服务，并能与服务器上的其它Java程序共同处理复杂的业务需求。

JSP将Java代码和特定变动内容嵌入到静态的页面中，实现以静态页面为模板，动态生成其中的部分内容。JSP引入了被称为“JSP动作”的XML标签，用来调用内建功能。另外，可以创建JSP标签库，然后像使用标准HTML或XML标签一样使用它们。标签库能增强功能和服务器性能，而且不受跨平台问题的限制。JSP文件在运行时会被其编译器转换成更原始的Servlet代码。JSP编译器可以把JSP文件编译成用Java代码写的Servlet，然后再由Java编译器来编译成能快速执行的二进制机器码，也可以直接编译成二进制码。

## 1.3实训的内容和要求

学生信息管理系统是针对学校人事处的大量业务处理工作而开发的管理软件，主要用于学校学生信息管理，总体任务是实现学生信息关系的系统化、科学化、规范化和自动化，其主要任务是用计算机对学生各种信息进行日常管理，如查询、修改、增加、删除，另外还考虑到学生选课，针对这些要求设计了学生信息管理系统。推行学校信息管理系统的应用是进一步推进学生管理规范化、电子化、控制辍学和提高义务教育水平的重要举措。

学生信息的内容以及要求包括：

1. 能够从屏幕上读取一个学生的信息并将信息存入到数据文件和数据库中。

2. 能够将指定的信息从文件中删除。

3. 能够按学号、姓名对学生的信息进行检索并将检索结果显示在屏幕上。

4. 可以统计全部学生的学生信息。

5. 能够统计全部学生的兴趣爱好。

6. 可以统计学生是否缴齐学费信息。

7. 能够修改管理员的账号和密码，以及添加和删除。

8. 可以统计小组成员的全部信息

------

# 2 需求分析

## 2.1系统目标

用计算机对学生档案进行管理，有着手工管理所无法比拟的优点，如：检索迅速、查找方便、可靠性高、存储量大、保密性好、寿命长、成本低等。这些优点能够极大地提高学生档案管理的效率，也是学校向科学化、正规化管理发展的必要条件，更是各个高等院校与世界接轨的重要条件。

系统针对学校学生信息的特点以及管理中实际需要而设计，能够有效地实现学生信息管理的信息化，减轻管理人员的工作负担，高效率、规范化地管理大量的学生信息，并避免人为操作的错误和不规范行为。

## **2.2功能分析：**

1）．班级成员管理： 可以显示出班级学生的信息，以及对学生信息的添加，修改，删除等功能。

2）．学生缴费查询： 可以查询到学生是否缴齐学费。

3）．班级事务反馈： 可以查询到班级成员对班级事务的反馈以及添加班级事务反馈的信息。

4）．学生兴趣爱好： 对学生的兴趣爱好进行管理，可以查询学生的兴趣爱好以及添加学生的兴趣爱好。

5）．小组成员管理：对小组成员的成员进行管理，可以自行添加小组成员信息，以及查询小组成员信息。

6）．管理员信息： 对登入到后台的管理员账号和密码进行保存，以及添加管理员账号、修改管理员账号、删除管理员账号等。

7）．退出系统：实现点击“退出系统”就退出后台并返回到登入界面。

8）．登入系统：输入正确的管理员账号和密码才能进入后台管理系统，账号或密码错误将不能正常进入后台管理页面。

## **2.3开发环境：**

MyEclipse2017、MySQL5.7、JDK1.8.0、Tomcat8.5、Navicat Premium 12

------

# 3 设计步骤

## 3.1系统流程图

![img](https://img-blog.csdnimg.cn/e5dbe5378595416991c7597381941e28.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)



## **3.2程序功能分配**

班级成员管理、学生缴费查询、班级事务反馈、学生兴趣爱好、小组成员管理、管理员信息、退出系统、登入系统

## **3.3功能详细分析**

学生管理系统由班级成员管理、学生缴费查询、班级事务反馈、学生兴趣爱好、小组成员管理、管理员信息、退出系统、登入系统组成。具体如下：

1）．班级成员管理：该模块由班级成员查询、班级成员添加、班级成员修改、班级成员删除组成。

2）．学生缴费查询：该模块由学生缴费查询、学生缴费添加组成。

3）．班级事务反馈：该模块由班级事务反馈查询、班级事务反馈添加组成。

4）．学生兴趣爱好：该模块由学生兴趣爱好查询、学生兴趣爱好添加组成。

5）．小组成员管理：该模块由小组成员查询、小组成员添加组成。

6）．管理员信息：该模块由管理员信息查询、管理员信息添加、管理员信息修改、管理员信息删除组成。

7）．退出系统：由后台管理系统退出并返回到登入界面。

8）．登入系统：要求输入正确的管理员账号和密码才能进入后台管理系统

------

# **4 详细设计(要有数据库可视化表)**

## **4.1数据库表**

![img](https://img-blog.csdnimg.cn/bb48c716ba7a4bfeaede1567c8c980d6.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)
![img](https://img-blog.csdnimg.cn/75c891aeb2454b0aa3725810b601c6e5.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/58abfbc3b009425990d0f1288c952a4d.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_18,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/6850bde6b6884eb49c6cb824a45df997.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)


![img](https://img-blog.csdnimg.cn/e2670f74ae0e4e079a8661336bcc59c5.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/1406cde5ea9b43639fec24b49c5880f2.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

##  4.2部分代码展示：

```html
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加管理员信息</title>
    </head>
    <body background="../image/13.jpg"style=" background-repeat:no-repeat ;
               background-size:100% 100%;
               background-attachment: fixed;">
        <form action="http://localhost:8080/EIMS/Admin/AddAdminCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/EIMS/Admin/Adminlogin.jsp">管理员信息查询</a></td>
                    <td>管理员信息添加</td>
                    <td><a href="http://localhost:8080/EIMS/Admin/UpdateAdmin.jsp">管理员信息修改</a></td>
                    <td><a href="http://localhost:8080/EIMS/Admin/DeleteAdmin.jsp">管理员信息删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                     <th colspan="4" align="center">添加管理员信息</th>
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
```


```html
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理管理员信息修改数据</title>
    </head>
    <body>
         <%
            String userName =new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
            String password =new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
            if(userName.equals("")){
                response.sendRedirect("http://localhost:8080/EIMS/Admin/UpdateAdmin.jsp");
            }
            else{
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/eims?useUnicode=true&characterEncoding=gbk";
                    con=DriverManager.getConnection(url,"root","root");
                    st=con.createStatement();
                    String sql="update user set userName='"+userName+"',password='"+password+"'where userName='"+userName+"'";
                    st.executeUpdate(sql);
                    response.sendRedirect("http://localhost:8080/EIMS/Admin/Adminlogin.jsp");
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
```




------

# 5 程序运行

![img](https://img-blog.csdnimg.cn/b1d923ff74214b449f151ea120139c02.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/1a5c05057e4447cc9187a0ca702232de.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/e75c24c3e0a8401c93cd692022356cc3.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/335e9971ad294fb9a5fc5dc91d4f38d0.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/70c613b9fce046ca99ba48bc6b5727b2.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/6fbfbb585fb84a1ba8e6f0ef7cc3c27e.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)
![img](https://img-blog.csdnimg.cn/1c63e2a0244347149b84b389950d64e6.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)

![img](https://img-blog.csdnimg.cn/7648e36686d049c59b672172e35987d6.png?x-oss-process=image/watermark,type_d3F5LXplbmhlaQ,shadow_50,text_Q1NETiBA5aW55LiO5YmR5oSP55qG5aSx,size_20,color_FFFFFF,t_70,g_se,x_16)



------

#  心得体会

我想简单的谈谈我在JSP程序设计这门课中都学到了什么，JSP的全称是 Java Server Pages，它是一种动态页技术。我们需要配置的坏境有JDK，Tomcat，还要用到Webstorm、Dreamweaver，MyEclipse等编程软件。最开始我们学习了HTML这种文本标记语言，因为在暑假的时候有自学，所以学习起来感觉很轻松，用HTML可以做一些静态站，在我第一次用HTML做出第一个页时我真的好高兴啊，觉得好神奇啊！后面我们学到做动态站，其中就涉及到JSP内部对象及内部对象所对应的一些方法。再就是JSP与数据库的联系，怎么样引用数据库。通过以上所学到的知识我们可以基本上上做出一个比较实用的小站，比如一个班级站，在上面可以上传下载一些学习资料，以及存储班上同学的一些基本信息，给班上同学提供一个交流平台等等。这也是我在接下来的程序设计中所想完成的任务。记得老师在第一节课的时候就说我们这门课注重项目实战，也就是说要多上机操作。当一个问题想了好久也无法解决时，我感到沮丧与无助。当经过努力解决了一个程序上的难题时，我感到无比的喜悦。当经过每天为了编写代码一坐就是四五个小时，我感到无比的痛苦。但艰难痛苦已成往事，灿烂的明天向我走来，今天我总算迎接了胜利的果实，以前的辛酸与痛苦化作我坚强的力量，将在我将来的人生历程中，为我的美好明天打下坚实的基础。经过了这次磨练，我又一次感受到只有付出才能有收获，成功永远是属于不懈努力的人们的。

------

# 总结：

本次学生信息管理系统是基于EIMS系统进行修改的，由于临近交接，所剩时间不多，就进行了简单的修改，并增加了一点小功能（也就是Ctrl C+V）。该项目运用到的知识有Java、JSP、 MySQL、HTML知识，其中主要知识以JSP和HTML为主，增删改查运用到的知识是：JSP+JDBC+MySQL。所有的数据均保存到MySQL中。EIMS源码百度都是可以搜索到的，小伙伴们可以通过自己的学习程度进行合适的修改。如果有需要我这个代码的可以直接评论或者私信我，我看到后会选择公开，也欢迎各位小伙伴们一起学习一起讨论，在学习编程这条路上你并不孤单！感谢各位小伙伴支持！

# 

# 

# 

# 

# 

# 

# 

# 

# 

# 

# 

# 
