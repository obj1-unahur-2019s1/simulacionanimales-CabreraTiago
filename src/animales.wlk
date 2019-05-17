import wollok.game.*

class Vaca {

	var property position = game.at(3, 5)
	const property image = "vaca.gif"
	var property peso = 100
	var property tieneSed = false

	method comer(kilos) {
		peso += kilos / 2
		tieneSed = true
	}

	method beber() {
		tieneSed = false
		peso--
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

}

