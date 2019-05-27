import wollok.game.*

class Comedero {

	var property position = game.at(8, 8)
	const property image = "comedero.gif"
	var property puedeAtender
	const property pesoMaximo = 500
	var property cantidadRaciones = 1000

	method puedeAtender(animal) {
		return animal.tieneHambre() and animal.peso() <= pesoMaximo and cantidadRaciones >= 6
	}

	// Revisar
	method atender(animal) {
		if (self.puedeAtender(animal)) {
			animal.comer(6)
			cantidadRaciones--
		} else {
			self.error("No te puedo atender")
		}
	}

}

