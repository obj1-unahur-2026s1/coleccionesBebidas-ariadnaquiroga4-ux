import tito.*
object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}

object licuado {
  const nutrientes = #[10 , 4, 5]
  method rendimientoQueOtorga(dosisConsumida)  {
    return nutrientes.sum()
  }
}
object aguaSaborizada {
  var bebida = whisky
  method rendimientoQueOtorga(dosisConsumida) = 1 + bebida.rendimientoQueOtorga(dosisConsumida / 4)
}
object coctel {
  const bebidas = #[]
  method agregarBebida(unaBebida) {
    bebidas.add(unaBebida)
  }
  method rendimientoQueOtorga(dosisConsumida) {
    var acumulador = 0
    return bebidas.fold(1) {
      acumulador bebidas -> acumulador * bebidas.rendimientoQueOtorga(dosisConsumida)
    }
  }
}

