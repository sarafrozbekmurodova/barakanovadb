PGDMP     -    !                y            barakanova_new #   12.6 (Ubuntu 12.6-0ubuntu0.20.04.1) #   12.6 (Ubuntu 12.6-0ubuntu0.20.04.1) �    B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    17803    barakanova_new    DATABASE     x   CREATE DATABASE barakanova_new WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE barakanova_new;
                islom    false            �            1255    17804 �   create_advertisement_with_uz_ru(character varying, character varying, text, text, character varying, boolean, character varying) 	   PROCEDURE     �  CREATE PROCEDURE public.create_advertisement_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, for_web_app_bot character varying, is_published boolean, photo character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	WITH i1 AS(
	INSERT INTO i18 DEFAULT VALUES
	RETURNING id
 	),
	a AS (
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', title_uz from i1
	RETURNING *
	),
	b AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'RU', title_ru from i1
	RETURNING *
	),
	i2 AS(
	INSERT INTO i18 DEFAULT VALUES
 	RETURNING id
	),
	d AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', des_uz from i2
	RETURNING *
	),
	f AS (
		INSERT INTO translation_tab(i18_id, locale_name, content)
		SELECT id, 'RU', des_ru from i2
	)
 	INSERT INTO advertisement(title_ad, content_ad,for_web_app_bot,is_published,photo)
 	SELECT i1.id, i2.id,for_web_app_bot,is_published,created_at,photo
 	FROM i1, i2;
END
$$;
 �   DROP PROCEDURE public.create_advertisement_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, for_web_app_bot character varying, is_published boolean, photo character varying);
       public          postgres    false            �            1255    17805 f   create_banner_with_uz_ru(character varying, character varying, text, text, character varying, boolean) 	   PROCEDURE     �  CREATE PROCEDURE public.create_banner_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, photo character varying, is_published boolean)
    LANGUAGE plpgsql
    AS $$
BEGIN
	WITH i1 AS(
	INSERT INTO i18 DEFAULT VALUES
	RETURNING id
 	),
	a AS (
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', title_uz from i1
	RETURNING *
	),
	b AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'RU', title_ru from i1
	RETURNING *
	),
	i2 AS(
	INSERT INTO i18 DEFAULT VALUES
 	RETURNING id
	),
	d AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', des_uz from i2
	RETURNING *
	),
	f AS (
		INSERT INTO translation_tab(i18_id, locale_name, content)
		SELECT id, 'RU', des_ru from i2
	)
 	INSERT INTO banner(title_ban, content_ban,photo,is_published)
 	SELECT i1.id, i2.id,photo,is_published
 	FROM i1, i2;
END
$$;
 �   DROP PROCEDURE public.create_banner_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, photo character varying, is_published boolean);
       public          postgres    false            �            1255    17806 {   create_category_with_uz_ru(character varying, character varying, text, text, character varying, character varying, integer) 	   PROCEDURE     �  CREATE PROCEDURE public.create_category_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, slug character varying, photo character varying, parent_id integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
	WITH i1 AS(
	INSERT INTO i18 DEFAULT VALUES
	RETURNING id
 	),
	a AS (
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', title_uz from i1
	RETURNING *
	),
	b AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'RU', title_ru from i1
	RETURNING *
	),
	i2 AS(
	INSERT INTO i18 DEFAULT VALUES
 	RETURNING id
	),
	d AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', des_uz from i2
	RETURNING *
	),
	f AS (
		INSERT INTO translation_tab(i18_id, locale_name, content)
		SELECT id, 'RU', des_ru from i2
	)
 	INSERT INTO category(title_cat, desc_cat,slug, photo, parent_id)
 	SELECT i1.id, i2.id,slug, photo, parent_id
 	FROM i1, i2;
END
$$;
 �   DROP PROCEDURE public.create_category_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, slug character varying, photo character varying, parent_id integer);
       public          postgres    false            �            1255    17807 �   create_discount_with_uz_ru(character varying, character varying, text, text, character varying, double precision, timestamp without time zone, timestamp without time zone, json, character varying, boolean) 	   PROCEDURE     �  CREATE PROCEDURE public.create_discount_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, promo_code character varying, rate double precision, start_date timestamp without time zone, end_date timestamp without time zone, extra json, discount_type character varying, is_active boolean)
    LANGUAGE plpgsql
    AS $$
