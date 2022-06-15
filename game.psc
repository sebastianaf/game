Algoritmo Dibujar
	teclaPresionada <- Falso
	teclaLiberada <- Falso
	tecla <- ""
	Repetir
		Escribir "Se inicia el movimiento de la pelota en ambas direcciones"
		Si teclaPresionada == Verdadero Entonces
			Si tecla == "w" Entonces
				Escribir "Ambas barras arriba"
			Fin Si
			Si tecla == "s" Entonces
				Escribir "Ambas barras abajo"
			Fin Si
			Si tecla == "flecha-arriba" Entonces
				Escribir "Una barra arriba"
			Fin Si
			Si tecla == "flecha-abajo" Entonces
				Escribir "Una barra abajo"
			Fin Si
		Fin Si
		Si teclaLiberada == Verdadero Entonces
			Si tecla == "w" Entonces
				Escribir "Se detienen ambas barras"
			Fin Si
			Si tecla == "s" Entonces
				Escribir "Se detienen ambas barras"
			Fin Si
			Si tecla == "flecha-arriba" Entonces
				Escribir "Se detiene una barra"
			Fin Si
			Si tecla == "flecha-abajo" Entonces
				Escribir "Se detiene una barra"
			Fin Si
		Fin Si
		
	Hasta Que Verdadero
FinAlgoritmo
