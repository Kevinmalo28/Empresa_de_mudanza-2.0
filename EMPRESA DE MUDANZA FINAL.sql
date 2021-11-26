/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     18/11/2021 16:30:20                          */
/*==============================================================*/


drop index CLIENTES___ARTICULOS_DE_MUDANZA;

drop index VEHICULOS_EMPRESA___ARTICULOS_D;

drop index ARTICULOS_DE_MUDANZA_PK;

drop table ARTICULOS_DE_MUDANZA;

drop index ASESORES___SUCURSALES_FK;

drop index ASESORES___EMPRESA_MATRIZ_FK;

drop index ASESORES_PK;

drop table ASESORES;

drop index SUCURSALES___CLIENTES_FK;

drop index EMPRESA_MATRIZ___CLIENTES_FK;

drop index CLIENTES_PK;

drop table CLIENTES;

drop index EMPRESA__MATRIZ__PK;

drop table EMPRESA__MATRIZ_;

drop index MANTENIMIENTO___VEHICULOS_FK;

drop index MANTENIMIENTO_PK;

drop table MANTENIMIENTO;

drop index EMPRESA___SUCURSALES_FK;

drop index SUCURSALES_PK;

drop table SUCURSALES;

drop index EMPRESA_MATRIZ___VEHICULOS_EMPR;

drop index VEHICULOS_EMPRESA_PK;

drop table VEHICULOS_EMPRESA;


/*==============================================================*/
/* Table: ARTICULOS_DE_MUDANZA                                  */
/*==============================================================*/
create table ARTICULOS_DE_MUDANZA (
   ID_ARTICULOS_DE_MUDANZA INT4                 not null,
   ID_VEHICULOS         INT4                 null,
   ID_CLIENTES          INT4                 null,
   ASESOR__RESPONSABLE_MUDANZA VARCHAR(20)          not null,
   OBJETO_DE_MUDANZA    VARCHAR(20)          not null,
   CANTIDAD             DECIMAL(10)          not null,
   PESO                 DECIMAL(10)          not null,
   constraint PK_ARTICULOS_DE_MUDANZA primary key (ID_ARTICULOS_DE_MUDANZA)
);

insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(1,1,1,'Luigi','Muebles',5,20);
insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(2,2,2,'Robert','Camas',15,30);
insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(3,3,3,'Francisco','Cocina',6,74);
							


/*==============================================================*/
/* Table: ASESORES                             */
/*==============================================================*/
create table ASESORES (
   ID_ASESORES          INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ID_SUCURSALES        INT4                 null,
   NOMBRE               VARCHAR(20)          not null,
   APELLIDO             VARCHAR(20)          not null,
   CEDULA_DE__IDENTIDAD VARCHAR(10)          not null,
   DIRECCION            VARCHAR(20)          not null,
   FECHA_DE_NACIMIENTO  DATE                 not null,
   INGRESO              DATE                 not null,
   TIEMPO_DE_EXPERIENCIA   VARCHAR(20)          not null,
   constraint PK_ASESORES primary key (ID_ASESORES)
);

insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(1,1,1,'Juan','Sánchez',1358764298,'Manta','1998-10-28','2020-12-10', '11 meses');
insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(2,1,2,'Fernando','Macias',1358794217,'Quito','1976-04-14','2019-04-25','2 años 7 meses');
insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(3,1,3,'Saul','Gonzales',1315294403,'Montecristi','2002-02-04','2021-03-06','8 meses');

	


/*==============================================================*/
/* Table: CLIENTES                              */
/*==============================================================*/

create table CLIENTES (
   ID_CLIENTES          INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ID_SUCURSALES        INT4                 null,
   NOMBRE               VARCHAR(20)          not null,
   APELLIDO             VARCHAR(20)          not null,
   CEDULA               VARCHAR(10)          not null,
   DIRECCION            VARCHAR(25)          not null,
   CELULAR              VARCHAR(10)          not null,
   CORREO               VARCHAR(30)          not null,
   USO_DE_SERVICIOS_DE_LA_EMPRESA VARCHAR(20)          not null,
   constraint PK_CLIENTES primary key (ID_CLIENTES)
);

insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(1,1,1,'Carlos','Zambrano',1357894129,'Ambato','0987654321','carloszambrano@gmail.com','9');
insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(2,1,2,'Mario','García',1308972455,'Manta','0985241796','mariogarcia@gmail.com','4');
insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(3,1,3,'Josue','Loor',1302579641,'Cuenca','0994753641','josueloor@gmail.com','5');
	

/*==============================================================*/
/* Table: EMPRESA__MATRIZ_                                 */
/*==============================================================*/

