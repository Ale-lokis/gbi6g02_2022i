#! /bin/bash
for f in exam1/multi_copia/*.txt #se le coloca la variable "f" a la dirección de los archivos
do
        x=$( head -n1 "$f" |grep -o " " | wc -l ) #se le asigna a los resultados, el comando da el resultado, el comando cuenta las columnas de los archivos
        if [ $(( "x" % 2 )) -eq 0 ]; #El bucle if, indica los pares o impares, esto por el "residuo" de la divison para 2, el residuo es impar, si es igual a 0 es par
        then
                echo "Par: $f tiene $x columnas" >> for_if.txt #este comando imprime los pares
        else
                echo "Impar: $f tiene $x columnas"  >> for_if.txt #este comando imprime los impares
        fi

done
