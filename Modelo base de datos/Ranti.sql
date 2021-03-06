PGDMP                         x            d85i34oim1jtv4     12.4 (Ubuntu 12.4-1.pgdg16.04+1)    12.4 [    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    4508972    d85i34oim1jtv4    DATABASE     �   CREATE DATABASE d85i34oim1jtv4 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d85i34oim1jtv4;
                yswxtfesjfxnbs    false            �           0    0    DATABASE d85i34oim1jtv4    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d85i34oim1jtv4 FROM PUBLIC;
                   yswxtfesjfxnbs    false    3974            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO yswxtfesjfxnbs;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   yswxtfesjfxnbs    false    3            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO yswxtfesjfxnbs;
                   postgres    false    688            �            1259    4582377    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582380    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582383 
   direccions    TABLE     e  CREATE TABLE public.direccions (
    idcedulacliente character(10),
    calleprincipal character(30),
    callesecundaria character(30),
    imagendireccion character(254),
    numerodecasa character(15),
    sector character(50),
    ciudad character(50),
    provincia character(50),
    telefonocliente character(10),
    iddireccion integer NOT NULL
);
    DROP TABLE public.direccions;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582386    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582393    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          yswxtfesjfxnbs    false    205            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          yswxtfesjfxnbs    false    206            �            1259    4582395    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    nombrecliente character(30) NOT NULL,
    generocliente character(6)
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582398    medidas    TABLE     n   CREATE TABLE public.medidas (
    idmedida character(10) NOT NULL,
    nombremedida character(20) NOT NULL
);
    DROP TABLE public.medidas;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582401 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582404    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          yswxtfesjfxnbs    false    209            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          yswxtfesjfxnbs    false    210            �            1259    4582406    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582412    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    idpedido character(40) NOT NULL,
    idcedulacliente character(10),
    fechapedido date,
    subtotal double precision,
    iva double precision,
    totalpag double precision,
    iddireccion integer
);
    DROP TABLE public.pedidos;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582415 	   productos    TABLE     �  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    idtipoprod character(10),
    nombreproducto character(40),
    detalle character(200),
    tamanoproducto character(15),
    cantidadproducto integer,
    precioproducto double precision,
    imagenproducto character(255),
    idmedida character(2),
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.productos;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582421    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(40) NOT NULL,
    idproducto character(10) NOT NULL,
    cantidad double precision NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582424    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10) NOT NULL,
    nombrereceta character(50) NOT NULL,
    descripcionreceta character(5000) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582430    recetaxproductos    TABLE     �   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL,
    cantidad character(50)
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582433    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    idcedulacliente character varying(255),
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    rol character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    fotouser character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    yswxtfesjfxnbs    false            �            1259    4582439    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          yswxtfesjfxnbs    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          yswxtfesjfxnbs    false    218            �           2604    4585917    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    206    205            �           2604    4585918    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    210    209            �           2604    4585919    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          yswxtfesjfxnbs    false    218    217            p          0    4582377    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          yswxtfesjfxnbs    false    202   �o       q          0    4582380    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          yswxtfesjfxnbs    false    203   �p       r          0    4582383 
   direccions 
   TABLE DATA           �   COPY public.direccions (idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa, sector, ciudad, provincia, telefonocliente, iddireccion) FROM stdin;
    public          yswxtfesjfxnbs    false    204   q       s          0    4582386    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          yswxtfesjfxnbs    false    205   r       u          0    4582395    informacion_clientes 
   TABLE DATA           f   COPY public.informacion_clientes (idcedulacliente, user_id, nombrecliente, generocliente) FROM stdin;
    public          yswxtfesjfxnbs    false    207   7r       v          0    4582398    medidas 
   TABLE DATA           9   COPY public.medidas (idmedida, nombremedida) FROM stdin;
    public          yswxtfesjfxnbs    false    208   is       w          0    4582401 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          yswxtfesjfxnbs    false    209   �s       y          0    4582406    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          yswxtfesjfxnbs    false    211   t       z          0    4582412    pedidos 
   TABLE DATA           o   COPY public.pedidos (idpedido, idcedulacliente, fechapedido, subtotal, iva, totalpag, iddireccion) FROM stdin;
    public          yswxtfesjfxnbs    false    212   3t       {          0    4582415 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida, created_at, updated_at) FROM stdin;
    public          yswxtfesjfxnbs    false    213   �t       |          0    4582421    productoxpedidos 
   TABLE DATA           J   COPY public.productoxpedidos (idpedido, idproducto, cantidad) FROM stdin;
    public          yswxtfesjfxnbs    false    214   �z       }          0    4582424    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          yswxtfesjfxnbs    false    215   ^{       ~          0    4582430    recetaxproductos 
   TABLE DATA           J   COPY public.recetaxproductos (idproducto, idreceta, cantidad) FROM stdin;
    public          yswxtfesjfxnbs    false    216   �                 0    4582433    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          yswxtfesjfxnbs    false    217   ��       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          yswxtfesjfxnbs    false    206            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);
          public          yswxtfesjfxnbs    false    210            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 8, true);
          public          yswxtfesjfxnbs    false    218            �           2606    8790315    direccions direccions_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT direccions_pkey PRIMARY KEY (iddireccion);
 D   ALTER TABLE ONLY public.direccions DROP CONSTRAINT direccions_pkey;
       public            yswxtfesjfxnbs    false    204            �           2606    4582445    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            yswxtfesjfxnbs    false    205            �           2606    4582447    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            yswxtfesjfxnbs    false    209            �           2606    4582449 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            yswxtfesjfxnbs    false    202            �           2606    4582453 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            yswxtfesjfxnbs    false    207            �           2606    4582455    medidas pk_medida 
   CONSTRAINT     U   ALTER TABLE ONLY public.medidas
    ADD CONSTRAINT pk_medida PRIMARY KEY (idmedida);
 ;   ALTER TABLE ONLY public.medidas DROP CONSTRAINT pk_medida;
       public            yswxtfesjfxnbs    false    208            �           2606    8757361    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            yswxtfesjfxnbs    false    212            �           2606    4582459    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            yswxtfesjfxnbs    false    213            �           2606    8757588 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            yswxtfesjfxnbs    false    214    214            �           2606    4582463    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            yswxtfesjfxnbs    false    215            �           2606    4582465     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            yswxtfesjfxnbs    false    203            �           2606    4582467    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            yswxtfesjfxnbs    false    217            �           2606    4582469    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            yswxtfesjfxnbs    false    217            �           1259    4582470    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            yswxtfesjfxnbs    false    215            �           1259    4582471    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            yswxtfesjfxnbs    false    202            �           1259    4582472    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            yswxtfesjfxnbs    false    213            �           1259    8790317 
   entrega_fk    INDEX     E   CREATE INDEX entrega_fk ON public.pedidos USING btree (iddireccion);
    DROP INDEX public.entrega_fk;
       public            yswxtfesjfxnbs    false    212            �           1259    4582474    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            yswxtfesjfxnbs    false    207            �           1259    4582475 	   medida_pk    INDEX     H   CREATE UNIQUE INDEX medida_pk ON public.medidas USING btree (idmedida);
    DROP INDEX public.medida_pk;
       public            yswxtfesjfxnbs    false    208            �           1259    4582476    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            yswxtfesjfxnbs    false    211            �           1259    8757362 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            yswxtfesjfxnbs    false    212            �           1259    4582478    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            yswxtfesjfxnbs    false    213            �           1259    4582479    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            yswxtfesjfxnbs    false    215            �           1259    4582480 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            yswxtfesjfxnbs    false    207            �           1259    4582481    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            yswxtfesjfxnbs    false    213            �           1259    8757589    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            yswxtfesjfxnbs    false    214            �           1259    4582483    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            yswxtfesjfxnbs    false    214            �           1259    8757590    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            yswxtfesjfxnbs    false    214    214            �           1259    4582485 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            yswxtfesjfxnbs    false    212            �           1259    4582486 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            yswxtfesjfxnbs    false    215            �           1259    4582487    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            yswxtfesjfxnbs    false    216            �           1259    4582488    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            yswxtfesjfxnbs    false    216            �           1259    4582489    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            yswxtfesjfxnbs    false    216    216            �           1259    4582490    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            yswxtfesjfxnbs    false    204            �           1259    4582491    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            yswxtfesjfxnbs    false    203            �           2606    4582492 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          yswxtfesjfxnbs    false    207    204    3782            �           2606    8790318    pedidos fk_pedido_entrega_direc    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_entrega_direc FOREIGN KEY (iddireccion) REFERENCES public.direccions(iddireccion) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_entrega_direc;
       public          yswxtfesjfxnbs    false    204    3776    212            �           2606    4582497 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          yswxtfesjfxnbs    false    212    207    3782            �           2606    4582502 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          yswxtfesjfxnbs    false    208    213    3786            �           2606    4582507 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          yswxtfesjfxnbs    false    202    213    3771            �           2606    8757591 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          yswxtfesjfxnbs    false    214    3793    212            �           2606    4582517 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          yswxtfesjfxnbs    false    3773    203    215            �           2606    4582522 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          yswxtfesjfxnbs    false    215    216    3808            �           2606    4582527    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          yswxtfesjfxnbs    false    207    3782    217            p   �   x���=�@�z�sI���cc$V6�b2��w�e�
