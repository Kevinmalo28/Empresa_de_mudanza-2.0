--Un trigger que actualice el número de veces que una persona ha pedido el servicio de la mudanza.
--Trigger
create or replace function tr_actualizar()
returns trigger as $tr_actualizar$
declare
 uso_de_servicios_de_la_empresa int;
ncantidad int;
begin
select count (*) into uso_de_servicios_de_la_empresa  from clientes  where id_clientes=new.id_clientes;
if(uso_de_servicios_de_la_empresa > 0) then
   raise exception SQLSTATE 'E0012' using
        message = 'Se a ingresado un nuevo registro de este cliente..';
	return false;
end if;
return new;
end;
$tr_actualizar$ language plpgsql;
create trigger tr_actualizar
before insert or update on clientes
for each row
execute procedure tr_actualizar();


insert into clientes(id_clientes,id_empresa_matriz,id_sucursales,nombre,apellido,cedula,direccion,celular,correo, uso_de_servicios_de_la_empresa)
values(369874,8488284,7514857,'Dylan','Veliz','1312587469','El Carmen','0999741235','dylanveliz@gmail.com','7');
