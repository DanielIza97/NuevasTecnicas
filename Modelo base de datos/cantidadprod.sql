PGDMP     0                 	    x            ProyectoRantiRanti    12.2    12.2     8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    33251    ProyectoRantiRanti    DATABASE     �   CREATE DATABASE "ProyectoRantiRanti" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Ecuador.1252' LC_CTYPE = 'Spanish_Ecuador.1252';
 $   DROP DATABASE "ProyectoRantiRanti";
                postgres    false            �            1259    34235    users    TABLE     �  CREATE TABLE public.users (
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
       public          postgres    false    205            <           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    204            �
           2604    34766    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            5          0    34235    users 
   TABLE DATA           �   COPY public.users (id, idcedulacliente, name, email, rol, email_verified_at, password, fotouser, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    205   �       =           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 30, true);
          public          postgres    false    204            �
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
           1259    34332    posee_fk    INDEX     E   CREATE INDEX posee_fk ON public.users USING btree (idcedulacliente);
    DROP INDEX public.posee_fk;
       public            postgres    false    205            �
           1259    34331    users_pk    INDEX     ?   CREATE UNIQUE INDEX users_pk ON public.users USING btree (id);
    DROP INDEX public.users_pk;
       public            postgres    false    205            �
           2606    34393    users fk_users_posee_informac    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_posee_informac FOREIGN KEY (idcedulacliente) REFERENCES public.informacion_clientes(idcedulacliente) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_posee_informac;
       public          postgres    false    205            5   �  x���ɒ�J�����mC$��GD�	E�ޠ�2(��O�[�v�FGd�?���~Y\�Mq����A$�Әs7q�y���4�%~���O��*�Yo�YT�2�؝L/�Қ��8o�T�����\8W��n ��X���&�W��-�`IVr���c��(^ʖ�[C[��[P��L!����|)��	�f.����k�.���p�hDz��Hy2�od�(`I��1�n����@��6�M}!�j�4s�C[�)�'�Y�6ڡY�լ��D4$k��x�rPA2��	�$��u�,�X]cT�P3 ��$g�`�5��D�7LKW{�Ll��gWS��h����D����+�G�B��2Q�����3Z�+oV{��(SjP�G%,O��|�*׺ӏ��4�ª/b���<zVAHT��F�U�
JPRT"sy�&��w���~�B�riR�h�(؎����ݦΌ&>�Dl�V���6�;q��'
n���?�VT�4��<Tq��f�!z�u
f�*��e��涚N�`�X\h��z;���^��]g!.�-�:����CU�ʪ�h����(���A�	V���v�����|�5��	�������	é<�㍴f��œ�/��I�g�r�{,^�(F!�k} �AI�2�[�1gY���G�,]����[��$-uL��\���GZ��I��f�X�宰r��)�bXL���Y��s���#Ъ#)�4�[�׿!W�2E�-V>=\#ǘ�.��ў�6,X��0�t���co���kaf�f67�\�R>�R����#���W����4
~/^�z+�[�s�%2yf�p��-/���j8L��E<�c�i��VN��p���$h��4X�ު��mпx_�u�{���Q��o��^��CZNY-/��������N���v��^�)�ռY)������     