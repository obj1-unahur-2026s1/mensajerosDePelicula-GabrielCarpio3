import vehiculos.*
import destinos.*
import paquete.*

object roberto{
    var vehiculo = bicicleta
   
    method peso() = self.pesoPropio() + vehiculo.peso()
    method puedeLlamar() = false
    method pesoPropio() = 90
    method cambiarTransporte(transporteNuevo){vehiculo = transporteNuevo}
    method puedeLlevarPaquete(destino) = destino.dejaPasarA(self)
}

object chuck{
    var vehiculo = bicicleta
    method peso() = 80
    method puedeLlamar() = true 
    method cambiarTransporte(transporteNuevo){vehiculo = transporteNuevo}
    method puedeLlevarPaquete(destino) = destino.dejaPasarA(self)
}

object neo{
    var credito = 10
    method peso() = 0
    method puedeLlamar() = 0 < credito
    method cargarCredito(unCredito) {credito += unCredito }
    method puedeLlevarPaquete(destino) = destino.dejaPasarA(self) 
}
    
object empresaDeMensajeria{
  const mensajeros = []
  method mensajeros() = mensajeros

  method contratarMensajero(mensajero) { mensajeros.add(mensajero)} // 1 
  method despedirMensajero(mensajero) {mensajeros.remove(mensajero)} // 2
  method despedirATodos() { mensajeros.clear()} // 3
  method esGrande() = mensajeros.size() > 2  // 4
  method elPrimerMensajeroPuedeEntregarPaquete(paquete, destino) = mensajeros.size() > 0 and paquete.puedeSerEntregado(mensajeros.first(), destino)
  method pesoDelUltimoMensajero() = mensajeros.last().peso() // 6
}
