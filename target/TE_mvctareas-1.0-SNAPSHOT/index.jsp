<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tarea"%>
<%
    ArrayList<Tarea> lista= (ArrayList<Tarea>)session.getAttribute("listatar");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de tareas</h1>
        <a href="MainController?op=nuevo">Nueva tarea</a>
        <table border="1">            
                <tr>
                    <th>Id</th>
                    <th>Tareas</th>
                    <th>Prioridad</th>
                    <th>Completado</th>
                    <th></th>
                    <th></th>
                </tr>           
               <%
                   if (lista !=null){
                       for (Tarea item : lista){
                                      
               %>
                <tr>
                    <td><%=item.getId() %></td>
                    <td><%=item.getTareas() %></td>
                    <td><%=item.getPrioridad() %></td>
                    <td><%=item.getCompletado() %></td>
                    <td><a href="MainController?op=editar&id=<%=item.getId() %>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%=item.getId() %>"
                           onclick="return confirm('Esta seguro de eliminar el registro ?');">Eliminar</a></td>                    
                </tr> 
                <%
                     }
                  }
                %>
        </table>
    </body>
</html>
