Drop database if exists SuperMercado;
Drop table if exists Producto;

Create database SuperMercado;

Use SuperMercado;

Create table Cliente(
id_cliente INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id_cliente),
nombre  varchar (10) not null,
direccion varchar (25) not null,
telefono varchar (10) not null
);


Create table TipoProducto (
id_tipoProducto INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id_tipoProducto),
nombre varchar (30) not null
);


Create table Productos (
id_producto INT NOT NULL auto_increment,
PRIMARY KEY (id_producto),
nombre varchar (30) not null,
precio decimal not null,
id_tipoProducto int not null,
foreign key (id_tipoProducto) references TipoProducto(id_tipoProducto)
);


Create table Factura (
id_factura INT NOT NULL auto_increment,
PRIMARY KEY (id_factura),
numeroFactura varchar (20) not null,
fechaFactura varchar (30) not null,
IVA decimal not null,
total decimal not null, 
id_cliente int not null,
foreign key (id_cliente) references Cliente(id_cliente)
);


Create table Detalles(
id_detalles INT NOT NULL auto_increment,
PRIMARY KEY (id_detalles),
cantidad varchar (20) not null,
precio decimal not null,
id_producto int not null,
id_factura int not null,
foreign key (id_producto) references Productos(id_producto),
foreign key (id_factura) references Factura(id_factura)
);

Create table Distribuidoras (
id_distribuidora INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id_distribuidora),
direccion varchar (30) not null,
telefono varchar (10) not null,
id_producto int not null,
foreign key (id_producto) references Productos(id_producto)
);

Create table Reparticion (
id_reparticion INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (id_reparticion),
id_distribuidora int not null,
id_producto int not null,
foreign key (id_producto) references Productos(id_producto),
foreign key (id_distribuidora) references Distribuidoras(id_distribuidora)
);