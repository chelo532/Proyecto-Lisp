(print "Escriba el termino n para el cual desea encontrar la serie: " )
;;Define una variable que toma el valor ingresado por el usuario
(defvar *num* (read))
	;;Hace una funcion para llamar luego en donde se realiza el calculo de la serie
	(defun fibonacci (enesimo)
		;;Establece una condicional para determinar si la variable
		;;de la funcion es igual a cero o a uno	
		(if (or (zerop enesimo) (= enesimo 1)) 1
			;;Indica que hacer en caso de que la funcion cumpla con las condiciones
			(let 
				;;toma como valor1 diferencia entre la variable y 1
				((valor1 (fibonacci (- enesimo 1)))
				;;toma como valor2 la diferencia entre la variable y 2
				(valor2 (fibonacci (- enesimo 2))))
				;;hace la suma de ambos valores para obtener la serie
				(+ valor1 valor2))))
;;le indica al programa las veces que el usuario quiere que corra la funcion
(print (fibonacci *num*))