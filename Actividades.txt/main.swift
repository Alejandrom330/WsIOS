/*
Ejercicio de clases o estructura

Implementar las siguientes clases o estructuras y sus relaciones (diseño del modelo):

Queremos formar un ordenador, el ordenador tendria los siguientes propiedades:
	1) precio
	2) nombre del equipo
 	3) Varios modulos de memoria ram, la ram tendria las siguientes propiedades
			a) capacidad de almacenamiento
			b) fabricante
			c) si tiene RGB
	4) Tendremos un procesador, el procesador tendria las siguientes propiedades
			a) velocidad del procesador
			b) numero de cores
			c) numero de hilos
			d) fabricante
	5) podremos tener varios unidades de almacenamiento, tendrian las siguientes propiedades
			a) capacidad de almacenamiento
			b) fabricante
			c) tipo de unidad (HD, SSD, Nvme)
	6) tendria una tarjeta grafica, con las siguientes propiedades
			a) ram
			b) consumo
			c) Cuda cores
			d) velocidad

Tareas:
1) implementar el sistema de clases o de estructuras (o mezcla)
2) Instanciar un ordenador completo con todos sus objetos con informacion.


struct Ram {
    var cantidadAlmacenamiento: Int = 0
    var fabricante: String = ""
    var rgb = false
}

struct Procesador {
    var velocidad: Int = 0
    var numCores: Int = 0
    var numHilos: Int = 0
    var fabricante: String = ""
}

struct UnidadAlmacenamiento {
    var capacidadAlmacenamiento: Int = 0
    var fabricante: String = ""
    var tipo: String = ""
}

struct TarjetaGrafica {
    var ram: Int = 0
    var consumo: String = ""
    var cudaCores = false
    var velocidad: Int = 0
}

struct PC {
    var nombre: String = ""
    var ram: Array<Ram> = []
    var procesador: Procesador
    var almacenamiento: Array<UnidadAlmacenamiento> = []
    var tarjetaGrafica: TarjetaGrafica
    var precio: Double = 0.0
}

var listaRam: Array<Ram> = []
var listaAlmacenamiento: Array<UnidadAlmacenamiento> = []

let ram = Ram(cantidadAlmacenamiento: 8, fabricante: "Nvodia", rgb: false)

let ram2 = Ram(cantidadAlmacenamiento: 4, fabricante: "Nvadia", rgb: true)

let procesador = Procesador(velocidad: 20, numCores: 4, numHilos: 8, fabricante: "HP")

let almacenamiento = UnidadAlmacenamiento(capacidadAlmacenamiento: 5, fabricante: "Josue SL", tipo: "SSD")

let tarjeta = TarjetaGrafica(ram: 6, consumo: "Alto", cudaCores: true, velocidad: 4)

listaRam.append(ram)
listaRam.append(ram2)
listaAlmacenamiento.append(almacenamiento)

let pc1 = PC(nombre: "portatil", ram: listaRam, procesador: procesador, almacenamiento: listaAlmacenamiento, tarjetaGrafica: tarjeta, precio: 64.0)


print(pc1)



*/
class Ram {
    var cantidadAlmacenamiento: Int = 0
    var fabricante: String = ""
    var rgb = false
}

class Procesador {
    var velocidad: Int = 0
    var numCores: Int = 0
    var numHilos: Int = 0
    var fabricante: String = ""
}

class UnidadAlmacenamiento {
    var capacidadAlmacenamiento: Int = 0
    var fabricante: String = ""
    var tipo: String = ""
}

class TarjetaGrafica {
    var ram: Int = 0
    var consumo: String = ""
    var cudaCores = false
    var velocidad: Int = 0
}

struct PC {
    var nombre: String = ""
    var ram: Array<Ram> = []
    var procesador: Procesador
    var almacenamiento: Array<UnidadAlmacenamiento> = []
    var tarjetaGrafica: TarjetaGrafica
    var precio: Double = 0.0
}

var listaRam: Array<Ram> = []
var listaAlmacenamiento: Array<UnidadAlmacenamiento> = []

let ram = Ram()
ram.cantidadAlmacenamiento = 8
ram.fabricante = "Nvodia"
ram.rgb = false

let ram2 = Ram()
ram2.cantidadAlmacenamiento = 4
ram2.fabricante = "Nvadia"
ram2.rgb = true

let procesador = Procesador()
procesador.velocidad = 20
procesador.numCores = 4
procesador.numHilos = 8
procesador.fabricante = "HP"

let almacenamiento = UnidadAlmacenamiento()
almacenamiento.capacidadAlmacenamiento = 5
almacenamiento.fabricante = "Josue SL"
almacenamiento.tipo = "SSD"

let tarjeta = TarjetaGrafica()
tarjeta.ram = 6
tarjeta.consumo = "Alto"
tarjeta.cudaCores = true
tarjeta.velocidad = 4

listaRam.append(ram)
listaRam.append(ram2)
listaAlmacenamiento.append(almacenamiento)

let pc1 = PC(nombre: "portatil", ram: listaRam, procesador: procesador, almacenamiento: listaAlmacenamiento, tarjetaGrafica: tarjeta, precio: 64.0)


dump(pc1)

