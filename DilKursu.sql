--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12rc1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: acilanKurslar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."acilanKurslar" (
    id integer NOT NULL,
    kurs_id integer NOT NULL,
    ogretmen_id integer NOT NULL,
    derslik_id integer NOT NULL,
    ders_gunu integer,
    ders_saati integer
);


ALTER TABLE public."acilanKurslar" OWNER TO postgres;

--
-- Name: acilanKurslar_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."acilanKurslar_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."acilanKurslar_id_seq" OWNER TO postgres;

--
-- Name: acilanKurslar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."acilanKurslar_id_seq" OWNED BY public."acilanKurslar".id;


--
-- Name: derslik; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.derslik (
    id integer NOT NULL,
    sube_id integer NOT NULL,
    kapasite integer NOT NULL
);


ALTER TABLE public.derslik OWNER TO postgres;

--
-- Name: derslik_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.derslik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.derslik_id_seq OWNER TO postgres;

--
-- Name: derslik_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.derslik_id_seq OWNED BY public.derslik.id;


--
-- Name: fiyatlistesi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fiyatlistesi (
    id integer NOT NULL,
    pesin_fiyat integer,
    taksitli_fiyat integer
);


ALTER TABLE public.fiyatlistesi OWNER TO postgres;

--
-- Name: fiyatlistesi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fiyatlistesi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fiyatlistesi_id_seq OWNER TO postgres;

--
-- Name: fiyatlistesi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fiyatlistesi_id_seq OWNED BY public.fiyatlistesi.id;


--
-- Name: kurs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kurs (
    id integer NOT NULL,
    kurs_adi character(20),
    kur_seviyesi character(20)
);


ALTER TABLE public.kurs OWNER TO postgres;

--
-- Name: kurs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kurs_id_seq OWNER TO postgres;

--
-- Name: kurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kurs_id_seq OWNED BY public.kurs.id;


--
-- Name: muhasebe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.muhasebe (
    id integer NOT NULL,
    taksit_1 integer NOT NULL,
    taksit_2 integer NOT NULL,
    taksit_3 integer NOT NULL,
    taksit_4 integer NOT NULL,
    taksit_5 integer NOT NULL
);


ALTER TABLE public.muhasebe OWNER TO postgres;

--
-- Name: muhasebe_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.muhasebe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.muhasebe_id_seq OWNER TO postgres;

--
-- Name: muhasebe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.muhasebe_id_seq OWNED BY public.muhasebe.id;


--
-- Name: ogrenci; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ogrenci (
    id integer NOT NULL,
    kurs_id integer NOT NULL,
    adi character(30) NOT NULL,
    soyadi character(30) NOT NULL,
    odeme_tipi character(6)
);


ALTER TABLE public.ogrenci OWNER TO postgres;

--
-- Name: ogrenci_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ogrenci_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ogrenci_id_seq OWNER TO postgres;

--
-- Name: ogrenci_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ogrenci_id_seq OWNED BY public.ogrenci.id;


--
-- Name: ogretmen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ogretmen (
    id integer NOT NULL,
    adi character(20),
    soyadi character(20),
    ev_adresi character(60),
    cep_telefonu character(11),
    ev_telefonu character(11)
);


ALTER TABLE public.ogretmen OWNER TO postgres;

--
-- Name: ogretmen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ogretmen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ogretmen_id_seq OWNER TO postgres;

--
-- Name: ogretmen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ogretmen_id_seq OWNED BY public.ogretmen.id;


--
-- Name: ogretmenbeceri; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ogretmenbeceri (
    ogretmen_id integer NOT NULL,
    kurs_id integer NOT NULL
);


ALTER TABLE public.ogretmenbeceri OWNER TO postgres;

--
-- Name: sube; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sube (
    id integer NOT NULL,
    sube_adi character(30),
    sube_adres character(80),
    sube_ulasim character(2044)
);


ALTER TABLE public.sube OWNER TO postgres;

--
-- Name: sube_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sube_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sube_id_seq OWNER TO postgres;

--
-- Name: sube_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sube_id_seq OWNED BY public.sube.id;


--
-- Name: sube_ogretmen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sube_ogretmen (
    id integer NOT NULL,
    ogretmen_id integer NOT NULL,
    sube_id integer NOT NULL
);


