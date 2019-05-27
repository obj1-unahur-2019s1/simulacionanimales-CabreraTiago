import wollok.game.*

class Vaca {

	var property position = game.at(3, 5)
	const property image = "vaca.gif"
	var property peso = 100
	var property tieneSed = false

	method comer(kilos) {
		if (self.tieneHambre()) {
			peso += kilos / 2
			tieneSed = true
		} else {
			self.error("No tiene hambre")
		}
	}

	method beber() {
		tieneSed = false
		peso--
	}

	method subir() {
		self.position(self.position().up(1))
		self.perderPeso()
	}

	method bajar() {
		self.position(self.position().down(1))
		self.perderPeso()
	}

	method derecha() {
		self.position(self.position().right(1))
		self.perderPeso()
	}

	method izquierda() {
		self.position(self.position().left(1))
		self.perderPeso()
	}

	method tieneHambre() {
		return peso < 200
	}

	method perderPeso() {
		peso *= 0.95
		if (peso < 50) {
			peso = 50
		}
//		peso = 50.max(peso *= 0.95)
	}

}

class Gallina {

	var property position = game.at(3, 3)
	var property image = "gallina.gif"
	const property peso = 4
	var property cantVecesQueComio = 0

	method comer(kilos) {
		cantVecesQueComio++
	}

	method beber() {
	}

	method tieneSed() {
		return cantVecesQueComio == 2 or cantVecesQueComio == 5
	}

	method subir() {
		self.position(self.position().up(1))
	}

	method bajar() {
		self.position(self.position().down(1))
	}

	method derecha() {
		self.position(self.position().right(1))
	}

	method izquierda() {
		self.position(self.position().left(1))
	}

	method tieneHambre() {
		return (cantVecesQueComio % 2) == 0
	}

}