BEGIN
	WITH i1 AS(
	INSERT INTO i18 DEFAULT VALUES
	RETURNING id
 	),
	a AS (
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', title_uz from i1
	RETURNING *
	),
	b AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'RU', title_ru from i1
	RETURNING *
	),
	i2 AS(
	INSERT INTO i18 DEFAULT VALUES
 	RETURNING id
	),
	d AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', des_uz from i2
	RETURNING *
	),
	f AS (
		INSERT INTO translation_tab(i18_id, locale_name, content)
		SELECT id, 'RU', des_ru from i2
	)
 	INSERT INTO discount(title_disc, desc_disc,promo_code, rate, start_date,end_date,extra,discount_type, is_active)
 	SELECT i1.id, i2.id, promo_code, rate, start_date,end_date,extra,discount_type, is_active
 	FROM i1, i2;
END
$$;
 G  DROP PROCEDURE public.create_discount_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, promo_code character varying, rate double precision, start_date timestamp without time zone, end_date timestamp without time zone, extra json, discount_type character varying, is_active boolean);
       public          postgres    false            �            1255    17808 �   create_product_with_uz_ru(character varying, character varying, text, text, character varying, boolean, character varying, json, double precision, bigint, bigint) 	   PROCEDURE     \  CREATE PROCEDURE public.create_product_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, unit character varying, is_available boolean, image character varying, extra json, price double precision, category_id bigint, discount_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN
	WITH i1 AS(
	INSERT INTO i18 DEFAULT VALUES
	RETURNING id
 	),
	a AS (
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', title_uz from i1
	RETURNING *
	),
	b AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'RU', title_ru from i1
	RETURNING *
	),
	i2 AS(
	INSERT INTO i18 DEFAULT VALUES
 	RETURNING id
	),
	d AS(
	INSERT INTO translation_tab(i18_id, locale_name, content)
 	SELECT id, 'UZ', des_uz from i2
	RETURNING *
	),
	f AS (
		INSERT INTO translation_tab(i18_id, locale_name, content)
		SELECT id, 'RU', des_ru from i2
	)
 	INSERT INTO product(title_pro, desc_pro,unit,is_available,image, extra, price, category_id, discount_id)
 	SELECT i1.id, i2.id,unit,is_available,image, extra, price, category_id, discount_id
 	FROM i1, i2;
END
$$;
   DROP PROCEDURE public.create_product_with_uz_ru(title_uz character varying, title_ru character varying, des_uz text, des_ru text, unit character varying, is_available boolean, image character varying, extra json, price double precision, category_id bigint, discount_id bigint);
       public          postgres    false            �            1255    17809 '   delete_advertisement_with_uz_ru(bigint) 	   PROCEDURE     <  CREATE PROCEDURE public.delete_advertisement_with_uz_ru(ad_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN

