PGDMP     6                    y            demo    12.4    12.4 ?    Y           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Z           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            [           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            \           1262    17467    demo    DATABASE     ?   CREATE DATABASE demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE demo;
                postgres    false            	            2615    21499    ms_cc    SCHEMA        CREATE SCHEMA ms_cc;
    DROP SCHEMA ms_cc;
                postgres    false                        2615    21411    ms_usr    SCHEMA        CREATE SCHEMA ms_usr;
    DROP SCHEMA ms_usr;
                postgres    false            ]           0    0    SCHEMA ms_usr    COMMENT     C   COMMENT ON SCHEMA ms_usr IS 'Schema de microservicio de usuarios';
                   postgres    false    7            ?            1259    33251    cc_medio_pago    TABLE     y  CREATE TABLE ms_cc.cc_medio_pago (
    tipo character varying(31) NOT NULL,
    id integer NOT NULL,
    observacion character varying(255),
    banco character varying(255),
    fecha_cobro time without time zone,
    nro_cheque integer,
    nro_recibo integer,
    cbu_destino character varying(255),
    cbu_origen character varying(255),
    codigo_transferencia bigint
);
     DROP TABLE ms_cc.cc_medio_pago;
       ms_cc         heap    postgres    false    9            ?            1259    33249    cc_medio_pago_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_cc.cc_medio_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE ms_cc.cc_medio_pago_id_seq;
       ms_cc          postgres    false    9    205            ^           0    0    cc_medio_pago_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE ms_cc.cc_medio_pago_id_seq OWNED BY ms_cc.cc_medio_pago.id;
          ms_cc          postgres    false    204            ?            1259    33262    cc_pago    TABLE     ?   CREATE TABLE ms_cc.cc_pago (
    id integer NOT NULL,
    fecha_pago time without time zone,
    id_cliente integer,
    id_medio_pago integer
);
    DROP TABLE ms_cc.cc_pago;
       ms_cc         heap    postgres    false    9            ?            1259    33260    cc_pago_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_cc.cc_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE ms_cc.cc_pago_id_seq;
       ms_cc          postgres    false    207    9            _           0    0    cc_pago_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE ms_cc.cc_pago_id_seq OWNED BY ms_cc.cc_pago.id;
          ms_cc          postgres    false    206            ?            1259    33291    usr_cliente    TABLE     
  CREATE TABLE ms_usr.usr_cliente (
    id integer NOT NULL,
    cuit character varying(255),
    habilitado_online boolean,
    mail character varying(255),
    max_cuenta_corriente double precision,
    razon_social character varying(255),
    id_usuario integer
);
    DROP TABLE ms_usr.usr_cliente;
       ms_usr         heap    postgres    false    7            ?            1259    33289    usr_cliente_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_usr.usr_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE ms_usr.usr_cliente_id_seq;
       ms_usr          postgres    false    7    209            `           0    0    usr_cliente_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE ms_usr.usr_cliente_id_seq OWNED BY ms_usr.usr_cliente.id;
          ms_usr          postgres    false    208            ?            1259    33302    usr_empleado    TABLE     w   CREATE TABLE ms_usr.usr_empleado (
    id integer NOT NULL,
    mail character varying(255),
    id_usuario integer
);
     DROP TABLE ms_usr.usr_empleado;
       ms_usr         heap    postgres    false    7            ?            1259    33300    usr_empleado_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_usr.usr_empleado_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE ms_usr.usr_empleado_id_seq;
       ms_usr          postgres    false    211    7            a           0    0    usr_empleado_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE ms_usr.usr_empleado_id_seq OWNED BY ms_usr.usr_empleado.id;
          ms_usr          postgres    false    210            ?            1259    33310    usr_obra    TABLE     ?   CREATE TABLE ms_usr.usr_obra (
    id integer NOT NULL,
    descripcion character varying(255),
    direccion character varying(255),
    latitud real,
    longitud real,
    superficie integer,
    id_cliente integer,
    id_tipo_obra integer
);
    DROP TABLE ms_usr.usr_obra;
       ms_usr         heap    postgres    false    7            ?            1259    33308    usr_obra_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_usr.usr_obra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE ms_usr.usr_obra_id_seq;
       ms_usr          postgres    false    213    7            b           0    0    usr_obra_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE ms_usr.usr_obra_id_seq OWNED BY ms_usr.usr_obra.id;
          ms_usr          postgres    false    212            ?            1259    33319    usr_tipo_obra    TABLE     g   CREATE TABLE ms_usr.usr_tipo_obra (
    id integer NOT NULL,
    descripcion character varying(255)
);
 !   DROP TABLE ms_usr.usr_tipo_obra;
       ms_usr         heap    postgres    false    7            ?            1259    33324    usr_tipo_usuario    TABLE     c   CREATE TABLE ms_usr.usr_tipo_usuario (
    id integer NOT NULL,
    tipo character varying(255)
);
 $   DROP TABLE ms_usr.usr_tipo_usuario;
       ms_usr         heap    postgres    false    7            ?            1259    33331    usr_usuario    TABLE     ?   CREATE TABLE ms_usr.usr_usuario (
    id integer NOT NULL,
    password character varying(255),
    userr character varying(255),
    id_tipo_usuario integer
);
    DROP TABLE ms_usr.usr_usuario;
       ms_usr         heap    postgres    false    7            ?            1259    33329    usr_usuario_id_seq    SEQUENCE     ?   CREATE SEQUENCE ms_usr.usr_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE ms_usr.usr_usuario_id_seq;
       ms_usr          postgres    false    7    217            c           0    0    usr_usuario_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE ms_usr.usr_usuario_id_seq OWNED BY ms_usr.usr_usuario.id;
          ms_usr          postgres    false    216            ?
           2604    33254    cc_medio_pago id    DEFAULT     r   ALTER TABLE ONLY ms_cc.cc_medio_pago ALTER COLUMN id SET DEFAULT nextval('ms_cc.cc_medio_pago_id_seq'::regclass);
 >   ALTER TABLE ms_cc.cc_medio_pago ALTER COLUMN id DROP DEFAULT;
       ms_cc          postgres    false    205    204    205            ?
           2604    33265 
   cc_pago id    DEFAULT     f   ALTER TABLE ONLY ms_cc.cc_pago ALTER COLUMN id SET DEFAULT nextval('ms_cc.cc_pago_id_seq'::regclass);
 8   ALTER TABLE ms_cc.cc_pago ALTER COLUMN id DROP DEFAULT;
       ms_cc          postgres    false    206    207    207            ?
           2604    33294    usr_cliente id    DEFAULT     p   ALTER TABLE ONLY ms_usr.usr_cliente ALTER COLUMN id SET DEFAULT nextval('ms_usr.usr_cliente_id_seq'::regclass);
 =   ALTER TABLE ms_usr.usr_cliente ALTER COLUMN id DROP DEFAULT;
       ms_usr          postgres    false    208    209    209            ?
           2604    33305    usr_empleado id    DEFAULT     r   ALTER TABLE ONLY ms_usr.usr_empleado ALTER COLUMN id SET DEFAULT nextval('ms_usr.usr_empleado_id_seq'::regclass);
 >   ALTER TABLE ms_usr.usr_empleado ALTER COLUMN id DROP DEFAULT;
       ms_usr          postgres    false    210    211    211            ?
           2604    33313    usr_obra id    DEFAULT     j   ALTER TABLE ONLY ms_usr.usr_obra ALTER COLUMN id SET DEFAULT nextval('ms_usr.usr_obra_id_seq'::regclass);
 :   ALTER TABLE ms_usr.usr_obra ALTER COLUMN id DROP DEFAULT;
       ms_usr          postgres    false    212    213    213            ?
           2604    33334    usr_usuario id    DEFAULT     p   ALTER TABLE ONLY ms_usr.usr_usuario ALTER COLUMN id SET DEFAULT nextval('ms_usr.usr_usuario_id_seq'::regclass);
 =   ALTER TABLE ms_usr.usr_usuario ALTER COLUMN id DROP DEFAULT;
       ms_usr          postgres    false    217    216    217            J          0    33251    cc_medio_pago 
   TABLE DATA           ?   COPY ms_cc.cc_medio_pago (tipo, id, observacion, banco, fecha_cobro, nro_cheque, nro_recibo, cbu_destino, cbu_origen, codigo_transferencia) FROM stdin;
    ms_cc          postgres    false    205   aH       L          0    33262    cc_pago 
   TABLE DATA           K   COPY ms_cc.cc_pago (id, fecha_pago, id_cliente, id_medio_pago) FROM stdin;
    ms_cc          postgres    false    207   ?I       N          0    33291    usr_cliente 
   TABLE DATA           x   COPY ms_usr.usr_cliente (id, cuit, habilitado_online, mail, max_cuenta_corriente, razon_social, id_usuario) FROM stdin;
    ms_usr          postgres    false    209   J       P          0    33302    usr_empleado 
   TABLE DATA           <   COPY ms_usr.usr_empleado (id, mail, id_usuario) FROM stdin;
    ms_usr          postgres    false    211   ?J       R          0    33310    usr_obra 
   TABLE DATA           w   COPY ms_usr.usr_obra (id, descripcion, direccion, latitud, longitud, superficie, id_cliente, id_tipo_obra) FROM stdin;
    ms_usr          postgres    false    213   K       S          0    33319    usr_tipo_obra 
   TABLE DATA           8   COPY ms_usr.usr_tipo_obra (id, descripcion) FROM stdin;
    ms_usr          postgres    false    214   ?L       T          0    33324    usr_tipo_usuario 
   TABLE DATA           4   COPY ms_usr.usr_tipo_usuario (id, tipo) FROM stdin;
    ms_usr          postgres    false    215   ?L       V          0    33331    usr_usuario 
   TABLE DATA           K   COPY ms_usr.usr_usuario (id, password, userr, id_tipo_usuario) FROM stdin;
    ms_usr          postgres    false    217   'M       d           0    0    cc_medio_pago_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('ms_cc.cc_medio_pago_id_seq', 10, true);
          ms_cc          postgres    false    204            e           0    0    cc_pago_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('ms_cc.cc_pago_id_seq', 10, true);
          ms_cc          postgres    false    206            f           0    0    usr_cliente_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('ms_usr.usr_cliente_id_seq', 4, true);
          ms_usr          postgres    false    208            g           0    0    usr_empleado_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('ms_usr.usr_empleado_id_seq', 1, true);
          ms_usr          postgres    false    210            h           0    0    usr_obra_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('ms_usr.usr_obra_id_seq', 14, true);
          ms_usr          postgres    false    212            i           0    0    usr_usuario_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('ms_usr.usr_usuario_id_seq', 4, true);
          ms_usr          postgres    false    216            ?
           2606    33259     cc_medio_pago cc_medio_pago_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY ms_cc.cc_medio_pago
    ADD CONSTRAINT cc_medio_pago_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY ms_cc.cc_medio_pago DROP CONSTRAINT cc_medio_pago_pkey;
       ms_cc            postgres    false    205            ?
           2606    33267    cc_pago cc_pago_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY ms_cc.cc_pago
    ADD CONSTRAINT cc_pago_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY ms_cc.cc_pago DROP CONSTRAINT cc_pago_pkey;
       ms_cc            postgres    false    207            ?
           2606    33343 ,   usr_tipo_usuario ukjgw7uwcnhaeor7y119gvvntbv 
   CONSTRAINT     g   ALTER TABLE ONLY ms_usr.usr_tipo_usuario
    ADD CONSTRAINT ukjgw7uwcnhaeor7y119gvvntbv UNIQUE (tipo);
 V   ALTER TABLE ONLY ms_usr.usr_tipo_usuario DROP CONSTRAINT ukjgw7uwcnhaeor7y119gvvntbv;
       ms_usr            postgres    false    215            ?
           2606    33341 )   usr_tipo_obra ukp846ut40bgr83vk3w521nny6c 
   CONSTRAINT     k   ALTER TABLE ONLY ms_usr.usr_tipo_obra
    ADD CONSTRAINT ukp846ut40bgr83vk3w521nny6c UNIQUE (descripcion);
 S   ALTER TABLE ONLY ms_usr.usr_tipo_obra DROP CONSTRAINT ukp846ut40bgr83vk3w521nny6c;
       ms_usr            postgres    false    214            ?
           2606    33299    usr_cliente usr_cliente_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY ms_usr.usr_cliente
    ADD CONSTRAINT usr_cliente_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY ms_usr.usr_cliente DROP CONSTRAINT usr_cliente_pkey;
       ms_usr            postgres    false    209            ?
           2606    33307    usr_empleado usr_empleado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY ms_usr.usr_empleado
    ADD CONSTRAINT usr_empleado_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY ms_usr.usr_empleado DROP CONSTRAINT usr_empleado_pkey;
       ms_usr            postgres    false    211            ?
           2606    33318    usr_obra usr_obra_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY ms_usr.usr_obra
    ADD CONSTRAINT usr_obra_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY ms_usr.usr_obra DROP CONSTRAINT usr_obra_pkey;
       ms_usr            postgres    false    213            ?
           2606    33323     usr_tipo_obra usr_tipo_obra_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY ms_usr.usr_tipo_obra
    ADD CONSTRAINT usr_tipo_obra_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY ms_usr.usr_tipo_obra DROP CONSTRAINT usr_tipo_obra_pkey;
       ms_usr            postgres    false    214            ?
           2606    33328 &   usr_tipo_usuario usr_tipo_usuario_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY ms_usr.usr_tipo_usuario
    ADD CONSTRAINT usr_tipo_usuario_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY ms_usr.usr_tipo_usuario DROP CONSTRAINT usr_tipo_usuario_pkey;
       ms_usr            postgres    false    215            ?
           2606    33339    usr_usuario usr_usuario_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY ms_usr.usr_usuario
    ADD CONSTRAINT usr_usuario_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY ms_usr.usr_usuario DROP CONSTRAINT usr_usuario_pkey;
       ms_usr            postgres    false    217            ?
           2606    33284 #   cc_pago fkjqhuq8blt9bgi4213y41ly4om    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_cc.cc_pago
    ADD CONSTRAINT fkjqhuq8blt9bgi4213y41ly4om FOREIGN KEY (id_medio_pago) REFERENCES ms_cc.cc_medio_pago(id);
 L   ALTER TABLE ONLY ms_cc.cc_pago DROP CONSTRAINT fkjqhuq8blt9bgi4213y41ly4om;
       ms_cc          postgres    false    207    2738    205            ?
           2606    33349 (   usr_empleado fk6qxv3sut1f0jh42aynp2eimdw    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_usr.usr_empleado
    ADD CONSTRAINT fk6qxv3sut1f0jh42aynp2eimdw FOREIGN KEY (id_usuario) REFERENCES ms_usr.usr_usuario(id);
 R   ALTER TABLE ONLY ms_usr.usr_empleado DROP CONSTRAINT fk6qxv3sut1f0jh42aynp2eimdw;
       ms_usr          postgres    false    217    211    2756            ?
           2606    33354 $   usr_obra fk9qkts1ru0r4rsu4clck9ex5ix    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_usr.usr_obra
    ADD CONSTRAINT fk9qkts1ru0r4rsu4clck9ex5ix FOREIGN KEY (id_cliente) REFERENCES ms_usr.usr_cliente(id);
 N   ALTER TABLE ONLY ms_usr.usr_obra DROP CONSTRAINT fk9qkts1ru0r4rsu4clck9ex5ix;
       ms_usr          postgres    false    209    2742    213            ?
           2606    33359 $   usr_obra fkbd6gdefde8hbqr934yjer10fe    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_usr.usr_obra
    ADD CONSTRAINT fkbd6gdefde8hbqr934yjer10fe FOREIGN KEY (id_tipo_obra) REFERENCES ms_usr.usr_tipo_obra(id);
 N   ALTER TABLE ONLY ms_usr.usr_obra DROP CONSTRAINT fkbd6gdefde8hbqr934yjer10fe;
       ms_usr          postgres    false    2750    213    214            ?
           2606    33344 '   usr_cliente fkc6qu02n9xv811xpds07md6dhe    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_usr.usr_cliente
    ADD CONSTRAINT fkc6qu02n9xv811xpds07md6dhe FOREIGN KEY (id_usuario) REFERENCES ms_usr.usr_usuario(id);
 Q   ALTER TABLE ONLY ms_usr.usr_cliente DROP CONSTRAINT fkc6qu02n9xv811xpds07md6dhe;
       ms_usr          postgres    false    2756    217    209            ?
           2606    33364 '   usr_usuario fkhn7wawxkfpm1qj19u4hqio0b8    FK CONSTRAINT     ?   ALTER TABLE ONLY ms_usr.usr_usuario
    ADD CONSTRAINT fkhn7wawxkfpm1qj19u4hqio0b8 FOREIGN KEY (id_tipo_usuario) REFERENCES ms_usr.usr_tipo_usuario(id);
 Q   ALTER TABLE ONLY ms_usr.usr_usuario DROP CONSTRAINT fkhn7wawxkfpm1qj19u4hqio0b8;
       ms_usr          postgres    false    215    217    2754            J   #  x???Mn? F?p
N`???ҩҥU?]fC]?X?@???z?^?c+q<R?"?4??ϡ?9	-???ٷ]?J?Ss??m?K??p}?m????ЬJ늲,??9K?PZh?|???)d???>?I??????#-?:[?z????cƈ??UC??_Q??{?c????粌fY.k?6`?YR,m-h?	??xs??? ?O??)?ݎ|???RjB?ۂ$????????d??_?k?_?V?S1?O}????e?BL???>??W?mNH<?h?w(??畧LJ?w˽:      L   y   x?5???@?3???O-?K???ɲB=?G!?D6????IeL?O?s?}?د?"f??s\M??Q#????@Ժbw(???????????h???y???g??;?ذ????R?	3???'F      N   ?   x?]?=
?0Fg?=A?e???(?c!8vq?=???;tH&!???O?j;j?S0?????mX?"ה??\?uL?????  m4V?Jo??[?y??=:??P?)????]???[??%?OX?k	??3??I2?T,??Ի]???Y3?}}???!??LJo      P   &   x?3?L?-?IML?7tH?M???K??????????? ???      R   ?  x???1n?0E??)x␔?2	?E?b?m?Ld?! ?)?ȝ?{??F 'Zl:??7???WpO?d??c???)?$Q???I??W*T?Ђ??@r????.y?uy<??it?}?)?D`U???5C??sȑ?[v?my?p/?? k?lB??45??0s?K]v=?m?J'?yj???g?.?^?g,5??EN??Ïa?l?vF??v?`?Dh?>i???|&???|W?}r?ˎ,??h?p:?g??EK?f???d?ಱz??oF?׌*}Qb?4????????+W?])?][???U]??Kb??)?۴?~?m8k?? אZ???J?- ??1B?s?޲F??a?Nn|H??e?+5??!?/?wH????]???.?X??
???踈?????eJS2?y%??V??      S   0   x?3?JM?/?M?2?tN,N?2?tM?L?L???2??L??????? ?
?      T   "   x?3?t??L?+I?2?K?KIM?/?????? h0-      V   Y   x?U?9
?  ??}?x= 	?f=?E~???z??B?ķVH???+???`????W??<?n??(?q[&????Q???? ???&W     