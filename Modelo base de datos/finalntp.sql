PGDMP     1    #    	        	    x            ProyectoRantiRanti    12.2    12.2 Z    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33251    ProyectoRantiRanti    DATABASE     �   CREATE DATABASE "ProyectoRantiRanti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "ProyectoRantiRanti";
                postgres    false            �            1259    34265    categoria_productos    TABLE     �   CREATE TABLE public.categoria_productos (
    idtipoprod character(10) NOT NULL,
    nombretipoprod character(15) NOT NULL,
    fototipoprod character(200)
);
 '   DROP TABLE public.categoria_productos;
       public         heap    postgres    false            �            1259    34325    categoria_recetas    TABLE     �   CREATE TABLE public.categoria_recetas (
    idtiporeceta character(10) NOT NULL,
    nombretiporeceta character(15) NOT NULL,
    fototiporece character(200)
);
 %   DROP TABLE public.categoria_recetas;
       public         heap    postgres    false            �            1259    34271 
   direccions    TABLE       CREATE TABLE public.direccions (
    iddireccion character(20) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    calleprincipal character(30) NOT NULL,
    callesecundaria character(30) NOT NULL,
    imagendireccion character(254),
    numerodecasa character(15)
);
    DROP TABLE public.direccions;
       public         heap    postgres    false            �            1259    34255    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    34253    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    208            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    207            �            1259    34278    informacion_clientes    TABLE     �   CREATE TABLE public.informacion_clientes (
    idcedulacliente character(10) NOT NULL,
    user_id bigint,
    telefonocliente character(10) NOT NULL,
    nombrecliente character(30) NOT NULL
);
 (   DROP TABLE public.informacion_clientes;
       public         heap    postgres    false            �            1259    34227 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    34225    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    203            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    202            �            1259    34246    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false            �            1259    34286    pedidos    TABLE     �   CREATE TABLE public.pedidos (
    idpedido character(10) NOT NULL,
    idcedulacliente character(10) NOT NULL,
    fechapedido date NOT NULL
);
    DROP TABLE public.pedidos;
       public         heap    postgres    false            �            1259    34293 	   productos    TABLE     s  CREATE TABLE public.productos (
    idproducto character(10) NOT NULL,
    id bigint,
    idtipoprod character(10) NOT NULL,
    nombreproducto character(30) NOT NULL,
    detalle character(100) NOT NULL,
    tamanoproducto character(10) NOT NULL,
    cantidadproducto numeric(6,0) NOT NULL,
    precioproducto numeric(6,2) NOT NULL,
    imagenproducto character(254)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    34301    productoxpedidos    TABLE     �   CREATE TABLE public.productoxpedidos (
    idpedido character(10) NOT NULL,
    idproducto character(10) NOT NULL,
    subtotal numeric(6,2) NOT NULL,
    iva numeric(6,2) NOT NULL,
    tap numeric(6,2) NOT NULL
);
 $   DROP TABLE public.productoxpedidos;
       public         heap    postgres    false            �            1259    34309    recetas    TABLE     �   CREATE TABLE public.recetas (
    idreceta character(10) NOT NULL,
    id bigint,
    idtiporeceta character(10),
    nombrereceta character(15) NOT NULL,
    descripcionreceta character(30) NOT NULL,
    imagenreceta character(254)
);
    DROP TABLE public.recetas;
       public         heap    postgres    false            �            1259    34317    recetaxproductos    TABLE     u   CREATE TABLE public.recetaxproductos (
    idproducto character(10) NOT NULL,
    idreceta character(10) NOT NULL
);
 $   DROP TABLE public.recetaxproductos;
       public         heap    postgres    false            �            1259    34235    users    TABLE     �  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    34233    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    205            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �
           2604    34764    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            �
           2604    34765    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    34766    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            }          0    34265    categoria_productos 
   TABLE DATA           W   COPY public.categoria_productos (idtipoprod, nombretipoprod, fototipoprod) FROM stdin;
    public          postgres    false    209   \n       �          0    34325    categoria_recetas 
   TABLE DATA           Y   COPY public.categoria_recetas (idtiporeceta, nombretiporeceta, fototiporece) FROM stdin;
    public          postgres    false    217   o       ~          0    34271 
   direccions 
   TABLE DATA           �   COPY public.direccions (iddireccion, idcedulacliente, calleprincipal, callesecundaria, imagendireccion, numerodecasa) FROM stdin;
    public          postgres    false    210   �o       |          0    34255    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    208   Gp                 0    34278    informacion_clientes 
   TABLE DATA           h   COPY public.informacion_clientes (idcedulacliente, user_id, telefonocliente, nombrecliente) FROM stdin;
    public          postgres    false    211   dp       w          0    34227 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    203   �p       z          0    34246    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    206   iq       �          0    34286    pedidos 
   TABLE DATA           I   COPY public.pedidos (idpedido, idcedulacliente, fechapedido) FROM stdin;
    public          postgres    false    212   �q       �          0    34293 	   productos 
   TABLE DATA           �   COPY public.productos (idproducto, id, idtipoprod, nombreproducto, detalle, tamanoproducto, cantidadproducto, precioproducto, imagenproducto) FROM stdin;
    public          postgres    false    213   �q       �          0    34301    productoxpedidos 
   TABLE DATA           T   COPY public.productoxpedidos (idpedido, idproducto, subtotal, iva, tap) FROM stdin;
    public          postgres    false    214   `r       �          0    34309    recetas 
   TABLE DATA           l   COPY public.recetas (idreceta, id, idtiporeceta, nombrereceta, descripcionreceta, imagenreceta) FROM stdin;
    public          postgres    false    215   }r       �          0    34317    recetaxproductos 
   TABLE DATA           @   COPY public.recetaxproductos (idproducto, idreceta) FROM stdin;
    public          postgres    false    216   �r       y          0    34235    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    205   s       �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    207            �           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);
          public          postgres    false    202            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 27, true);
          public          postgres    false    204            �
           2606    34264    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    208            �
           2606    34232    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    203            �
           2606    34269 )   categoria_productos pk_categoria_producto 
   CONSTRAINT     o   ALTER TABLE ONLY public.categoria_productos
    ADD CONSTRAINT pk_categoria_producto PRIMARY KEY (idtipoprod);
 S   ALTER TABLE ONLY public.categoria_productos DROP CONSTRAINT pk_categoria_producto;
       public            postgres    false    209            �
           2606    34275    direccions pk_direccion 
   CONSTRAINT     ^   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT pk_direccion PRIMARY KEY (iddireccion);
 A   ALTER TABLE ONLY public.direccions DROP CONSTRAINT pk_direccion;
       public            postgres    false    210            �
           2606    34282 +   informacion_clientes pk_informacion_cliente 
   CONSTRAINT     v   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT pk_informacion_cliente PRIMARY KEY (idcedulacliente);
 U   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT pk_informacion_cliente;
       public            postgres    false    211            �
           2606    34290    pedidos pk_pedido 
   CONSTRAINT     U   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pk_pedido PRIMARY KEY (idpedido);
 ;   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT pk_pedido;
       public            postgres    false    212            �
           2606    34297    productos pk_producto 
   CONSTRAINT     [   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT pk_producto PRIMARY KEY (idproducto);
 ?   ALTER TABLE ONLY public.productos DROP CONSTRAINT pk_producto;
       public            postgres    false    213            �
           2606    34305 #   productoxpedidos pk_productoxpedido 
   CONSTRAINT     s   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT pk_productoxpedido PRIMARY KEY (idpedido, idproducto);
 M   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT pk_productoxpedido;
       public            postgres    false    214    214            �
           2606    34313    recetas pk_recetas 
   CONSTRAINT     V   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT pk_recetas PRIMARY KEY (idreceta);
 <   ALTER TABLE ONLY public.recetas DROP CONSTRAINT pk_recetas;
       public            postgres    false    215            �
           2606    34321 #   recetaxproductos pk_recetaxproducto 
   CONSTRAINT     s   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT pk_recetaxproducto PRIMARY KEY (idproducto, idreceta);
 M   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT pk_recetaxproducto;
       public            postgres    false    216    216            �
           2606    34329     categoria_recetas pk_tipo_receta 
   CONSTRAINT     h   ALTER TABLE ONLY public.categoria_recetas
    ADD CONSTRAINT pk_tipo_receta PRIMARY KEY (idtiporeceta);
 J   ALTER TABLE ONLY public.categoria_recetas DROP CONSTRAINT pk_tipo_receta;
       public            postgres    false    217            �
           2606    34245    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    205            �
           2606    34243    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    205            �
           1259    34315    administra2_fk    INDEX     @   CREATE INDEX administra2_fk ON public.recetas USING btree (id);
 "   DROP INDEX public.administra2_fk;
       public            postgres    false    215            �
           1259    34299    administra_fk    INDEX     A   CREATE INDEX administra_fk ON public.productos USING btree (id);
 !   DROP INDEX public.administra_fk;
       public            postgres    false    213            �
           1259    34270    categoria_producto_pk    INDEX     b   CREATE UNIQUE INDEX categoria_producto_pk ON public.categoria_productos USING btree (idtipoprod);
 )   DROP INDEX public.categoria_producto_pk;
       public            postgres    false    209            �
           1259    34276    direccion_pk    INDEX     Q   CREATE UNIQUE INDEX direccion_pk ON public.direccions USING btree (iddireccion);
     DROP INDEX public.direccion_pk;
       public            postgres    false    210            �
           1259    34283    informacion_cliente_pk    INDEX     i   CREATE UNIQUE INDEX informacion_cliente_pk ON public.informacion_clientes USING btree (idcedulacliente);
 *   DROP INDEX public.informacion_cliente_pk;
       public            postgres    false    211            �
           1259    34252    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    206            �
           1259    34291 	   pedido_pk    INDEX     H   CREATE UNIQUE INDEX pedido_pk ON public.pedidos USING btree (idpedido);
    DROP INDEX public.pedido_pk;
       public            postgres    false    212            �
           1259    34300    pertenece_a_fk    INDEX     J   CREATE INDEX pertenece_a_fk ON public.productos USING btree (idtipoprod);
 "   DROP INDEX public.pertenece_a_fk;
       public            postgres    false    213            �
           1259    34316    pertenece_fk    INDEX     H   CREATE INDEX pertenece_fk ON public.recetas USING btree (idtiporeceta);
     DROP INDEX public.pertenece_fk;
       public            postgres    false    215            �
           1259    34285 	   posee2_fk    INDEX     M   CREATE INDEX posee2_fk ON public.informacion_clientes USING btree (user_id);
    DROP INDEX public.posee2_fk;
       public            postgres    false    211            �
           1259    34332    posee_fk    INDEX     E   CREATE INDEX posee_fk ON public.users USING btree (idcedulacliente);
    DROP INDEX public.posee_fk;
       public            postgres    false    205            �
           1259    34298    producto_pk    INDEX     N   CREATE UNIQUE INDEX producto_pk ON public.productos USING btree (idproducto);
    DROP INDEX public.producto_pk;
       public            postgres    false    213            �
           1259    34307    productoxpedido2_fk    INDEX     T   CREATE INDEX productoxpedido2_fk ON public.productoxpedidos USING btree (idpedido);
 '   DROP INDEX public.productoxpedido2_fk;
       public            postgres    false    214            �
           1259    34308    productoxpedido_fk    INDEX     U   CREATE INDEX productoxpedido_fk ON public.productoxpedidos USING btree (idproducto);
 &   DROP INDEX public.productoxpedido_fk;
       public            postgres    false    214            �
           1259    34306    productoxpedido_pk    INDEX     f   CREATE UNIQUE INDEX productoxpedido_pk ON public.productoxpedidos USING btree (idpedido, idproducto);
 &   DROP INDEX public.productoxpedido_pk;
       public            postgres    false    214    214            �
           1259    34292 
   realiza_fk    INDEX     I   CREATE INDEX realiza_fk ON public.pedidos USING btree (idcedulacliente);
    DROP INDEX public.realiza_fk;
       public            postgres    false    212            �
           1259    34314 
   recetas_pk    INDEX     I   CREATE UNIQUE INDEX recetas_pk ON public.recetas USING btree (idreceta);
    DROP INDEX public.recetas_pk;
       public            postgres    false    215            �
           1259    34323    recetaxproducto2_fk    INDEX     V   CREATE INDEX recetaxproducto2_fk ON public.recetaxproductos USING btree (idproducto);
 '   DROP INDEX public.recetaxproducto2_fk;
       public            postgres    false    216            �
           1259    34324    recetaxproducto_fk    INDEX     S   CREATE INDEX recetaxproducto_fk ON public.recetaxproductos USING btree (idreceta);
 &   DROP INDEX public.recetaxproducto_fk;
       public            postgres    false    216            �
           1259    34322    recetaxproducto_pk    INDEX     f   CREATE UNIQUE INDEX recetaxproducto_pk ON public.recetaxproductos USING btree (idproducto, idreceta);
 &   DROP INDEX public.recetaxproducto_pk;
       public            postgres    false    216    216            �
           1259    34277    tiene_fk    INDEX     J   CREATE INDEX tiene_fk ON public.direccions USING btree (idcedulacliente);
    DROP INDEX public.tiene_fk;
       public            postgres    false    210            �
           1259    34330    tipo_receta_pk    INDEX     [   CREATE UNIQUE INDEX tipo_receta_pk ON public.categoria_recetas USING btree (idtiporeceta);
 "   DROP INDEX public.tipo_receta_pk;
       public            postgres    false    217            �
           1259    34331    users_pk    INDEX     ?   CREATE UNIQUE INDEX users_pk ON public.users USING btree (id);
    DROP INDEX public.users_pk;
       public            postgres    false    205            �
           2606    34333 %   direccions fk_direccio_tiene_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccions
    ADD CONSTRAINT fk_direccio_tiene_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.direccions DROP CONSTRAINT fk_direccio_tiene_informac;
       public          postgres    false    2767    211    210            �
           2606    34338 -   informacion_clientes fk_informac_posee2_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.informacion_clientes
    ADD CONSTRAINT fk_informac_posee2_users FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.informacion_clientes DROP CONSTRAINT fk_informac_posee2_users;
       public          postgres    false    205    2754    211            �
           2606    34348 "   pedidos fk_pedido_realiza_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT fk_pedido_realiza_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pedidos DROP CONSTRAINT fk_pedido_realiza_informac;
       public          postgres    false    211    2767    212            �
           2606    34353 %   productos fk_producto_administr_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_administr_users FOREIGN KEY (id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_administr_users;
       public          postgres    false    213    205    2754            �
           2606    34358 (   productos fk_producto_pertenece_categori    FK CONSTRAINT     �   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT fk_producto_pertenece_categori FOREIGN KEY (idtipoprod) REFERENCES public.categoria_productos(idtipoprod) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public.productos DROP CONSTRAINT fk_producto_pertenece_categori;
       public          postgres    false    2760    209    213            �
           2606    34368 -   productoxpedidos fk_producto_productox_pedido    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_pedido FOREIGN KEY (idpedido) REFERENCES public.pedidos(idpedido) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_pedido;
       public          postgres    false    2771    214    212            �
           2606    34363 /   productoxpedidos fk_producto_productox_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.productoxpedidos
    ADD CONSTRAINT fk_producto_productox_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.productoxpedidos DROP CONSTRAINT fk_producto_productox_producto;
       public          postgres    false    214    2776    213            �
           2606    34373 "   recetas fk_recetas_administr_users    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_administr_users FOREIGN KEY (id) REFERENCES public.users(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_administr_users;
       public          postgres    false    205    215    2754            �
           2606    34378 %   recetas fk_recetas_pertenece_tipo_rec    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetas
    ADD CONSTRAINT fk_recetas_pertenece_tipo_rec FOREIGN KEY (idtiporeceta) REFERENCES public.categoria_recetas(idtiporeceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.recetas DROP CONSTRAINT fk_recetas_pertenece_tipo_rec;
       public          postgres    false    2794    217    215            �
           2606    34388 /   recetaxproductos fk_recetaxp_recetaxpr_producto    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_producto FOREIGN KEY (idproducto) REFERENCES public.productos(idproducto) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Y   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_producto;
       public          postgres    false    213    2776    216            �
           2606    34383 .   recetaxproductos fk_recetaxp_recetaxpr_recetas    FK CONSTRAINT     �   ALTER TABLE ONLY public.recetaxproductos
    ADD CONSTRAINT fk_recetaxp_recetaxpr_recetas FOREIGN KEY (idreceta) REFERENCES public.recetas(idreceta) ON UPDATE RESTRICT ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.recetaxproductos DROP CONSTRAINT fk_recetaxp_recetaxpr_recetas;
       public          postgres    false    215    2786    216            �
           2606    34393    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          postgres    false    205    2767    211            }   �   x���1� ��N�_@BA���q2�8��bS�����%X01^ �/y�'���a�� ���x�� �JRNkQW̤B�}�=��Q��v~͐�l���[,E!E�h�l{�"�QQ�)�"g�2L���ܟ;*u���]��dda��k���?�Q��R�%�`��ް      �   �   x�sr�5T N�������3*��U��0��3З�`&�Kjqbei^~1D�3������t��-M-�ʇJq&B�C܋?���A��)��Y�uB�hfr�%�!2d1�?�=����� ���      ~   �   x���;�0Dk�� �޵㸤���6�
�,�W�������-g��4k��	�[� ���y�1>)��f�zDu�3���U�]�5}h<�"	��(��Z(Ł�>�m�>.|��*D�3e���zk�n��B�qF#|�[w�TWaw�R��DU�      |      x������ � �         �   x���;�0�z}�� y���&m�(h0B���l��L7��Vrf!R@�lU���n��۰m��c蓰�(q�pع,\�j���E�ｱw����uMaڇ������~l�N~��R�!��p�&����B�      w   ]   x�U��
� ��>L�֡�%47(�5z���9�9�)kh����-�+�[8��i��/'��Y�42V��̨ߑ����[�Z�e+i      z      x������ � �      �      x������ � �      �   �   x��500T �?N� ]3/�,�X'�H�&%'ɼ�ļD܊���
��0�����)����������	�e`ih	�ݢ�U�N}6� �.#0]& �sFiNj	�H�K��*$���+x�yS�q�&��2�4�30�Ɩ���$�,,����RGDtq��qqq H��H      �      x������ � �      �   S   x��500T �?N� W](�5/95)?''1%�H-N��� NC3cK##sK ������� a�^VA:��p��qqq �4�      �      x��500R �  ������� ?�      y   �  x���[��J���W�C������=�@��"�f^J,i.���G���鴤s��"Y�E}Y{m��_3�O�!������!�a�4��.	�aQ�t��M��_|���|\KI>Y�3U���9�\�A=[)jY�A*����rn�zw�r�0���(�D$���4M���y��c_b(���V���Vc�H{���k��Vѓ��tF+�@\
G�u~�_o���8L4"�i<9$+*����VЬ*~����!;��Xg��Ax����ď�P ��t?Z/T%�6:��-D������>ɚ�Oh�i�xL8�`QV��5'��'����<g��a�%#l��$�0iz_�2�m�oү���w��D�ٽ8�=J�m�姰��T��m��(�7������0YA1��뜎m�s2S!Y�ܩc��Օ��<K�aI#�M��t_
��{���-��m��ΤWq�d�Z���pp����T��W�]�<A�j	��JP0���A�Q�ܦ�5�o#���u��X�:�Ǟ黷��i�@�v��].�\?ޣ��<lO� ס���M,��b�?��!E�W,Q#�G���G�1S�����|KW��b���`���95�MU��B��`\:aX&�c����d~)M��AM�jz��#���/��pi�c߂�}��\N�}eL��2��zͺQtCF�ZD}��#fW���0<��J�����i6V��/���of���     