create table EMPRESA__MATRIZ_ (
   ID_EMPRESA_MATRIZ    INT4                 not null,
   ASESORES_MATRIZ      VARCHAR(20)          not null,
   NOMBRE_EMPRESA       VARCHAR(20)          not null,
   DIRECCION_EMPRESA    VARCHAR(20)          not null,
   TELEFONO_EMPRESA     VARCHAR(10)          not null,
   CORREO_EMPRESA       VARCHAR(30)          not null,
   CIUDAD_EMPRESA       VARCHAR(20)          not null,
   constraint PK_EMPRESA__MATRIZ_ primary key (ID_EMPRESA_MATRIZ)
);


insert into EMPRESA__MATRIZ_  (ID_EMPRESA_MATRIZ  ,ASESORES_MATRIZ,NOMBRE_EMPRESA,DIRECCION_EMPRESA,TELEFONO_EMPRESA,CORREO_EMPRESA,CIUDAD_EMPRESA)
values(1,1,'Mudmar','Barrio Jocay J6','0980584698','mudmarmatriz@gmail.com','Manta');


/*==============================================================*/
/* Table: MANTENIMIENTO                                */
/*==============================================================*/	
create table MANTENIMIENTO (
   ID_MANTENIMIENTO     INT4                 not null,
   ID_VEHICULOS         INT4                 null,
   TIPO_DE_MANTENIMIENTO VARCHAR(20)          not null,
   FECHA_DE_MANTENIMIENTO DATE                 not null,
   FECHA_FIN_MANTENIMIENTO DATE                 not null,
   constraint PK_MANTENIMIENTO primary key (ID_MANTENIMIENTO)
);



insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de bujías','2020-02-25','2020-02-26');
insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de aceite','2021-04-17','2021-04-17');
insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de parabrisas','2021-02-11','2021-02-13');



/*==============================================================*/
/* Table: SUCURSALES                               */
/*==============================================================*/
create table SUCURSALES (
   ID_SUCURSALES        INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ASESORES_SUCURSAL    VARCHAR(20)          not null,
   TELEFONO             VARCHAR(10)          not null,
   DIRECCION            VARCHAR(20)          not null,
   CORREO               VARCHAR(30)          not null,
   CIUDAD_SUCURSAL      VARCHAR(20)          not null,
   constraint PK_SUCURSALES primary key (ID_SUCURSALES)
);

insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(1,1,'Pedro','0999456712','Las Piñas','mudmarguayas@gmail.com','Guayas');
insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(2,1,'Dalember','0987654321','Avda Quito','mudmarambato@gmail.com','Ambato');
insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(3,1,'Anthony','0985671247','La Florita','mudmarloja@gmail.com','Loja');


/*==============================================================*/
/* Table: VEHICULOS_EMPRESA                                 */
/*==============================================================*/
create table VEHICULOS_EMPRESA (
   ID_VEHICULOS         INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   TIPO_DE_VEHICULO     VARCHAR(20)          not null,
   PLACA_VEHICULO       VARCHAR(10)          not null,
   COLOR_VEHICULO       VARCHAR(20)          not null,
   constraint PK_VEHICULOS_EMPRESA primary key (ID_VEHICULOS)
);


insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Camioneta 4x4','GIR0258','Negro');
insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Camion','JGR0258','Blanco');
insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Taxi ','MBB0365','Amarillo');




INDEX

/*==============================================================*/
/* Index: ARTICULOS_DE_MUDANZA_PK                               */
/*==============================================================*/
create unique index ARTICULOS_DE_MUDANZA_PK on ARTICULOS_DE_MUDANZA (
ID_ARTICULOS_DE_MUDANZA
);

/*==============================================================*/
/* Index: VEHICULOS_EMPRESA___ARTICULOS_D                       */
/*==============================================================*/
create  index VEHICULOS_EMPRESA___ARTICULOS_D on ARTICULOS_DE_MUDANZA (
ID_VEHICULOS
);

/*==============================================================*/
/* Index: CLIENTES___ARTICULOS_DE_MUDANZA                       */
/*==============================================================*/
create  index CLIENTES___ARTICULOS_DE_MUDANZA on ARTICULOS_DE_MUDANZA (
ID_CLIENTES
);

/*==============================================================*/
/* Index: ASESORES_PK                                           */
/*==============================================================*/
create unique index ASESORES_PK on ASESORES (
ID_ASESORES
);

/*==============================================================*/
/* Index: ASESORES___EMPRESA_MATRIZ_FK                          */
/*==============================================================*/
create  index ASESORES___EMPRESA_MATRIZ_FK on ASESORES (
ID_EMPRESA_MATRIZ
);

/*==============================================================*/
/* Index: ASESORES___SUCURSALES_FK                              */
/*==============================================================*/
create  index ASESORES___SUCURSALES_FK on ASESORES (
ID_SUCURSALES
);


