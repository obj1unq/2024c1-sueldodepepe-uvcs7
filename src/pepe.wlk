// EMPLEADOS

object ernesto {
	
	var bonoPorPresentismo = presentismoNulo
    var companiero = sofia
    
	method sueldo(){
		return self.neto() 
				+ self.bonoPorPresentismo()
	}
	
	method neto(){
		return companiero.neto()
	}
	
	method companiero(_companiero){
		companiero = _companiero
	}
	method companiero(){
		return companiero
	}
	method bonoPorPresentismo(_bonoPorPresentismo){
   	 bonoPorPresentismo = _bonoPorPresentismo
    }
    
    method bonoPorPresentismo(){
   	 return bonoPorPresentismo.valor(self)
    }
    
    method faltas(){
   	 return 0
    }
}

object roque {
	
	var bonoPorResultados = resultadoNulo
    
    method sueldo(){
   	 return self.neto()
   			 + self.bonoPorResultados()
   			 + 9000
    }
    
    method neto(){
   	 return 28000
    }
    
    method bonoPorResultados(_bonoPorResultados){
   	 bonoPorResultados = _bonoPorResultados
    }
    
    method bonoPorResultados(){
   	 return bonoPorResultados.valor(self)
    }
}

object sofia {
	
	var categoria = cadete
    var bonoPorResultados = resultadoNulo
    
    method sueldo(){
   	 return self.neto()
   			 + self.bonoPorResultados()
    }
    
    method neto(){
   	 return categoria.neto()* 1.3
    }
    
    method categoria(_categoria){
   	 categoria = _categoria
    }
    
    method categoria(){
   	 return categoria
    }
    
    method bonoPorResultados(_bonoPorResultados){
   	 bonoPorResultados = _bonoPorResultados
    }
    
    method bonoPorResultados(){
   	 return bonoPorResultados.valor(self)
    }
}

object pepe {
    
    var categoria = cadete
    var bonoPorResultados = resultadoNulo
    var bonoPorPresentismo = presentismoNulo
    var faltas = 0
    
    method sueldo(){
   	 return self.neto()
   			 + self.bonoPorResultados()
   			 + self.bonoPorPresentismo()
    }
    
    method neto(){
   	 return categoria.neto()
    }
    
    method categoria(_categoria){
   	 categoria = _categoria
    }
    
    method categoria(){
   	 return categoria
    }
    
    method bonoPorResultados(_bonoPorResultados){
   	 bonoPorResultados = _bonoPorResultados
    }
    
    method bonoPorResultados(){
   	 return bonoPorResultados.valor(self)
    }
    
    method bonoPorPresentismo(_bonoPorPresentismo){
   	 bonoPorPresentismo = _bonoPorPresentismo
    }
    
    method bonoPorPresentismo(){
   	 return bonoPorPresentismo.valor(self)
    }
    
    method faltas(_faltas){
   	 faltas = _faltas
    }
    
    method faltas(){
   	 return faltas
    }
}

// CATEGORIAS

object gerente {
    
    method neto(){
   	 return  15000
    }
}

object cadete {
    
    method neto(){
   	 return 20000
    }
}

object vendedor {
    
    var neto = 16000
    
    method neto(){
   	 return  neto 
    }
    
    method activarAumentoPorMuchasVentas() {
    	neto = self.neto() * 1.25 
    }
    
    method desactivarAumentoPorMuchasVentas() {
    	neto = self.neto() / 1.25
    }
    
}

object medioTiempo {
	
	var neto = 0
	
	method neto(){
		return neto
	}
	
	method categoriaBase(categoria){
		neto = categoria.neto() * 0.5
	}
}

// BONOS POR RESULTADOS

object resultadoNulo {
    
    method valor(empleado){
   	 return 0
    }
}

object montoFijo {
    
    method valor(empleado){
   	 return 800
    }
}

object porcentaje {
    
    method valor(empleado){
   	 return empleado.neto() * 0.1
    }
}

// BONOS POR PRESENTISMO
    
object normal {
    
    method valor(empleado){
   	 return  if (empleado.faltas() == 0) { 2000 }
   			 else if (empleado.faltas() == 1) { 1000 }
   			 else { 0 }
    }
}

object ajuste {
    
    method valor(empleado){
   	 return  if (empleado.faltas() == 0) { 100 }
   			 else { 0 }
    }
}    

object demagogico {
    
	method valor(empleado){
   	 return  if (empleado.neto() > 18000 ) { 300 }
   			 else { 500 }    
    }
}    

object presentismoNulo {
    
    method valor(empleado){
   	 return 0
    }
}
