SELECT
     clientes."id_clientes" AS clientes_id_clientes,
     clientes."id_empresa_matriz" AS clientes_id_empresa_matriz,
     clientes."id_sucursales" AS clientes_id_sucursales,
     clientes."id_asesores" AS clientes_id_asesores,
     clientes."nombre" AS clientes_nombre,
     clientes."apellido" AS clientes_apellido,
     clientes."uso_de_servicios_de_la_empresa" AS clientes_uso_de_servicios_de_la_empresa,
     asesores."id_asesores" AS asesores_id_asesores,
     asesores."id_empresa_matriz" AS asesores_id_empresa_matriz,
     asesores."id_sucursales" AS asesores_id_sucursales,
     asesores."fecha_ingreso" AS asesores_fecha_ingreso,
     asesores."ingreso" AS asesores_ingreso,
     sucursales."id_sucursales" AS sucursales_id_sucursales,
     sucursales."id_empresa_matriz" AS sucursales_id_empresa_matriz,
     sucursales."asesores_sucursal" AS sucursales_asesores_sucursal,
     sucursales."ciudad_sucursal" AS sucursales_ciudad_sucursal,
     asesores."nombre" AS asesores_nombre,
     asesores."apellido" AS asesores_apellido
FROM
     "public"."clientes" clientes INNER JOIN "public"."asesores" asesores ON clientes."id_asesores" = asesores."id_asesores"
     INNER JOIN "public"."sucursales" sucursales ON asesores."id_sucursales" = sucursales."id_sucursales"
     AND sucursales."id_sucursales" = clientes."id_sucursales"