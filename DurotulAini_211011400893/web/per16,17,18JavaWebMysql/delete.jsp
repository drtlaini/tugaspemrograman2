<%-- 
    Document   : delete
    Created on : 06 Des 23, 11:24:56
    Author     : durotul aini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hapus</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            String nim= request.getParameter ("nim");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn =DriverManager.getConnection ("jdbc:mysql://localhost/unpamjavaweb", "root","");
                Statement st=conn.createStatement();
                int i=st.executeUpdate ("DELETE FROM mahasiswa WHERE nim="+nim+"");
                response.sendRedirect("index,jsp");
            } catch (Exception e){
                
                response.sendRedirect("index.jsp");
                
            } %>
    </body>
</html>
