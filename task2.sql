PGDMP     9    
            	    x            task2    10.14    10.14                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    task2    DATABASE     �   CREATE DATABASE task2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE task2;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16404    Authors    TABLE     �   CREATE TABLE public."Authors" (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    country character varying(4) NOT NULL
);
    DROP TABLE public."Authors";
       public         postgres    false    3            �            1259    16402    Authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Authors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Authors_id_seq";
       public       postgres    false    197    3            	           0    0    Authors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Authors_id_seq" OWNED BY public."Authors".id;
            public       postgres    false    196            �            1259    16416    Books    TABLE     �   CREATE TABLE public."Books" (
    id integer NOT NULL,
    name character varying(100),
    pages smallint NOT NULL,
    author_id integer NOT NULL
);
    DROP TABLE public."Books";
       public         postgres    false    3            �            1259    16414    Books_auther_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Books_auther_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Books_auther_id_seq";
       public       postgres    false    3    201            
           0    0    Books_auther_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Books_auther_id_seq" OWNED BY public."Books".author_id;
            public       postgres    false    200            �            1259    16410    Books_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Books_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Books_id_seq";
       public       postgres    false    3    201                       0    0    Books_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Books_id_seq" OWNED BY public."Books".id;
            public       postgres    false    198            �            1259    16412    Books_pages_seq    SEQUENCE     �   CREATE SEQUENCE public."Books_pages_seq"
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Books_pages_seq";
       public       postgres    false    201    3                       0    0    Books_pages_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Books_pages_seq" OWNED BY public."Books".pages;
            public       postgres    false    199            x
           2604    16407 
   Authors id    DEFAULT     l   ALTER TABLE ONLY public."Authors" ALTER COLUMN id SET DEFAULT nextval('public."Authors_id_seq"'::regclass);
 ;   ALTER TABLE public."Authors" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            y
           2604    16419    Books id    DEFAULT     h   ALTER TABLE ONLY public."Books" ALTER COLUMN id SET DEFAULT nextval('public."Books_id_seq"'::regclass);
 9   ALTER TABLE public."Books" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    198    201            z
           2604    16420    Books pages    DEFAULT     n   ALTER TABLE ONLY public."Books" ALTER COLUMN pages SET DEFAULT nextval('public."Books_pages_seq"'::regclass);
 <   ALTER TABLE public."Books" ALTER COLUMN pages DROP DEFAULT;
       public       postgres    false    199    201    201            {
           2604    16421    Books author_id    DEFAULT     v   ALTER TABLE ONLY public."Books" ALTER COLUMN author_id SET DEFAULT nextval('public."Books_auther_id_seq"'::regclass);
 @   ALTER TABLE public."Books" ALTER COLUMN author_id DROP DEFAULT;
       public       postgres    false    200    201    201            �
          0    16404    Authors 
   TABLE DATA               6   COPY public."Authors" (id, name, country) FROM stdin;
    public       postgres    false    197   �                  0    16416    Books 
   TABLE DATA               =   COPY public."Books" (id, name, pages, author_id) FROM stdin;
    public       postgres    false    201   �                  0    0    Authors_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Authors_id_seq"', 7, true);
            public       postgres    false    196                       0    0    Books_auther_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Books_auther_id_seq"', 1, false);
            public       postgres    false    200                       0    0    Books_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Books_id_seq"', 9, true);
            public       postgres    false    198                       0    0    Books_pages_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Books_pages_seq"', 1, false);
            public       postgres    false    199            ~
           2606    16409    Authors Authors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Authors"
    ADD CONSTRAINT "Authors_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Authors" DROP CONSTRAINT "Authors_pkey";
       public         postgres    false    197            �
           2606    16423    Books Books_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Books"
    ADD CONSTRAINT "Books_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Books" DROP CONSTRAINT "Books_pkey";
       public         postgres    false    201            |
           1259    16450    Authors_name_idx    INDEX     H   CREATE INDEX "Authors_name_idx" ON public."Authors" USING btree (name);
 &   DROP INDEX public."Authors_name_idx";
       public         postgres    false    197            
           1259    16449    Books_author_id_idx    INDEX     N   CREATE INDEX "Books_author_id_idx" ON public."Books" USING btree (author_id);
 )   DROP INDEX public."Books_author_id_idx";
       public         postgres    false    201            �
   �   x��M
�0@���)���b[!�Ս��i3`��=���{�V`��"����5T3�D�Pu�٥�R6`{:�Y=Cw�-�^���U~p�p���N#���+�c���>8���x<%�]�T�5f���4��Л+�          �   x�5�A
�0EדS�	��F���nDZ�P�Iʹ������k.����aZ�*�y4����,
�L�`,�-:o(��e	�W�&TV��9J��TY�{R{�+A�]&a"��!�D���0z�)�FO�U����Xɚ,<���w偋$k�Sk�x�_���xc?b�:h     