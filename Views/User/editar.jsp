<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="model.entity.*" %>
     <%@ page import="java.util.List"%>
<%@ page import="model.entity.Rol"%>
<%List<Rol> roles = (List<Rol>)request.getAttribute("roles");%>
	<%User user = (User)request.getAttribute("users");
	
	%>
<!DOCTYPE html>
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
<link rel="stylesheet" type="text/css" href="/css/styleLab8.css">

<link href="https://fonts.googleapis.com/css?family=Calligraffitti" rel="stylesheet">
	
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
        <br><br><br>
	<div class="container text-center py-5">
		<h1>Editar Producto</h1>
	</div>

	</head>
<body>

		<div class="jumbotron boxlogin">
			<form action="/users/edit" method="post">
				
				<label>Ingrese email</label>
			  <input type="hidden" name="id" value="<%=user.getId() %>">
			<input type="email" name="email"   placeholder="Ingrese su email" value="<%=user.getEmail() %>" required class="form-control"> <br>
			<label>Ingrese su fecha de Nacimiento</label>
			<input type="date" name="date" min="1900-01-01" max="2005-01-01"  value="<%=user.getBirth() %>"	required class="form-control" ><br>
				<label >Selecciones su genero</label><br>
			 <input type="radio"  name="gender" id="hombre" value="true" checked> 
			 <label for="hombre">Masculino</label> 
			 <input type="radio" name="gender" id="mujer" value="false"> 
			 <label for="mujer">Femenino</label><br>
			 <input type="radio"  name="estado" id="true" value="true" checked> 
			 <label for="hombre">true</label> 
			 <input type="radio" name="estado" id="false" value="false"> 
			 <label for="mujer">false</label><br>
			 
			 <label>Seleccione su rol: </label>
			 <select name="role" class="form-control" >
			 <% for (Rol role: roles){%>
			 
			 <option value="<%=role.getId()%>"><%=role.getNombre() %> </option>
			 <%} %>
			 	</select> 
			  <input type="submit" value="Editar" name="Enviar">
			</form>
		</div>
		 <footer id="pie">Valeria Nicoll Calderon Rodriguez - C.U.I:20162908 
          </footer>
          <script>
	(function(){
			var formulario = document.getElementsByName('Formulario')[0],
				elementos = formulario.elements,
				boton = document.getElementById('submit');
			
			var validarNombre = function(e){
				if(formulario.email.value.length < 1){
					alert("Llene el campo Rol.");
					e.preventDefault();
				}
				else if(isNaN(formulario.email.value) == false){
					alert("El campo ROL tiene caracter/es no válidos.");
					e.preventDefault();
				}
				else{
					bloqueoBoton(e);
				}
			}
			var bloqueoBoton = function(e){
				document.forms['Formulario']['Enviar'].disabled=true;
			}
			var validar = function(e){
				validarNombre(e);
			}
			formulario.addEventListener("submit",validar);
		}())
	</script>
               <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

                            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>

                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	</body>
</html>