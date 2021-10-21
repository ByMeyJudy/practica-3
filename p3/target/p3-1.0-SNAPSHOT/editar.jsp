<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP - Libros - Editar</title>
    </head>
    <body bgcolor="cadetblue">
        <font face="Candara" size="3.5" color=LightYellow>
        <h1>
            <c:if test="${requestScope.op =='nuevo'}" var="res" scope="request">
                Registro de
            </c:if>
            <c:if test="${requestScope.op =='modificar'}" var="res" scope="request">
                Modificar
            </c:if>
            Libro
        </h1>
        <jsp:useBean id="miLibro" scope="request" class="com.emergentes.modelo.Libro"/>

        <form action="Controller" method="post">
            <table border="1">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<jsp:getProperty name="miLibro" property="id"/>"/>
                    </td>
                </tr>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="<jsp:getProperty name="miLibro" property="titulo"/>"/>
                    </td>
                </tr>
                <tr>
                    <td>Autor</td>
                    <td><input type="text" name="autor" value="<jsp:getProperty name="miLibro" property="autor"/>"/>
                    </td>
                </tr>
                <tr>
                    <td>Resumen</td>
                    <td><textarea name="resumen" rows="5" cols="22"><jsp:getProperty name="miLibro" property="resumen"/></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Medio</td>
                    <td><input type="radio" name="medio"  value="Fisico"
                               <c:if test="${miLibro.medio=='Fisico'}"
                                     var="res" scope="request"> checked="checked"
                               </c:if>
                               />Fisico<BR>
                        <input type="radio" name="medio" value="Magnetico"
                               <c:if test="${miLibro.medio=='Magnetico'}"
                                     var="res" scope="request"> checked="checked"
                               </c:if>
                               /> Magnetico
                    </td>
                </tr>

                <tr>
                    <td>
                        <input type="hidden" name="opg" value="${requestScope.op}" />
                        <input type="hidden" name="op" value="grabar" />
                    </td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
