;;;; Describe Program
;;;Commentcl
;;Comment
#||Multilinea 
comentarios||#

;;le pide al usuario que introduzca un valor para convertir
(print "Por favor introduzca la temperatura que desea convertir de
grados Farenheit a Centigrados:")
;;define la variable del usuario ingresada
(defvar *temp* (read))

;;crea una funcion para hacer la conversion
(defun temperatura (*temp*)
	;;le confirma al usuario la temperatura que ingreso como valor numerico
	(format t "Usted escogio: ~d ~%" *temp*)
	;;condicional que determina si el valor realmente es un numero
	(if (numberp *temp*)
		;;comando para hacer multiples lineas dentro de un if
		(progn
		;;define una variable como el resultado de la conversion
		(defvar *centigrados* (*(- *temp* 32) 0.56))
		;;muestra en la terminal el resultado de la operacion
		(format t "La temperatura en grados Centigrados es de: ~d" *centigrados*)
		)
	;;es el "else" de la condicional
	(format t "Por favor, intente nuevamente con un valor numerico.")
	)
)
;;corre la funcion
(temperatura *temp*)
	

#||~a = muestra el valor
~s = muestra "" alrededor del valor
~10a = agrega 10 espacios para el valor a la derecha
~10@a = agrega 10 espacios para el valor a la izquierda
(if (*not, and, or* ("signo" comparacion))
("progn") para establecer multiples funciones dentro de if/else
	(format t "Condicion verdadero")
	(format t "Condicion falso")
No es necesario escribir else.
NO SE PUEDEN USAR CARACTERES COMO TILDES EN LOS STRINGS
||#