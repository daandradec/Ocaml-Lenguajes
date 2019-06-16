# OCAML

Sean bienvenidos a conocer el lenguaje Ocaml (lenguaje proveniente de caml pero con implementación en POO - año 1995).
Ocaml es un lenguaje que cumple con 4 criterios de los buenos lenguajes: (portable, seguro, expresivo, pedagogico).

### criterios
- portable : lenguaje lo mas independiente de los detalles de la maquina.
- seguro : programas robuztos con restricciones semanticas
- expresivo : capacidad de expresar las mismas cosas con las mismas palabras.
- pedagogico : capacidad de explorar facilmente todos los conceptos basicos de la programación.

Ademas su logo es un lindo camello.

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/camello.png)

![](https://github.com/daandradec/Ocaml-Lenguajes/blob/master/Imagenes/colour-logo.png)

# PRIMEROS PASOS 

Primero tratemos de tener el entorno para poder correr instrucciones del lenguaje ocaml.

## Instalación

Comencemos por ir a la pagina oficial en la sección de instalación 

[http://ocaml.org/docs/install.html](http://ocaml.org/docs/install.html)

Una vez allí podemos ver la guia de instalación para varios sistemas operativos, pero aqui daremos la guia para Ubuntu y Windows

## Ubuntu

Ejecutar el comando

```
sudo apt install ocaml
```

Con esto, ya deberiamos ser capaces de ejecutar en la terminal el comando : $ ocaml

## Windows

Para windows sera necesario instalar un paquete que permite instalar ocaml con solo ejecutar un .exe.

Primero vamos a la sección de windows y buscamos el link que dice (instalación con OCPWIN), lo que nos deberia enviara a este link

[https://www.typerex.org/ocpwin.html](https://www.typerex.org/ocpwin.html)

una vez allí descargamos la versión de 32 o 64 bits, ejecutamos el instalador, damos siguiente a todas las ventanas hasta finalizar con exito. Con esto ya debemos tener ocaml instalado y podremos ejecutar el comando ocaml en la consola de windows.

# Editores Online

Si no quieres instalar Ocaml en tu sistema puedes buscar editores online, como por ejemplo: 

[https://try.ocamlpro.com/](https://try.ocamlpro.com/)

[https://www.tutorialspoint.com/compile_ocaml_online.php](https://www.tutorialspoint.com/compile_ocaml_online.php)


# Tour por el Lenguaje

Ahora sí para empezar a conocer el lenguaje abarcaremos estas secciones

- hello world
- tipos de datos y operadores
- variables
- definiciones locales
- condicionales

## HELLO WORLD

Abre la consola de ocaml y ejecuta

``` print_string "hello world";; ```

Con esta instrucción mostramos en la salida estandar la cadena hello world

### lista de funciones nativas para impresión

- print_int ENTERO
- print_float FLOTANTE
- print_newline ()
- print_string CADENA

## TIPOS DE DATOS Y OPERADORES

Los tipos de datos son nombres que engloban algun tipo de conjunto primitivo (valores de verdad, numeros, texto)

Los principales tipos de datos en Ocaml son :

**enteros** | **flotantes** | **valores de verdad** | **caracteres** | **cadenas de caracteres**

Veamos el primer contenido archivo 02_tipos_datos.ml

```

(* ENTEROS *)
2;;
3;;
4;;
(* OPERADORES ENTEROS *)
5+4;;
3-2;;
4*2;;
1/5;;
8 mod 3;;
(* FLOTANTES *)
4.3;;
8.;;
0.5;;
(* OPERADORES FLOTANTES *)
3.2 +. 5.4;;
2.2 *. 8.0 -. 2.2;;
10.5 /. 2.5;;
2.0 ** 3.0;;
(* FUNCIONES PRIMITIVAS FLOTANTES*)
sin(90.0);;
cos(0.0);;
log10(10.);;
sqrt(64.);;
(* BOOLEANOS *)
true;;
false;;
(* OPERADORES RELACIONALES *)
2 < 3;;
4.2 >= 6.6;;
4=5;;
3<>3;;
(* OPERADORES LOGICOS *)
not true;;
("abc"<>"bca") && (1=1);;
false || (not ((1+3)=(3*1-1)));;
(* CARACTERES *)
'a';;
'&';;
'#';;
'\065';;
'\066';;
'\067';;
(* CADENAS *)
"Hola";;
"Mundo";;
"Hola" ^ "Mundo";;
"Hola" ^ " " ^ "Mundo";;
(* BINARIO - OCTAL - HEXADECIMAL *)
0B0;;
0B1;;
0B10010101;;
0B101101;;
0O55;; (* 101101 *)
0O10;;
0xFFF;; (* 111111111111 *)
0x0A;; (* 0001010 *)

```

El tipado de ocaml es fuerte, por tanto los operadores estaran definidos para ciertos tipos de datos y no haran casting automatico.

## VARIABLES

EL concepto de variables es el de asociar un nombre a un valor con un identificador.

Su estructura es: ``` let identificador = expresion ```

Veamos ahora el archivo 03_variables.ml

```
(* DEFINICIONES GLOBALES *)
(* ASOCIAR UN NOMBRE A UN VALOR *)
(* CARACTERISTICAS DE ESTOS IDENTIFICADORES *)
(* Es un nombre de maximo 255 caracteres *)
(* deben empezar por una minuscula *)
(* no deben contener espacios *)

let s = 1 + 2 + 3;; (* En matemtica, sea S la suma de 1 2 y 3*)
(* val s : int = 6 *)

s+s;;
(* - : int = 12 *)

let scuadrado = s*s;; (* En el tipaje, el tipo del identificador es el tipo de la expresion *)
(* val scuadrado : int = 36 *)

let s = 3*3;;
(* val s : int = 9 *)

s+2;;
(* - : int = 11 *)

scuadrado;;
(* - : int = 36 *)

let s = s+1;;
(* val s : int = 10 *)

s;;
(* - : int = 10 *)

let s = "una cadena";;
(* val s : string = "una cadena" *)

s^"!!!";;
(* - : string = "una cadena!!!" *)




(* Para definir varios identificadores a la vez se puede usar la palabra reservada and *)

let x = 3 and y = "algo";; (* El tipaje se evalua como, id_1 es del tipo de la exp1, y id_n es del tipo de la exp_n *)
(* val x : int = 3    val y : string = "algo" *)

let u = 10 and v = u*3;; (* Las expresiones se evaluan al mismo tiempo, no es de izquierda a derecha *)
(* Error: Unbound value u *)

let u = 10;;
(* val u : int = 10 *)

let v = u*3;;
(* val v : int = 30 *)
```


# Particularidades del lenguaje respecto al paradigma funcional

Ahora vayamos un poco mas profundo en el lenguaje aprendiendo estos temas que son comunes entre lenguajes de programación pero que en ocaml se manejan de manera un poco distinta. 

- funciones
- funciones recursivas
- listas
- tuplas
- tipos
- arreglos

# Ejemplos Avanzados

# Links de Referencia

[http://structio.sourceforge.net/guias/progocaml/progocaml.html](http://structio.sourceforge.net/guias/progocaml/progocaml.html)

[http://caml.inria.fr/pub/docs/manual-ocaml/language.html](http://caml.inria.fr/pub/docs/manual-ocaml/language.html)

[http://www.cs.us.es/~mjoseh/LCyTM-15/temas/tema-2.html](http://www.cs.us.es/~mjoseh/LCyTM-15/temas/tema-2.html)

[https://ocaml.org/learn/taste.html](https://ocaml.org/learn/taste.html)

[https://learnxinyminutes.com/docs/ocaml/](https://learnxinyminutes.com/docs/ocaml/)

[http://ocaml.org/learn/tutorials/basics.html#Basic-types](http://ocaml.org/learn/tutorials/basics.html#Basic-types)