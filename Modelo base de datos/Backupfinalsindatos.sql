PGDMP                     	    x            ProyectoRantiRanti    12.2    12.2 [    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    41650    ProyectoRantiRanti    DATABASE     �   CREATE DATABASE "ProyectoRantiRanti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "ProyectoRantiRanti";
                postgres    false            �            1259    41651    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    postgres    false            �            1259    41654    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    postgres    false            �            1259    41657 
   direccions    TABLE       CREATE TABLE public.direccions (
    iddireccion character(20) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    calleprincipal character(30) NOT NULL,
    callesecundaria character(30) NOT NULL,
    imagendireccion character(254),
    numerodecasa character(15) NOT NULL
);
    DROP TABLE public.direccions;
       public         heap    postgres    false            �            1259    41660    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    41667    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    205            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    206            �            1259    41669    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    telefonocliente character(10) NOT NULL,
    nombrecliente character(30) NOT NULL,
    generocliente character(6)
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    postgres    false            �            1259    41672    medidas    TABLE     n   CREATE TABLE public.medidas (
    idmedida character(10) NOT NULL,
    nombremedida character(20) NOT NULL
);
    DROP TABLE public.medidas;
       public         heap    postgres    false            �            1259    41675 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    41678    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    209            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    210            �            1259    41680    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    41686    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    idpedido character(10) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    fechapedido date NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    41689 	   productos    TABLE     �  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    idadministador bigint,
    idtipoprod character(10),
    nombreproducto character(30) NOT NULL,
    detalle character(100),
    tamanoproducto character(10),
    cantidadproducto numeric(6,0) NOT NULL,
    precioproducto numeric(6,2) NOT NULL,
    imagenproducto character(254),
    idmedida character(10)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41692    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(10) NOT NULL,
    idproducto character(10) NOT NULL,
    subtotal numeric(6,2) NOT NULL,
    iva numeric(6,2) NOT NULL,
    tap numeric(6,2) NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    postgres    false            �            1259    41695    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10) NOT NULL,
    nombrereceta character(50) NOT NULL,
    descripcionreceta character(1000) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    postgres    false            �            1259    41701    recetaxproductos    TABLE     u   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    postgres    false            �            1259    41704    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    41710    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            �
           2604    41712    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �
           2604    41713    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209            �
           2604    41714    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            z          0    41651    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          postgres    false    202   [n       {          0    41654    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          postgres    false    203   "o       |          0    41657 
   direccions 
   TABLE DATA           �   COPY public.direccions (iddireccion, idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa) FROM stdin;
    public          postgres    false    204   �o       }          0    41660    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    205   �o                 0    41669    informacion_clientes 
   TABLE DATA           w   COPY public.informacion_clientes (idcedulacliente, user_id, telefonocliente, nombrecliente, generocliente) FROM stdin;
    public          postgres    false    207   �o       �          0    41672    medidas 
   TABLE DATA           9   COPY public.medidas (idmedida, nombremedida) FROM stdin;
    public          postgres    false    208   Zp       �          0    41675 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    209   wp       �          0    41680    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    211   �p       �          0    41686    pedidos 
   TABLE DATA           I   COPY public.pedidos (idpedido, idcedulacliente, fechapedido) FROM stdin;
    public          postgres    false    212   q       �          0    41689 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, idadministador, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto, idmedida) FROM stdin;
    public          postgres    false    213   q       �          0    41692    productoxpedidos 
   TABLE DATA           T   COPY public.productoxpedidos (idpedido, idproducto, subtotal, iva, tap) FROM stdin;
    public          postgres    false    214   �r       �          0    41695    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          postgres    false    215   �r       �          0    41701    recetaxproductos 
   TABLE DATA           @   COPY public.recetaxproductos (idproducto, idreceta) FROM stdin;
    public          postgres    false    216   �x       �          0    41704    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    217   �x       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    206            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    210            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    218            �
           2606    41716    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    205            �
           2606    41718    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    209            �
           2606    41720 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            postgres    false    202            �
           2606    41722    direccions pk_direccion 
   CONSTRAINT     ^   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT pk_direccion PRIMARY KEY (iddireccion);
 A   ALTER TABLE ONLY public.direccions DROP CONSTRAINT pk_direccion;
       public            postgres    false    204            �
           2606    41724 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            postgres    false    207            �
           2606    41726    medidas pk_medida 
   CONSTRAINT     U   ALTER TABLE ONLY public.medidas
    ADD CONSTRAINT pk_medida PRIMARY KEY (idmedida);
 ;   ALTER TABLE ONLY public.medidas DROP CONSTRAINT pk_medida;
       public            postgres    false    208            �
           2606    41728    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            postgres    false    212            �
           2606    41730    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    213            �
           2606    41732 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            postgres    false    214    214            �
           2606    41734    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            postgres    false    215            �
           2606    41736 #   recetaxproductos pk_recetaxproducto 
   CONSTRAINT     s   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT pk_recetaxproducto PRIMARY KEY (idproducto, idreceta);
 M   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT pk_recetaxproducto;
       public            postgres    false    216    216            �
           2606    41738     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            postgres    false    203            �
           2606    41740    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    217            �
           2606    41742    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �
           1259    41743    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            postgres    false    215            �
           1259    41744    administra_fk    INDEX     M   CREATE INDEX administra_fk ON public.productos USING btree (idadministador);
 !   DROP INDEX public.administra_fk;
       public            postgres    false    213            �
           1259    41745    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            postgres    false    202            �
           1259    41746    clasificar_fk    INDEX     G   CREATE INDEX clasificar_fk ON public.productos USING btree (idmedida);
 !   DROP INDEX public.clasificar_fk;
       public            postgres    false    213            �
           1259    41747    direccion_pk    INDEX     Q   CREATE UNIQUE INDEX direccion_pk ON public.direccions USING btree (iddireccion);
     DROP INDEX public.direccion_pk;
       public            postgres    false    204            �
           1259    41748    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            postgres    false    207            �
           1259    41749 	   medida_pk    INDEX     H   CREATE UNIQUE INDEX medida_pk ON public.medidas USING btree (idmedida);
    DROP INDEX public.medida_pk;
       public            postgres    false    208            �
           1259    41750    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    211            �
           1259    41751 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            postgres    false    212            �
           1259    41752    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            postgres    false    213            �
           1259    41753    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            postgres    false    215            �
           1259    41754 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            postgres    false    207            �
           1259    41755    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    213            �
           1259    41756    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            postgres    false    214            �
           1259    41757    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            postgres    false    214            �
           1259    41758    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            postgres    false    214    214            �
           1259    41759 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            postgres    false    212            �
           1259    41760 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            postgres    false    215            �
           1259    41761    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            postgres    false    216            �
           1259    41762    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            postgres    false    216            �
           1259    41763    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            postgres    false    216    216            �
           1259    41764    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            postgres    false    204            �
           1259    41765    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            postgres    false    203            �
           2606    41766 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          postgres    false    207    204    2765            �
           2606    41771 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          postgres    false    207    2765    212            �
           2606    41776 &   productos fk_producto_clasifica_medida    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_clasifica_medida FOREIGN KEY (idmedida) REFERENCES public.medidas(idmedida) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_clasifica_medida;
       public          postgres    false    208    2769    213            �
           2606    41781 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          postgres    false    213    2753    202            �
           2606    41786 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          postgres    false    212    214    2775            �
           2606    41791 /   productoxpedidos fk_producto_productox_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_producto;
       public          postgres    false    214    213    2781            �
           2606    41796 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          postgres    false    203    2755    215            �
           2606    41801 /   recetaxproductos fk_recetaxp_recetaxpr_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_producto;
       public          postgres    false    213    2781    216            �
           2606    41806 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          postgres    false    2791    216    215            �
           2606    41811    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          postgres    false    2765    217    207            z   �   x����� ��3</�ÿ
