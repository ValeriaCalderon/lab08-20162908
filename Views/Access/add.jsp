<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<%List<Rol> roles = (List<Rol>)request.getAttribute("roles");%>
<%List<Resources> resources = (List<Resources>)request.getAttribute("resources");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimun-scale=1.0">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<link rel="stylesheet" type="text/css" href="/css/style.css" >

<link href="https://fonts.googleapis.com/css?family=Calligraffitti"
	rel="stylesheet">
<title>Añade</title>

	
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
        <br><br></br></br>
	<div class="container text-center py-5">
		<h1>Añadir Access</h1>
	</div>


</head>

<body>
     <% if (roles.isEmpty()){ %>
				
				<h1><center>Lista de roles vacia, ingrese uno porfavor: <a id="add"href="/roles/add">AÑADIR</a></center></h1>
			<%} else if(resources.isEmpty()) { %>
			<h1><center>Lista de Recursos vacia, ingrese uno porfavor: <a id="add"href="/resources/add">AÑADIR</a></center></h1>
			
			<%} else{ %>


				
<div class="jumbotron boxlogin">
		<form action="/access/add" method="post" id="flogin" name="Formulario" onsubmit="document.forms['Formulario']['Enviar'].disabled=true;">
			
			 <label>Seleccione su rol: </label>
			 <select name="rol" class="form-control" >
			 <% for (Rol role: roles){%>
			 
			 <option value="<%=role.getId()%>"><%=role.getNombre() %> </option>
			 <%} %>
			 	</select> 
			 	<label>Seleccione un recurso: </label>
			 <select name="recurso" class="form-control" >
			 <% for (Resources resourc: resources){%>
			 
			 <option value="<%=resourc.getId()%>"><%=resourc.getUrl() %> </option>
			 <%} %>
			 	</select> 
			 	<label>Permitido</label><br>
			 	<input type="radio"  name="estado" id="hombre" value="true" checked> 
			 <label for="true">TRUE</label> 
			 <input type="radio" name="estado" id="mujer" value="false"> 
			 <label for="false">FALSE</label>
			  <input type="submit" value="Añadir" name="Enviar">
		</form>
			 	
	</div>
		
<%} %>
	 <footer id="pie">Valeria Nicoll Calderon Rodriguez - C.U.I:20162908 
          </footer>
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
</body>
</html>