ALTER TABLE public.sube_ogretmen OWNER TO postgres;

--
-- Name: sube_ogretmen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sube_ogretmen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sube_ogretmen_id_seq OWNER TO postgres;

--
-- Name: sube_ogretmen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sube_ogretmen_id_seq OWNED BY public.sube_ogretmen.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    user_name character(15) NOT NULL,
    user_type character(5) NOT NULL,
    pass character(4) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: acilanKurslar id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar" ALTER COLUMN id SET DEFAULT nextval('public."acilanKurslar_id_seq"'::regclass);


--
-- Name: derslik id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.derslik ALTER COLUMN id SET DEFAULT nextval('public.derslik_id_seq'::regclass);


--
-- Name: fiyatlistesi id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiyatlistesi ALTER COLUMN id SET DEFAULT nextval('public.fiyatlistesi_id_seq'::regclass);


--
-- Name: kurs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurs ALTER COLUMN id SET DEFAULT nextval('public.kurs_id_seq'::regclass);


--
-- Name: muhasebe id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.muhasebe ALTER COLUMN id SET DEFAULT nextval('public.muhasebe_id_seq'::regclass);


--
-- Name: ogrenci id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogrenci ALTER COLUMN id SET DEFAULT nextval('public.ogrenci_id_seq'::regclass);


--
-- Name: ogretmen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogretmen ALTER COLUMN id SET DEFAULT nextval('public.ogretmen_id_seq'::regclass);


--
-- Name: sube id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube ALTER COLUMN id SET DEFAULT nextval('public.sube_id_seq'::regclass);


