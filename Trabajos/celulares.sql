insert into Samsung (descripcion, modelo, precio)Values ('mem 64GB, 128GB y 256GB, Ram 6GB, bat 3,000mAh', 'S9 ', '980 euros');
insert into LG (descripcion, modelo, precio)Values ('mem 64/128 GB, Ram 6 GB, bat 3.300 mAh con carga rápida Quick Charge 3.0', 'V35 ThinQ', '899 euros');
insert into Huawei (descripcion, modelo, precio)Values ('mem 128 GB,Ram 4 GB, bat 3.400 mAh Supercharge', 'P20','649 euros');
insert into Apple (descripcion, modelo, precio)Values ('mem 64GB, Ram 3GB, bat 2.700 mAh', 'S9 ', '1.159 euros con 64GB');
insert into Nokia (descripcion, modelo, precio)Values ('mem 128 GB, Ram 6 GB, bat 3.260 mAh', 'Nokia 8 Sirocco', '749 euros');
insert into Sony (descripcion, modelo, precio)Values ('mem Snapdragon 835, Ram 4GB, bat 3,230mAh', 'XPERIA XZ PREMIUM', '488 euros');
insert into Sony (descripcion, modelo, precio)Values ('mem 64/128 GB, Ram 6 GB, bat 3.300 mAh con carga rápida Quick Charge 3.0', 'V35 ThinQ', '899 euros');


-- Traer la informacion a la tabla relaciones
select * from Samsung inner join Huawei on Samsung.LG= Samsung.modelo;
select * from Lg;
select * from Huawei;
select * from Apple;
select * from Nokia;
-- contar elmento
select count(*) from Sony `modelo`;

-- agrupar elemtno
select precio from sony group by precio;

-- orden de registros
select * from Sony where precio='modelo' or precio='descripcion' order by precio;
select * from Sony order by precio;