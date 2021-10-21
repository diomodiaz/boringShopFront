<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ventas BoringShop</title>
<link  rel="icon"   href="images/Favicon.png" type="image/png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
</head>
<body style="background-color: transparent;">
	<div class="container">
        <div class="container-form">
            <form action="" method="" class="form">
                <label for="cedula">Cédula</label>
                <input type="text" name="cedula" id="cedula" autofocus>
                <button>Consultar</button>
                
            </form>
            <div class="results">
                <label for="cliente">Cliente</label>
                <input type="text" name="cliente" id="cliente">
                <label for="consecutivo">Consec.</label>
                <input type="text" name="consecutivo" id="consecutivo">
            </div>     
        </div>
        
        <div class="container-producto">
            <div class="datos-producto">
                <label for="">Cod. Producto</label>
                <form action="" class="form-result">
                    <input type="text">
                    <button class="btn-1">Consultar</button>
                    <input type="text">
                    <button class="btn-2">Consultar</button>
                    <input type="text">
                    <button class="btn-3">Consultar</button>
                </form>
            </div>
            <div class="name-producto">
                <label for="">Nombre Producto</label>
                <input type="text">
                <input type="text">
                <input type="text">
            </div>
            <div class="cantidad">
                <label for="">Cant.</label>
                <input type="text">
                <input type="text">
                <input type="text">
            </div>
            <div class="valor">
                <label for="">Vlr. Total</label>
                <input type="text">
                <input type="text">
                <input type="text">
            </div>
        </div>

        <div class="calcular">
            <div class="btn-calcular">
                <button>Confirmar</button>
            </div>
            <div class="calculos">
                <div class="orden">
                    <label for="">Total ventas</label>
                    <input type="text">
                </div>
                <div class="orden">
                    <label for="">Total IVA</label>
                    <input type="text">
                </div>
                <div class="orden">
                    <label for="">Total con IVA</label>
                    <input type="text">
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