<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="com.emergentes.modelo.GestorLibro"%>
<%
    if(session.getAttribute("agenda")==null){
        GestorLibro objeto1 = new GestorLibro();
        
        objeto1.insertar(new Libro(1,"HABITOS ATOMICOS","James Clear","Trata de los habitos de una persona exitosa","Fisico"));
        objeto1.insertar(new Libro(2,"Harry Potter","J.K. Rowling","Harry Potter es una heptalogía de novelas fantásticas escrita por la autora británica J. K. Rowling, en la que se describen las aventuras del joven aprendiz de mago Harry Potter y sus amigos Hermione Granger y Ron Weasley, durante los siete años que pasan en el Colegio Hogwarts de Magia y Hechicería.","Magnetico"));

        session.setAttribute("agenda", objeto1);
    }
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Libros</title>
    </head>
    <body bgcolor="cadetblue">
        <font face="Candara" size="3.5" color=LightYellow>
        <h1>Lista de Libros</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
                <tr>
                    <th>ID</th>
                    <th>TITULO</th>
                    <th>AUTOR</th>
                    <th>RESUMEN</th>
                    <th>MEDIO</th>
                    <th colspan="2">ACCIONES</th>
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
