import Profesional.*

class Universidad {
	var property nombre
	var honorariosRecomendados
	var property ubicacionProvincia
	var profesionales = []
	var provinciasHabilitadasProfesional = #{}
	
	method agregarProfesional(profesional){
		profesionales.add(profesional)
	}
	
	method quitarProfesional(profesional){
		profesionales.remove(profesional)
	}
	
	method provinciasHabilitadas(profesional){
		
		if (profesional.tipoProfesional() == "Vinculado"){
			provinciasHabilitadasProfesional.add(self.ubicacionProvincia())
			return provinciasHabilitadasProfesional
		}
		
		else if (profesional.tipoProfesional() == "Litoral"){
			provinciasHabilitadasProfesional.add("Entre Ríos")
			provinciasHabilitadasProfesional.add("Santa Fe")
			provinciasHabilitadasProfesional.add("Corrientes")
			return provinciasHabilitadasProfesional
		}
		
		else return provinciasHabilitadasProfesional
	}

}