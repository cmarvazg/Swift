import UIkit

func fibbonacci(n : Int) -> Int
{
    if constador <= 1
    {
        return contador
    }

    var primerValor = 0
    var segundoValor = 1

    for _ in 1..<contador
    {
        let nuevoValor = primerValor + segundoValor
                         primerValor = segundoValor
                         segundoValor = nuevoValor
    }
    return segundoValor
}

print(fibbonacci (contador:3))

