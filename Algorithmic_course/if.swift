import UIkit

var palabra = "Error"
var referencia = "palabra"

func validar(palabra : String) -> bool
{
    if referencia == palabra
    {
        print("La palabra si coincide.")
        return true
    }else
    {
        print("La palabra ingresada no coincide.")
        return false
    }
}

print(validar(palabra : "palabra"))
