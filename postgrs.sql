PGDMP     3    *                y         	   postgresq     13.3 (Ubuntu 13.3-1.pgdg20.04+1)     13.3 (Ubuntu 13.3-1.pgdg20.04+1) ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    27527 	   postgresq    DATABASE     ^   CREATE DATABASE postgresq WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE postgresq;
                postgres    false            ?            1259    27655    account_emailaddress    TABLE     ?   CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap 
   postgresql    false            ?            1259    27700    account_emailaddress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public       
   postgresql    false    216            ?           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public       
   postgresql    false    218            ?            1259    27665    account_emailconfirmation    TABLE     ?   CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap 
   postgresql    false            ?            1259    27726     account_emailconfirmation_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public       
   postgresql    false    217            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public       
   postgresql    false    219            ?            1259    27559 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 
   postgresql    false            ?            1259    27557    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       
   postgresql    false    207            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       
   postgresql    false    206            ?            1259    27569    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 
   postgresql    false            ?            1259    27567    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       
   postgresql    false    209            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       
   postgresql    false    208            ?            1259    27551    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 
   postgresql    false            ?            1259    27549    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       
   postgresql    false    205            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       
   postgresql    false    204            ?            1259    27577 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 
   postgresql    false            ?            1259    27587    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 
   postgresql    false            ?            1259    27585    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       
   postgresql    false    213            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       
   postgresql    false    212            ?            1259    27575    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       
   postgresql    false    211            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       
   postgresql    false    210            ?            1259    27595    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 
   postgresql    false            ?            1259    27593 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       
   postgresql    false    215            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       
   postgresql    false    214            ?            1259    27764 	   core_item    TABLE     ?  CREATE TABLE public.core_item (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    price double precision NOT NULL,
    category character varying(20) NOT NULL,
    label character varying(20) NOT NULL,
    discount_price double precision,
    slug character varying(50) NOT NULL,
    quantity integer NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL
);
    DROP TABLE public.core_item;
       public         heap 
   postgresql    false            ?            1259    27762    core_item_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_item_id_seq;
       public       
   postgresql    false    223            ?           0    0    core_item_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_item_id_seq OWNED BY public.core_item.id;
          public       
   postgresql    false    222            ?            1259    27783 
   core_order    TABLE     ?   CREATE TABLE public.core_order (
    id bigint NOT NULL,
    start_date timestamp with time zone NOT NULL,
    ordererd_date timestamp with time zone NOT NULL,
    ordered boolean NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.core_order;
       public         heap 
   postgresql    false            ?            1259    27781    core_order_id_seq    SEQUENCE     z   CREATE SEQUENCE public.core_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_order_id_seq;
       public       
   postgresql    false    227            ?           0    0    core_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_order_id_seq OWNED BY public.core_order.id;
          public       
   postgresql    false    226            ?            1259    27791    core_order_items    TABLE     ?   CREATE TABLE public.core_order_items (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    orderitem_id bigint NOT NULL
);
 $   DROP TABLE public.core_order_items;
       public         heap 
   postgresql    false            ?            1259    27789    core_order_items_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.core_order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_order_items_id_seq;
       public       
   postgresql    false    229            ?           0    0    core_order_items_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.core_order_items_id_seq OWNED BY public.core_order_items.id;
          public       
   postgresql    false    228            ?            1259    27775    core_orderitem    TABLE     ?   CREATE TABLE public.core_orderitem (
    id bigint NOT NULL,
    ordered boolean NOT NULL,
    quantity integer NOT NULL,
    item_id bigint NOT NULL,
    user_id integer NOT NULL
);
 "   DROP TABLE public.core_orderitem;
       public         heap 
   postgresql    false            ?            1259    27773    core_orderitem_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.core_orderitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.core_orderitem_id_seq;
       public       
   postgresql    false    225            ?           0    0    core_orderitem_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.core_orderitem_id_seq OWNED BY public.core_orderitem.id;
          public       
   postgresql    false    224            ?            1259    27731    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 
   postgresql    false            ?            1259    27729    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       
   postgresql    false    221            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       
   postgresql    false    220            ?            1259    27541    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 
   postgresql    false            ?            1259    27539    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       
   postgresql    false    203            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       
   postgresql    false    202            ?            1259    27530    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 
   postgresql    false            ?            1259    27528    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       
   postgresql    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       
   postgresql    false    200            ?            1259    27831    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 
   postgresql    false            ?            1259    27843    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap 
   postgresql    false            ?            1259    27841    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       
   postgresql    false    232            ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public       
   postgresql    false    231            ?            1259    27854    socialaccount_socialaccount    TABLE     C  CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap 
   postgresql    false            ?            1259    27941 "   socialaccount_socialaccount_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public       
   postgresql    false    233            ?           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public       
   postgresql    false    238            ?            1259    27865    socialaccount_socialapp    TABLE     "  CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap 
   postgresql    false            ?            1259    27972    socialaccount_socialapp_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public       
   postgresql    false    234            ?           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public       
   postgresql    false    239            ?            1259    27873    socialaccount_socialapp_sites    TABLE     ?   CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap 
   postgresql    false            ?            1259    27871 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public       
   postgresql    false    236            ?           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public       
   postgresql    false    235            ?            1259    27881    socialaccount_socialtoken    TABLE     ?   CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id bigint NOT NULL,
    app_id bigint NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap 
   postgresql    false            ?            1259    28016     socialaccount_socialtoken_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public       
   postgresql    false    237            ?           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public       
   postgresql    false    240            ?           2604    27702    account_emailaddress id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    218    216            ?           2604    27728    account_emailconfirmation id    DEFAULT     ?   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    219    217            ?           2604    27562    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    207    206    207            ?           2604    27572    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    209    208    209            ?           2604    27554    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    204    205    205            ?           2604    27580    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    210    211    211            ?           2604    27590    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    212    213    213            ?           2604    27598    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    214    215    215            ?           2604    27767    core_item id    DEFAULT     l   ALTER TABLE ONLY public.core_item ALTER COLUMN id SET DEFAULT nextval('public.core_item_id_seq'::regclass);
 ;   ALTER TABLE public.core_item ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    222    223    223            ?           2604    27786    core_order id    DEFAULT     n   ALTER TABLE ONLY public.core_order ALTER COLUMN id SET DEFAULT nextval('public.core_order_id_seq'::regclass);
 <   ALTER TABLE public.core_order ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    226    227    227            ?           2604    27794    core_order_items id    DEFAULT     z   ALTER TABLE ONLY public.core_order_items ALTER COLUMN id SET DEFAULT nextval('public.core_order_items_id_seq'::regclass);
 B   ALTER TABLE public.core_order_items ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    228    229    229            ?           2604    27778    core_orderitem id    DEFAULT     v   ALTER TABLE ONLY public.core_orderitem ALTER COLUMN id SET DEFAULT nextval('public.core_orderitem_id_seq'::regclass);
 @   ALTER TABLE public.core_orderitem ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    225    224    225            ?           2604    27734    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    221    220    221            ?           2604    27544    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    202    203    203            ?           2604    27533    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    201    200    201            ?           2604    27846    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    232    231    232            ?           2604    27943    socialaccount_socialaccount id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    238    233            ?           2604    27974    socialaccount_socialapp id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    239    234            ?           2604    27876     socialaccount_socialapp_sites id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    235    236    236            ?           2604    28018    socialaccount_socialtoken id    DEFAULT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public       
   postgresql    false    240    237            ?          0    27655    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public       
   postgresql    false    216   ?      ?          0    27665    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public       
   postgresql    false    217   ?      ?          0    27559 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       
   postgresql    false    207         ?          0    27569    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       
   postgresql    false    209   3      ?          0    27551    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       
   postgresql    false    205   P      ?          0    27577 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       
   postgresql    false    211   ?       ?          0    27587    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       
   postgresql    false    213   b!      ?          0    27595    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       
   postgresql    false    215   !      ?          0    27764 	   core_item 
   TABLE DATA           z   COPY public.core_item (id, title, price, category, label, discount_price, slug, quantity, description, image) FROM stdin;
    public       
   postgresql    false    223   ?!      ?          0    27783 
   core_order 
   TABLE DATA           U   COPY public.core_order (id, start_date, ordererd_date, ordered, user_id) FROM stdin;
    public       
   postgresql    false    227   "      ?          0    27791    core_order_items 
   TABLE DATA           F   COPY public.core_order_items (id, order_id, orderitem_id) FROM stdin;
    public       
   postgresql    false    229   #"      ?          0    27775    core_orderitem 
   TABLE DATA           Q   COPY public.core_orderitem (id, ordered, quantity, item_id, user_id) FROM stdin;
    public       
   postgresql    false    225   @"      ?          0    27731    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       
   postgresql    false    221   ]"      ?          0    27541    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       
   postgresql    false    203   ?"      ?          0    27530    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       
   postgresql    false    201   h#      ?          0    27831    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       
   postgresql    false    230   ?%      ?          0    27843    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public       
   postgresql    false    232   ?&      ?          0    27854    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public       
   postgresql    false    233   #'      ?          0    27865    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public       
   postgresql    false    234   @'      ?          0    27873    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public       
   postgresql    false    236   ]'      ?          0    27881    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public       
   postgresql    false    237   z'      ?           0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public       
   postgresql    false    218            ?           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public       
   postgresql    false    219            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       
   postgresql    false    206            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       
   postgresql    false    208            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public       
   postgresql    false    204            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       
   postgresql    false    212                        0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       
   postgresql    false    210                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       
   postgresql    false    214                       0    0    core_item_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_item_id_seq', 1, true);
          public       
   postgresql    false    222                       0    0    core_order_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_order_id_seq', 1, false);
          public       
   postgresql    false    226                       0    0    core_order_items_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.core_order_items_id_seq', 1, false);
          public       
   postgresql    false    228                       0    0    core_orderitem_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.core_orderitem_id_seq', 1, false);
          public       
   postgresql    false    224                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);
          public       
   postgresql    false    220                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public       
   postgresql    false    202                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public       
   postgresql    false    200            	           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public       
   postgresql    false    231            
           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public       
   postgresql    false    238                       0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public       
   postgresql    false    239                       0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public       
   postgresql    false    235                       0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public       
   postgresql    false    240            ?           2606    27688 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public         
   postgresql    false    216            ?           2606    27692 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public         
   postgresql    false    216            ?           2606    27672 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public         
   postgresql    false    217            ?           2606    27718 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public         
   postgresql    false    217            ?           2606    27760    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         
   postgresql    false    207            ?           2606    27611 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         
   postgresql    false    209    209            ?           2606    27574 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         
   postgresql    false    209            ?           2606    27564    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         
   postgresql    false    207            ?           2606    27602 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         
   postgresql    false    205    205            ?           2606    27556 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         
   postgresql    false    205            ?           2606    27592 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         
   postgresql    false    213            ?           2606    27626 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         
   postgresql    false    213    213            ?           2606    27582    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         
   postgresql    false    211            ?           2606    27600 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         
   postgresql    false    215            ?           2606    27640 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         
   postgresql    false    215    215            ?           2606    27754     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         
   postgresql    false    211            ?           2606    27772    core_item core_item_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_item
    ADD CONSTRAINT core_item_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_item DROP CONSTRAINT core_item_pkey;
       public         
   postgresql    false    223                       2606    27818 E   core_order_items core_order_items_order_id_orderitem_id_f9cea05f_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_order_id_orderitem_id_f9cea05f_uniq UNIQUE (order_id, orderitem_id);
 o   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_order_id_orderitem_id_f9cea05f_uniq;
       public         
   postgresql    false    229    229                       2606    27796 &   core_order_items core_order_items_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_pkey;
       public         
   postgresql    false    229            ?           2606    27788    core_order core_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_pkey;
       public         
   postgresql    false    227            ?           2606    27780 "   core_orderitem core_orderitem_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_pkey;
       public         
   postgresql    false    225            ?           2606    27740 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         
   postgresql    false    221            ?           2606    27548 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         
   postgresql    false    203    203            ?           2606    27546 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         
   postgresql    false    203            ?           2606    27538 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         
   postgresql    false    201                       2606    27838 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         
   postgresql    false    230                       2606    27850 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         
   postgresql    false    232                       2606    27848    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         
   postgresql    false    232                       2606    27931 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public         
   postgresql    false    233                       2606    27893 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public         
   postgresql    false    233    233                       2606    27976 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public         
   postgresql    false    236    236                       2606    27964 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public         
   postgresql    false    234                       2606    27878 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public         
   postgresql    false    236                       2606    27986 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public         
   postgresql    false    237    237                        2606    28005 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public         
   postgresql    false    237            ?           1259    27689 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public         
   postgresql    false    216            ?           1259    27679 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public         
   postgresql    false    216            ?           1259    27703 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ?   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public         
   postgresql    false    217            ?           1259    27685 +   account_emailconfirmation_key_f43612bd_like    INDEX     ?   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public         
   postgresql    false    217            ?           1259    27761    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         
   postgresql    false    207            ?           1259    27622 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         
   postgresql    false    209            ?           1259    27623 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         
   postgresql    false    209            ?           1259    27608 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         
   postgresql    false    205            ?           1259    27638 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         
   postgresql    false    213            ?           1259    27637 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         
   postgresql    false    213            ?           1259    27652 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         
   postgresql    false    215            ?           1259    27651 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         
   postgresql    false    215            ?           1259    27755     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         
   postgresql    false    211            ?           1259    27797    core_item_slug_07f502d0    INDEX     M   CREATE INDEX core_item_slug_07f502d0 ON public.core_item USING btree (slug);
 +   DROP INDEX public.core_item_slug_07f502d0;
       public         
   postgresql    false    223            ?           1259    27798    core_item_slug_07f502d0_like    INDEX     f   CREATE INDEX core_item_slug_07f502d0_like ON public.core_item USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.core_item_slug_07f502d0_like;
       public         
   postgresql    false    223            ?           1259    27829 "   core_order_items_order_id_c5dde6c1    INDEX     c   CREATE INDEX core_order_items_order_id_c5dde6c1 ON public.core_order_items USING btree (order_id);
 6   DROP INDEX public.core_order_items_order_id_c5dde6c1;
       public         
   postgresql    false    229                       1259    27830 &   core_order_items_orderitem_id_e44f86b6    INDEX     k   CREATE INDEX core_order_items_orderitem_id_e44f86b6 ON public.core_order_items USING btree (orderitem_id);
 :   DROP INDEX public.core_order_items_orderitem_id_e44f86b6;
       public         
   postgresql    false    229            ?           1259    27816    core_order_user_id_b03bbffd    INDEX     U   CREATE INDEX core_order_user_id_b03bbffd ON public.core_order USING btree (user_id);
 /   DROP INDEX public.core_order_user_id_b03bbffd;
       public         
   postgresql    false    227            ?           1259    27809    core_orderitem_item_id_3b7d0c2e    INDEX     ]   CREATE INDEX core_orderitem_item_id_3b7d0c2e ON public.core_orderitem USING btree (item_id);
 3   DROP INDEX public.core_orderitem_item_id_3b7d0c2e;
       public         
   postgresql    false    225            ?           1259    27810    core_orderitem_user_id_323fe695    INDEX     ]   CREATE INDEX core_orderitem_user_id_323fe695 ON public.core_orderitem USING btree (user_id);
 3   DROP INDEX public.core_orderitem_user_id_323fe695;
       public         
   postgresql    false    225            ?           1259    27751 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         
   postgresql    false    221            ?           1259    27752 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         
   postgresql    false    221                       1259    27840 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         
   postgresql    false    230                       1259    27839 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         
   postgresql    false    230            	           1259    27851     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         
   postgresql    false    232                       1259    27899 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public         
   postgresql    false    233                       1259    27913 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public         
   postgresql    false    236                       1259    27977 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     ?   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public         
   postgresql    false    236                       1259    27946 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public         
   postgresql    false    237                       1259    27987 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public         
   postgresql    false    237            (           2606    27673 J   account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public       
   postgresql    false    3028    211    216            )           2606    27711 P   account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk;
       public       
   postgresql    false    217    3048    216            #           2606    27617 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       
   postgresql    false    205    3015    209            "           2606    27612 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       
   postgresql    false    207    209    3020            !           2606    27603 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       
   postgresql    false    205    3010    203            %           2606    27632 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       
   postgresql    false    207    213    3020            $           2606    27627 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       
   postgresql    false    213    3028    211            '           2606    27646 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       
   postgresql    false    205    3015    215            &           2606    27641 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       
   postgresql    false    215    3028    211            /           2606    27819 D   core_order_items core_order_items_order_id_c5dde6c1_fk_core_order_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_order_id_c5dde6c1_fk_core_order_id FOREIGN KEY (order_id) REFERENCES public.core_order(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_order_id_c5dde6c1_fk_core_order_id;
       public       
   postgresql    false    227    229    3069            0           2606    27824 L   core_order_items core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_order_items
    ADD CONSTRAINT core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id FOREIGN KEY (orderitem_id) REFERENCES public.core_orderitem(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.core_order_items DROP CONSTRAINT core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id;
       public       
   postgresql    false    229    3066    225            .           2606    27811 6   core_order core_order_user_id_b03bbffd_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_order
    ADD CONSTRAINT core_order_user_id_b03bbffd_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.core_order DROP CONSTRAINT core_order_user_id_b03bbffd_fk_auth_user_id;
       public       
   postgresql    false    227    211    3028            ,           2606    27799 >   core_orderitem core_orderitem_item_id_3b7d0c2e_fk_core_item_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_item_id_3b7d0c2e_fk_core_item_id FOREIGN KEY (item_id) REFERENCES public.core_item(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_item_id_3b7d0c2e_fk_core_item_id;
       public       
   postgresql    false    223    225    3061            -           2606    27804 >   core_orderitem core_orderitem_user_id_323fe695_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_orderitem
    ADD CONSTRAINT core_orderitem_user_id_323fe695_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.core_orderitem DROP CONSTRAINT core_orderitem_user_id_323fe695_fk_auth_user_id;
       public       
   postgresql    false    225    3028    211            *           2606    27741 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       
   postgresql    false    203    3010    221            +           2606    27746 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       
   postgresql    false    3028    221    211            2           2606    27907 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public       
   postgresql    false    236    232    3085            1           2606    27894 X   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public       
   postgresql    false    3028    211    233            3           2606    27957 J   socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk;
       public       
   postgresql    false    3087    237    233            4           2606    27998 F   socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk;
       public       
   postgresql    false    234    237    3092            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   Z  x?}?ݎ?0F????	V?纯Q?BL:E?L?}?M????;pΧ????Ƭ?ݲ?t?ܸ-??????-??????K???m?%K????B???0????u?F????r
$;?6?O?$(ؖ??????ezͦ@A?{?r?:yb?ӎ?!9?? Z?rq?V???%?R?O??}*?;?yjޛ?q???;?Ӹ???m??3P)T??R$?IH?W????'??	????????[?Q?? W??y??v?H??Ĭ3?V??3M?񗐫???]5??
?A???9.???g7<????L?
X?j?S??tB?v? I????h??"??????<?-<?+? ?P??>??lFg?sGIV???u?[??u?O?:?C??I?O?q3?󂃂U*B???9????v??B?8t?H2??N??1??X+??g(??:?	?M?u?C??*ϝ???&?7?d????T.??????8???p??3??(ܾ됣?O
??0????[??J}?eR?????EB??}%?*??i???????J?ԑ?$?X?a???š?(J
?Ѧ?V,	U{?t??z?
?T?????M?? |??V"      ?   ?   x?e??
?@@???S?p???sG?M?&???Ij??????;?l????yo?6?z?@????ҫg/?,?w?[umg|??(??k>C??l?ˡ??wu6?n?J?h??<l?&ieS 2p?"G?????i??o?@IW??jq??+s      ?      x?????? ? ?      ?      x?????? ? ?      ?   Z   x?UǱ
?  ??????ݥ1h"??:???kmz<n??p0~??#X*o???td,?j?"???ӆ?C Ba??t?4?^?^???R??C?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   I   x?3?4202?50?52W04?24?20?32?00??60?4?tN?NR??J?))?)JV
յ????Ɯ?\1z\\\ ײk      ?   ?   x?mNI? <ۏ?J?.?????????H????Y5
??.???,v?K?@$?.%???L?%??@I$8???k,/?????i{???j[/>@?%d ?ݬ??j?瑮?o'^?5????8=o?B???Qu?R?/?ھ??ʣ`?$?w?.???Xi?      ?   P  x????n?0???S????gl??gYɲ??Z85?J?~???%??E???9?3???}?}?_?T?1??9??B?????_?^?|E}??~?~3<`??????Ҡ??W?i???}?R '?X???΅?v?j[ߟ??[j?39?뵚[?8?I?$
zSo?4??,+w?B?_?1Li?$?.A??3y??l?]??s?t?`?#U?u=1?????Y??{?ֺ?m?ch(?M(]?3?w1?vzb{??m?P?lI?k?O??S?a?h???BI?pf???7?8??D??ѠjS0?K(֘?(?K??#????/?z?hݐ'??6?[??# *Y?P$??1??\???m?@??@??n?|?6?\?i(???b??w?!y????????;;>C-?.c j!???BI-M?H?
?uNq?<?1?圚Y0`?Y??%????Nn??L	^???B??z?ɶ?>P?G?9K~oQ?#W?Y?L?j??Bwe??(?"?????&M?/???k?[=E??ގ}??'_?Z?nc]???<???Q???G-???~e?vV??s???­???,?O?sc??)4y?E+??Y?G?x???Т?5?	??x8??4??      ?     x??[?B@  ?????~Fcw???&t#Z???4(?ɵ~???N??=?`z7????x?U?n?g??L??o?)(?v???=???1]??!??4???4???^]]8|??o?x?????װw}rb!??r?H?*Y?E?"iD?vLm[???b?/Tc?O???Qj9?gkQvg3%nT??6;???s???/]?x?r??"?????V?XC'??U?T&??Q?t?n&hT???/T???;,D????Dcn?ԃ0?G?4?l??^??
???Dd?9?+?W??ߜ??? e?      ?      x?3?L?H?-?I?K??Efs??qqq ?<	?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     