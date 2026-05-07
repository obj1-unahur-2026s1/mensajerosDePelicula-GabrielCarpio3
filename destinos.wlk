import mensajeros.*
import paquete.*
import vehiculos.*
object puenteBrooklyn {
    method dejaPasarA(mensajero) = mensajero.peso() <= 1000
}

object matrix {
  method dejaPasarA(mensajero) = mensajero.puedeLlamar()
}