/*
* Utilizamos la base de datos "libreria"
*/
USE libreria;

/*
* @Query: Mostrar cantidad de libros por autor
*
*/
#1. Indicamos las columnas a mostrar
SELECT count(*) as cantidad_libros, autor
#2. Hacemos referencia a la tabla que tiene la información 'autores_libros' 
FROM autores_libros
#3. Agrupamos por la segunda columna 'autor'
GROUP BY 2;

/*
* @Query: Mostrar cantidad de libros por autor
* @Criterio: Cantidad de libros menor o igual a 5
*
*/
#1. Mostramos todas las columna de las tablas
SELECT *
#2. Obtenemos información de la tabla 'autores' y le agregamos como alias 'autor'
FROM autores as autor
#3. Asociamos con otra tabla 'autores_libros'
JOIN autores_libros as relacion
#4. Agregamos el criterio de la relación sea el FK de 'autores' y el PK de 'autores_libros'
ON autor.id = relacion.autor
#5. Agregamos un segundo criterio sobre los resultados a mostrar
WHERE autor.edad < 50;

/*
* @Query: Mostrar cantidad de libros por autor, y mostrar el nombre del autor
* @Criterio: Cantidad de libros menor o igual a 5
* @Observaciones:
*  1. HAVING actúa como el WHERE del SELECT, pero utiliza funciones de agrupación como count(*) que la clasula where no soporta.
*  2. AS permite crear alias de columnas y tablas, es decir llamarlos por otro nombre más corto o diferente.
*  3. El orden que se debe respetar es SELECT, FROM, JOIN, ON, WHERE, GROUP BY, HAVING
*/
#1. Mostramos 2 columnas 'autor' y 'cantidad_libros'
SELECT autores.nombre as autor, count(*) as cantidad_libros
#2. Obtenemos los registros de la tabla 'autores_libros'
FROM autores_libros as relacion
#3. Asociamos con la tabla 'autores'
JOIN autores as autor
#4. Utilizamos como criterio el PK de 'autores_libros' y el FK de 'autores'
ON relacion.autor = autor.id
#5. Particionamos el contenido, agrupando por la primera columna 'autores.nombre' que tiene alias 'autor'
GROUP BY 1
#6. Utilizamos un segundo criterio sobre lo que agrupa GROUP BY
HAVING cantidad_libros <= 5;

/*
* @Query: Listar todos los libros por autor
*
*/
# 1. Indicamos las dos columnas a mostrar
SELECT libro.nombre as libro, autor.nombre as autor
# 2. Seleccionamos la tabla 'libros' como conjunto con alias 'libro'
FROM libros as libro 
# 3. Asociamos con la tabla 'autores_libros' con alias 'relacion'
JOIN autores_libros as relacion
# 4. Utilizamos como criterio la PK de 'autores_libros' y la FK de 'libros'
ON libro.id = relacion.libro
# 5. Asociamos con la tabla 'autores' con alias 'autor'
JOIN autores as autor
# 6. Utilizamos como criterio la PK de 'autores_libros' y la FK de 'autores'
ON relacion.autor = autor.id
# 7. Restringimos los resultados a los primeros 10 registros
LIMIT 10;

/*
* @Query: Listar autores y sus libros
* @Criterio: Autores con edad menor a 20 años
*/
#1. Mostramos todas las columnas
SELECT *
#2. Utilizamos los registros de la tabla 'autores' y le asignamos como alias 'autor'
FROM autores AS autor
#3. Asociamos con la tabla 'autores_libros' con alias 'relacion'
JOIN autores_libros AS relacion
#4. Usamos de criterio la FK de 'autores' y la PK de 'autores_libros'
ON autor.id = relacion.autor
#5. Usamos un criterio adicional de la tabla base 'autores'
WHERE autor.edad < 20;

/*
* @Query: Listar autores y sus libros, nombrar al autor, su edad y el libro
* @Criterio: Autores con edad menor a 20 años
*/
SELECT autor.nombre as autor, autor.edad, libro.nombre as libro
FROM autores AS autor
JOIN autores_libros AS relacion
ON autor.id = relacion.autor
LEFT JOIN libros as libro
ON relacion.libro = libro.id
WHERE autor.edad < 20;

