<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="model.entity.Resources" %>
	<%Resources resour = (Resources)request.getAttribute("resources"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vista del Resource</title>
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/estilTabla.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
	<header>
        <div class="wrapper">
            
            
               <ul class="nav">
                     <li><a href="/roles"> Roles </a>
                       <ul>
                            <li><a id="add"href="/roles/add" >Añadir rol</a></li>
                             <li><a id="add"href="/roles">Lista roles</a></li>
                        </ul>
                    </li>
                    <li><a href="/users"> User </a>
                       <ul>
                            <li><a id="add"href="/users/add" >Añadir Usuario</a></li>
                             <li><a id="add"href="/users">Lista Usuario</a></li>
                        </ul>
                    </li>
                     <li><a href="/resources"> Recursos </a>
                       <ul>
                            <li><a id="add"href="/resources/add" >Añadir recurso</a></li>
                             <li><a id="add"href="/resources">Lista recurso</a></li>
                        </ul>
                    </li>
                     <li><a href="/productos"> Productos </a>
                       <ul>
                            <li><a id="add"href="/productos/add" >Añadir Producto</a></li>
                             <li><a id="add"href="/productos">Lista Producto</a></li>
                        </ul>
                    </li>
                    <li><a href="/access"> Access </a>
                       <ul>
                            <li><a id="add"href="/access/add" >Añadir access</a></li>
                             <li><a id="add"href="/access">Lista access</a></li>
                        </ul>
                    </li>
                      <li><a href="/users/login"> Login</a></li>
                     <li><a href="/users/logout"> LogOut</a></li>
                    
                </ul>
        </div>
        
        </header>
        <br><br><br><br><br>
</head>
<body>
		<div  align=center width=100%>
			<h1 id="id" name="<%=resour.getId() %>">Perfil del Resource</h1>
			<table id="customers">
				<tr>
					<th>ID</th>
					<td><%=resour.getId() %></td>
				</tr>
				<tr>
					<th>Url</th>
					<td><%=resour.getUrl() %></td>
				</tr>
				<tr>
					<th>Status</th>
					<td><%=resour.isStatus()  %></td>
				</tr>
				<tr>
					<th>Fecha Creacion</th>
					<td><%=resour.getFecha() %></td>
				
				</tr>
			</table>
		</div>
		 <footer id="pie">Valeria Nicoll Calderon Rodriguez - C.U.I:20162908 
          </footer>
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
		</body>
		
</html>