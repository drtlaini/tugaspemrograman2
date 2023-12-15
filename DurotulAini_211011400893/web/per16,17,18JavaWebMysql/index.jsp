<%-- 
    Document   : index
    Created on : 05 Des 23, 15:58:04
    Author     : durotul aini
--%>
<%--sesudah dimodifikasi--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="style.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Mahasiswa</title>
    </head>
    <body>
       <%@page import="java.sql.*"%>
       <% Connection connection = null;
       Statement statement = null;
       ResultSet rs=null;
       try {
           String connectionURL ="jdbc:mysql://localhost/unpamjavaweb";
           String username = "root";
           String password ="";
           Class.forName ("com.mysql.jdbc.Driver");
           connection = DriverManager.getConnection(connectionURL, username, password);
           
           statement = connection.createStatement();
           String query ="SELECT * FROM mahasiswa";
           rs = statement.executeQuery(query);
           String topmenu="<nav><ul>"
                       + "<li><a href=index.jsp>HOME</a></li>"
                       + "<li><a href=tambah.jsp>Tambah Data Mahasiswa</a>"
                       + "</li>"
                       + "</ul>"
                       + "</nav>";
           
       
       %>
    <center>
        <table width="80%" bgcolor="#eeeeee">
            <tr>
                <td colspan="4" align="center">
                    <br>
                    <h2 colspan="4" align="center">
                        Data Mahasiswa</h2>
                    <h1 colspan="4" align="center">
                        UNIVERSITAS PAMULANG
                    </h1>
                    <h4 colspan="4" align="center">
                        Jl. Surya Kencana NO.1 Pamulang, Tangerang Selatan, Banten
                    </h4>
                    <%=topmenu%>
                    <br>
                </td>
            </tr>
            <br>
            <tr colspan="4" align="center">
                <th colspan="1" align="center">NIM</th>
                <th colspan="1" align="center">Nama</th>
                <th colspan="1" align="center">Alamat</th>
                <th colspan="2" align="center">Program Studi</th>
            </tr>
            <% while (rs.next()){%>
            <tr colspan="4" align="center">
                <td colspan="1" align="center"><%out.println(rs.getInt("nim")); %></td>
                <td colspan="1" align="center"><%out.println(rs.getString("nama")); %></td>
                <td colspan="1" align="center"><%out.println(rs.getString("alamat")); %></td>
                <td colspan="1" align="center"><%out.println(rs.getString("prodi")); %></td>
            </tr>
            <%}%>
            <%
                rs.close();
                statement.close();
                connection.close();
                } catch (Exception e){
System.err.println("GAGAL KONEKSI"+e.getMessage());
out.println("GAGAL"+e.getMessage());
}
%>
<tr><td colspan="4" align="center" bgcolor="#eeeeff">
        <small>
            Copyright &copy; 2022 Universitas Pamulang<br>
            Jl. Surya Kencana No. 1 Pamulang, Tengerang Selatan, Banten<br>
        </small>
    </td></tr>
            
        </table>
    </center>
    </body>
</html>