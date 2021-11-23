--Un procedimiento almacenado que para que un asesor que se le ingrese, devuelva todos los artículos prestados por la empresa en su trabajo.
--proceso almacenado
create or replace function mudanza(int)
returns  varchar as $$ DECLARE 
		datoingre alias for $1; datos RECORD;
		cur_datos  cursor for SELECT 
			empresa__matriz_.nombre_empresa as Empresa_matriz,
			empresa__matriz_.id_empresa_matriz as id,
			clientes.nombre as nombre_cliente,
			clientes.apellido as apellido_cliente,
			articulos_de_mudanza.objeto_de_mudanza as Objetos,
			articulos_de_mudanza.cantidad as cantidad,
			articulos_de_mudanza.peso as Kilos
			FROM empresa__matriz_
		  	inner join clientes on empresa__matriz_.id_empresa_matriz=clientes.id_clientes
			inner join articulos_de_mudanza on clientes.id_clientes=articulos_de_mudanza.id_articulos_de_mudanza WHERE empresa__matriz_.id_empresa_matriz=$1
			group by empresa__matriz_.nombre_empresa,clientes.nombre, clientes.apellido,articulos_de_mudanza.objeto_de_mudanza 
			,articulos_de_mudanza.cantidad,articulos_de_mudanza.peso,empresa__matriz_.id_empresa_matriz;
begin
	OPEN cur_datos;
		FETCh cur_datos INTO datos;
		RAISE NOTICE 
			'
			EMPRESA_MATRIZ: % 
        ESTOS SON LOS BIENES TRANSPORTADOS:
			',
			datos.Empresa_matriz;
		while (found) loop 
			RAISE NOTICE 
			'
			NOMBRE_CLIENTE: %
			APELLIDO_CLIENTE: % 
			OBJETOS: %
			CANTIDAD: %
			KILOS: %
			',
			datos.nombre_cliente,datos.apellido_cliente, datos.Objetos,datos.cantidad,datos.Kilos;
			FETCh cur_datos INTO datos;
		end loop;
			END;
				$$ LANGUAGE plpgsql;
SELECT mudanza(1)
