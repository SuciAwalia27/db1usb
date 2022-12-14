PGDMP     +    ,            
    z            retail    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16559    retail    DATABASE     j   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE retail;
                postgres    false            ?            1259    16561    barang    TABLE     y   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30),
    harga integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16560    barang_id_barang_seq    SEQUENCE     ?   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    210                       0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    209            ?            1259    16575 
   pembayaran    TABLE     `   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16574    pembayaran_id_pembayaran_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembayaran_id_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pembayaran_id_pembayaran_seq;
       public          postgres    false    214                       0    0    pembayaran_id_pembayaran_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pembayaran_id_pembayaran_seq OWNED BY public.pembayaran.id_pembayaran;
          public          postgres    false    213            ?            1259    16568    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30),
    alamat_pembeli character varying(30)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16567    pembeli_id_pembeli_seq    SEQUENCE     ?   CREATE SEQUENCE public.pembeli_id_pembeli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.pembeli_id_pembeli_seq;
       public          postgres    false    212                       0    0    pembeli_id_pembeli_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.pembeli_id_pembeli_seq OWNED BY public.pembeli.id_pembeli;
          public          postgres    false    211            f           2604    16564    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    210    209    210            h           2604    16578    pembayaran id_pembayaran    DEFAULT     ?   ALTER TABLE ONLY public.pembayaran ALTER COLUMN id_pembayaran SET DEFAULT nextval('public.pembayaran_id_pembayaran_seq'::regclass);
 G   ALTER TABLE public.pembayaran ALTER COLUMN id_pembayaran DROP DEFAULT;
       public          postgres    false    213    214    214            g           2604    16571    pembeli id_pembeli    DEFAULT     x   ALTER TABLE ONLY public.pembeli ALTER COLUMN id_pembeli SET DEFAULT nextval('public.pembeli_id_pembeli_seq'::regclass);
 A   ALTER TABLE public.pembeli ALTER COLUMN id_pembeli DROP DEFAULT;
       public          postgres    false    212    211    212            ?          0    16561    barang 
   TABLE DATA           ?   COPY public.barang (id_barang, nama_barang, harga) FROM stdin;
    public          postgres    false    210   <       ?          0    16575 
   pembayaran 
   TABLE DATA           @   COPY public.pembayaran (id_pembayaran, total_bayar) FROM stdin;
    public          postgres    false    214   {       ?          0    16568    pembeli 
   TABLE DATA           K   COPY public.pembeli (id_pembeli, nama_pembeli, alamat_pembeli) FROM stdin;
    public          postgres    false    212   ?       	           0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    209            
           0    0    pembayaran_id_pembayaran_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.pembayaran_id_pembayaran_seq', 1, false);
          public          postgres    false    213                       0    0    pembeli_id_pembeli_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.pembeli_id_pembeli_seq', 1, false);
          public          postgres    false    211            j           2606    16566    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    210            n           2606    16580    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    214            l           2606    16573    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    212            ?   /   x?32?LN-????4500?2??LJ?*s?<Kά?\Ns?T? ?
I      ?      x?32?4500?2? ?@?%?9X$F??? P??      ?   C   x?34?0?,.M??,??K?M*?K?24?0?L)??,N?KI?K?2461?,?,?N?,??MJ?????? _'     