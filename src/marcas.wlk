class Jarra{
	var litros
	var marca
	
	method contenidoDeAlcohol() = litros * marca.graduacion() / 100
}

class Rubia{
	var property litro
	var property lupulo
	var paisOrigen
	var property graduacion  
	
	
}

class Negra{
	var property litro
	var property lupulo
	const paisOrigen
	var graduacionReglamentaria
	var property graduacion = graduacionReglamentaria.min(lupulo * 2) 
}

class Roja{
	var property litro
	var property lupulo 
	const paisOrigen
	var graduacionReglamentaria
	var property graduacion = graduacionReglamentaria.min(lupulo * 2) * 1.25
}
