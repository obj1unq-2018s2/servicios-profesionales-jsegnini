import profesionales.*
import universidades.*


class Empresa {
	var honorarioReferencia
	var profesionalesContratados = []
	method honorarioReferencia() = {return honorarioReferencia}
	method honorarioReferencia(hono) = {honorarioReferencia = hono}
	method profesionalesContratados() {return profesionalesContratados}
	method contratarProfesional(prof) {profesionalesContratados.add(prof)}
	
	method profesionalesCaros() {
		return profesionalesContratados.filter({prof => prof.honorariosPorHora() > honorarioReferencia})
	}
	method universidadesFormadoras() {
		return profesionalesContratados.map({prof => prof.universidad()}).asSet()
	}
	method masBarato() {
		return profesionalesContratados.min({prof => prof.honorariosPorHora()})
	}
	method provinciaEstaCubierta(prov) {
		return profesionalesContratados.map({prof => prof.provinciasDondePuedeTrabajar()}).contains(prov)
	}
	method cuantos(univ) {
		// TODO Mejor con count
		return profesionalesContratados.filter({prof => prof.universidad() == univ}).size()
	}
	method puedenTrabajarEnProvincia(prov) {
		return profesionalesContratados.filter({prof => prof.provinciasDondePuedeTrabajar()}).contains(prov)
	}
	
	method esPocoAtractivo(profesional){
		return profesional.provinciasDondePuedeTrabajar().any {prov => self.provinciaEstaCubierta(prov) and 
			self.puedenTrabajarEnProvincia(prov).any {elem => elem.honorariosPorHora() < profesional.honorariosPorHora()}
		}
	}
}
