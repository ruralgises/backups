PGDMP  8                     }            postgres    16.6 (Debian 16.6-1.pgdg110+1)    17.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                          postgres    false            6           1259    249523    terras_indigenas    TABLE     �  CREATE TABLE public.terras_indigenas (
    gid integer NOT NULL,
    terrai_cod integer,
    terrai_nom character varying(254),
    etnia_nome character varying(254),
    municipio_ character varying(254),
    uf_sigla character varying(254),
    superficie numeric,
    fase_ti character varying(254),
    modalidade character varying(254),
    reestudo_t character varying(254),
    cr character varying(254),
    faixa_fron character varying(254),
    undadm_cod character varying,
    undadm_nom character varying(254),
    undadm_sig character varying(254),
    dominio_un character varying(254),
    data_atual character varying(254),
    epsg integer,
    geom public.geometry(MultiPolygon)
);
 $   DROP TABLE public.terras_indigenas;
       public         heap r       postgres    false            5           1259    249522    tis_poligonais_gid_seq    SEQUENCE     �   CREATE SEQUENCE public.tis_poligonais_gid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tis_poligonais_gid_seq;
       public               postgres    false    310                       0    0    tis_poligonais_gid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tis_poligonais_gid_seq OWNED BY public.terras_indigenas.gid;
          public               postgres    false    309            |           2604    249526    terras_indigenas gid    DEFAULT     z   ALTER TABLE ONLY public.terras_indigenas ALTER COLUMN gid SET DEFAULT nextval('public.tis_poligonais_gid_seq'::regclass);
 C   ALTER TABLE public.terras_indigenas ALTER COLUMN gid DROP DEFAULT;
       public               postgres    false    310    309    310                      0    249523    terras_indigenas 
   TABLE DATA           �   COPY public.terras_indigenas (gid, terrai_cod, terrai_nom, etnia_nome, municipio_, uf_sigla, superficie, fase_ti, modalidade, reestudo_t, cr, faixa_fron, undadm_cod, undadm_nom, undadm_sig, dominio_un, data_atual, epsg, geom) FROM stdin;
    public               postgres    false    310   -                  0    0    tis_poligonais_gid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tis_poligonais_gid_seq', 3, true);
          public               postgres    false    309                       2606    249530 $   terras_indigenas tis_poligonais_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.terras_indigenas
    ADD CONSTRAINT tis_poligonais_pkey PRIMARY KEY (gid);
 N   ALTER TABLE ONLY public.terras_indigenas DROP CONSTRAINT tis_poligonais_pkey;
       public                 postgres    false    310            }           1259    249537    tis_poligonais_geom_idx    INDEX     S   CREATE INDEX tis_poligonais_geom_idx ON public.terras_indigenas USING gist (geom);
 +   DROP INDEX public.tis_poligonais_geom_idx;
       public                 postgres    false    310                  x�՛M���q��W��$��r�_A@,���'m[H�-G��v2�*��<Ū�ۃ�3J,���sɗ,O�C��[j�qo����?�����������w_~���O�|���~��{�w�������?}��[����~��Oo�۷T>-����޾������?����߿}���_�Շ~��7���w��������⫷���߬�U���w��/�������~��/��߾�bӿ���~����/����}ۿ��뷯���?��������f~��?��	���=?{���/�=o�{���?�;'�lb�	�����x�i�9.�8��Gپ׳�a>a�cu;�$�.��<'(�S���؛�~�P��;*N|�Lyg�xH��R��tZj�w��}Ne��Oa�&���nO�#�q��g�0}�.+�Ȟ3���1�	��e'�w'>�u
