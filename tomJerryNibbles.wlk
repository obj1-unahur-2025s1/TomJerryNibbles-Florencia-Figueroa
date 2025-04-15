object tom {
    var energia = 50
    method energia() = energia
    method velocidadMaxima() = 5 + (energia / 10)
    method comer(unRaton){
        energia = energia + (12 + unRaton.peso())
    }
    method correr(unaDistancia){
        energia = energia - (unaDistancia / 2)
    }
    method puedeLlegar(unaDistancia){
        return energia >= unaDistancia / 2
    }
    method puedeCazar(unRaton, unaDistancia){
        if(self.puedeLlegar(unaDistancia)){
            self.puedeLlegar(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method edad() = edad
    method edad(cumple) { edad = cumple}
}

object nibbles {
  method peso() {return 35} 
}

// Inventar otro ratón
object chessy {
  var quesos = 4
  method peso() = 40 * (quesos / 2)
  method quesos() =quesos
  method quesos(cantidad) {quesos = cantidad}
}