;;define una funcion para hacer los calculos
(defun factorial (n)
	;;establece una condicion para que la variable comience en 0
	;;de cumplirse, el codigo seguira de largo (por eso el "1"), de no hacerlo, se detendra el programa
	(if (= n 0 ) 1
		;;multiplica el valor de n por el resultado de la funcion en n-1
		(* n (factorial (- n 1)))))

;;hace un print para pedirle al usuario el numero para el cual desea la serie
(print "Ingrese el termino para el cual desea hallar el factorial: ")
;;define la variable ingresada en "var"
(defvar *var* (read))
;;crea un loop que se repetira desde 0 hasta el numero de veces indicado por el usuario
(loop for i from 0 to *var*
	;;se muestra en la terminal como enteros "~D" ordenados
	;;el factorial de cada termino hasta llegar al valor indicado
	do (format t "~D! = ~D~%" i (factorial i)))