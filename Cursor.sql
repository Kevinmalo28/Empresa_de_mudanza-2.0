--Un cursor que muestre los datos del cliente con los artículos o bienes que se han trasladado de un lugar a otro
--CURSOR

do $$
declare
 ndatos Record;
 cantidad int =0;
 c_ncursor cursor for select * from clientes, articulos_de_mudanza where 
 articulos_de_mudanza.id_articulos_de_mudanza = articulos_de_mudanza.id_clientes

order by cantidad;	
begin
for ndatos in  c_ncursor loop
fetch  c_ncursor into ndatos;
cantidad= cantidad  + count (ndatos.id_articulos_de_mudanza);
raise notice 'NOMBRE: % ,APELLIDO: % BIENES: % , CANTIDAD_BIENES: % ', ndatos.nombre,
ndatos.apellido,ndatos.objeto_de_mudanza,ndatos.cantidad;
end loop;
end $$
language 'plpgsql';

