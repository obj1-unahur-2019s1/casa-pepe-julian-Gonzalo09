import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.filter({ cosa => cosa.esComida() })
	}
	
	method vieneDeEquiparse() {
		cosas.filter().last({ cosa => cosa.esElectrodomestico() 
			or cosa.precio() > 5000
		})
		
	}
	
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio() }) >= 9000
	}
	
	method compraMasCara() {
		return cosas.max({ cosa => cosa.precio() })
	}
	
	method electrodomesticosComprados() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() })
	}
	
	method malaEpoca() {
		return cosas.all({ cosa => cosa.esComida() })
	}
	
	method queFaltaComprar(lista) {
		
	}
	
	method faltaComida() {
		
	}
}
