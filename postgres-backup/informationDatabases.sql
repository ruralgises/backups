PGDMP  1                     }            postgres    16.6 (Debian 16.6-1.pgdg110+1)    17.2 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE     s   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                     postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4632                       0    0    postgres    DATABASE PROPERTIES     S   ALTER DATABASE postgres SET search_path TO '$user', 'public', 'topology', 'tiger';
                          postgres    false            .           1259    133728    informationDatabases    TABLE     �   CREATE TABLE public."informationDatabases" (
    "Entity" integer NOT NULL,
    "DatabaseName" text NOT NULL,
    "LastUpdate" date NOT NULL,
    "IsOfficial" boolean NOT NULL
);
 *   DROP TABLE public."informationDatabases";
       public         heap r       postgres    false                      0    133728    informationDatabases 
   TABLE DATA           f   COPY public."informationDatabases" ("Entity", "DatabaseName", "LastUpdate", "IsOfficial") FROM stdin;
    public               postgres    false    302   	       }           2606    133734 ,   informationDatabases PK_informationDatabases 
   CONSTRAINT     t   ALTER TABLE ONLY public."informationDatabases"
    ADD CONSTRAINT "PK_informationDatabases" PRIMARY KEY ("Entity");
 Z   ALTER TABLE ONLY public."informationDatabases" DROP CONSTRAINT "PK_informationDatabases";
       public                 postgres    false    302               �   x�m��� ����� f��\N)[(���t���1��헜?ǀ��[�`�T
[�n����H�XC�\���"��(�h57��aFi��f�`��q�,���������s���{��i�1-9J/]�P�H.>=OY�ZaǱ#��D�UiV\YB�;_R61     