insert into continente (nombre) values ('America');
set @ultimoId = last_insert_id();
insert into paises (nombre,idContinente) values ('Peru',@ultimoId);
insert into paises (nombre,idContinente) values ('Colombia',@ultimoId);
insert into paises (nombre,idContinente) values ('Mexico',@ultimoId);


set @ultimoId = last_insert_id();
insert into provincia (nombre,idPais) values ('Bogota',@ultimoId);
insert into provincia (nombre,idPais) values ('Medellin',@ultimoId);
insert into canton (nombre) values ('ghj');



truncate table continente;
select *from provincia;