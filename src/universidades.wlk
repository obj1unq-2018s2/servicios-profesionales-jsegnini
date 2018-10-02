class Universidad {
	var donaciones = 0
	var provincias = #{}
	var honorariosRecomendados
	method provincia() {return provincias}
	method honorariosRecomendados() {return honorariosRecomendados}
	method provincia(prov) {provincias.add(prov)}
	method honorariosRecomendados(hono) {honorariosRecomendados = hono}
	method donaciones() {return donaciones}
	method recibirDonacion(cantidad) {
		donaciones += cantidad
	}
}



