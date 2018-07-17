Drop database if exists InstitutoYavirac;

Drop table if exists Ventas;


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
telefono varchar(10) null,
sueldo int not null
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

Create table NotasMaterias(
id_notamateria int not null auto_increment,
primary key (id_notamateria),
id_nota int not null,
id_materia int not null,
foreign key (id_nota) references Notas(id_nota),
foreign key (id_materia) references Materias(id_materia)
);

Create table MateriasCursos(
id_materiacurso int not null auto_increment,
primary key (id_materiacurso),
id_curso int not null,
id_materia int not null,
foreign key (id_curso) references Cursos(id_curso),
foreign key (id_materia) references Materias(id_materia)
);

Create table Genero(
id_genero int not null auto_increment,
primary key (id_genero),
id_alumno int not null,
foreign key (id_alumno) references Alumnos(id_alumno)
);

Create table ProveedoresProducto(
id_proveedorproducto int not null auto_increment,
primary key (id_proveedorproducto),
id_producto int not null,
id_proveedor int not null,
foreign key (id_producto) references Productos(id_producto),
foreign key (id_proveedor) references Proveedores(id_proveedor)
);

Create table ProveedoresPagos(
id_proveedorpago int not null auto_increment,
primary key (id_proveedorpago),
id_pago int not null,
id_proveedor int not null,
foreign key (id_pago) references Pagos(id_pago),
foreign key (id_proveedor) references Proveedores(id_proveedor)
);

Create table Tiendas(
id_tienda int not null auto_increment,
primary key (id_tienda),
nombreTienda varchar (30) not null,
id_producto int not null,
foreign key (id_producto) references Productos(id_producto)
);

Create table Ventas(
id_venta int not null,
primary key (id_venta),
venta int not null,
id_factura int not null,
id_tienda int not null,
iva int not null,
foreign key (id_factura) references Facturas(id_factura),
foreign key (id_tienda) references Tiendas(id_tienda)
);

Create table CompletosFacturas(
id_completo int not null,
primary key (id_completo),
direccion varchar (100) null,
correo varchar (100) null,
id_factura int not null,
foreign key (id_factura) references Facturas(id_factura)
);
