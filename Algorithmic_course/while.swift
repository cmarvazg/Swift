import Foundation

var contador = 0
var sum = 0

while(n<100)
{
    if((n%2) != 0)
    {
        sum = sum + contador
    }
    contador = contador+1
}

print(sum)
