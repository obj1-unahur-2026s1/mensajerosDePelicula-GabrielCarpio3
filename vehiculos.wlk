import mensajeros.*
import destinos.*
import paquete.*

object bicicleta {
  method peso() = 5
}

object camion {
  var cantidadDeAcoplados = 1
  method peso() = 500 * cantidadDeAcoplados
  method cambiarAcoplados(cantidad) {cantidadDeAcoplados = cantidad}
  
}