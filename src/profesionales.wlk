import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	// TODO Falta cobrar
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar() {return universidad.provincia()}
	method honorariosPorHora() {return universidad.honorariosRecomendados()}
	method cobrar() {
		universidad.recibirDonacion(self.honorariosPorHora() / 2)
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var totalRecaudado = 0
	var universidad
	var honorarios 
	
	// TODO Esta inicialización es innecesaria por la forma en que usás este objeto.
	var provincias = #{}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora() { return honorarios }
	method honorarios(hono) {honorarios = hono}
	method provinciasDondePuedeTrabajar() {return provincias}
	method totalRecaudado() {return totalRecaudado}
	method cobrar() {
		totalRecaudado += self.honorariosPorHora()
	}
	
}

object asociacionDeProfesionalesDelLitoral {
	var recaudacion = 0
	method recaudacion() {return recaudacion}
}