m�c�ߥ0��⥧~z/��?}�����!״G�~+[o�)>tq�_���q*>�/>���%�CN��W�S�8�+�����+~��wf؊��p5�a��B��FȊ���s�3m����4�_��i��yl}��)�Tl~�ٳ����g���;9T��J��^�վ��	����Ǟ��-?\����f{�g�׶���Tb�e)� ]0[��9ɗ��_�����,��?���?|��F����B-�s���
�SZ������ǟ~���r���6R8Q�u�X}��)7�j�LfkR�/�C2^���c;�E��J�}+�vw'Ι��9&)�eC�'���߁-����}�^6I5�&�Öh�ԥ�k}�w[}���Q�䧦�OK���Fnn��8#9cĕݫ=sK5_jc��]|9�Xf������bp[�g.�����̞�b���N���W|�����,%�<�'���/�V�8��BR0���,c���p/Zj� (�����w�b��>vV >}T�{���I��U���H�?�_k��Sw�.�\��ՙ��$޴��g0��m~�:GQ�پ?zqЮ�����}�l���o���,�������u7}_V^+�W��zڹ/��=�}^���b�4����*e���)������/6?w�h1�o�2��y��Ll��z�s㳝O2�`8+�rl;��Z��i�%����W|TW�"E��;�X"{��[qȃ����8_����̉�����L���cNq�Af�P��t���s������p�Ĭ��OT4�j�"y�4���\N��(N�M�����n�R����t�kt�E��L9O���^?`��+~'���\��r�pI���3�֡��Y���C�O@�L����<��yl~�E��dO+�jɕ*e����i�} ��SO���?K�<"���6vt�_��k�#�ҭ)�K��X|�
�Nq$�_���{�ö��2R��kʿ��B��!� c��3l�<�x�����h($�d�������ϫ=b��ڒ����ɏ����ZD����#0�G�C�C(�#�_ʬ�(^H�C�W�>lR��hMã[�(�W��M/>�x�{,Wix�8�5�b�e68�E[?�v`������"���l=w
�����nRD�`�+�.�N�HC�?[����~3��k�7iC)g7$�R|��o`}/^6�%fa�m�H�XG|/N�zE�Q���[�X�����U�}� �\�]
4����~i|3�o�5����e����GhK�%�3�}����WF����� �w�|`��s��M}ǁX��(�SGS�B}c�����������Ǟ^���ѵ $��c��s���|{�q��SR���O��!���e/� J��!�S<��o�)J,�ŏl���/�Cv'�pS4���f���8n��~�/���DP�>7�ћ��� �m,9s�/={hZ�rs�A�/|���Y����ǐ�_|�3�<Y}|����±7p5�d�j���;(Ń؅��W��UX���'v��#)wW�w��l?7\\a���������>���q�A,��k��謯�g���h�	4QpX(���c�W-� �Z�4���B5���;C��?RK��c8	��\��oF�(`fe}<�d �l�t�V�kt�[^�o�閳��+�/��_J��eWGy��;�[�Y�Lҡ�>�P��^(Ά�":FTq6�Y":l|�!���`t�Y|)�������{'_�M�W�8��s�� Y��ū�֊S��F5).3�p���pq$B��']c�"�x�0��)g�����>�z�ԁ�_�>5���O5���8ܮ��>�O^Z��E�7�*��p뮇gO�����������o�����������q\�I����{f
��H�"G�	�62�GM;�	=�=o��I��v��y��/�B3��)z�_�W��(���u�����qO�?=�P��O�u�9y��I�q���x���@q1w�	vQq���������;�P< QO�t�SI���&��'�P��)g> I��;j��O�>�!��>Cu��F�{@�6��bM)�h�i��f�l�%j>�~YjE��]��X���(�TяN����,j����f���}W`K��p�V<�%%�qv���_x�z�S��5�`C$7�����->�*��kP�r���y�ʰ��S��E�ʩ�Ϳ�P�d�S<uz������e�Eξ�H���T|m�C葨8V�����LGX��ov�}rq�hB_�2�!��T|�d	��Aq>�Զe}(��P�jӨ��%�w�Xb9�W_�S��м����Vq����j?z��c).>��K����H�$2���i<�pg ���k�1���MpqwPO=�1��q`:?l�e�gm�"^?����ø�s=Ǫ~�8r�?��8���.z\q)$#�I���=)`܏��O4�S�-ԣq�☛-�O�t�����+����V^�]�,H�6>���Wr�#^�&���>���Sq>�*�uG�S3�O�'r#���?:��"r�l�ԍ�������!��D����?�A�Q~�[��@Y�^
���Y��Z��8��]�8N��?V����黧+��H0S��(��bť�33�6�s]�{͋�8u�@���B�)�Ɨ��{�Cܵ>'6'~�Y�b��5L?��f�(�}�cu�UGq��k݅M2vß�8�9�g�j<�5*�P`�ިZ�,6�V<����|@��)d�T�wq��k+����AC$�>���y�W\a�����D)�0BAq���g�#�"��ԢXɯ���勻�~\����������F�>�8ل��tbHnסx�T�YVũ�sB��).Bj���U<8
��O��#G�����Jz���,������xATܳ7��������<�2�~�K�� ��x��T/Aq�E�
�Jq�q4:Mq�C>�A��r΀��Zc�P�}����-�?��"���{B�D1(�jM�gJ����s�Qw��+~;d�AʹB�9�{�~Q��91�=�'m��֏])��p���y��܈�2�OˡvW��E�,;.ۙX)(��B�x7�~�x�lp�;cV#�	�}�ũ�,�d�>el���C��\�=6���͹؏�*N�"�1Yq��2��̖�ፁ�Wka������R�SE�ɉ��3��.�h�����<��.�m��~���x5ת����#���#[����u��໏Xl|L�
�*���+?{t��1�`�#�u�G[���!��)٤��_�p�]����$[Mq��6�->���5��)%����؝��*T%�o��h�����0|X�rfA��W|�c1����l�B�Z|����%+.r�5���I�M���?��Yl��/'��nߗ�]�_���LB��7?�l��j����(K��$T�%5o�[���`����0��ZD���Gf�VE�).{�����"�-�;��~_�{� :����}�_:ф�����S����;?���GП�ߜ{���.�?r�Ӳ\�����:!"ݿ�\��3������Q���7fu�~�~:�YT��[J�����9��^�!�24��?t�� G  �,z�C9���9=����\�Pr���-�6S����YV�Kk�n�y��N�� c_�8�y��Z~�^�v���jo-��|�x̹���!C��;�Gk��|
�/��*�玑q����b����+?��pf��)�>�9�+����`��OX��-�/�S9��Չڔ���������v?��.|�g�t�W�>x��e����O=���
���G�!~�U�)v$X��<��h��\(^W����*�(�NN-�������������/�]��^�=*�~[��Ϟ�3���7�ڏ��B�OOU0�.�OOU�ȫ�OO]���S�5���S�$���2K%&��S��OOm(���T��K��T���yۧ�@.ɳ�OO�v�b�>>%��a�?=%�r>?=E����>=E�#��)So5J�^O����Im��� ��_>%iXf
�C��DĢ� ΋��EE������v�DIO�:%�M��;N~t�����_���)���g���S�J�l<�)�-�鎍ϣ��p0�ŋ[�ɣ��8.Ȼ�h�'���+��[�c{��K-.�G}I�@e���<OO6����`��,86�)�������+��f�y�֞�a����@A��l���N�PU���p���U�3WW(�6���9Q��Z3w4Q�6���$c:v���c.��֧�P� w��Á�I�}�����I�&*[L��7�����h<9��{)����I���fI���>""���Ǔ��u���y�1[�IqL/co1e��BD��b��[$�\���(��{�;?<���c~_�;���DrL��k�30
�}�. Y:+�R�ony-�0ܥ��ƶY~�*�w6�����q~�*�/:WO������x��z2�f�_}t�\e:���Sѝ\TM����H��m��x�W
b��i[o�MBFm��?[�rYI�.�ox۟a�����:��E��ϴI}�,�=.{`}(�*���G^���YG	(~��F�и�A�Y{�qD/���X�����v��8��⻄�m�:{U%��k�ȉ��}�>�Wc}'�OW|�Au�Y.��d)��O�N�����e[�� �e�+�}"j��r�~��<$��(����9r�t_��U�ٶ��#I�70vUo2[VKZ�;�O�(F� ���~���1z����V�~)#���Tl�O��)��(#x����y�Ȣtő��CD���������,h�(˨��qm�Y0y�?p�#5�1��޽lyJ�x����t�S�V��).o*"�{z���0��^I?Q���W�ȱiD�+��Ϧ�.�Y�0O&_s#9C�]q��kh�e�_� ��=\������G�u�$��]�_����"sl|�.�RJ�_�U<$*΄�q~��?3�S1;�����Ì@m6S��R��Fw�R�:���)�ETx����h�$�SϨ�Uo�qKrMN�T��8�P��U9�^��+�p�&o����#�Z��POIf[+^ɬ!��ꟸ5/NŇ��8r�sqd�K�(N���$��?���Z�m�)��ќ�_L�(�HO=�ŏ*���'c��/����!���s�3=�Uq�ny<�����P2����KJ>���7( >�F~�#�g�����V��l�˨8y�����_r�;�sM�5��ųC�8]�-��S\�SD�Wʊ���Dⷔ_����%n;5Ş.h�*A�VR�6�آK�5�{�A�)�O?�3O�}*^�Ǆ��6?h}�K�,��1��N5��,<�D�W���H歷�Q��fQM[��b��������\ ~[oU�I×������������mR��}��C	9�s�?HA��N7�0�GvRW<�G����(��LAom<�R��۫>Gv����o�,��j����yy�xǇ�K�S�q�����犭eO^Z�a��[i���_���j�˳�e+?�,�v��ثU�'�e�諪�\E�N{�u�8�iV_\�0,养�t�~X}gQ�Tt{������?=�9D^ګJ�8oq��I=��9����"-��u����^Ֆ����[?ֈ�ai�'Q������_9�}v�_����XNoe�0X�:�Ta�9j<���(w��n�K-��*�Q���3�ɥ�B�
q_�7Dn�E���ݼ�I�_�r/}�?��2�Ul6���Xr+��=��'D���#I��=��>��,T���#׭���cZ[���9)�����ݳZ)�ҿ�AG��p���˫����X�[����oDI_=����Q�ߣ;RZ;)w����������嘩��7(�'�9���7i����bBg��٩ l��OvJ)4E�{�_>[<���B(�WP�:x����?���$nP����$s��J�Fn#G-����Z�^��4p�M��P
[����ϕ�J����;�t|s��R�&6 U�O�
���K���P������*�0x7+&��]��<n2�}j����u���ƹx$!��~�x�C�e��[�RQ�%��7j?���ǔg����ǌ��<�Y�oPs'�M|��o����~����d�Wn`n�Ȩ���fF���,�@e���o*��s�Bŗ��#^�.?�����HE� �y�\��u9��;2f��>�G}���Òg���m)�v����<&���?/4`���c[�y��`.��rza��r �| s���_����jF��������GHz�7)4�oy�w����f�[�bH�T�e��Oe��"i��q1�I}������O��hoy����P.0�� ߑ|>�����}y2�O}��'<�����F���]�p%����k~���}y�[⽘��)�o�eyZ������Fy�'β�W~R�ѡ]��N�˛G;��=��[~�	eNg�g��ְ���ɘ���ߓ�����y���v�U���j�G�u8l��d�&U���E��4�|��Y���_d�<���''-�3_�ן�0d��z!��XH�?����v�����e�O}d�����ҵ�_���q����,~E���ӎ� ���Q}��i�>��M���	W�����м��d�2��Ń\�9V��/��u����X�:�v��'���x�7\ϟ��_9?�����g�	(�9     