--
-- Name: sube_ogretmen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube_ogretmen ALTER COLUMN id SET DEFAULT nextval('public.sube_ogretmen_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: acilanKurslar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."acilanKurslar" VALUES
	(1, 1, 1, 1, 1, 0),
	(6, 10, 8, 6, 2, 4),
	(9, 1, 4, 6, 1, 5),
	(10, 1, 4, 6, 1, 6),
	(11, 2, 1, 1, 2, 1),
	(12, 2, 1, 1, 2, 2),
	(13, 1, 1, 1, 1, 1),
	(14, 7, 14, 12, 1, 0),
	(15, 7, 14, 12, 1, 1),
	(16, 7, 14, 12, 1, 2),
	(17, 8, 14, 12, 2, 2),
	(18, 8, 14, 12, 2, 3),
	(19, 10, 14, 12, 5, 2),
	(20, 10, 14, 12, 5, 3),
	(21, 7, 6, 20, 1, 0),
	(22, 7, 6, 20, 1, 1),
	(23, 7, 6, 20, 1, 2),
	(24, 9, 5, 20, 2, 3),
	(25, 9, 5, 20, 2, 4),
	(26, 11, 5, 20, 3, 0),
	(27, 11, 5, 20, 3, 1),
	(28, 10, 6, 20, 4, 4),
	(29, 10, 6, 20, 4, 5),
	(31, 1, 4, 6, 2, 1),
	(32, 1, 4, 6, 2, 0),
	(38, 10, 8, 6, 2, 3),
	(39, 11, 8, 6, 3, 3),
	(40, 11, 8, 6, 3, 4),
	(41, 6, 3, 6, 4, 6),
	(42, 6, 3, 6, 4, 7),
	(43, 14, 15, 20, 5, 0),
	(44, 14, 15, 20, 5, 1),
	(45, 1, 12, 12, 3, 4),
	(46, 1, 12, 12, 3, 5);


--
-- Data for Name: derslik; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.derslik VALUES
	(6, 2, 24),
	(7, 2, 24),
	(8, 2, 24),
	(12, 5, 24),
	(13, 5, 24),
	(14, 5, 24),
	(15, 5, 24),
	(20, 3, 24),
	(21, 3, 24),
	(22, 3, 24),
	(1, 6, 24),
	(9, 6, 24),
	(2, 6, 24),
	(11, 6, 24),
	(10, 6, 24);


--
-- Data for Name: fiyatlistesi; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.fiyatlistesi VALUES
	(1, 3000, 3500),
	(2, 3000, 3500),
	(3, 3000, 3500),
	(4, 3000, 3500),
	(5, 3500, 4000),
	(6, 3500, 4000),
	(7, 3000, 3500),
	(8, 3000, 3500),
	(9, 3000, 3500),
	(10, 3000, 3500),
	(11, 3500, 4000),
	(12, 3500, 4000),
	(14, 3000, 3500),
	(15, 3000, 3500),
	(16, 3000, 3500),
	(17, 3000, 3500),
	(18, 3000, 3500),
	(19, 3000, 3500),
	(21, 4000, 4500),
	(20, 4000, 4500),
	(22, 4000, 4500),
	(23, 4000, 4500),
	(24, 4000, 4500),
	(25, 4000, 4500),
	(26, 4000, 4500);


--
-- Data for Name: kurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.kurs VALUES
	(1, 'English             ', 'Beginner            '),
	(2, 'English             ', 'Elementary          '),
	(3, 'English             ', 'Pre-Intermediate    '),
	(4, 'English             ', 'Intermediate        '),
	(5, 'English             ', 'Upper-Intermediate  '),
	(6, 'English             ', 'Advanced            '),
	(7, 'French              ', 'Beginner            '),
	(8, 'French              ', 'Elementary          '),
	(9, 'French              ', 'Intermediate        '),
	(10, 'French              ', 'Advanced            '),
	(11, 'French              ', 'Pre-Intermediate    '),
	(12, 'French              ', 'Upper-Intermediate  '),
	(14, 'German              ', 'Beginner            '),
	(15, 'German              ', 'Elementary          '),
	(16, 'German              ', 'Pre-Intermediate    '),
	(17, 'German              ', 'Intermediate        '),
	(18, 'German              ', 'Upper-Intermediate  '),
	(19, 'German              ', 'Advanced            '),
	(20, 'Arabic              ', 'Beginner            '),
	(21, 'Arabic              ', 'Elementary          '),
	(22, 'Arabic              ', 'Pre-Intermediate    '),
	(23, 'Arabic              ', 'Intermediate        '),
	(24, 'Greek               ', 'Beginner            '),
	(25, 'Greek               ', 'Elementary          '),
	(26, 'Greek               ', 'Pre-Intermediate    ');


--
-- Data for Name: muhasebe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.muhasebe VALUES
	(1, 800, 800, 800, 800, 800),
	(4, 0, 0, 0, 0, 3000),
	(5, 600, 600, 600, 0, 0),
	(2, 800, 800, 800, 800, 0),
	(6, 700, 700, 0, 0, 0),
	(3, 700, 700, 700, 0, 0),
	(7, 800, 800, 0, 0, 0),
	(8, 700, 700, 0, 0, 0);


--
-- Data for Name: ogrenci; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ogrenci VALUES
	(6, 1, 'Ahmet                         ', 'Kaygısız                      ', 'Taksit'),
	(3, 1, 'Cemil                         ', 'İpek                          ', 'Taksit'),
	(2, 6, 'Ali                           ', 'Kapısız                       ', 'Taksit'),
	(1, 6, 'Ali                   ', 'Veli                       ', 'Pesin '),
	(4, 1, 'Gürsel                        ', 'Ak                            ', 'Pesin '),
	(5, 10, 'Burak                         ', 'Baydili                       ', 'Pesin '),
	(7, 6, 'Gülperi                       ', 'Limon                         ', 'Taksit'),
	(8, 10, 'Didem                         ', 'Somuk                         ', 'Taksit');


--
-- Data for Name: ogretmen; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ogretmen VALUES
	(12, 'Vildan              ', 'Ateş                ', 'Kadıköy                                                     ', '05341223654', '02165982354'),
	(1, 'Mehmet              ', 'Karataş             ', 'Kadıköy, Istanbul                                           ', '05342666001', '02125457574'),
	(2, 'İbrahim             ', 'Akkaş               ', 'Ataşehir, Istanbul                                          ', '05342673002', '02125369562'),
	(3, 'Çiğdem              ', 'Temelsiz            ', 'Fatih, Istanbul                                             ', '05342673003', '02165365235'),
	(4, 'Meryem              ', 'Yıldırım            ', 'Üsküdar, İstanbul                                           ', '05967335009', '02162135222'),
	(10, 'Hasan               ', 'Bilici              ', 'Bostancı                                                    ', '05376484239', '02125761498'),
	(11, 'İbrahim             ', 'Şapoğlu             ', 'Ataşehir                                                    ', '05341223652', '02165982354'),
	(13, 'Semra               ', 'Dilsiz              ', 'Kozyatağı                                                   ', '05341223654', '02165982354'),
	(8, 'Yusuf               ', 'Özdemir             ', 'Fatih                                                       ', '05376484239', '02125761498'),
	(6, 'Ahmet               ', 'Karaçalık           ', 'Beyoğlu, Istanbul                                           ', '05342673002', '02123344547'),
	(14, 'Günay               ', 'Sadıkoğlu           ', 'Eyüp                                                        ', '05432659852', '02165898978'),
	(5, 'Umut                ', 'Yıldız              ', 'Beşiktaş, İstanbul                                          ', '05342099603', '02165651231'),
	(15, 'Remzi               ', 'Sözcü               ', 'Kadıköy                                                     ', '05365621235', '02126595462');


--
-- Data for Name: ogretmenbeceri; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ogretmenbeceri VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 6),
	(3, 3),
	(3, 4),
	(3, 5),
	(3, 6),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 4),
	(4, 5),
	(4, 6),
	(5, 7),
	(5, 8),
	(5, 9),
	(5, 10),
	(5, 11),
	(5, 12),
	(6, 9),
	(6, 10),
	(6, 11),
	(6, 12),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 5),
	(2, 4),
	(3, 1),
	(3, 2),
	(6, 8),
	(6, 7),
	(11, 1),
	(11, 2),
	(11, 3),
	(8, 7),
	(8, 8),
	(8, 9),
	(8, 10),
	(8, 11),
	(8, 12),
	(10, 6),
	(10, 5),
	(10, 4),
	(14, 7),
	(14, 8),
	(14, 10),
	(15, 14),
	(15, 15),
	(15, 16),
	(15, 17),
	(15, 18),
	(15, 19),
	(12, 1),
	(12, 2),
	(12, 3),
	(12, 4),
	(12, 5),
	(12, 6);