delete from i18 USING advertisement WHERE (i18.id = advertisement.title_ad or  i18.id = advertisement.content_ad) and advertisement.id=ad_id;
delete from advertisement where advertisement.id = ad_id;
END
$$;
 E   DROP PROCEDURE public.delete_advertisement_with_uz_ru(ad_id bigint);
       public          postgres    false            �            1255    17810     delete_banner_with_uz_ru(bigint) 	   PROCEDURE       CREATE PROCEDURE public.delete_banner_with_uz_ru(banner_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN

delete from i18 USING banner WHERE (i18.id = banner.title_ban or  i18.id = banner.content_ban) and banner.id=banner_id;
delete from banner where banner.id = banner_id;
END
$$;
 B   DROP PROCEDURE public.delete_banner_with_uz_ru(banner_id bigint);
       public          postgres    false            �            1255    17811 "   delete_category_with_uz_ru(bigint) 	   PROCEDURE       CREATE PROCEDURE public.delete_category_with_uz_ru(cat_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN

delete from i18 USING category WHERE (i18.id = category.title_cat or  i18.id = category.desc_cat) and category.id=cat_id;
delete from category where category.id = cat_id;
END
$$;
 A   DROP PROCEDURE public.delete_category_with_uz_ru(cat_id bigint);
       public          postgres    false            �            1255    17812 "   delete_discount_with_uz_ru(bigint) 	   PROCEDURE        CREATE PROCEDURE public.delete_discount_with_uz_ru(disc_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN

delete from i18 USING discount WHERE (i18.id = discount.title_disc or  i18.id = discount.desc_disc) and discount.id=disc_id;
delete from discount where discount.id = disc_id;
END
$$;
 B   DROP PROCEDURE public.delete_discount_with_uz_ru(disc_id bigint);
       public          postgres    false            �            1255    17813 !   delete_product_with_uz_ru(bigint) 	   PROCEDURE        CREATE PROCEDURE public.delete_product_with_uz_ru(product_id bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN

delete from i18 USING product WHERE (i18.id = product.title_pro or  i18.id = product.desc_pro) and product.id=product_id;
delete from product where product.id = product_id;
END
$$;
 D   DROP PROCEDURE public.delete_product_with_uz_ru(product_id bigint);
       public          postgres    false            �            1259    17814    advertisement    TABLE       CREATE TABLE public.advertisement (
    id integer NOT NULL,
    title_ad bigint,
    content_ad bigint,
    photo character varying(255),
    for_web_app_bot character varying(255),
    is_published boolean,
    created_at timestamp without time zone DEFAULT now()
);
 !   DROP TABLE public.advertisement;
       public         heap    postgres    false            �            1259    17821    advertisement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.advertisement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.advertisement_id_seq;
       public          postgres    false    202            F           0    0    advertisement_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.advertisement_id_seq OWNED BY public.advertisement.id;
          public          postgres    false    203            �            1259    17823    alert    TABLE     �   CREATE TABLE public.alert (
    id integer NOT NULL,
    content text,
    alert_type character varying(255),
    courier_id integer,
    admin_id integer
);
    DROP TABLE public.alert;
       public         heap    postgres    false            �            1259    17829    alert_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alert_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.alert_id_seq;
       public          postgres    false    204            G           0    0    alert_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.alert_id_seq OWNED BY public.alert.id;
          public          postgres    false    205            �            1259    17831    banner    TABLE     �   CREATE TABLE public.banner (
    id integer NOT NULL,
    title_ban bigint,
    content_ban bigint,
    photo character varying(255),
    is_published boolean
);
    DROP TABLE public.banner;
       public         heap    postgres    false            �            1259    17834    banner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.banner_id_seq;
       public          postgres    false    206            H           0    0    banner_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.banner_id_seq OWNED BY public.banner.id;
          public          postgres    false    207            �            1259    17836    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    title_cat bigint,
    desc_cat bigint,
    slug character varying(255) NOT NULL,
    photo character varying(255),
    parent_id integer
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    17842    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    208            I           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    209            �            1259    17844    discount    TABLE     c  CREATE TABLE public.discount (
    id bigint NOT NULL,
    title_disc bigint,
    desc_disc bigint,
    promo_code character(255),
    rate double precision,
    start_date timestamp without time zone DEFAULT now(),
    end_date timestamp without time zone DEFAULT now(),
    extra json,
    discount_type character varying(255),
    is_active boolean
);
    DROP TABLE public.discount;
       public         heap    postgres    false            �            1259    17852    discount_id_seq    SEQUENCE     x   CREATE SEQUENCE public.discount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.discount_id_seq;
       public          postgres    false    210            J           0    0    discount_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.discount_id_seq OWNED BY public.discount.id;
          public          postgres    false    211            �            1259    17854    i18    TABLE     4   CREATE TABLE public.i18 (
    id bigint NOT NULL
);
    DROP TABLE public.i18;
       public         heap    postgres    false            �            1259    17857 
   i18_id_seq    SEQUENCE     s   CREATE SEQUENCE public.i18_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.i18_id_seq;
       public          postgres    false    212            K           0    0 
   i18_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.i18_id_seq OWNED BY public.i18.id;
          public          postgres    false    213            �            1259    17859    locale    TABLE     H   CREATE TABLE public.locale (
    name character varying(10) NOT NULL
);
    DROP TABLE public.locale;
       public         heap    postgres    false            �            1259    17862    location    TABLE     �   CREATE TABLE public.location (
    id integer NOT NULL,
    latitude numeric(8,6),
    longitude numeric(9,6),
    address character varying(255),
    target character varying(255),
    user_id bigint
);
    DROP TABLE public.location;
       public         heap    postgres    false            �            1259    17868    location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.location_id_seq;
       public          postgres    false    215            L           0    0    location_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.location_id_seq OWNED BY public.location.id;
          public          postgres    false    216            �            1259    17870    message    TABLE     �   CREATE TABLE public.message (
    id integer NOT NULL,
    reason character varying(255),
    content text,
    created_at timestamp without time zone DEFAULT now(),
    user_id bigint
);
    DROP TABLE public.message;
       public         heap    postgres    false            �            1259    17877    message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.message_id_seq;
       public          postgres    false    217            M           0    0    message_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.message_id_seq OWNED BY public.message.id;
          public          postgres    false    218            �            1259    17879 
   order_item    TABLE     �   CREATE TABLE public.order_item (
    id integer NOT NULL,
    product_id integer,
    quantity double precision,
    order_id integer
);
    DROP TABLE public.order_item;
       public         heap    postgres    false            �            1259    17882    order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.order_item_id_seq;
       public          postgres    false    219            N           0    0    order_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.order_item_id_seq OWNED BY public.order_item.id;
          public          postgres    false    220            �            1259    17884    orders    TABLE     �  CREATE TABLE public.orders (
    id integer NOT NULL,
    status character varying(255),
    ordered_at timestamp without time zone DEFAULT now(),
    ordered_by bigint,
    total_price double precision,
    orders_from character(255),
    assigned_by integer,
    assigned_to integer,
    assigned_time timestamp without time zone DEFAULT now(),
    is_payed boolean,
    location_id bigint
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    17892    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    221            O           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    222            �            1259    17894    product    TABLE     *  CREATE TABLE public.product (
    id integer NOT NULL,
    title_pro bigint,
    desc_pro bigint,
    unit character varying(255),
    is_available boolean DEFAULT true,
    image character varying(255),
    extra json,
    price double precision,
    category_id bigint,
    discount_id bigint
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    17901    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            P           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    224            �            1259    17903    review    TABLE     �   CREATE TABLE public.review (
    id integer NOT NULL,
    score integer,
    comment text,
    created_at timestamp without time zone DEFAULT now(),
    courier_id bigint,
    user_id bigint
);
    DROP TABLE public.review;
       public         heap    postgres    false            �            1259    17910    review_id_seq    SEQUENCE     �   CREATE SEQUENCE public.review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.review_id_seq;
       public          postgres    false    225            Q           0    0    review_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.review_id_seq OWNED BY public.review.id;
          public          postgres    false    226            �            1259    17912    translation_tab    TABLE     �   CREATE TABLE public.translation_tab (
    id bigint NOT NULL,
    i18_id bigint,
    locale_name character varying(255),
    content text
);
 #   DROP TABLE public.translation_tab;
       public         heap    postgres    false            �            1259    17918    translation_tab_id_seq    SEQUENCE        CREATE SEQUENCE public.translation_tab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.translation_tab_id_seq;
       public          postgres    false    227            R           0    0    translation_tab_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.translation_tab_id_seq OWNED BY public.translation_tab.id;
          public          postgres    false    228            �            1259    17920    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    phone text,
    name character varying(255),
    bio text,
    photo character varying(255),
    salt character varying(255),
    password character varying(255),
    role character varying(255),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now(),
    bot boolean,
    is_active boolean,
    chat_id bigint,
    language character varying(2) DEFAULT 'uz'::character varying
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17929    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    229            S           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    230            T           2604    17931    advertisement id    DEFAULT     t   ALTER TABLE ONLY public.advertisement ALTER COLUMN id SET DEFAULT nextval('public.advertisement_id_seq'::regclass);
 ?   ALTER TABLE public.advertisement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            U           2604    17932    alert id    DEFAULT     d   ALTER TABLE ONLY public.alert ALTER COLUMN id SET DEFAULT nextval('public.alert_id_seq'::regclass);
 7   ALTER TABLE public.alert ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            V           2604    17933 	   banner id    DEFAULT     f   ALTER TABLE ONLY public.banner ALTER COLUMN id SET DEFAULT nextval('public.banner_id_seq'::regclass);
 8   ALTER TABLE public.banner ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            W           2604    17934    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            Z           2604    17935    discount id    DEFAULT     j   ALTER TABLE ONLY public.discount ALTER COLUMN id SET DEFAULT nextval('public.discount_id_seq'::regclass);
 :   ALTER TABLE public.discount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            [           2604    17936    i18 id    DEFAULT     `   ALTER TABLE ONLY public.i18 ALTER COLUMN id SET DEFAULT nextval('public.i18_id_seq'::regclass);
 5   ALTER TABLE public.i18 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            \           2604    17937    location id    DEFAULT     j   ALTER TABLE ONLY public.location ALTER COLUMN id SET DEFAULT nextval('public.location_id_seq'::regclass);
 :   ALTER TABLE public.location ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            ^           2604    17938 
   message id    DEFAULT     h   ALTER TABLE ONLY public.message ALTER COLUMN id SET DEFAULT nextval('public.message_id_seq'::regclass);
 9   ALTER TABLE public.message ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            _           2604    17939    order_item id    DEFAULT     n   ALTER TABLE ONLY public.order_item ALTER COLUMN id SET DEFAULT nextval('public.order_item_id_seq'::regclass);
 <   ALTER TABLE public.order_item ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            b           2604    17940 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            d           2604    17941 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            f           2604    17942 	   review id    DEFAULT     f   ALTER TABLE ONLY public.review ALTER COLUMN id SET DEFAULT nextval('public.review_id_seq'::regclass);
 8   ALTER TABLE public.review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            g           2604    17943    translation_tab id    DEFAULT     x   ALTER TABLE ONLY public.translation_tab ALTER COLUMN id SET DEFAULT nextval('public.translation_tab_id_seq'::regclass);
 A   ALTER TABLE public.translation_tab ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            k           2604    17944    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            #          0    17814    advertisement 
   TABLE DATA           s   COPY public.advertisement (id, title_ad, content_ad, photo, for_web_app_bot, is_published, created_at) FROM stdin;
    public          postgres    false    202   �       %          0    17823    alert 
   TABLE DATA           N   COPY public.alert (id, content, alert_type, courier_id, admin_id) FROM stdin;
    public          postgres    false    204   ,�       '          0    17831    banner 
   TABLE DATA           Q   COPY public.banner (id, title_ban, content_ban, photo, is_published) FROM stdin;
    public          postgres    false    206   I�       )          0    17836    category 
   TABLE DATA           S   COPY public.category (id, title_cat, desc_cat, slug, photo, parent_id) FROM stdin;
    public          postgres    false    208   f�       +          0    17844    discount 
   TABLE DATA           �   COPY public.discount (id, title_disc, desc_disc, promo_code, rate, start_date, end_date, extra, discount_type, is_active) FROM stdin;
    public          postgres    false    210   ��       -          0    17854    i18 
   TABLE DATA           !   COPY public.i18 (id) FROM stdin;
    public          postgres    false    212   \�       /          0    17859    locale 
   TABLE DATA           &   COPY public.locale (name) FROM stdin;
    public          postgres    false    214   ��       0          0    17862    location 
   TABLE DATA           U   COPY public.location (id, latitude, longitude, address, target, user_id) FROM stdin;
    public          postgres    false    215   ��       2          0    17870    message 
   TABLE DATA           K   COPY public.message (id, reason, content, created_at, user_id) FROM stdin;
    public          postgres    false    217   ��       4          0    17879 
   order_item 
   TABLE DATA           H   COPY public.order_item (id, product_id, quantity, order_id) FROM stdin;
    public          postgres    false    219   ��       6          0    17884    orders 
   TABLE DATA           �   COPY public.orders (id, status, ordered_at, ordered_by, total_price, orders_from, assigned_by, assigned_to, assigned_time, is_payed, location_id) FROM stdin;
    public          postgres    false    221   b�       8          0    17894    product 
   TABLE DATA           }   COPY public.product (id, title_pro, desc_pro, unit, is_available, image, extra, price, category_id, discount_id) FROM stdin;
    public          postgres    false    223   ��       :          0    17903    review 
   TABLE DATA           U   COPY public.review (id, score, comment, created_at, courier_id, user_id) FROM stdin;
    public          postgres    false    225   M�       <          0    17912    translation_tab 
   TABLE DATA           K   COPY public.translation_tab (id, i18_id, locale_name, content) FROM stdin;
    public          postgres    false    227   j�       >          0    17920    users 
   TABLE DATA           �   COPY public.users (id, phone, name, bio, photo, salt, password, role, created_at, updated_at, bot, is_active, chat_id, language) FROM stdin;
    public          postgres    false    229   ��       T           0    0    advertisement_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.advertisement_id_seq', 1, false);
          public          postgres    false    203            U           0    0    alert_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.alert_id_seq', 1, false);
          public          postgres    false    205            V           0    0    banner_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.banner_id_seq', 1, false);
          public          postgres    false    207            W           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 5, true);
          public          postgres    false    209            X           0    0    discount_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.discount_id_seq', 2, true);
          public          postgres    false    211            Y           0    0 
   i18_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.i18_id_seq', 42, true);
          public          postgres    false    213            Z           0    0    location_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.location_id_seq', 11, true);
          public          postgres    false    216            [           0    0    message_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.message_id_seq', 1, false);
          public          postgres    false    218            \           0    0    order_item_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.order_item_id_seq', 19, true);
          public          postgres    false    220            ]           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 10, true);
          public          postgres    false    222            ^           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 14, true);
          public          postgres    false    224            _           0    0    review_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.review_id_seq', 1, false);
          public          postgres    false    226            `           0    0    translation_tab_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.translation_tab_id_seq', 84, true);
          public          postgres    false    228            a           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    230            m           2606    17946     advertisement advertisement_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_pkey;
       public            postgres    false    202            o           2606    17948    alert alert_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_pkey;
       public            postgres    false    204            q           2606    17950    banner banner_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.banner DROP CONSTRAINT banner_pkey;
       public            postgres    false    206            s           2606    17952    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    208            u           2606    17954    discount discount_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_pkey;
       public            postgres    false    210            w           2606    17956    i18 i18_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.i18
    ADD CONSTRAINT i18_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.i18 DROP CONSTRAINT i18_pkey;
       public            postgres    false    212            y           2606    17958    locale locale_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.locale
    ADD CONSTRAINT locale_pkey PRIMARY KEY (name);
 <   ALTER TABLE ONLY public.locale DROP CONSTRAINT locale_pkey;
       public            postgres    false    214            {           2606    17960    location location_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.location DROP CONSTRAINT location_pkey;
       public            postgres    false    215            }           2606    17962    message message_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            postgres    false    217                       2606    17964    order_item order_item_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_pkey;
       public            postgres    false    219            �           2606    17966    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    221            �           2606    17968    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    17970    review review_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.review DROP CONSTRAINT review_pkey;
       public            postgres    false    225            �           2606    17972 $   translation_tab translation_tab_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.translation_tab
    ADD CONSTRAINT translation_tab_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.translation_tab DROP CONSTRAINT translation_tab_pkey;
       public            postgres    false    227            �           2606    17974    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            �           2606    17975 +   advertisement advertisement_content_ad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_content_ad_fkey FOREIGN KEY (content_ad) REFERENCES public.i18(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_content_ad_fkey;
       public          postgres    false    202    2935    212            �           2606    17980 )   advertisement advertisement_title_ad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.advertisement
    ADD CONSTRAINT advertisement_title_ad_fkey FOREIGN KEY (title_ad) REFERENCES public.i18(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.advertisement DROP CONSTRAINT advertisement_title_ad_fkey;
       public          postgres    false    2935    212    202            �           2606    17985    alert alert_admin_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_admin_id_fkey FOREIGN KEY (admin_id) REFERENCES public.users(id);
 C   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_admin_id_fkey;
       public          postgres    false    2953    229    204            �           2606    17990    alert alert_courier_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.alert
    ADD CONSTRAINT alert_courier_id_fkey FOREIGN KEY (courier_id) REFERENCES public.users(id);
 E   ALTER TABLE ONLY public.alert DROP CONSTRAINT alert_courier_id_fkey;
       public          postgres    false    229    204    2953            �           2606    17995    banner banner_content_ban_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_content_ban_fkey FOREIGN KEY (content_ban) REFERENCES public.i18(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.banner DROP CONSTRAINT banner_content_ban_fkey;
       public          postgres    false    2935    206    212            �           2606    18000    banner banner_title_ban_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.banner
    ADD CONSTRAINT banner_title_ban_fkey FOREIGN KEY (title_ban) REFERENCES public.i18(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.banner DROP CONSTRAINT banner_title_ban_fkey;
       public          postgres    false    206    212    2935            �           2606    18005    category category_desc_cat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_desc_cat_fkey FOREIGN KEY (desc_cat) REFERENCES public.i18(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.category DROP CONSTRAINT category_desc_cat_fkey;
       public          postgres    false    2935    212    208            �           2606    18010     category category_parent_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.category(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.category DROP CONSTRAINT category_parent_id_fkey;
       public          postgres    false    208    208    2931            �           2606    18015     category category_title_cat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_title_cat_fkey FOREIGN KEY (title_cat) REFERENCES public.i18(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.category DROP CONSTRAINT category_title_cat_fkey;
       public          postgres    false    208    2935    212            �           2606    18020     discount discount_desc_disc_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_desc_disc_fkey FOREIGN KEY (desc_disc) REFERENCES public.i18(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_desc_disc_fkey;
       public          postgres    false    212    210    2935            �           2606    18025 !   discount discount_title_disc_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_title_disc_fkey FOREIGN KEY (title_disc) REFERENCES public.i18(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_title_disc_fkey;
       public          postgres    false    2935    212    210            �           2606    18030    location location_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.location DROP CONSTRAINT location_user_id_fkey;
       public          postgres    false    215    2953    229            �           2606    18035    message message_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.message DROP CONSTRAINT message_user_id_fkey;
       public          postgres    false    229    2953    217            �           2606    18040 #   order_item order_item_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_order_id_fkey;
       public          postgres    false    2945    219    221            �           2606    18045 %   order_item order_item_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE SET NULL;
 O   ALTER TABLE ONLY public.order_item DROP CONSTRAINT order_item_product_id_fkey;
       public          postgres    false    223    219    2947            �           2606    18050    orders orders_assigned_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_assigned_by_fkey FOREIGN KEY (assigned_by) REFERENCES public.users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_assigned_by_fkey;
       public          postgres    false    221    2953    229            �           2606    18055    orders orders_assigned_to_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_assigned_to_fkey FOREIGN KEY (assigned_to) REFERENCES public.users(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_assigned_to_fkey;
       public          postgres    false    221    2953    229            �           2606    18060    orders orders_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_location_id_fkey FOREIGN KEY (location_id) REFERENCES public.location(id) ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_location_id_fkey;
       public          postgres    false    221    2939    215            �           2606    18065    orders orders_ordered_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_ordered_by_fkey FOREIGN KEY (ordered_by) REFERENCES public.users(id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_ordered_by_fkey;
       public          postgres    false    2953    229    221            �           2606    18070     product product_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.product DROP CONSTRAINT product_category_id_fkey;
       public          postgres    false    223    2931    208            �           2606    18075    product product_desc_pro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_desc_pro_fkey FOREIGN KEY (desc_pro) REFERENCES public.i18(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.product DROP CONSTRAINT product_desc_pro_fkey;
       public          postgres    false    223    2935    212            �           2606    18080     product product_discount_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_discount_id_fkey FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.product DROP CONSTRAINT product_discount_id_fkey;
       public          postgres    false    210    223    2933            �           2606    18085    product product_title_pro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_title_pro_fkey FOREIGN KEY (title_pro) REFERENCES public.i18(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.product DROP CONSTRAINT product_title_pro_fkey;
       public          postgres    false    212    2935    223            �           2606    18090    review review_courier_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_courier_id_fkey FOREIGN KEY (courier_id) REFERENCES public.users(id) ON DELETE SET NULL;
 G   ALTER TABLE ONLY public.review DROP CONSTRAINT review_courier_id_fkey;
       public          postgres    false    229    2953    225            �           2606    18095    review review_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.review DROP CONSTRAINT review_user_id_fkey;
       public          postgres    false    2953    225    229            �           2606    18100 +   translation_tab translation_tab_i18_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.translation_tab
    ADD CONSTRAINT translation_tab_i18_id_fkey FOREIGN KEY (i18_id) REFERENCES public.i18(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.translation_tab DROP CONSTRAINT translation_tab_i18_id_fkey;
       public          postgres    false    227    212    2935            �           2606    18105 0   translation_tab translation_tab_locale_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.translation_tab
    ADD CONSTRAINT translation_tab_locale_name_fkey FOREIGN KEY (locale_name) REFERENCES public.locale(name);
 Z   ALTER TABLE ONLY public.translation_tab DROP CONSTRAINT translation_tab_locale_name_fkey;
       public          postgres    false    214    227    2937            #      x������ � �      %      x������ � �      '      x������ � �      )   ^   x�m�;
�0E���^'?�p6*!�!f�{�U�݁�`xI���ˑ1�OdP����y	.���E���w�ԠC�(�W-p�]�/O%�hR.      +   x   x��б�@D�x��k`������*p� �Q='�\�&��#H�`6��|�������B���Q�T��M�hd�k���p�}y����@����cs�7|�uB���e|ݮ�oإ���t^�      -   M   x��A�0����D�;\�G� V�Pl�p�BBFA�6:�Ѡ�6.����_���_���&C.�(Q�}�z\      /      x���

�r������ 6�      0   �  x��T=o�0��_� �(R�hҥݲ(��ql v�L���2�:�]��T(n�*V�왎���,=�K�$��x�ޝ$X"B)ri��0εЂ�O*�k*��Ƽ����q��[��;��OT��A]�n�ĵu���5�sxK���ZD�5*j��2]8����-���Ӌ}O��')3F(ס���X �,}��C�8�W�?�ɿ*�'���!?.�Ѩ��3<9��Ӄ�fp�g����/&�g�؜�3��&c��l�|��DO���V"�i���!���Αn���C˚V��A#(	�-޻������g��J��$���P���0ʄԒ�5����nΒ�{O`�v��2Y�#s2��VC�>}����좛��m���4o�>�Y����@���Z��Tq��;�\rz�+��V�t���^�D�X�T3�Bt��Y=@�tžؕ��"����d�4�{��/��r      2      x������ � �      4   i   x�-��1C��bF1��e��cqf$�<���=b`~�P@vD�ޓ�k��Swn�<W7�f;%Ԥ)PBC���rݚ�*�N��C��?ӾVӱ0����'l�      6   1  x���=nC!�ٜ�] ȟ`��4��V�Ќ���B�6z��yBL?��p؟ǯ�;02�Pw��J��Ǆ�f @���r]����Q@5�@p�|�O�gX%G�b@`�Ss���Ԁu�������Lp!�F�0*�(�<=7�[�J!�?�W���19[I�!�$��
������t�*-�[p�-���@5���3WJURt)��ȣ�9�ΕS�xGRca/��'�2��E =C5� /7��+�G��}e��#�g�|@ZLU{Q4W��s~v�%�B5�PF{�V��8=B~N��ڴr�{�[!�J���      8   �   x�u�M
�0�����H�'I{	OЍ �t��q*��RaB��1��r��b9��,猣I��L�hȌ�_��c<A�8YPC}H��
ن��#�&tƆB�tL�>���O��$>�|�y�V��b����c��rG�N��SJ�:�N!      :      x������ � �      <     x��VMo�F=��
�C
r�\R״h��ȥ腎T��$ڔ,@9��hSĀQ��K�(��:�����?ꛥd~Xvs� ���f�vv�����a�f����yo6���ɯ�ʯ�33#	ȋD7���a<�t�,�ƣ�|�Yr�ܐ����Rޘk���ܐ�Q|�*���~��3�·"%#�J�A-�ʴ�/��YCa��깠@e�NN��=O�y"(4�����E���ǼC��̠ǚ3�H:N�{�DX�x���*@^(�|�W�{�4�2�N�,���JZ�U��� ] �$=��57��5*�FEW�K��\��\��{��1�9I�\�M�a7q�I�;q�*:/{�n�b�{��M8L'	;�&�x��$O}^!��>���5I�Dhe� F��5��M��A~^�I����&.��,�G.�|�`|�f��a\���#��X�K^/��Î�����xR�O�s���cA~�N��3���x�s����{DA3����n�
���7�G�;9ɺe>�c;��>1��=<���������c�{B��Y�9���/̒�d������}ۜ��a�)�CM
�@HU�6~�璔� 8���݃)�Q�G��_3�TK�zc�Y��1��������$��xn�U��5@��P
�|E;�eճ�<�t�u����4F��1l�9����h��[�Ƭ�6� ����	��2�ܰs(Ά���Z���z���b��S�\�Y�o
4��z�Rp���e�y���KD����w����]�U*� �>SP��}@��'|ۋ�/0�o����
���0�?%��c�Ҿ�*������t ����Di����cۭҚ����yp:�,�)�'�f�a0�-��[�׍�oV\���٠Mx�.�n��x���t�S�w�~	�@>a2�(/�Sؾ�/s�_�&\T_B�`��[�y�{-��|J����#U��P����_�+�֒E�($�4���i��l�\^/)yBmG�ubi�e5M$�}�I*I"_(�>�"��;��%�:v�      >   [  x��ӹJA��)6_l��:&��D#1YeE��#Ч��ag�I��뿺�2���!]l_�׻�s��<xO@N��#�ȑQ��碇�K��E��f?p�B
���?=,#RV�����GAΪi�1�w9wN�O��!��"2�b,�ʡ�,�*��LA1]�6����q��<{��L�4C�BӴDb)j���"��%C���)D�\k!u'��ZI����1���ǣ`V4.��x5�� �07������v��oכ9�G�4{Q/3I�8 \
FӼNQ�n={�����t�'�z��sAb�sQ����NEZ�����_�t�?�X������@��\�4q��!ڵ�<�'v�ϛ     