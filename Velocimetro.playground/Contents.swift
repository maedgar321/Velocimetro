//: Velocimetro de un automóvil digital.

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
   }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> ( actual: Int, velocidadEncadena : String){
        
        var resultado = (0,"")
        switch velocidad.rawValue {
        case 0:
            resultado = (velocidad.rawValue, "Apagado")
            velocidad = Velocidades.VelocidadBaja
            break
        case 20:
            resultado = (velocidad.rawValue, "Velocidad Baja")
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            break
        case 50:
            resultado = (velocidad.rawValue, "Velocidad Media")
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadAlta)
            break
        case 120:
            resultado = (velocidad.rawValue, "Velocidad Alta")
            velocidad = Velocidades(velocidadInicial: Velocidades.VelocidadMedia)
            break
        default:
            break
        }
        
        
        return resultado
    }
}

var auto = Auto()

for i in 0..<20{
    print(auto.cambioDeVelocidad())
}