--
-- Data for Name: sube; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sube VALUES
	(2, 'Fikirtepe                     ', 'Mandira cad                                                                     ', '19S                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         '),
	(5, 'Üsküdar                       ', 'Selimiye                                                                        ', '11T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         '),
	(3, 'Kadıköy                       ', 'Caferağa Mah.                                                                   ', '19S,14ÇK,15BK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               '),
	(6, 'Ataşehir                      ', 'Palladium , Barbaros Mah.                                                       ', '11T,19S,14KS,14ÇK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           '),
	(7, 'Fatih                         ', 'Fevzipaşa Cad.                                                                  ', '84, 28T                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     '),
	(8, 'Eminönü                       ', 'Yenicami yanı                                                                   ', 'Vapur                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ');


--
-- Data for Name: sube_ogretmen; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sube_ogretmen VALUES
	(6, 6, 3),
	(3, 3, 2),
	(4, 4, 2),
	(8, 8, 2),
	(10, 14, 5),
	(11, 5, 3),
	(12, 15, 3),
	(13, 12, 5),
	(1, 1, 6),
	(5, 13, 6),
	(2, 2, 6);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES
	(1, 'admin          ', 'admin', '0   '),
	(2, 'Fikirtepe      ', 'user ', '0   '),
	(3, 'Kadikoy        ', 'user ', '0   '),
	(5, 'Üsküdar        ', 'user ', '0   '),
	(6, 'Ataşehir       ', 'user ', '0   '),
	(7, 'Fatih          ', 'user ', '0   '),
	(8, 'Eminönü        ', 'user ', '0   ');


--
-- Name: acilanKurslar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."acilanKurslar_id_seq"', 46, true);


--
-- Name: derslik_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.derslik_id_seq', 22, true);


--
-- Name: fiyatlistesi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fiyatlistesi_id_seq', 26, true);


--
-- Name: kurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kurs_id_seq', 26, true);


--
-- Name: muhasebe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.muhasebe_id_seq', 8, true);


--
-- Name: ogrenci_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ogrenci_id_seq', 8, true);


--
-- Name: ogretmen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ogretmen_id_seq', 15, true);


--
-- Name: sube_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sube_id_seq', 8, true);


