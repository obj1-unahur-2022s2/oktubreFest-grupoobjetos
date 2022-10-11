object belga{
	method lesGusta(unaMarca) = unaMarca.lupulo() > 4
}

object checo{
	method lesGusta(unaMarca) = unaMarca.graduacion() > 8 
}

object aleman{
	method lesGusta(unaMarca) = true
}

class Persona{
	var peso
	const jarrasCompradas = [ ] 
	var leGustaMusicaTradicional
	const property nacionalidad
	const aguante 
	
	method comprarJarra(unaJarra){
		jarrasCompradas.add(unaJarra)
	}
	method totalAlcoholConsumido() = jarrasCompradas.sum({a => a.contenidoDeAlcohol()}) 
	method estaEbrio() = self.totalAlcoholConsumido() * peso > aguante
	method leGusta(unaMarca) = nacionalidad.lesGusta(unaMarca)
	method esTuNacionalidad(unaNacionalidad) = self.nacionalidad() == unaNacionalidad
	method quiereEntrarA(unaCarpa) = if(self.esTuNacionalidad(aleman)){
			self.leGusta(unaCarpa.marcaQueVende()) 
			and leGustaMusicaTradicional 
			and unaCarpa.tieneBanda()
			and unaCarpa.cantPersonas().even()
		}
		else{
			self.leGusta(unaCarpa.marcaQueVende()) 
			and leGustaMusicaTradicional 
			and unaCarpa.tieneBanda()
		} 								
									
}