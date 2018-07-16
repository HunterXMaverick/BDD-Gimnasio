Use InstitutoYavirac;
select * from Notas where nota < 70 and idParcial = 3 and idMateria = 1;
select idCursos,nota,Notas.idAlumno From CursoAlumnos inner join Notas where CursoAlumnos.idAlumno = Notas.idAlumno and nota < 70 ;
-- 1._Contar el número total de alumnos.
select count(*) from Alumnos;

-- 2._Listado de Alumnos por un curso.
select id_alumno from AlumnosCursos where id_curso;

-- 3._Cuadro de honor del parcial3 (notas mayores de 91)

select id_alumno,nota,id_nota from Notas where nota > 91;

-- 4._Aplazados por materia
select * from notasmaterias where id_nota < 100;

-- 5._Aplazados por curso
select alumnoscursos From Alumnos inner join Notas where AlumnosCurso.id_alumno = Notas.id_alumno and nota < 70 ;

-- 6._Mejores 10 promedios de todo el sistema para asignarles becas
select Max(nota) from Notas where nota < 10;

-- 7._Materias por maestros
select id_maestro,id_materia from maestrosmaterias;

-- 8- Contar cuantas materias por maestros.
select id_maestro, count(id_materia) from maestrosmaterias;

-- 9- Calcular el promedio anual de todas las notas.
select AVG(nota) from Notas group by id_alumno;

-- 10- Calcular el promedio por sexo
select avg(id_genero) from Genero;

-- 11- Alumnos a los que no se les ha asignado ninguna nota.
select id_alumno,nota,id_nota from Notas where id_nota < 0;

-- 12- Maestros a los que no se les ha asignado ninguna materia.
select id_maestro,id_materia from maestrosmaterias where id_maestro = 0;

-- 13- Ver el historial de un alumno X
select * from Alumnos where id_alumno;

-- 14- Ver la nota más alta del año.
select Max(nota) from Notas;

-- 15- Ver la nota más baja del año.
select Min(nota) from Notas;

-- 16- Alumnos que pierden derecho a Primera Recuperación (promedio < 40)
select Max(nota) from Notas where nota < 40;

-- 17- Materias por curso
select id_curso, id_materia from MateriasCursos;

-- 18- Cuantos alumnos van a Recuperación
select id_nota,id_alumno from Notas where id_nota < 60;

-- 19- Cuantos alumnos van a Recuperación por Materia.
select id_nota, id_materiaalumno from materiasalumnos  where id_nota < 60;

-- 20- Alumnos Repiten
select id_alumno, Min(nota) from Notas;

-- 21- Sumar cuanto ha cobrado cada empleado.
select sum(sueldo) from empleados;

-- 22- Sumar Todos los Cobros realizados.
select sum(costo) from cobros;

-- 23- Sumar los Cobros por Concepto.
select sum(costo) from conceptos;

-- 24- Contar cuantos cobros se han hecho.
select count(costo) from cobros;
 
-- 25- Ver el Estado de cuenta de un alumno.
select * from alumnos where correo;

-- 26- Contar cuantos empleados hay.
select count(*) from empleados;

-- 27- Alumnos que no han realizado ningún pago.


-- 28- Contar cuantos productos hay en la tienda.

-- 29- Calcular la Inversión Total hecha en la tienda escolar.

-- 30- Ver los artículos por proveedor.

-- 31- Cuánto Dinero se le ha pagado a cada proveedor.

-- 32- Cuantos proveedores tenemos

-- 33- Total Vendido

-- 34- Ventas por factura

-- 35- Total ventas por factura

-- 36- Total impuesto cobrado.

-- 37- Total impuesto cobrado por factura.

-- 38- Productos que no han tenido movimiento.

-- 39- Ver la factura más alta

-- 40- Ver una factura x completa.

