<%-- 
    Document   : getDetails
    Created on : Mar 2, 2019, 3:57:23 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String vno=request.getParameter("vno");
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1/TollApp","root","8858");
    PreparedStatement stmt=con.prepareStatement("Select * from vehicles where  vnumber=?");
    stmt.setString(1,vno);
    ResultSet rs=stmt.executeQuery();
    String s="N";
    if(rs.next())
    {
        s=rs.getString(2)+"#";
        s=s+rs.getString(3)+"#";
        s=s+rs.getString(4)+"#";        
        s=s+rs.getString(1);        
    }
    out.write(s);
    con.close();
%>