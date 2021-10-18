<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="com.emergentes.modelo.GestorLibros"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    if(session.getAttribute("agenda") == null){
        GestorLibros objeto1 = new GestorLibros();
        
        objeto1.insertarLibro(new Libro(1, "Programacion I", "Miguel Angel Rodriguez Almeida", "Metodologia de la programacion", 1));
        objeto1.insertarLibro(new Libro(2, "Programacion II", "Hector Arturo Florez Fernandez", "Programacion Orientada a Objetos Usando Java", 2));
        objeto1.insertarLibro(new Libro(3, "Programacion II", "Efrain Oviedo Regino", "Logica de programacion Orientada a Objetos", 1));
        
        session.setAttribute("agenda", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Practica 3</title>
    </head>
    <body>
        <h1>Lista de Libros</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Resumen</th>
                <th>Medio</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.autor}</td>
                    <td>${item.resumen}</td>
                    <td>${item.medio}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
