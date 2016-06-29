README

Clase para validar CUIL/CUIT de Argentina en Swift.
Validado por un C.P.N.

//El algoritmo.
El algoritmo consiste en dividir los 11 digitos que contiene un numero de CUIL/CUIT en dos.
La primera parte es el codigo de identificacion que consta de los primeros 10 digitos.
La segunda, el ultimo digito, el digito de verificacion.
Porcedimiento.
Cada digito del codigo de verificacion se multiplica por los siguientes numeros respectivamente: 5,4,3,2,7,6,5,4,3,2 y se van sumando. A la suma total, se le calcula el modulo de 11, y este resultado es el que se evalua, llamemoslo 'x'.
Si x es 11 ->  el digito de verificacion debe ser 0.
Si x es 10 ->  el digito de verificacion debe ser 9.
Para todos los demas x, el digito de verificacion debe ser igual a x.

