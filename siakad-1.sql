PGDMP         5            
    z            siakad    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16442    siakad    DATABASE     j   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16451    dosen    TABLE     ?   CREATE TABLE public.dosen (
    kode integer NOT NULL,
    namadosen character varying(30),
    namamatkul character varying(50)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16450    dosen_kode_seq    SEQUENCE     ?   CREATE SEQUENCE public.dosen_kode_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dosen_kode_seq;
       public          postgres    false    212                       0    0    dosen_kode_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dosen_kode_seq OWNED BY public.dosen.kode;
          public          postgres    false    211            ?            1259    16444 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16443    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    210                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    209            ?            1259    16458    matkul    TABLE     m   CREATE TABLE public.matkul (
    idmk integer NOT NULL,
    namamk character varying(30),
    sks integer
);
    DROP TABLE public.matkul;
       public         heap    postgres    false            ?            1259    16457    matkul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.matkul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.matkul_idmk_seq;
       public          postgres    false    214                       0    0    matkul_idmk_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.matkul_idmk_seq OWNED BY public.matkul.idmk;
          public          postgres    false    213            g           2604    16454 
   dosen kode    DEFAULT     h   ALTER TABLE ONLY public.dosen ALTER COLUMN kode SET DEFAULT nextval('public.dosen_kode_seq'::regclass);
 9   ALTER TABLE public.dosen ALTER COLUMN kode DROP DEFAULT;
       public          postgres    false    212    211    212            f           2604    16447    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    16461    matkul idmk    DEFAULT     j   ALTER TABLE ONLY public.matkul ALTER COLUMN idmk SET DEFAULT nextval('public.matkul_idmk_seq'::regclass);
 :   ALTER TABLE public.matkul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    213    214    214            ?          0    16451    dosen 
   TABLE DATA           <   COPY public.dosen (kode, namadosen, namamatkul) FROM stdin;
    public          postgres    false    212   ?       ?          0    16444 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    210          ?          0    16458    matkul 
   TABLE DATA           3   COPY public.matkul (idmk, namamk, sks) FROM stdin;
    public          postgres    false    214   ?       	           0    0    dosen_kode_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dosen_kode_seq', 1, false);
          public          postgres    false    211            
           0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    209                       0    0    matkul_idmk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.matkul_idmk_seq', 1, false);
          public          postgres    false    213            l           2606    16456    dosen dosen_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pkey PRIMARY KEY (kode);
 :   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pkey;
       public            postgres    false    212            j           2606    16449    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    210            n           2606    16463    matkul matkul_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.matkul
    ADD CONSTRAINT matkul_pkey PRIMARY KEY (idmk);
 <   ALTER TABLE ONLY public.matkul DROP CONSTRAINT matkul_pkey;
       public            postgres    false    214            ?   >   x?3444???K)J?t,???N,?T???-(-I-??qz?&?r:g??f??!dc???? ??&      ?   [   x?32240??,?NTp?M??L???MJ?2Jq?&g*8????sS?29C2?s?J?????9]ʁj?R?2A???y@E?\1z\\\ ?w<      ?   1   x?3444?p??4?2442?tJ,?,VpI,I???rz?zsq??qqq ?	7     