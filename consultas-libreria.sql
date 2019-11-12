/*
* @Query: Mostrar cantidad de libros por autor
*
*/
SELECT count(*) as cantidad_libros, autor
FROM autores_libros
GROUP BY 2;

/*
* @Query: Mostrar cantidad de libros por autor
* @Criterio: Cantidad de libros menor o igual a 5
*
*/
# 1. Muestro la columna autor, y cantidad_libros que cuenta los registros
SELECT autor, count(*) as cantidad_libros
# 2. Indico como conjunto de tabla autor-libro
FROM autores_libros
# 3. Particiono el conjunto, agrupando por la primera columna "autor"
GROUP BY 1
# 4. Filtro la partición usando como criterio la cantidad_libros
HAVING cantidad_libros <= 5;

/*
* @Query: Mostrar cantidad de libros por autor, el nombre del autor
* @Criterio: Cantidad de libros menor o igual a 5
*
*/
SELECT autores.nombre as autor, count(*) as cantidad_libros
FROM autores_libros
JOIN autores
ON autor=autores.id
GROUP BY 1
HAVING cantidad_libros <= 5;

/*
* Observaciones:
* 1. HAVING actúa como el WHERE del SELECT, pero utiliza funciones de agrupación como count(*) que la clasula where no soporta.
* 2. AS permite crear alias de columnas y tablas, es decir llamarlos por otro nombre más corto o diferente.
*/

/*
* @Query: Listar todos los libros por autor
*
*/
SELECT libro.nombre as libro, autor.nombre as autor
# selecciono todos los libros
FROM libros as libro
# asocio con la tabla autores_libros
JOIN autores_libros as relacion
# con el criterio que el autor tenga ese libro asociado
ON libro.id = relacion.libro
# asocio con la tabla de autores
JOIN autores as autor
# con el criterio de obtener los datos de cada autor
ON relacion.autor = autor.id
# limito el resultado a los primeros 5 registros
LIMIT 5;

