--
-- PostgreSQL database dump
--

-- Dumped from database version 11.22
-- Dumped by pg_dump version 11.22

-- Started on 2023-12-04 15:58:43

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

SET default_with_oids = false;

--
-- TOC entry 209 (class 1259 OID 17599)
-- Name: admins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admins (
    id_admin integer NOT NULL,
    nombre character varying(50) NOT NULL,
    contrasena character varying(100) NOT NULL
);


ALTER TABLE public.admins OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17597)
-- Name: admins_id_admin_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admins_id_admin_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admins_id_admin_seq OWNER TO postgres;

--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 208
-- Name: admins_id_admin_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admins_id_admin_seq OWNED BY public.admins.id_admin;


--
-- TOC entry 203 (class 1259 OID 17571)
-- Name: equipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipo (
    id_miembro integer NOT NULL,
    nombre character varying(50) NOT NULL,
    cargo character varying(50) NOT NULL,
    correo character varying(50) NOT NULL,
    foto character varying(100) NOT NULL
);


ALTER TABLE public.equipo OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17569)
-- Name: equipo_id_miembro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipo_id_miembro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipo_id_miembro_seq OWNER TO postgres;

--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 202
-- Name: equipo_id_miembro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipo_id_miembro_seq OWNED BY public.equipo.id_miembro;


--
-- TOC entry 197 (class 1259 OID 17541)
-- Name: estaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estaciones (
    id_estacion integer NOT NULL,
    nombre character varying(100) NOT NULL,
    parroquia character varying(100) NOT NULL,
    canton character varying(100) NOT NULL,
    latitud numeric(10,2) NOT NULL,
    longitud numeric(10,2) NOT NULL,
    altura numeric(10,2) NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.estaciones OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17539)
-- Name: estaciones_id_estacion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estaciones_id_estacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estaciones_id_estacion_seq OWNER TO postgres;

--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 196
-- Name: estaciones_id_estacion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estaciones_id_estacion_seq OWNED BY public.estaciones.id_estacion;


--
-- TOC entry 201 (class 1259 OID 17560)
-- Name: mantenimiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mantenimiento (
    id_mantenimiento integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(150) NOT NULL,
    detalle text NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.mantenimiento OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17558)
-- Name: mantenimiento_id_mantenimiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mantenimiento_id_mantenimiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_id_mantenimiento_seq OWNER TO postgres;

--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 200
-- Name: mantenimiento_id_mantenimiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mantenimiento_id_mantenimiento_seq OWNED BY public.mantenimiento.id_mantenimiento;


--
-- TOC entry 205 (class 1259 OID 17579)
-- Name: mapas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mapas (
    id_mapa integer NOT NULL,
    anio integer NOT NULL,
    mes character varying(20) NOT NULL,
    num_mes integer NOT NULL,
    descripcion character varying(150),
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.mapas OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17577)
-- Name: mapas_id_mapa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mapas_id_mapa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mapas_id_mapa_seq OWNER TO postgres;

--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 204
-- Name: mapas_id_mapa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mapas_id_mapa_seq OWNED BY public.mapas.id_mapa;


--
-- TOC entry 207 (class 1259 OID 17587)
-- Name: noticias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.noticias (
    id_noticia integer NOT NULL,
    titulo character varying(100) NOT NULL,
    contenido text NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.noticias OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17585)
-- Name: noticias_id_noticia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.noticias_id_noticia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.noticias_id_noticia_seq OWNER TO postgres;

--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 206
-- Name: noticias_id_noticia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.noticias_id_noticia_seq OWNED BY public.noticias.id_noticia;


--
-- TOC entry 199 (class 1259 OID 17549)
-- Name: sensores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sensores (
    id_sensor integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text NOT NULL,
    imagen character varying(100) NOT NULL
);


ALTER TABLE public.sensores OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17547)
-- Name: sensores_id_sensor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sensores_id_sensor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sensores_id_sensor_seq OWNER TO postgres;

--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 198
-- Name: sensores_id_sensor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sensores_id_sensor_seq OWNED BY public.sensores.id_sensor;


