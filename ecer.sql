PGDMP                         z            ecer    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16529    ecer    DATABASE     ~   CREATE DATABASE ecer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE ecer;
                postgres    false            ?            1259    16535    barang    TABLE     ?   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(30) NOT NULL,
    harga_barang integer,
    stop_barang integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            ?            1259    16550 
   pembayaran    TABLE     ?   CREATE TABLE public.pembayaran (
    id_pembayaran integer NOT NULL,
    tanggal_bayar date,
    total_bayar integer,
    id_transaksi integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            ?            1259    16540    pembeli    TABLE     ?   CREATE TABLE public.pembeli (
    id_pembeli integer NOT NULL,
    nama_pembeli character varying(30) NOT NULL,
    jenis_kelamin character(1),
    nomor_telepon character(15),
    alamat character varying(15)
);
    DROP TABLE public.pembeli;
       public         heap    postgres    false            ?            1259    16530    supplier    TABLE     ?   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30) NOT NULL,
    nomor_telepon character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            ?            1259    16545 	   transaksi    TABLE     ?   CREATE TABLE public.transaksi (
    id_transaksi integer NOT NULL,
    id_barang integer,
    id_pembeli integer,
    tanggal date,
    keterangan character varying(100)
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false                      0    16535    barang 
   TABLE DATA           `   COPY public.barang (id_barang, nama_barang, harga_barang, stop_barang, id_supplier) FROM stdin;
    public          postgres    false    215   
                 0    16550 
   pembayaran 
   TABLE DATA           ]   COPY public.pembayaran (id_pembayaran, tanggal_bayar, total_bayar, id_transaksi) FROM stdin;
    public          postgres    false    218   ?                 0    16540    pembeli 
   TABLE DATA           a   COPY public.pembeli (id_pembeli, nama_pembeli, jenis_kelamin, nomor_telepon, alamat) FROM stdin;
    public          postgres    false    216   ?                 0    16530    supplier 
   TABLE DATA           U   COPY public.supplier (id_supplier, nama_supplier, nomor_telepon, alamat) FROM stdin;
    public          postgres    false    214   ?                 0    16545 	   transaksi 
   TABLE DATA           ]   COPY public.transaksi (id_transaksi, id_barang, id_pembeli, tanggal, keterangan) FROM stdin;
    public          postgres    false    217   ?       w           2606    16539    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    215            }           2606    16554    pembayaran pembayaran_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (id_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    218            y           2606    16544    pembeli pembeli_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pembeli
    ADD CONSTRAINT pembeli_pkey PRIMARY KEY (id_pembeli);
 >   ALTER TABLE ONLY public.pembeli DROP CONSTRAINT pembeli_pkey;
       public            postgres    false    216            u           2606    16534    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    214            {           2606    16549    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (id_transaksi);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    217                       2606    16560    transaksi fk_barang_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_barang_transaksi FOREIGN KEY (id_barang) REFERENCES public.barang(id_barang) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_barang_transaksi;
       public          postgres    false    217    3191    215            ?           2606    16565    transaksi fk_pembeli_transaksi    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT fk_pembeli_transaksi FOREIGN KEY (id_pembeli) REFERENCES public.pembeli(id_pembeli) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT fk_pembeli_transaksi;
       public          postgres    false    3193    216    217            ~           2606    16555    barang fk_supplier_barang    FK CONSTRAINT     ?   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT fk_supplier_barang FOREIGN KEY (id_supplier) REFERENCES public.supplier(id_supplier) ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.barang DROP CONSTRAINT fk_supplier_barang;
       public          postgres    false    215    214    3189            ?           2606    16570 "   pembayaran fk_transaksi_pembayaran    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT fk_transaksi_pembayaran FOREIGN KEY (id_transaksi) REFERENCES public.transaksi(id_transaksi) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT fk_transaksi_pembayaran;
       public          postgres    false    3195    218    217               ?   x?m?1r? E??)r?c{K???c챡???IlR??x??r???#^????2?:l?W?$?u?{<??a???b?x@?O:?J?g???V??.x???#?V?	N9[?#?	?Ԙ??\?)??_3????r*?WȬ?Ƃ,???3?ᴋ4???r?ڴ??$????u??{Os*e	???Q??K?.e4?y?>?*dp??????zZ0??Ƙ?aH9         ?   x?E??C!Cѵ?%0?^??$?i?W???굾?'?ݺ??Wy??+?ɛ???????x??<,?}ȇ???>????I_?e???o??}|???g?=e?'5s???P6'n72*??MG?C?????|?????y?R?)J@!           x?U?A?? ?u{
O0%??.?ј? ?@??????dpݏ߿Y	???d??j??????˲????\Ȫ&m?y?.cp`"?d????]??^6M[&eS???2?y??K?K̈?Z?8???Y`c?#??vq?DPA??r?;???>?m?03L?9?????zHY=?+???l>?]&	Q?
7r?N*???,Һ?B?77?<7w:?;??:??n1?!C?'??PSR??????`???DCP??E?	??y:?c?{??????)??*??3Rs?           x???Kn?0?1?????3??????i????????:?????w)???ńOd??UǪ???+?"?atNI?P???nr?T??sO?)?r	qur??
\?Q??ǕO{_?*ܲ??6?&i!y????e?c??^???C?!/?MS??????d??A+X?????ݾ̄W?\O쌒?)??kNNAo?	??[?F???m'???? #??????e?<X??`????v47s??Q?U\Ll?/'?L?}"????=??o?_?p         ?   x?E?;B1Dњ??!O??JzD????:G?SD??t?????_??x>??ǻ???UX?Fl???BO?;?{??8?C8'?I??8.????q?p'¢?EK??~*?L?uBB??RA????ZP-D&D/(Q
?j??ｔ???Tv     