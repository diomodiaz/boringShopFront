<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas BoringShop</title>
<link rel="stylesheet" type="text/css" href="css/formularios.css"media="screen" />
<link  rel="icon"   href="images/Favicon.png" type="image/png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body style="background-color: transparent;">
	<div class="row">
		<div class="col-md-5 seccion1">
			<form method="get" action="Controller">
				<div class="card card text-white bg-dark mb-1">
					<div class="card-body ">
						<div class="form-group">
							<label class="p-1"> Datos Clientes</label>
						</div>
						<input type="hidden" name="menu" value="Ventas"> 
						<input type="hidden" name="UsuarioActivo" value="${usuarioSeleccionado.getCedula_usuario()}" >
						<div class="form-group d-flex p-1">
							<div class="col-sm-6 d-flex">
								<input type="number" name="cedulacliente" class="form-control"
									placeholder="cedula cliente" value="${clienteSeleccionado.getCedula_cliente()}"> 
								<input type="submit" name="accion" value="BuscarCliente"
									class="btn btn-outline-dark text-white">
							</div>
							<div class="col-sm-6">
								<input type="text" name="nombrecliente" class="form-control"
									placeholder="Nombre Cliente" value="${clienteSeleccionado.getNombre_cliente()}">
							</div>
						</div>
					</div>
				</div>
				<div class="card text-white bg-dark mb-1">
					<div class="card-body">
						<div class="form-group">
							<label class="p-1"> Datos Productos </label>
						</div>
						<div class="form-group d-flex p-1">
							<div class="col-sm-6 d-flex">
								<input type="number" name="codigoproducto" class="form-control"
									placeholder="codigo producto" value="${productoSeleccionado.getCodigo_producto()}"> 
								<input type="submit" name="accion" value="BuscarProducto"
									class="btn btn-outline-dark text-white">
							</div>
							<div class="col-sm-6">
								<input type="text" name="nombreproducto" class="form-control"
									placeholder="Nombre producto" value="${productoSeleccionado.getNombre_producto()}">
							</div>
						</div>
						<div class="form-group d-flex p-1">
							<div class="col-sm-6 d-flex">
								<input type="text" name="precioproducto" class="form-control"
									placeholder="$  0000.00" value="${productoSeleccionado.getPrecio_venta()}">

							</div>
							<div class="col-sm-3">
								<input type="number" name="cantidadproducto" class="form-control"
									placeholder="Cantidad" value="">
							</div>
							<div class="col-sm-3">
								<input type="text" name="ivaproducto" class="form-control"
									placeholder="Valor Iva" value="${productoSeleccionado.getIvacompra()}">
							</div>
						</div>
						<div class="p-2" align="center">
							<input type="submit" name="accion" value="AgregarProducto"
								class="btn btn-outline-dark text-white">
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-7 seccion2">
			<div class="card text-white bg-dark mb-1">
				<div class="card-header">
					<div class="form-group p-1">
					<label class="">Número Factura</label>
					</div>
					<div class="form-group p-1">
					<input class="form-control" type="text" name="numerofactura" value="${numerofactura}">			
					</div>				
				</div>
				<div class="card-body">
					<table class="table table-dark table-hover text-center">
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>codigo</th>
								<th>producto</th>
								<th>precio</th>
								<th>cantidad</th>
								<th>iva</th>
								<th>total</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="lista" items="${listaventas}">
							<tr>
								<th>${lista.getCodigo_detalle_venta()}</th>
								<th>${lista.getCodigo_producto()}</th>
								<th>${lista.getDescripcion_producto()}</th>
								<th>${lista.getPrecio_producto()}</th>
								<th>${lista.getCantidad_producto()}</th>
								<th>${lista.getValoriva()}</th>
								<th>${lista.getValor_venta()}</th>
							</tr>
						</c:forEach>
						</tbody>
					</table>				
				</div>
				<div class="card-footer d-flex">
					<div class="col-md-4">
						<label>Subtotal</label></br> </br>
						<label>iva</label></br> </br>
						<label>total a pagar</label></br> </br>
					</div>
					<div class="col-md-4 p-1">
						<input type="text" name="txtsubtotal" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${totalsubtotal}">
						<input type="text" name="txttotaliva" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${totaliva}">
						<input type="text" name="txttotalapagar" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${totalapagar}">
					</div>									
				</div>							
			</div>	
			<div class="card-footer" align="center">
				<div class="col-md-8">
				 <!-- enviamos los tres valores al controlador --> 
					<a class="btn btn-outline-dark text-white" onclick="print()" href="Controller?menu=Ventas&accion=GenerarVenta&cedulacliente=${clienteSeleccionado.getCedula_cliente()}&UsuarioActivo=${usuarioSeleccionado.getCedula_usuario()}&numerofactura=${numerofactura}">Generar Venta</a>
					<a class="btn btn-outline-dark text-white" href="Controller?menu=Ventas&accion=NuevaVenta">Nueva Venta</a>
				</div>
			</div>				
		</div>		
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
</body>
</html>