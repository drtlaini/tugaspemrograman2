<%-- 
    Document   : proses-edit
    Created on : 06 Des 23, 11:06:45
    Author     : durotul aini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <% 
          String nim = request.getParameter("nim");
          String nama = request.getParameter("nama");
          String alamat = request.getParameter("alamat");
          String prodi = request.getParameter("prodi");
          if (nim !=null){
              Connection conn =null;
              PreparedStatement ps = null;
              try {
                  Class.forName ("com.mysql.jdbc.Driver");
                  conn = DriverManager.getConnection ("jdbc:mysql://localhost/unpamjavaweb","root","");
                  String query ="UPDATE mahasiswa SET nim=?, nama=?, alamat=?, prodi=? WHERE nim="+nim+"";
                  ps.setString(1, nim);
                  ps.setString(2, nama);
                  ps.setString(3, alamat);
                  ps.setString(4, prodi);
                          int i=ps.executeUpdate();
                          response.sendRedirect("index.jsp");
              } catch (Exception e){
                  response.sendRedirect("idex.jsp");
              }
          }%>
    </body>
</html>