--
-- TOC entry 2731 (class 2604 OID 17602)
-- Name: admins id_admin; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admins ALTER COLUMN id_admin SET DEFAULT nextval('public.admins_id_admin_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 17574)
-- Name: equipo id_miembro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipo ALTER COLUMN id_miembro SET DEFAULT nextval('public.equipo_id_miembro_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 17544)
-- Name: estaciones id_estacion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estaciones ALTER COLUMN id_estacion SET DEFAULT nextval('public.estaciones_id_estacion_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 17563)
-- Name: mantenimiento id_mantenimiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mantenimiento ALTER COLUMN id_mantenimiento SET DEFAULT nextval('public.mantenimiento_id_mantenimiento_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 17582)
-- Name: mapas id_mapa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mapas ALTER COLUMN id_mapa SET DEFAULT nextval('public.mapas_id_mapa_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 17590)
-- Name: noticias id_noticia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.noticias ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticias_id_noticia_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 17552)
-- Name: sensores id_sensor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sensores ALTER COLUMN id_sensor SET DEFAULT nextval('public.sensores_id_sensor_seq'::regclass);


--
-- TOC entry 2880 (class 0 OID 17599)
-- Dependencies: 209
-- Data for Name: admins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admins (id_admin, nombre, contrasena) FROM stdin;
1	Estalin	C@mpeon123
\.


--
-- TOC entry 2874 (class 0 OID 17571)
-- Dependencies: 203
-- Data for Name: equipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipo (id_miembro, nombre, cargo, correo, foto) FROM stdin;
1	Arquimides Haro Velastegui	Director del Proyecto	aharo@espoch.edu.ec	/imageStorage/1701654918482_equipo_velastegui.jpg
4	Luis Mullo Chicaiza	Investigador	lantonio.mullo@espoch.edu.ec	/imageStorage/1701655307860_equipo_mullo.jpg
5	Mariela Moreno Palacios	Técnico de investigación	mariela.moreno@espoch.edu.ec	/imageStorage/1701655349679_equipo_moreno.jpg
6	Romel Palaguachi Calle	Técnico de investigación	romel.palaguachi@espoch.edu.ec	/imageStorage/1701655822932_equipo_palaguachi.jpg
7	Carina Yaucan Villa	Técnico de investigación	carina.yaucan@espoch.edu.ec	/imageStorage/1701655994348_equipo_yaucan.png
8	José Mejía López	Investigador externo	jmejia@puc.cl	/imageStorage/1701656077013_equipo_m.jpg
9	Lorena Peñaherrera Pita	Investigador externo	lore_mabpp@hotmail.com	/imageStorage/1701656173797_equipo_f.jpg
10	Víctor Loya Quinga	Investigador externo	vhlqsa@gmail.com	/imageStorage/1701656230709_equipo_m.jpg
11	Karina Montufar	Investigador externo	kmontufar@inamhi.gob.ec	/imageStorage/1701656282308_equipo_f.jpg
3	Gabriela Tubon Usca	Docente Investigador	gabriela.tubon@espoch.edu.ec	/imageStorage/1701663020571_equipo_tubon.jpg
2	Amalia Escudero Villa	Director Subrogante	amalia.escudero@espoch.edu.ec	/imageStorage/1701654992907_equipo_escudero.jpg
\.


--
-- TOC entry 2868 (class 0 OID 17541)
-- Dependencies: 197
-- Data for Name: estaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estaciones (id_estacion, nombre, parroquia, canton, latitud, longitud, altura, imagen) FROM stdin;
1	Estación Meteorológica ESPOCH	Lizarzaburu	Riobamba	9816965.00	758398.00	2754.00	/imageStorage/1701641410334_estacion-espoch.jpg
2	Estación Meteorológica Chocaví	San Isidro de Patulú	Guano	9830457.00	756526.00	3486.00	/imageStorage/1701641583020_estacion-chocavi.jpg
3	Estación Meteorológica Tunshi	Licto	Riobamba	9806678.00	764087.00	2840.00	/imageStorage/1701642115511_estacion-tunshi.jpg
\.


--
-- TOC entry 2872 (class 0 OID 17560)
-- Dependencies: 201
-- Data for Name: mantenimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mantenimiento (id_mantenimiento, nombre, descripcion, detalle, imagen) FROM stdin;
1	Anenómetro	Limpieza del anenómetro de las estaciones meteorológicas	Se recomienda hacer una inspección visual al menos una vez al mes, para verificar el estado del aparato y que tan libre gira sobre su propio eje y el giro de la hélice. Remplace los engranajes cuando empiece a escuchar sonidos o no giren libremente.	/imageStorage/1701652690550_anenometro_mant.png
2	Pluviómetro	Limpieza de los pluviómetros de las estaciones meteorológicas	Tanto el pluviómetro manual como el automático TE525MM o TB-4 no requieren mayor mantenimiento, solo limpieza al menos una vez por semana para asegurarse que no haya suciedad, ni insectos que afecten el mecanismo para medir la cantidad de agua.	/imageStorage/1701652736211_pluviometro_mant.png
3	Temperatura y Humedad	Limpieza del sensor de temperatura ambiente y humedad	Al menos una vez por mes se debe revisar la cubierta protectora de radiación para evitar que se obstruya o se ensucie, es muy común que las avispas tomen está cubierta para construir su nido. Respecto a los termómetros de máxima y mínima tienen garantía de por vida siempre y cuando no se quiebren.	/imageStorage/1701652775927_temp_hum_mant.png
4	Piranómetro	Limpieza de los sensores de radiación solar	Estos son muy delicados, y al menos una vez al mes se deben de limpiar con un paño suave o aire comprimido. Revisar también que esté correctamente nivelado y que el orificio para que el agua escurra no esté obstruido.	/imageStorage/1701652814112_piranometro_mant.png
5	Fumigar el terreno	Limpieza de las áreas verdes de las estaciones meteorológicas	Se requiere de una fumigación cada 15 dias y corte del pasto.	/imageStorage/1701652938920_fumigar_mant.png
\.


--
-- TOC entry 2876 (class 0 OID 17579)
-- Dependencies: 205
-- Data for Name: mapas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mapas (id_mapa, anio, mes, num_mes, descripcion, imagen) FROM stdin;
2	2023	Febrero	2		/imageStorage/1701658834176_VIENTO FEBRERO.jpg
3	2023	Marzo	3		/imageStorage/1701658979617_VIENTO MARZO.jpg
4	2023	Abril	4		/imageStorage/1701659054784_VIENTO ABRIL.jpg
5	2023	Mayo	5		/imageStorage/1701659071137_VIENTO MAYO.jpg
6	2023	Junio	6		/imageStorage/1701659100684_VIENTO JUNIO.jpg
7	2023	Julio	7		/imageStorage/1701659117846_VIENTO JULIO.jpg
1	2023	Enero	1		/imageStorage/1701659243987_VIENTO ENERO.jpg
\.


--
-- TOC entry 2878 (class 0 OID 17587)
-- Dependencies: 207
-- Data for Name: noticias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.noticias (id_noticia, titulo, contenido, fecha, imagen) FROM stdin;
2	Noticia de prueba 2	<p>Este es el <strong>contenido</strong> de la <em>noticia de prueba</em> 2.</p>	2023-12-03 22:11:44.666531	/imageStorage/1701659504635_blog-2.jpg
1	Noticia de prueba	<p>Este es el <strong>contenido</strong> editado de la noticia de prueba.</p>	2023-12-03 22:10:37.75318	/imageStorage/1701659437707_blog-1.jpg
3	Noticia de prueba 3	<p>Este es el contenido de la Noticia 3.</p>	2023-12-03 22:14:56.56081	/imageStorage/1701659696514_blog-3.jpg
\.


--
-- TOC entry 2870 (class 0 OID 17549)
-- Dependencies: 199
-- Data for Name: sensores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sensores (id_sensor, nombre, descripcion, imagen) FROM stdin;
1	Pluviómetro	Se define como el producto líquido o sólido de la condensación del vapor de agua que cae de las nubes o el aire y se deposita en el suelo. La unidad de la precipitación es la profundidad lineal normalmente en milímetros para la precipitación liquida. El rango operacional de las dimensiones para las observaciones de cantidad total de agua líquida es de 0 a >400 mm.\r\n\r\nMuestreo automático: Se registran los totales de precipitación diarios y cada 30 minutos cortando a las 7:00 am, acumulando toda la lluvia que cae durante el día. El sensor se debe mantener a 1.5 metros sobre el suelo.	/imageStorage/1701652211500_sensor-pluviometro.jpg
2	Piranómetro	La radiación difusa al llegar al suelo después de su primer paso a través de la atmósfera en conjunto con la radiación directa es en parte reflejada por el suelo hacia el espacio, la cual, posteriormente, es parcialmente reflejada nuevamente hacia el suelo por la atmósfera. Este proceso continúa indefinidamente. Su unidad es el W/m² (vatio por metro cuadrado).\r\n\r\nEl rango operacional para la radiación es de 0 a 1373 W/m², este número es lo que se llama constante solar que se define como la máxima energía del sol que llega a la atmosfera superior de la tierra. Muestreo automático: Se registran el promedio, máxima, mínima de la radiación.	/imageStorage/1701652299350_sensor-piranometro.jpg
3	Piranómetro	La radiación global es la suma de la radiación directa y la radiación difusa, para OET esta es el elemento a medir. Su unidad es el W/m² (vatio por metro cuadrado). El rango operacional, para la radiación es de 0 a 1373 W/m², este número es lo que se llama constante solar que se define como la máxima energía del sol que llega a la atmosfera superior de la tierra. La exactitud requerida (margen del error) para la radiación global debe ser de ±2% y de ±5% para la radiación neta. Este requisito está de acuerdo con las regulaciones de OMM.	/imageStorage/1701652342079_sensor-piranometro2.jpg
4	Suelo	Temperatura del suelo: -20 a +60°C, resolución de 0.1°C.\r\n\r\nProfundidades de medición: +5 cm, ±0 cm, -5 cm, -10 cm, -20 cm, -50 cm y -100 cm (±0 corresponde al nivel del suelo).	/imageStorage/1701652428621_sensor-suelo.jpg
5	Temperatura y Humedad	La temperatura es la condición que determina la dirección del flujo neto de calor entre dos cuerpos. Esta describe un estado y es en ese modo una variable un poco inusual, dado que no puede ser directamente derivada de variables tangibles tales como masa o longitud. En meteorología se utiliza casi siempre la temperatura expresada en grados Celsius. El rango operacional, para las observaciones de la temperatura (del aire) a 150 centímetros sobre el suelo es +5 a +40°C. Esto se aplica a los valores momentáneos, promedios y a los extremos. El estándar de OMM es realmente -30 a +45°C.\r\n\r\nLa humedad es la razón expresada en porcentaje, entre la presión de vapor observada y la tensión del vapor saturante con respecto al agua a la misma temperatura y presión. La unidad estándar válida para el Sistema Internacional es el porcentaje %. El rango establecido por la OMM, para las observaciones de humedad relativa es de 5 - 100%.	/imageStorage/1701652487114_sensor-temp_hum.jpg
6	Viento	Se considera el viento como una cantidad vectorial de dos dimensiones establecidas por los números que representan su velocidad y dirección en un tiempo dado. La unidad estándar para la dirección del viento se da en grados dextrórsum (es decir en sentido de las agujas del reloj) a partir del norte o en la escala 0-36 o 0-360 donde 36 o 360 es el viento norte y 9 o 90 es el viento del este. Las unidades reconocidas por el Sistema Internacional son: para la velocidad del viento (m/s), para la dirección del viento (grados), y para la ráfaga del viento (m/s).\r\n\r\nEl rango operacional para las observaciones de velocidad del viento y dirección dadas por el OMM son: la velocidad promedio del viento (0 - 70 m/s); las ráfagas del viento (5 -75 m/s); la dirección del viento (>0 y 360 grados).	/imageStorage/1701652584148_sensor-viento.jpg
\.


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 208
-- Name: admins_id_admin_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admins_id_admin_seq', 1, true);


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 202
-- Name: equipo_id_miembro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipo_id_miembro_seq', 11, true);


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 196
-- Name: estaciones_id_estacion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estaciones_id_estacion_seq', 3, true);


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 200
-- Name: mantenimiento_id_mantenimiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mantenimiento_id_mantenimiento_seq', 5, true);


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 204
-- Name: mapas_id_mapa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mapas_id_mapa_seq', 7, true);


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 206
-- Name: noticias_id_noticia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.noticias_id_noticia_seq', 3, true);


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 198
-- Name: sensores_id_sensor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sensores_id_sensor_seq', 6, true);


-- Completed on 2023-12-04 15:58:44

--
-- PostgreSQL database dump complete
--

