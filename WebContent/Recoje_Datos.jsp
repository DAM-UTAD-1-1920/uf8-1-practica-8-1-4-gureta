<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


String nombre=request.getParameter("nombre");

String apellido=request.getParameter("apellido");

String usuario=request.getParameter("usuario");

String contra=request.getParameter("contra");

String pais=request.getParameter("pais");

String tecno=request.getParameter("tecnologias");



Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "");

java.sql.Statement miStatement= miConexion.createStatement();

String instruccionSql="INSERT INTO USUARIOS(Nombre, Apellidos, Usuarios, Contrasena, Pais, Tecnologia) VALUES('" + nombre+"','" + apellido+"','" + contra+"','" + pais+"','" + tecno+"')";

miStatement.executeUpdate(instruccionSql);

out.println("Registrado con exito");



%>




</body>
</html>