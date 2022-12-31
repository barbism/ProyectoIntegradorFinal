<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.* " %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insertar DB</title>
</head>
<body>
<%
      
  Class.forName("com.mysql.cj.jdbc.Driver");
  
 try{
	 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/comprarticket","root","");
	 Statement stm = cn.createStatement();
	 
	 out.print("Buscando error");
	 
	 
     ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
 
     while(rsId.next()){
    	 out.print("Buscando error");
    	 int eid = rsId.getInt(1);
    	
    	 int valor = 0;
    	 out.print("Buscando error");
    	 
    	String consulta= "UPDATE ticket SET alta = "+ valor +" WHERE id = " + eid+"" ;
    	
    	out.print("Buscando error");
    	
    	stm.executeUpdate(consulta);
    	out.print("Buscando error");
    	
     }
     
	 
	
	 
 } catch(Exception e){
	 out.print("Error al cargar la DB");
	 
 }

%>


<jsp:include page="comprar-tickets.html"></jsp:include>



</body>
</html>