<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String address=request.getParameter("address");
    String phone=request.getParameter("phone");
    
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","admin","abcd1234");
    Statement st=conn.createStatement();
    
    int i=st.executeUpdate("insert into contact(id,name,address,contactnum)values('"+id+"','"+name+"','"+address+"','"+contactnum+"')");
    out.println("Data is successfully inserted");
    
}
catch(Exception e)
{
    out.println(e.toString());
    out.print(e);
}
 %>        