--
-- Name: sube_ogretmen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sube_ogretmen_id_seq', 13, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: acilanKurslar acilanKurslar_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar"
    ADD CONSTRAINT "acilanKurslar_id_key" UNIQUE (id);


--
-- Name: acilanKurslar acilanKurslar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar"
    ADD CONSTRAINT "acilanKurslar_pkey" PRIMARY KEY (id, kurs_id, ogretmen_id, derslik_id);


--
-- Name: derslik derslik_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.derslik
    ADD CONSTRAINT derslik_pkey PRIMARY KEY (id);


--
-- Name: fiyatlistesi fiyatlistesi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiyatlistesi
    ADD CONSTRAINT fiyatlistesi_pkey PRIMARY KEY (id);


--
-- Name: kurs kurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kurs
    ADD CONSTRAINT kurs_pkey PRIMARY KEY (id);


--
-- Name: muhasebe muhasebe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.muhasebe
    ADD CONSTRAINT muhasebe_pkey PRIMARY KEY (id);


--
-- Name: ogrenci ogrenci_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT ogrenci_pkey PRIMARY KEY (id);


--
-- Name: ogretmen ogretmen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogretmen
    ADD CONSTRAINT ogretmen_pkey PRIMARY KEY (id);


--
-- Name: ogretmenbeceri ogretmenbeceri_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogretmenbeceri
    ADD CONSTRAINT ogretmenbeceri_pkey PRIMARY KEY (ogretmen_id, kurs_id);


--
-- Name: sube_ogretmen sube_ogretmen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube_ogretmen
    ADD CONSTRAINT sube_ogretmen_pkey PRIMARY KEY (id);


--
-- Name: sube sube_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube
    ADD CONSTRAINT sube_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: acilanKurslar acilanKurslar_derslik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar"
    ADD CONSTRAINT "acilanKurslar_derslik_id_fkey" FOREIGN KEY (derslik_id) REFERENCES public.derslik(id);


--
-- Name: acilanKurslar acilanKurslar_kurs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar"
    ADD CONSTRAINT "acilanKurslar_kurs_id_fkey" FOREIGN KEY (kurs_id) REFERENCES public.kurs(id);


--
-- Name: acilanKurslar acilanKurslar_ogretmen_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."acilanKurslar"
    ADD CONSTRAINT "acilanKurslar_ogretmen_id_fkey" FOREIGN KEY (ogretmen_id) REFERENCES public.ogretmen(id);


--
-- Name: fiyatlistesi fiyatlistesi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fiyatlistesi
    ADD CONSTRAINT fiyatlistesi_id_fkey FOREIGN KEY (id) REFERENCES public.kurs(id);


--
-- Name: ogrenci lnk_kurs_ogrenci; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT lnk_kurs_ogrenci FOREIGN KEY (kurs_id) REFERENCES public.kurs(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ogrenci lnk_muhasebe_ogrenci; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogrenci
    ADD CONSTRAINT lnk_muhasebe_ogrenci FOREIGN KEY (id) REFERENCES public.muhasebe(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: sube_ogretmen lnk_ogretmen_sube_ogretmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube_ogretmen
    ADD CONSTRAINT lnk_ogretmen_sube_ogretmen FOREIGN KEY (ogretmen_id) REFERENCES public.ogretmen(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: derslik lnk_sube_derslik; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.derslik
    ADD CONSTRAINT lnk_sube_derslik FOREIGN KEY (sube_id) REFERENCES public.sube(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: sube_ogretmen lnk_sube_sube_ogretmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sube_ogretmen
    ADD CONSTRAINT lnk_sube_sube_ogretmen FOREIGN KEY (sube_id) REFERENCES public.sube(id) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: ogretmenbeceri ogretmenbeceri_kurs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogretmenbeceri
    ADD CONSTRAINT ogretmenbeceri_kurs_id_fkey FOREIGN KEY (kurs_id) REFERENCES public.kurs(id);


--
-- Name: ogretmenbeceri ogretmenbeceri_ogretmen_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ogretmenbeceri
    ADD CONSTRAINT ogretmenbeceri_ogretmen_id_fkey FOREIGN KEY (ogretmen_id) REFERENCES public.ogretmen(id);


--
-- PostgreSQL database dump complete
--

