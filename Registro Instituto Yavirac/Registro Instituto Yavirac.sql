Drop database if exists InstitutoYavirac;

Create database InstitutoYavirac;

Use InstitutoYavirac;

Create table Alumnos(
id_alumno int not null auto_increment,
primary key (id_alumno),
nombresComplestos varchar(100) not null,
apellidosCompletos varchar(100) not null,
correo varchar(100) not null,
cedula varchar(10) not null,
telefono varchar(10) not null,
id_curso int null,
foreign key (id_curso) references Cursos(id_curso)
);

Create table Cobros(
id_cobro int not null auto_increment,
primary key (id_cobro),
costo decimal not null
);

Create table Conceptos(
id_concepto int not null auto_increment,
primary key (id_concepto),
costo decimal not null
);

Create table Empleados(
id_empleado int not null auto_increment,
primary key (id_empleado),
nombreEmpleado varchar(100) not null,
edad varchar(20) not null,
telefono varchar(10) null
);

Create table Generos(
id_genero int not null auto_increment,
primary key (id_genero),
masculino varchar(2) not null,
femenino varchar(2) not null
);

Create table Pagos(
id_pago int not null auto_increment,
primary key (id_pago),
pago int null
);

Create table Proveedores(
id_proveedor int not null auto_increment,
primary key (id_proveedor),
nombreProveedor varchar(100) not null,
edad varchar (10) not null,
telefono varchar(10) not null
);

Create table Facturas(
id_factura int not null auto_increment,
primary key (id_factura),
nombrefactura varchar (30) not null,
RUC varchar (10) not null,
telefono varchar (10) not null
);

Create table Productos(
id_producto int not null auto_increment,
primary key (id_producto),
nombreProducto varchar (100) not null,
precio int not null
);

Create table Materias(
id_materia int not null auto_increment,
primary key (id_materia),
nombre varchar (50) not null
);

Create table Maestros(
id_maestro int not null auto_increment,
primary key (id_maestro),
nombre varchar(30) not null
);


Create table Cursos(
id_curso int not null auto_increment,
primary key (id_curso),
nombreCurso varchar(20) not null
);

Create table Notas(
id_nota int not null auto_increment,
primary key (id_nota),
nota decimal null,
id_alumno int null,
foreign key (id_alumno) references Alumnos(id_alumno)
);

Create table MaestrosMaterias(
id_maestromateria int not null auto_increment,
primary key (id_maestromateria),
id_maestro int not null,
id_materia int not null,
foreign key (id_maestro) references Maestros(id_maestro),
foreign key (id_materia) references Materias(id_materia)
);


Create table MaestrosAlumnos(
id_maestroalumnos int not null auto_increment,
primary key (id_maestrosAlumnos),
id_maestro int not null,
id_alumno int not null,
foreign key (id_maestro) references Maestros(id_maestro),
foreign key (id_alumno) references Alumnos(id_alumno)
);

Create table MateriasAlumnos(
id_materiaalumno int not null auto_increment,
primary key (id_materiaAlumno),
id_materia int not null,
id_alumno int not null,
foreign key (id_materia) references Materias(id_materia),
foreign key (id_alumno) references Alumnos(id_alumno)
);

Create table AlumnosPagos(
id_alumnopago int not null auto_increment,
primary key (id_alumnopago),
id_alumno int not null,
id_pago int not null,
foreign key (id_alumno) references Alumnos(id_alumno),
foreign key (id_pago) references Pagos(id_pago)
);

Create table AlumnosCursos(
id_alumnocurso int not null auto_increment,
primary key (id_alumnocurso),
id_curso int not null,
id_alumno int not null,
foreign key (id_curso) references Cursos(id_curso),
foreign key (id_alumno) references Alumnos(id_alumno)
);