/*==============================================================*/
/* Index: CLIENTES_PK                                           */
/*==============================================================*/
create unique index CLIENTES_PK on CLIENTES (
ID_CLIENTES
);

/*==============================================================*/
/* Index: EMPRESA_MATRIZ___CLIENTES_FK                          */
/*==============================================================*/
create  index EMPRESA_MATRIZ___CLIENTES_FK on CLIENTES (
ID_EMPRESA_MATRIZ
);

/*==============================================================*/
/* Index: SUCURSALES___CLIENTES_FK                              */
/*==============================================================*/
create  index SUCURSALES___CLIENTES_FK on CLIENTES (
ID_SUCURSALES
);

/*==============================================================*/
/* Index: EMPRESA__MATRIZ__PK                                   */
/*==============================================================*/
create unique index EMPRESA__MATRIZ__PK on EMPRESA__MATRIZ_ (
ID_EMPRESA_MATRIZ
);

/*==============================================================*/
/* Index: MANTENIMIENTO_PK                                      */
/*==============================================================*/
create unique index MANTENIMIENTO_PK on MANTENIMIENTO (
ID_MANTENIMIENTO
);

/*==============================================================*/
/* Index: MANTENIMIENTO___VEHICULOS_FK                          */
/*==============================================================*/
create  index MANTENIMIENTO___VEHICULOS_FK on MANTENIMIENTO (
ID_VEHICULOS
);


/*==============================================================*/
/* Index: SUCURSALES_PK                                         */
/*==============================================================*/
create unique index SUCURSALES_PK on SUCURSALES (
ID_SUCURSALES
);

/*==============================================================*/
/* Index: EMPRESA___SUCURSALES_FK                               */
/*==============================================================*/
create  index EMPRESA___SUCURSALES_FK on SUCURSALES (
ID_EMPRESA_MATRIZ
);


/*==============================================================*/
/* Index: VEHICULOS_EMPRESA_PK                                  */
/*==============================================================*/
create unique index VEHICULOS_EMPRESA_PK on VEHICULOS_EMPRESA (
ID_VEHICULOS
);

/*==============================================================*/
/* Index: EMPRESA_MATRIZ___VEHICULOS_EMPR                       */
/*==============================================================*/
create  index EMPRESA_MATRIZ___VEHICULOS_EMPR on VEHICULOS_EMPRESA (
ID_EMPRESA_MATRIZ
);

alter table ARTICULOS_DE_MUDANZA
   add constraint FK_ARTICULO_CLIENTES__CLIENTES foreign key (ID_CLIENTES)
      references CLIENTES (ID_CLIENTES)
      on delete restrict on update restrict;

alter table ARTICULOS_DE_MUDANZA
   add constraint FK_ARTICULO_VEHICULOS_VEHICULO foreign key (ID_VEHICULOS)
      references VEHICULOS_EMPRESA (ID_VEHICULOS)
      on delete restrict on update restrict;

alter table ASESORES
   add constraint FK_ASESORES_ASESORES__EMPRESA_ foreign key (ID_EMPRESA_MATRIZ)
      references EMPRESA__MATRIZ_ (ID_EMPRESA_MATRIZ)
      on delete restrict on update restrict;

alter table ASESORES
   add constraint FK_ASESORES_ASESORES__SUCURSAL foreign key (ID_SUCURSALES)
      references SUCURSALES (ID_SUCURSALES)
      on delete restrict on update restrict;

alter table CLIENTES
   add constraint FK_CLIENTES_EMPRESA_M_EMPRESA_ foreign key (ID_EMPRESA_MATRIZ)
      references EMPRESA__MATRIZ_ (ID_EMPRESA_MATRIZ)
      on delete restrict on update restrict;

alter table CLIENTES
   add constraint FK_CLIENTES_SUCURSALE_SUCURSAL foreign key (ID_SUCURSALES)
      references SUCURSALES (ID_SUCURSALES)
      on delete restrict on update restrict;

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_MANTENIMI_VEHICULO foreign key (ID_VEHICULOS)
      references VEHICULOS_EMPRESA (ID_VEHICULOS)
      on delete restrict on update restrict;

alter table SUCURSALES
   add constraint FK_SUCURSAL_EMPRESA___EMPRESA_ foreign key (ID_EMPRESA_MATRIZ)
      references EMPRESA__MATRIZ_ (ID_EMPRESA_MATRIZ)
      on delete restrict on update restrict;

alter table VEHICULOS_EMPRESA
   add constraint FK_VEHICULO_EMPRESA_M_EMPRESA_ foreign key (ID_EMPRESA_MATRIZ)
      references EMPRESA__MATRIZ_ (ID_EMPRESA_MATRIZ)
      on delete restrict on update restrict;




