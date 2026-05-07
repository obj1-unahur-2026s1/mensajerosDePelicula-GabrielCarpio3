import mensajeros.*
import destinos.*
import vehiculos.*
object paquete {
  var estaPago = false
  
  method serPagado() {estaPago = true}
  method puedeSerEntregado(mensajero,destino) = mensajero.puedeLlevarPaquete(destino) and self.estaPago()
  method estaPago() = estaPago
  method precio() = 50
}

object paquetito {
   method precio() = 0
   method estaPago() = true
   method puedeSerEntregado(mensajero,destino) = true
}

object paquetonViajero {
    const destinos = []
    var pago = 0

   method precio() = destinos.size() * 100
   method estaPago() = self.precio() == pago
   method serPagado(){pago= self.precio()}
   method puedeSerEntregado(mensajero,destino) = destinos.all( { d => mensajero.puedeLlevarPaquete (d)}) and self.estaPago()
   method recibirPago(pesos){ pago += pesos}
   method agregarDestino(destino) {destinos.add(destino)}
}