z,Z��Z���\�ԡ������}O���8_N�MFA[%��'=�P�hF��JA�%y��a��Mt0v�cH��-�D	$�X��vZ=�_d0r��)r1�n"!M��ܑ�ڗd�b$�Fpuc����Ge֮%�K.F�&�Z�Mm�~FzcP�0�#���e���      {   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      |      x������ � �      }      x������ � �         X   x�34206415���4�4��0574216��M,J�W��W�8c��͍LL-́�99,�MM��,-@:3�|�R�q����� ��;      �      x������ � �      �   ]   x�U�A
�0Dѵ9�$EP�"U#(B%�x}эv����KaH ��d��t5G�㮕P����~%�a�?�?�wx� K\w����ˇ��ng+{      �      x������ � �      �      x������ � �      �   �  x���j�0Ư�)��cbLs����vכ�B�V�`k{�=�^l�c�u���E���;g� ��^��I_ш#�[�K1@ [��t�L��Dy]�}'���MhGX�R /9�\���f7����>�*���a
�Bb���o�� ��yʏ��دn�E%�%=�$��c��yE��K\e�o)ں��s`�GF�#)˭�;~�i��:y���UE�(���cT��Kle^���u��߾;ȓ� 3پ�$�����V�Ap}�@����n�Q5��$��n%ah׊R�5 ��;��Λ^�����b���z9�騒
ٵp4@�#`�8<�)�W0��s�P���(nJ�U�i�Ξ'��]�}�9���GQ}�jn�����y_bF�O)�P�}<`�qn�0 ��B      �      x������ � �      �   �  x���n7���S��$��Jrb��IH�&E��ۓ/�]zE�Kn��B�G��C���S�b�fH���Eh�DdC�8��������`0Rl{�'{O�����3
�qZ�ZQ��r���:�ef����s7��Y�놔��"�fT��i�Z*
��n�#YR�)Z�z��t�8Ư.Fx�X^eA��S�KE��}5.�.H��%���%5�Ǳ��hN���g��(��BF�>�9��2����Z]�M����ŕ�����y+�d�W�r}eS����{4����X㋚fH�S�M#���,���S���%��hj��VE�[�:,L���*7�Eh���'��������pp0�����g/N�M�g�?N��U�s�?l
�>�����K*jZ�'���Ԁ���v��dk������tL0�d�i�M�s
�	"[�j@d���&s����R���i�Օ���p�փ�J�]]KfC6^@���h�a���Y�]�^Їq8a��/B[iZ�yB}u����610�Y��|,����+�Ad]X"�Q�y� t15~:_U��E�S��Dcg;��� :�^�O�?�����'�W������_=F��Cin��>M\[���X{�W[/ (1,�(�@��z�'��lL�;��W?��� H�l3aI|��iat �"_+K�X��eZ���������]_e�yQ�����@�	�q,K?��49D�ۤ�2W��t��7xZ5Dm�/�e��V�{�~�|�S���[��O�׬��~�C�ξXl�G��c�ǏFGG�k?�����i�ŦϘ~��C$e���)��nL��]{�dg���*�jҲ�|�%�e�hJ+�KG�J�Ěl}��*�$ ��4ؿ����Ѯ�m9;wa�����d��E��m�,^ʨ���Wצu�nL��fؐ�x����]�1y�ן]�=�ayp�}L�R������w��}���ã�N�H���	M8�*�7렿��k�ʫƇF6����[��,�Ѕn�B�%�;�%����}"b1��T�������5���!�,
5��6�B����d�,�6��&V�.���/�F��r����%+>l�}*�B
'PÛ�+��(kY��UfS��
O�/����R�뷗d;1��#.�ΐ�l;�l�ѣ�'^��%�[�g2��4oUA_��OU���?GInEL��v��q�����N4_��2�>��*)��L��+9L�����^tkijP���A�F�u���9"����SP�|c�E���e�%�v^���}O���7D�q�q^�Z_����p.�=7")c5!�6�]I��J
\��(�Z���G�]}ZmϪ�*�Yt$��q�(�1�*rI�����FQ�x��R�	89�[tKI|׵��Nn?�(,x������*c���(�չ�lq�&Vm+�x�4j���_��&�i+,xƼ �x�xx(�s�/�S��O�p�U��������y'      �      x������ � �      �      x�]��n�@���.�
oFpUl5��5�7Sa3���6�1y���{s ]�J�NRr��/��̏���PcQ":�*^7�&B��)��y�o�,8؅q\\����������i�;�'
���O�����2Q�J���t�� ��1& KK�R0�&��ĺ��E�
.&�5k(�CV1y�gU�^l!����>�Q�h��Nm�ۛv�λ0^muG[��\���z��po��>!d�a���`+UQ�?�d_A     