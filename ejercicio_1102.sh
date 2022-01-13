#Ejercicio 1.10.2

#Ubicación de la data
cd Documents/6to/Bioinformática/Parcial1/GBI6_ExamenParcial1/Evidencia/

#1. ¿Cuántas veces se registraron los niveles de los individuos 3 y 27?

#Conocer la estructura del archivo
head -n 10 Gesquiere2011_data.csv

#Para maleID 3
cut -f 1 Gesquiere2011_data.csv | grep -w -c 3
#Para maleID 27
cut -f 1 Gesquiere2011_data.csv | grep -w -c 27

#2. Escribir un script tomando como entrada el nombre del archivo y el ID del individuo
# y que devuelva el número de registros para la identificación elegida

#Se eligió maleID 89
cut -f 1 Gesquiere2011_data.csv | grep -w -c 89

#3. Escribir un script que devuelva el número de veces que cada individuo fue muestreado

#Escoger maleID sin repeticiones
tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq

maleID=$(tail -n +2 Gesquiere2011_data.csv | cut -f 1 | sort -n | uniq)
echo $maleID
for a in $maleID
do
muestra=$(cut -f 1 Gesquiere2011_data.csv | grep -w -c $a)
echo "maleID:" $a "muestras:" $muestra
done
