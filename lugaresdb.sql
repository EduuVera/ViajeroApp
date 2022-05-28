PGDMP     8                    z         	   lugaresdb    12.11    12.11      +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    16393 	   lugaresdb    DATABASE     �   CREATE DATABASE lugaresdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE lugaresdb;
                postgres    false            �            1259    16409 	   categoria    TABLE     U   CREATE TABLE public.categoria (
    "Id" integer NOT NULL,
    "Descripcion" text
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    16407    categoria_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."categoria_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."categoria_Id_seq";
       public          postgres    false    205            /           0    0    categoria_Id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."categoria_Id_seq" OWNED BY public.categoria."Id";
          public          postgres    false    204            �            1259    16396    lugar    TABLE     c  CREATE TABLE public.lugar (
    "Id" integer NOT NULL,
    "Descripcion" text,
    "Foto" text DEFAULT 'https://www.suzukijember.com/gallery/gambar_product/default.jpg'::text,
    "Lon" text,
    "Lat" text,
    "Referencia" text,
    "Precio" numeric,
    "Observacion" text,
    telefono text DEFAULT '+595994324937'::text,
    "categoriaId" integer
);
    DROP TABLE public.lugar;
       public         heap    postgres    false            �            1259    16394    lugar_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."lugar_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."lugar_Id_seq";
       public          postgres    false    203            0           0    0    lugar_Id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."lugar_Id_seq" OWNED BY public.lugar."Id";
          public          postgres    false    202            �            1259    16420    rol    TABLE     O   CREATE TABLE public.rol (
    "Id" integer NOT NULL,
    "Descripcion" text
);
    DROP TABLE public.rol;
       public         heap    postgres    false            �            1259    16418 
   rol_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."rol_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."rol_Id_seq";
       public          postgres    false    207            1           0    0 
   rol_Id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."rol_Id_seq" OWNED BY public.rol."Id";
          public          postgres    false    206            �            1259    16431    usuario    TABLE     �   CREATE TABLE public.usuario (
    "Id" integer NOT NULL,
    "Nombre" text,
    "Email" text,
    "Telefono" text,
    "Rol" text,
    "Password" text,
    "Token" text,
    "Usuario" text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16429    usuario_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."usuario_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."usuario_Id_seq";
       public          postgres    false    209            2           0    0    usuario_Id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."usuario_Id_seq" OWNED BY public.usuario."Id";
          public          postgres    false    208            �
           2604    16412    categoria Id    DEFAULT     p   ALTER TABLE ONLY public.categoria ALTER COLUMN "Id" SET DEFAULT nextval('public."categoria_Id_seq"'::regclass);
 =   ALTER TABLE public.categoria ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16399    lugar Id    DEFAULT     h   ALTER TABLE ONLY public.lugar ALTER COLUMN "Id" SET DEFAULT nextval('public."lugar_Id_seq"'::regclass);
 9   ALTER TABLE public.lugar ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    202    203    203            �
           2604    16423    rol Id    DEFAULT     d   ALTER TABLE ONLY public.rol ALTER COLUMN "Id" SET DEFAULT nextval('public."rol_Id_seq"'::regclass);
 7   ALTER TABLE public.rol ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16434 
   usuario Id    DEFAULT     l   ALTER TABLE ONLY public.usuario ALTER COLUMN "Id" SET DEFAULT nextval('public."usuario_Id_seq"'::regclass);
 ;   ALTER TABLE public.usuario ALTER COLUMN "Id" DROP DEFAULT;
       public          postgres    false    208    209    209            $          0    16409 	   categoria 
   TABLE DATA           8   COPY public.categoria ("Id", "Descripcion") FROM stdin;
    public          postgres    false    205   S!       "          0    16396    lugar 
   TABLE DATA           �   COPY public.lugar ("Id", "Descripcion", "Foto", "Lon", "Lat", "Referencia", "Precio", "Observacion", telefono, "categoriaId") FROM stdin;
    public          postgres    false    203   �!       &          0    16420    rol 
   TABLE DATA           2   COPY public.rol ("Id", "Descripcion") FROM stdin;
    public          postgres    false    207   �R       (          0    16431    usuario 
   TABLE DATA           m   COPY public.usuario ("Id", "Nombre", "Email", "Telefono", "Rol", "Password", "Token", "Usuario") FROM stdin;
    public          postgres    false    209   �R       3           0    0    categoria_Id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."categoria_Id_seq"', 8, true);
          public          postgres    false    204            4           0    0    lugar_Id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."lugar_Id_seq"', 6, true);
          public          postgres    false    202            5           0    0 
   rol_Id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."rol_Id_seq"', 1, false);
          public          postgres    false    206            6           0    0    usuario_Id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."usuario_Id_seq"', 6, true);
          public          postgres    false    208            �
           2606    16417    categoria categoria_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public.categoria DROP CONSTRAINT categoria_pkey;
       public            postgres    false    205            �
           2606    16406    lugar lugar_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.lugar
    ADD CONSTRAINT lugar_pkey PRIMARY KEY ("Id");
 :   ALTER TABLE ONLY public.lugar DROP CONSTRAINT lugar_pkey;
       public            postgres    false    203            �
           2606    16428    rol rol_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY ("Id");
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    207            �
           2606    16439    usuario usuario_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    209            $   =   x�3�(�+�W��,.�/�L��2�tO,.)�����L�2�tN-*�/��N�)2b���� E5      "      x���Ǯ�ʖ&8>�wX�=����{�h�A�=)�w�Q�z�/V����6�)�d�X��g�͍������h�u��:�׿�x�����27S^�/I�����o��(�m$�%ES�<{~S�9��F��]�;S��ݐ?�H Z$�c,\n#�k*�P!�k"^Z*����cϣ�Y�Wh��.5��4���j�f�Ue�m�n�@ykwk��9�����l�����MQ4'QJJ��FK%�p�r��>)*yfF������x�(������Q,�d�chJ�����b�R�s�s-����Z��:�J��)#�"Y�<2Ε `�H+��A��ָB��璂�sp�=��ׇ��MQ��c��9�����,�����3�Vq�Y�nK�]��B��<�#%�=צ���\�7����[4���=���as0n��h�B7#1��^�r�S��0Rz����8���F�̏�wK(^s|SK�-�$��G2�������sЌ�*�J^��u(����||N��Q����cT��;�SV�*���4�Q3kZ}3ry�$�ӀJ\~������ֻ�!}�s�R?ou���,��>ya"�Z�M��+iA6_̼-������8/©�Ϟ&�����yZ��м�m���^����8_�W�xە�ȧ�_W�d%�4�d�Lʾ)^�f���5���KE_�&�=��ǹ�7�4ū9�"�C�ޯ���,��h(55��0[������O�w�ܛ�bE�t_rW2�Xm���:��)�TՏ;5��sf?�U@19���ӧ��w�9�`����*�&-��7L���=an���cHK� Z����$5�J��q���W��N�����>X��F�@˺ʭ�5^�a�|�ob��[ G� ��l�w��&����O"���>ǲ� S/.�f�s�#U`����4KNfߦ��.&n ���I���T���-�%�����|�p�G%д���V8x��g�5A�g�2��+yP{.���'3�*F��D���<��¯�Ȧ�wFS���U�#��{���,��6�WTH1?��N�.�\2��w���_�4�����a뤄5)���.Ů�}�S�|�qH\J:ה�2h	���ۭE�%$F��`��놨�I��xߤ����G����}%m�y���$+��*��kU�A�ġ��-�V�9����M��=Q������~�����\��k�ނ|	A�8%.7'Ϳ}�.�y>��7k���-T�P�ǔ�z�Y���<���7w�Lm{��֙�PsE@�A�jwK�.�oߊ��E��Լ�raR�֏kzj�3�V7�X�����Q�BJ���}��Al1$�H�Z#xY"D�x&�z��(߶4�#�cs�_ێ�ŗ#9��(*��#���`��ݗ_)aIʓ�_�$#P_h��~�!}��V�5���`l6J>�m�r^�իq��D�����
`2/��]	�=i��$}P���9�����|��ՂrQ>�dSlO���H��$�)n ���Npp�S��18������tdzI�a�`XR�ҵ��N���'<��.(��(�[��;��wk*!�}3K���K.嫓�FE��9e��my}�	c�/�&+��c�8A���qz0�K���|�h0�)Qh��r2O�W�����-�:��Y�������:�w8&� ��0*-_��x���~�t�-�S���8[Ë����p%S�����5��5GaZ)\�-
����NA~��*jA�D���P���>X��^)Y[��S���2����	�6@�D)�L���N� |�,Y�)�C�<�X��gh��n
�U$��X���H���]�Ե;���.�pG�6�����"�|GS3]�&iUY� P]�ِY�����TC�g�YQ��PGJU�W��t8DR�P�z�^}�R�D�"^Ͷ4TNRjt�}hN��L�A�ј`��>����J�$��od�:~����l������x�/�{��,�]��Z^m��ƽ2]�t��kO���=ʡB��}�vwn��u᝚W�ԩ*��[]t��3��E��s�)ʳ�����}�"�h�&�-L�������`��$Z6*g�x�IH7��q����J����Nv��l.�RJUW3��:�VZ��r�kf���(eX���K�@��T��ycJ+�ӡ������
yjtW5��/�i�h��v��r��H�G��N�6gr~�f�v�� ��`���3+[����P�z5���:�Bv�4�Vah�\��s-�Jy���®����J<�y�;�UW���pKC?��ՙa]��y�/�<q�̓�bNkً�ߓ��K�uǒg�[v������R�5��3J��[��A��������ۇ��SG� �?*n$מ��<B)���2/6ß���v~HYaWpH����������FB��-�x[���X'�ww�z���*��$4������X�����.���/����mm̦�S��,�Jz��745��2/�"�
��څa�.:�BͰ�F������?��4��W<�k��"W��ՙ��m7d�ʼ���� �0���: ��~�R9h��ШG�p�@�k���9�����J��?��
�-�c)M��Qc��#cgN���0nک�׃���	�L#5���_�����B��{�'	9kXf.���VXq�.��ZǊ�Z{����
�yt���~�/h�����|�c�z/6,������G"���u۠;%v�m��5����Uj�.yWO1��ET��2�����"y�,+��m��_P~�R�~[ץ<s�?���)�E��'�B'(�u�	�=�	|qz�d��qi ��*ǚnH���-+�M���ǣ#9)�#��c=�t�HiWy�m�� &A�tSzG=�FQ�O��*5�l�[Z�8k��fF���]���՛��?r�� 7!�L��m%�����#��I��خIu3��� ���q�ѷK�T�`�fj>vgR����ѐ���'�P&�|q%f2���@�x�b��kX��w��C��!v��[:�dƷ��_������-���E<�� ��f��|}�Kc���6{�n�9�jxIcy�xYq�ID�9ǟn_'��`E����^H*�5��ޭw�����-���;>CQ����F��4��o�S�Tي����%%`�x�_�.��J�=%V�Z�=T�)%Xۛ+��d��L�mf�>ǚj����
9���+"��O�rk�-$�V͘!Y�č��r�P }h�a�6	K_H:诲a����t��򚸟t�nVA6s�$����Rw�䏛-��@۟��q�*�x_����0ۂ�: �
l�R\D���I<ի5|={��	�Bb;�ƍr�M�&�s��w���7{���x�����#�/Z�β��T[�����DVմ*S��뺴˹�N�`��Ol����+�u:�z\��#JT=Õ���z��oQSᶴ��o��L��)��~��8^���,l����e�'
�SZ� 􈴸���E�^��`|�cAhR�X���n=����n�7������͏�i��;�$�
%GOK Er� ��������,�չR���yve`��t�����&s�[/�8a�w:R�f#�z|m� ��lJ����$����,��7�dL�G�u0."Mg�-!"�U4Oi�>�L^��4y�h6&'�BcLf����d��e��dů~�lS������$�~W9P*ڏ�H����䁯��E����F��.X��>� ͠���5ЪB��'�����g�S@o�T2nSer�����w|�S�z���Ѥ�Wc��w�� 6�6X�L�pSW��]���d�+�I�e�:ؗ�b���� �(�r�i�֥����4�DΏg�R������ZT�͇זQL�Tܩy�|���rFC~׬��\�R̫a?��"�ޏfJ�z`��>"�]y�5 S���窐4�(!!-Ӓ7[B��ų�
C��I!S�#��x�Q;+�Z����G4��S��Җ�Ⱦ���3T>�~G-9�j���o�r���J�k�:lǡ�X��:ݢ�-�K4I� ��'%�%������h��>Mq��Ec�*3@�;,�
k�    ��@~��O:�ĳ����S99erbT��Ԛ�!�[�J����ش��~H(�r��X�ʻ�Y����=o���Á�����im��$�u�(�{ML�w���+�~I~g�`�/�?>�l��TJ=Jl}2�C���+���~ʱg� �6Y�;���ĤL��!4�4.�%*1�r��IK�P��o�1�a�����s��4�dm͑�L�NIr�gp�����,붊�d5G�������U�����S4wh3��u��(t�>���M�9M���ཕ��"n�h������^X�=~����į�l���K7�A�4U]�+����M�.ɟ���ń�������.�I��ǃt���-�L�%h֌w�Y�
8��%�Ú�ʺ>�G�?E�YX�>&x��룏��h��7:�<MJ�|����7�@i/B�z�UW�6�y�ܔ���=�j������U0�N�  �"{�9Ӝc1�]n8����j8
�΁皓n�.K>BjM����<��Ֆ���7Ș���!Og��h���ӥ��R׾pf�s�-a�Tz8/_W��\0��$�f��&I����-�:�-z�xJW}��~�B�u�S�'X�R����ͅ�K�m��3�I���z�]�O�?�=Μ	�ү4ܞN__"(�B[=\+�3�0ǃ�boZ���I��^m6�N�j��R�f�!-x��=}���P8���E�qmYϓ�{�Q��_��C7<�=��(���r�{ ��ZO��.��=�ꮄ�v�q�>�i���M}�#��qOP������:��֋��T������j1־�[�����|Z�蜩�i���'o.HW��n���֕��O�i�N�F|ׄ{��~���1"~�Mo�B�h�Wn����ޝ���m#�t��IE�M��f�D�v�F�E�Og��x�L�1&c��t�7�!A?���c�j����U�{���z`��c��K��\.[Oq�H`���,�������5����ȵUk�ٍ[]�CԑQI�.�\I_�Hc��|��;����.�6��-f�&H�G��+J���Q�dXlU�C��������^�N���:�e�
#Pt���y�׶}�Dmv�aJ�
[Ur��z0Y���d��	H�J�f^�SU�Nb`��!���3�8Ro�Ye�Z��Pȟ�"9��j�9y����>�iK�lK��!௤�T��x�>���U/�z^��~+����4��s���r;��^��D�6�c5�:��`�\����V��;�
��qp�Լ�GB&Q`}lL��^�Sʝ���n��{5#_V�8L��M��2+�p��b|G}Y��ڑ��/W�c�QnLY<��u�N}�}�dV,����K���-$�j���Q�m!~�j��w�0j���fː�'�p66T�%!�EK���p��~��k 
���ָ��?��_�jј��f���<2�9�o��WQ-��ʰ��jt3/A#�
�}:A��?_����n#d���mI�a^5<��5����ᶨA���h���+�:�}�-���mn���MhX��aw�����v~���l�ޑCk���q���4�P��ȊG��A��eM~�x�q�jJ��q�!��>�}��(���p�q<"���fj���cN�K��(����ӱΪnCk^��(;_��n�1��eu���H|��rw�b��
'��.�4(yW�̏ڗEb�09�8�giU�©�,]e�ƹ�k�@i���Hg� ��d8��}��
�{]�N���#kc�����
��(1{�V�����`a���Yؗ�;�÷!���R��A�5�2Y+6��k�a8*�GR�`����ET�;�Oo��:\� ���4����- �֫:��#ժ4X�v�5���#+�{��FǁډGk*��`�W�ڌ��u�W\)����~ʮJ*���L���9����%��9�9�����j�:[[s�P���}�@"����ж�{�N��ⲛ�-�p E���+P����-~�I�=���)y�o�ɰwB�k�7�@���Ky���s���)��In�?>�,�l��	�U_�a�*�/��0L��>4���
�z��q�*7"���_M�s�"
W��w�{�6\�fA�����y�m��W[�8hͷ�Z�"H�Cl�A�R8г��~��ĩN��7;�i��J\�0۝�Jfv�ԥ��G,�Q!�N��(��"��4������U��T�Q������@���uJ�㖦HV�@�����i��]󛤐�n�v��׎�̧��|/O	�S�89��g�}Qi%����]q�2��{(Vz���D�5�ӫ-�a�%��e�u��{|�⯳����	�;X�9�޷g��;fd%�S.���@����C�ot�Q�D�^r�����y&�o?2Mo�Q�X~���p �7*�LX�=B|��鄒���g���(boC;Ͳ�7�v�?���7Nܭ;��_g^��Z�t�6�O���F�r�1��2�獏';��ٮ'�lit���3`��Y6Ȕ��j��Pl�%V���n�VJ\����mp*�R���|8=�F�7�s�Sz^OkƌT�����E��.Qi�[�+N��g�%g�U�y��?�:�K9^F���*,�&�CRwk�-�T���b(9~�v�Z���n>(^�#^�7Q��R�(
g�����K���j���M���aZO�߬��u�������¢]��Y������H8Ij�0�jd`}��b��E����{ѫ���V͵L���,����SE�J:�f,�m/6����K�S{ZR��q��2�L�#�癸{t�47��AL��j�Xo�ɘ3�����t���� ?�����e��呶J)�צYM5h5���}0D�7��}��m�v\�`y��Ϫ�7劌���CN�����-�����*'�ZCpc��o���uy2�U��Lz��nb�.\!t���ʨdG�9��8����վ�������q�������b-N#���d��:���>Mr�.Z����������ǧ�!<~�;M�hu:B�����/ ����IG�V�mԱ�J\oX�0�^0��1�Cn4KoUz�W���V����]౥�WH�n�'�7����ƇyAJ�D���H>((ly;C���ď�1��-�
��b�_iz�_M�6������f������r��j�}7~x�>W�R�T�Sx��8�h�K!,F�� �(g�A�;Cz��e�{p�4T�(�R��np�Gz���Ɨ���m;JW����.MWt�z(�,�H��*6�R����r���,�D�xz�c�E�ϔ>�����)�Ot�^U�7f%�|�udʕ�x?\e�N��"Վ������iv�bsGD�F\Ci��w���$�]�:�R��X��*��0��^�->G�>����v��x�?�
��Ri.5�w��u��R�|R��޻��)�A���䋍�Ց��_���A!w�(æ�B��k�*&g�3��י4R@����6V��Z;��V[�y0�E��w]�Ƕ|Yl\z�S�0&�'���Q����f��By�Ӝ�6]�  �H��������t�߶<��TR��p��Zw�h A�Df�o�TI�t�s��yvo�S;��7~e�>�k=8U)�>�|���z��@���r�hב���	����"r{�(��쇷��d��u#|��xF���0�Lǲ$p�/�}��d�M�D�������I�����Sω�; gzq46��yۿh�ɯՁc�EE_%�%>�a-�_�u1Q�ةQ�� j�@��3��=9%�'�$))�ւ��+/n�y<����
H���21{�f�50���,��l��W�Û�拴��?�6éL������Y���v�GC�
F�*��b.��Go�������#פs�B"���v�~ǃ��C��9�m���i!p[s�|�p�%!w+��$�널}a��*��돉����oǻ�St�?-Wp���]���~⳱|���D�I�ЊV�r�#82~������Mh��@�\l�\@��,1Irm0:�@%C�)��O,���%e�_�ۨd���S�+2���i��{��htB覴�JB�e7�_w��UO���j    f��2�u��2І�Av����_�Q���:�6v�2]R��zO�z���d��m�����W�-��^mp�.�~G�hs�7U�[��d�����-=�,}�Eo
C24~�(�bTe���3+>V?�V%蘎NO�6u����"��<���y=��vo�qaoTZa���x���K��Q]=���A�a��Q�n/:�Ir�%�[�|�-lRծ2��P�9���|*�5њ��v�{W��\E��=͇͗�Ƣ���ľE��n�~��"�.�UꞔA�JfEatv���+M�x�ؤͶM������d�P����Bjt��N7w�4]�ެ�2B�v�gyk�b�R�q&z��LU�������i��ܵ� ��'�!�1�_�1=�w��x%��3e���,�u���);9�J���s��{;*�[ϸ3A0c��ּ���0P���[m����(>7���M������n4�\idߎ(����cX�]C<U������������ �R��(�)��^j8yV�x��v��
����őgtom�����6ڀY���j]�]��5]-�V�I��A��H��c(\׀b4��l��u0����J�۶V�Ȯ�tJbp�o��^H��ͺ[���ʛ�b����u�c\�ң��>�l�\M�wszGE�E���aY��X�q�{�{��J���^�F����l�����Hb�ʡ`�SE���N�S��S�!�#^�^������M��!�*K>��#�Ǐ�Iu@�C'@�m&�FY�鲅��g�E 4�ߣ�)�R�T<�����EX۩ ���Z��zwbw�`6�$���@�
���@�d�@ј��,&�oZ����.[��i~��@P3y%�7N}�Bc��0���I#B��(�aɀ��x�C��@�Ib9����r�|l�s6n�%��_�(�8�3��w"������T�}p��0���R�ސ�W�����a�����*�P��MR�ϰ������s��T#9bˍbł*4�
�\��s�Q��i����gW��-�t������t���^�~���W�S=���/�l���e"�IL��SUR7T1'#�w�%F��D:��O�4!+3���� ���{8{Z�^�c��G28��7��kƯ��CLF:�>�;h9Plm`rl�4{��_l�����WI��e�	�E_1z/�y``H-�>��Ya`�z��['��)_�P��2G,`mo�Q-O�?'{�#Q��!��<�<�� ���/���ӝ�\Gz+2�#��~>�+��ga����R��O��3z>�K�q���Ƨ�h\�~=�^b�̨���)51�h�!����Z�����8�
������(�_�ֲ����d���Ԑ۟D�ՏLQ�l�K�SwtH�}�������1]���d�}��5�)��:�-���PrL�-�w�)(a���:���w�
�<%Gy��1�t�K�5VPCe�[�e�������	��t�� �Jn�i�n����(�ĉ)?/ȷ�ο�M	/W���8�伎=u-����Q)GO�)��VWń5QQ�w���i�1����tc��vVi�#�$!,��cw|�tN��U����&�>�u�ߪ����raz���.gK�R�����i�&Zq�w6v�f..�K#�ٝ���֛��|�0��?����Py
հ��`Z�����2���Fw�8
�"=��X���A�e%��B�q��G����5� ���<��tT9�b�^Ih!4C�4��
�Ac .���%�4�*M��1���\<�]ϻ'�?����s`�:�͊�=㵌��3>��v�m��j[Z�V3�mI���#9��hB�]S�9��?Az�6���?�w7�}#�<��Uh6���m��j���h�/)_�����Q��˪��Z����=|��4�Q�j=��?_�+S<8=վ�Dk��~ )��_�{�����7�@�!�S�Ԑ�v )Š�#�>��������}��煻B#$z=���`z(�L�POAۯ������L�%�MT�Q��ޡ��#��&�����dԝب3��8~`C��!c%��!"����)֡�@�6m^cK/[��-c1ݙ��zm����_Q&ݙ���i��b��F�V	�\B�x�E��z�}����]w��i�9G�Dc�7�p>��M�4	�_f~G��N	���*do��؎s{N�p+z�'��V�W��77�vJ�GX������i��m��>P,A��K�5�%3�Ͳ��^�u�g��|��܀M��T2$U~%�4ΩT�c�I9*� �#4�Ȕ�JԱy�)Z�Y[0<�p�t3V�/lı�s0��'4*��P\P�{CӤZ��˔���w,����d����Y�b@�����D��T(@(��#�ҳ�m�.9���]�j��lB�̍�=B���B�)ZU�7ʔP���>"��ɟ�u���[���a�A�g�јg��x�lp�����-X`Z��T��v�p8V��J�ܞh����Q�J�BW�����
�\�d��Ni�ܪ�nx��f��A@�g���v�0��*��u��1��Z���e<�����kRG�[�q�C�!��}g��H5+.����"�8I�zW�&zV�����fG[���n30�_ov���ۼ쳒A؁Ŭ���1������:i�8��ӘScMW�м_�|����#�a�����Rs�ƽP2L��8�����S�S��P]z���Wh	��*���j��Z�X��>Dq��1�P������)a���a]�-7>8�ڦ����3(�ȹ,���?��D�v��|��o&�J��,?�UU��(V4*�u��­Hb���>�M���1�>�%�CW��yUI�)���!��b�2��v, 8h!���"־5�h�p�`�,����]
r�!z=[��]9��q��a۲s����0hN'ؚ��/� 2����v��"��a6�K:�n��E�NREn�ȣdսuw�Jj5��R���He�1�>s��r���b�}&����Q�4�@R#��Əy��~�q��T���)�i{X��S�+���V�O7QO��_S��ƺ�zW�QpT��t���%�ݬPV��j�������y�$�2�h��.	CH��*��< &��13��.iUB���回����~MƇ�p\��r�	��͹��z���z�q�,U*4-�0��S6rC�����6�;�,��+u݇���P�+��h4�$�$��P��	I���*m�xI[Q�Fe꺮t�N ����~���JK(g/ȃK�b���.�*�wN�e�.���o����)���Z�1�L�Q�_��#�����zu)�j��z�e1��u��{��-�T8_Y/��KK+k7G�u���A}�w�O)�R�]���?䲞П�}�ǆY�+wɘ���a��lxJ��T��.&�>�^jK���Tv{�k�S�I0y�}�?F7j��<����
ڿ�YLLeQ�S�e��?}t�r���>�Zx�6��"]�J��m_��4\Sx�y���x�{}>_�PS1��Ў�m���"�)�Q>�'���+A_]�T��ӡBW�GS�_w[�&��@�]��tgb��|��L��v��SG~L��$�x���\��u/0����F(�2oJ�sn�\����h��~;u#�ʭ���V��6�Ħ�n�+���3�_���T�i��������j���x{�R��'j#��4f�7_6&��y��N�+K9���������Q�d�5k��\Ƚz��k�0l	U�;��lD�Um��������MRn �A���+�/�P�ll�8D:����0�';������hZEF^�m{"S������2k�|�xGTK��|���p�-���r�b$mʀ�(= OB���������w��?q����0��+���O��7�E���������_C=���}`BH���/�_ھ��?�������P������jۦ������.Ǳ���%�-��ӱOo���z2��j'��;˒J ��Ԛ�����.��w������V(D����0>�c8��|�G��dH�   q��O<�ψq~L,?c1���������a��wqZ�ß���������/�(�G��I�����#�&����������$P��񲽋���e��b\�x�O�T��������?}���N�qϊ�I�?���y�n�������/�']�VO�����3�'��]>|M�e]�,��0^��������0�?���%�N����{����� {R/��*��)~v�����Y��#�����/	c8���B����_��_�`�؎      &      x������ � �      (   R   x�3�tM)M,J�WK-JT�LM)-K��R��s3s���s9�S�L�M�ML9Sr3�8����M89�������1W� ��>     