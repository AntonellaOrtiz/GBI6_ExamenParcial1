#Ejercicio 1.10.1

#1. Cambie el directorio a CSB/unix/sandbox
cd Documents/6to/Bioinformática/CSB-master/unix/sandbox/

#2. ¿Cuál es el tamaño de Marra2014_data.dasta?
ls -lh ../data/Marra2014_data.fasta

#3. Cree una copia de Marra2014_data.fasta en la  sandbox y llaméle my_file.fasta
cp ../data/Marra2014_data.fasta my_file.fasta
ls

#4. ¿Cuántos contigs se clasifican como isogroup00036?
grep -c isogroup00036 my_file.fasta

#5. Reemplace el delimitador original "dos espacios" por una coma
cat my_file.fasta | tr -s "  " "," | head -n 5

#6. ¿Cuántos isogrupos únicos hay en el archivo?
grep ">" my_file.fasta | head -n 5
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

#7. ¿Qué contig tiene el mayor núemro de lecturas (numreads)? ¿Cuántas tiene?
grep ">" my_file.fasta | cut -d "," -f 1,3 | head -n 5
grep ">" my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1

