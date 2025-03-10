PGDMP                       }            postgres    16.6 (Debian 16.6-1.pgdg110+1)    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                     postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4635                       0    0    postgres    DATABASE PROPERTIES     S   ALTER DATABASE postgres SET search_path TO '$user', 'public', 'topology', 'tiger';
                          postgres    false            8           1259    265905    legenda    TABLE     �   CREATE TABLE public.legenda (
    gid integer NOT NULL,
    camada character varying(20),
    geom public.geometry(MultiPolygon)
);
    DROP TABLE public.legenda;
       public         heap r       postgres    false            7           1259    265904    legenda_gid_seq    SEQUENCE     �   CREATE SEQUENCE public.legenda_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.legenda_gid_seq;
       public               postgres    false    312                       0    0    legenda_gid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.legenda_gid_seq OWNED BY public.legenda.gid;
          public               postgres    false    311            |           2604    265908    legenda gid    DEFAULT     j   ALTER TABLE ONLY public.legenda ALTER COLUMN gid SET DEFAULT nextval('public.legenda_gid_seq'::regclass);
 :   ALTER TABLE public.legenda ALTER COLUMN gid DROP DEFAULT;
       public               postgres    false    311    312    312                      0    265905    legenda 
   TABLE DATA           4   COPY public.legenda (gid, camada, geom) FROM stdin;
    public               postgres    false    312   u                  0    0    legenda_gid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.legenda_gid_seq', 9, true);
          public               postgres    false    311                       2606    265910    legenda legenda_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.legenda
    ADD CONSTRAINT legenda_pkey PRIMARY KEY (gid);
 >   ALTER TABLE ONLY public.legenda DROP CONSTRAINT legenda_pkey;
       public                 postgres    false    312            }           1259    265913    legenda_geom_idx    INDEX     C   CREATE INDEX legenda_geom_idx ON public.legenda USING gist (geom);
 $   DROP INDEX public.legenda_geom_idx;
       public                 postgres    false    312                 x��TI��0['�)$Y���S���c?t�E�� 	b"MR�/@P8�}�V������H��<��T�$�,�p,�����Dc^O|p�Ed
�T<pغ�#ۃ���t�W��)"�Q~p��)�uj��PlC��3c�R�d~p�❍ZHn�P'��62��/�w��W�gimD5��`1T�V������4Ս�iL�P�v�4�]���x�õ������o��+�#L��z��u�LO�]��YB�8�n��BV�-x��ir��h�JC���-�|%��wҜ�c��ݗ���{a����em�V�{Cu5� <-߂ZE�ؤ������K��D�90ʊ�!�A�v"K����R�=�蟡hkĨ���;���Mނ��o��+�ك��©�(q��t����oA0��lx*��j��V���J��c�g�o��_��`�2f*~:�\fm9>�B�5��2�)Q�9x"��5������Xz�Ņ%v�^��z�9���a���`/��8���HC���
Ab��A��}Bd:���߿���}NP     