3�{���K��%[,�$�+[��Ş4��IG��G��ul�PA"m�ڑ���rv%U�箜8w>�����JO��Mʕ���R�.��{�Yž���G8pQWqF�b�G�h��Gz���1v�D4������.      q   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      r   �   x�픿n� �gx
��#��1��l��v�r�����
�R�>��ԕ�*w����r|����8*��2g�@� �j�@�68�4*٨����|ڡ��$2{�z�u�Cm���/9�/��[*�*������WI8Cӏ؀s�vs���8ʾ9�?/j�ŝ~Z�쑿X�*ߣ��Ew�e}��SFP6�_uN�5g{�F�?`N���RY<�?��+��'R9��q�ؔ���~�V��_�i      s      x������ � �      u   "  x����j�0E��W�i���%)ą��fS�F6"u"�c�����')��=ܙ�0��	�� y3���Y.?�Ɛ�{���	��!��y����M?�/��6c��u	#�_�.e�ݙi�	A.��;��I*��PW�	C��Śȴva�	�3\I,r��0�fhZ����\ �k	�Y�����;!%�LsQ�k/���fK\_æ6�%B1:֘4?�|���ݖ� �8Gd|QD�=]�\	QP��������'Ɣ��"�������� ��$_�~��)˲_]$�       v   .   x��5T�N�̤��Ĕ�b��5�ˇ�e�$��"K+p��qqq ��n      w   _   x�U�;
�@���F�w��A٬x}Y�)��?�����0���L��r���n��4�R��T��3��şi����gf�u��1~�P�z�,      y      x������ � �      z   a   x��̻�0�ڞ�����H ���R`�+N�%�L/m޷�\��	���h��#�bA/��ߜ[��c�#��r��t��z�R,      {   K  x��[�n�6�V��0{ԟe]fn����P�2�(�H��24o�G(��^�/�CR�%����n��^�!~�������f��j-x�p�o���زǾeO0���8���w�j���$v���#ǯ�f ����	�	ZR4�bيs	�������<7���o;����}f�חOF9��@YY��h%H�Kg+�p	��	��ףI�T�j�݀�ZQ�E�g<t�&���;[��N�3�Ys�qW�T����( ��r��_��vv�2�n��y+�/����d���j�-�ù��|ȫ~�VC�����>���N�H�7��� I�C��A���:(""�{���"=S.(#������G��mw��͂_��kjy�8~�S�%
��q��`O;q�7e@�yA�AI!��s��g�-���T�*�Rf�Ӟ�Z�-Jٍs��D�>��w�\�nf�jf�ގ���qO�`�o��mA�����OLC�Dr�Y��\K�j��}̆�Z�yoWfA�g�r{&�K�ǲ��d���u5�2!�X�Yn�����<�G�_*�k�@��"��1Y��4��H�sK����r(�_H���$���N�"4J����[��"���I�&c+A�z�{�v���c(��/���7$I!��_��Z�1�j<lB��	��]^R�ӻ����V.�~�]���M.�%��T��u��!�ϓ��D/���5*��:"K��O�G�q�r�@���#q�e�2�+2rB����e�bMY�e>�	���&H~�a󙍿58�V�((��o;��8�pKo����~V��UQ�*NH;��Ǝ�|�����z5��@�\rQD���o#���k�f��@�>�ωӘJM�3���d���s��Z�Q��{���cu�#=�P�; �͛���t�4�
����*HE&g�T�r7ȁ���!��V�D7�{�]�L(g�	t;����9$��$E3�f(���C/y�|-���9�7우r�=��3t������h���W⪘�ْP��)YQ�n��;�q���Q�O���ES��lV|����1�t�iȔ���%��$s</<�{��́<0S>U��?YW;^�e�S�̫"f��ƽ�l	�,�+��P�V�����ݻ�`"���fuT��
�����Z��$gA��3���T,�NxN� -f�5�A�10��i��w�j�����J�Ѫ��j��DĽ�B�9#���B�)��h���S����ԃ�s��8s&Nh(sd2�>�*2�!�^�x3���Q���R�(�|Foќ,A��|����];���#�8&�9����E4H1;����:%�{z�l�ZV��+��S��Q֭5G��3��� �rh�[��B��J�v�\}�~�S�����;t���$�aں��Vh��8㩌�)O�΀�p\)]����w��W3��;�wBV�vg�l��@�k1}�R$������QU��w�.�Q�u��UET��P�ts�v���I�ܮ+S" C�D�8�M��RWH�����o�匲n��.w�KD������#苈7�8�p?Y�&�rT���2�����97㳳���      |   O   x�3472317526�w��-(J�7T�8t� L#.Cbu�uC��z����f��>#����4Ģ˘]1z\\\ d37      }   �  x���n����S0����ؒ�9l!������/5ݥ
l�M���%�}�����)�b�*v���$�e7�\�A�L�,�{�T�>��wh��wg;/�O��w��
���hZLr���y����?���w���h�Xu@=9C�sc"&��8��P���h�6�����&�;pNz:q��?��ޛ��?�P��Qb������]���57���m��0�:_o��D�ZF�s0��nM���}���5,�;hB�M��0�_�7�����T���2���M'f��_�F��(��(��(��(�#eg�h�p����� �7X��U��G���{�do���sx��f4���u���Ywx���k\a�i�k�"4`|��:����˩7�7+�Z����-!���H���@�j�(��x�/�U�D�&�P�Lc�w�w��0\��kL3S�2p�7�3$�W -0��CԔ�-���!���b̢.��X#r�,_c�?x�.EڲQ�ΠB+�0��k��?\�+V3��͒�T�(��(��(��(��������y�����9��pԜO˻������/�K�9���![M�q��[�^�#+��~�P<bq�J�b�s����dZH�$ó�����٤'�r@bC�FR0�ԇ�-�Όsx���p��R6���-mgY���L��FэVu�g_[� n�Ϝv*)��R��^YI�\C�	�3b��V<='!T��J��t�H����8����]�ML�(~%�oʰ%��&G�.ÿ���?Qǁf�Ņc[K+�z���1��r=SXJ�-5���I��$+���u	#�"wX#+㊆���-�,�%�d��ϓ���iRS��ט%tG��.-
R��:.Lm�e�2�������(��(��(��(��c���'�7���Q�":��e��kX%6mE��l�Z�����}��XΗ��$���}'9�,�kIQ�bӦ�ɢ	�2��(�,�/��\��b,���Ӆ���os���^ހd�J�eI����琢�S^�qT�kX�7��qmy�b�挥�&��xm��͢ԉ7��8EZ����sJ��*���,=�2}H#�WC�*5-e������(��(��(��(�6c���������/�g�?��x�x�x�S����3W[�!��g�?t�pG�����D>�3-x��U�Y����8ob�hW]�go�c,�T;����W0U�F����
��)��I �P�P��C9EӀ[�Z��C����n���b�t��д��(���k���ZxΎ�X*��zx1��Fi�l�/g�\�9���f!��S�%K��+w/{�����e)��/�g�*�&��(��(��(��(��M38���g���^�..���=z�9 �sК�:TL�W�64�s��n�*�WYD�[B%uٜ3���6�mäQ��O���H]�M'ޣM�-.�Pf]r>[y����U�.��T�u�VlAKje�ݘ�M�Q�tF�<��+�1@�p���ǹ��F:u���b�Ċ6�J�/���]��N�w����9��v�q��������a�c:�<�����e��.nU�ϊu[���Le�W�])f�=M�Pƿؔ�K�~y�u�s,�Z:���z����G+΁-���������tM%���V����Qw���f(���M�T�O�1���q6��S�"����{�����h
-��p�A�FzyF�&��)g����A㬚��b���#�/J���x�nVb�>ٚ�L.u0<[�wm���F�,�6�X���q�1��b�ˊ��f�Hryg�aV�_"|��PR��O��x3�l/��QI��8?�a�rE�;|#�Ox]����7�+Z�O��<E��b�e�6��{v��$��<��}}h5EYQEQEQEQ~�������Ӄ�㽭��?r��n����/��t      ~   �   x�s�500T �  ���r�I���0�0r2���\��F��f榦d&�dW���L#܂�"��K�3I�� S,.���Y�XL�Af�*%�k� s�s�K�K�6l��X#p��&0X`����b���� :qh         �  x���I��H���+8�a�И+������2:�H!KPeQ�׏Z3��3N�%��D�/��t�	BT��8����EP3���EN�O����}ĂPv�HpÀ�9~��T�@��]�N;��Ŝ�F��yzl�<�	OL�뙃6���5q͑�1"��t���X�X�T����P��S]ӈ���6����� ��oI�6��$��  ����{.����X,�,2魈v���+�>�r�7�Bc�\�ND�)0բu�3��gG��<-��Ȫ&�����5��퀆��[��n���Q$��5)y�D|K ���`\��?��W���$p��=qZ��wV�ӎ2����~���v f�HۗM���^�z>���ĚJ�?��b��3&��.$�@��[�[�/���X]\ה��yy�uxl�N1�vx���k�ZI=�����P�ՠ���J�jϘH
+�B!d���y6��%����١�N��|��0��]yb�c�:d�5_���PH��q!D,�?�z�6i������BM!D�`�8�d��)��{l���_�\M��������V�y�<7������3�4����9�5�U�د��0y��K ݻ�Ϙ��G�BT��"�X�n�H-��5�n� �~^^��ǭ������αk%�]�'K8��Y����\�6��T�pNe��t�҄���d�&�۝#B5��A8b��~��y���a���)q����)8��Q����+k�^�idX��]8��O�o�HPoB��3&���7Ë�� c����Ydyʼ$���PV��?��!��w�5k՗��ʎΦѰ�@^1`��do^J��p�O�]����|{N�A�-zF�3�u�v�:6��{-�W�-.#�W���EY�w��qл{��?dQ�N��     