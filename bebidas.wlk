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
  var nutrientes = #[10 , 4, 5]
  method rendimientoQueOtorga(dosisConsumida)  {
    return nutrientes.sum()
  }
}
object aguaSaborizada {
  method rendimientoQueOtorga(dosisConsumida) = 1 + whisky.rendimientoQueOtorga(dosisConsumida)
}
object coctel {
  method rendimientoQueOtorga(dosisConsumida) = tito.sustanciaActual()
}
