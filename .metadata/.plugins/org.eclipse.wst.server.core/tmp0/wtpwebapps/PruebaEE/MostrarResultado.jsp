<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Arrays" %>
<%@page import="java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="description" content="Japancar MM, distribuidor oficial de Mazda y Mitsubishi en Barcelona">
	<meta name="keywords" content="Japancar MM, Mazda, Mitsubishi, Barcelona">
	<title>Japancar MM | Mostrar</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<style>
		body{
      		background-color: #E9967A; 
      	}
      	
		main{
			font-size: 1em;
			text-align: left;
			padding-top: 200px;
      		padding-right: 20px;
      		padding-bottom: 275px;
      		padding-left: 20px;
		}
		
		h4{
			font-weight: bold;
		}
		
		table, th, td {
  			border: 1px solid black;
  			text-align: center;
  			vertical-align: middle;
  			padding-top: 5px;
      		padding-right: 5px;
      		padding-bottom: 5px;
      		padding-left: 5px;
		}
	</style>
</head>
<body>
	<div id="wrapper">
		<header>
			<div class="logo">
				<h1><span>Japancar</span> MM</h1>
				<p>Concesionario Oficial Mazda y Mitsubishi</p>
			</div>
			<nav>
				<ul>
					<li><a href="index.html">Inicio<hr></a></li>
					<li><a href="SobreNosostros.html">Sobre Nosotros<hr></a></li>
					<li><a href="Concesionarios.html">Concesionarios<hr></a></li>
					<li><a href="Contacto.html">Contacto<hr></a></li>
				</ul>
			</nav>
		</header>
		<main>
	<%
	//ArrayList<String> datos = new ArrayList<String>(); //recogerlo del servlet "anterior" con request.getAttribute("datos")
	//request.getAttribute("datos") devuelve Object, cast (ArrayList<String>)
	ArrayList<Object[]> datos = (ArrayList<Object[]>) session.getAttribute("datosFiltrados"); //para mostrar el n�mero de coches seleccionados
	%>
		
	<!--COCHES SELECCIONADOS: <!%= Arrays.toString((String[])session.getAttribute("checkbox")) %> -->
	<h4>N�mero de coches seleccionados: <%=datos.size()%></h4>
	<br>
	<table>
	<tr bgcolor= "#556B2F">
	<td><strong>N�mero</strong></td>
	<td><strong>Isbn</strong></td>
 	<td><strong>Marca</strong></td>
    <td><strong>Modelo</strong></td>
    <td><strong>Acabado</strong></td>
    <td><strong>N�mero de puertas</strong></td>
    <td><strong>Tipo de carrocer�a</strong></td>
    <td><strong>Cambio</strong></td>
    <td><strong>Combustible</strong></td>
 	<td><strong>Potencia (CV)</strong></td>
    <td><strong>Consumo medio (l)</strong></td>
    <td><strong>Longitud (mm)</strong></td>
    <td><strong>Anchura (mm)</strong></td>
    <td><strong>Altura (mm)</strong></td>
    <td><strong>Maletero (l)</strong></td>
    <td><strong>A�os de garant�a</strong></td>
 	<td><strong>Precio (euros)</strong></td>
    </tr>
	<%
	//datos.add("num");
		
	for (int i=0; i<datos.size(); i++){
		Object[] coche = datos.get(i);
		if (i%2==0){%>
			<tr bgcolor= "#8470FF" >
		<%}else{%>
			<tr bgcolor= "#8433FF" >
		<%}%>	
				<td> <%= i %> </td>
				<td> <%= coche[0] %> </td>
				<td> <%= coche[1] %> </td>
				<td> <%= coche[2] %> </td>
				<td> <%= coche[3] %> </td>
				<td> <%= coche[4] %> </td>
				<td> <%= coche[5] %> </td>
				<td> <%= coche[6] %> </td>
				<td> <%= coche[7] %> </td>
				<td> <%= coche[8] %> </td>
				<td> <%= coche[9] %> </td>
				<td> <%= coche[10] %> </td>
				<td> <%= coche[11] %> </td>
				<td> <%= coche[12] %> </td>
				<td> <%= coche[13] %> </td>
				<td> <%= coche[14] %> </td>
				<td> <%= coche[15] %> </td>
				
			</tr>
		<% } %>
	
	</table>
	<br>
	<br>
	<a style='color:blue' href='./index.html'>Volver a la p�gina de inicio</a>
	<br>
	<br>
	<a style='color:blue' href='./servletcerrarsession'>Desconectar</a>
		</main>
		<footer>
			<section>
				<div class="menu_footer1">
					<a href="Privacidad.html">Pol�tica de Privacidad</a> &nbsp|&nbsp <a href="Cookies.html">Cookies</a> &nbsp|&nbsp <a href="MapaDelSitio.html">Mapa del sitio</a>
				</div>
				<div class="menu_footer2">
					<a href="https://www.mazda.es/">Web Oficial Mazda</a> &nbsp|&nbsp <a href="https://www.mitsubishi-motors.es">Web Oficial Mitsubishi Motors</a>
				</div>
			</section>
			<div class="linea">
				<p class="copyright">&copy; 2018 Japancar MM, S.L. Todos los derechos reservados</p>
				<div class="redes">
					<p>S�guenos en</p>
					<ul>
						<li>
							<a href="https://es-es.facebook.com/"><img src="img/Facebook.jpg" alt="Facebook"></a>
						</li>
						<li>
							<a href="https://www.instagram.com/?hl=es"><img src="img/Instagram.jpg" alt="Instagram"></a>
						</li>
						<li>
							<a href="https://twitter.com/?lang=es"><img src="img/Twitter.jpg" alt="Twitter"></a>
						</li>
						<li>
							<a href="https://www.youtube.com/?gl=ES&hl=es"><img src="img/Youtube.jpg" alt="Youtube"></a>
						</li>					
					</ul>
				</div>
			</div>
		</footer>
	</div>	
</body>
</html>