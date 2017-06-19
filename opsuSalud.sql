--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

-- Started on 2017-06-19 09:52:24 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 183 (class 1259 OID 16953)
-- Name: afiliado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE afiliado (
    id integer NOT NULL,
    idtitular integer,
    idpersona integer,
    idparentesco integer
);


ALTER TABLE afiliado OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16956)
-- Name: afiliado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE afiliado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE afiliado_id_seq OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16958)
-- Name: auditoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auditoria (
    id integer NOT NULL,
    fecha_accion date,
    usuario_id integer NOT NULL,
    tabla character varying(255) DEFAULT NULL::character varying NOT NULL,
    accion character varying(255) DEFAULT NULL::character varying NOT NULL,
    campo character varying(255) DEFAULT NULL::character varying NOT NULL,
    descripcion character varying(255) DEFAULT NULL::character varying NOT NULL
);


ALTER TABLE auditoria OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16968)
-- Name: auditoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auditoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auditoria_id_seq OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17202)
-- Name: casos_asignado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE casos_asignado (
    id integer NOT NULL,
    idsolicitud integer,
    idanalista integer,
    completado boolean NOT NULL
);


ALTER TABLE casos_asignado OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17193)
-- Name: casos_asignado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE casos_asignado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE casos_asignado_id_seq OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17197)
-- Name: centro_medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE centro_medico (
    id integer NOT NULL,
    descripcion character varying(255) NOT NULL,
    telefono character varying(11) DEFAULT NULL::character varying,
    direccion text
);


ALTER TABLE centro_medico OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 17191)
-- Name: centro_medico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE centro_medico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE centro_medico_id_seq OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16970)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estado (
    id integer NOT NULL,
    descripcion character varying(100) DEFAULT NULL::character varying,
    seleccion integer
);


ALTER TABLE estado OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16974)
-- Name: estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE estado_id_seq OWNER TO postgres;

--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 188
-- Name: estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE estado_id_seq OWNED BY estado.id;


--
-- TOC entry 189 (class 1259 OID 16976)
-- Name: estatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estatus (
    id integer NOT NULL,
    estatus character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE estatus OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16980)
-- Name: estatus_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE estatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE estatus_id_seq OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16982)
-- Name: fos_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fos_user (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    username_canonical character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_canonical character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    salt character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    last_login timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    locked boolean NOT NULL,
    expired boolean NOT NULL,
    expires_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    confirmation_token character varying(255) DEFAULT NULL::character varying,
    password_requested_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    roles text NOT NULL,
    credentials_expired boolean NOT NULL,
    credentials_expire_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);


ALTER TABLE fos_user OWNER TO postgres;

--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 191
-- Name: COLUMN fos_user.roles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fos_user.roles IS '(DC2Type:array)';


--
-- TOC entry 192 (class 1259 OID 16993)
-- Name: fos_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fos_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fos_user_id_seq OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16995)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE municipio (
    id integer NOT NULL,
    descripcion character varying(100) DEFAULT NULL::character varying,
    estado_id integer
);


ALTER TABLE municipio OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16999)
-- Name: municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE municipio_id_seq OWNER TO postgres;

--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 194
-- Name: municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_id_seq OWNED BY municipio.id;


--
-- TOC entry 195 (class 1259 OID 17001)
-- Name: nacionalidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nacionalidad (
    id integer NOT NULL,
    nacionalidad character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE nacionalidad OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17005)
-- Name: nacionalidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE nacionalidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nacionalidad_id_seq OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17007)
-- Name: parentesco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parentesco (
    id integer NOT NULL,
    parentesco character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE parentesco OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17011)
-- Name: parentesco_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parentesco_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parentesco_id_seq OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17013)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parroquia (
    id integer NOT NULL,
    descripcion character varying(100) DEFAULT NULL::character varying,
    municipio_id integer
);


ALTER TABLE parroquia OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17017)
-- Name: parroquia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE parroquia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE parroquia_id_seq OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17019)
-- Name: patologia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE patologia (
    id integer NOT NULL,
    patologia character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE patologia OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 17023)
-- Name: patologia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE patologia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patologia_id_seq OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17025)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona (
    id integer NOT NULL,
    primer_apellido character varying(50) DEFAULT NULL::character varying,
    segundo_apellido character varying(50) DEFAULT NULL::character varying,
    primer_nombre character varying(50) DEFAULT NULL::character varying,
    segundo_nombre character varying(50) DEFAULT NULL::character varying,
    cedula integer,
    idnacionalidad integer,
    fecha_nacimiento date,
    direccion text,
    genero character varying(1) DEFAULT NULL::character varying NOT NULL,
    telefono_1 character varying(11),
    telefono_2 character varying(11),
    cedula_ruta character varying(255) DEFAULT NULL::character varying NOT NULL,
    carnet_ruta character varying(255) DEFAULT NULL::character varying NOT NULL,
    idparroquia integer,
    idusuario integer
);


ALTER TABLE persona OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 17038)
-- Name: persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persona_id_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17209)
-- Name: reembolso_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reembolso_solicitud (
    id integer NOT NULL,
    idregistrosolicitud integer,
    idcentromedico integer,
    monto_solicitado numeric(10,2) NOT NULL,
    presupuesto_recibo_ruta text,
    monto_aprobado numeric(10,2) NOT NULL
);


ALTER TABLE reembolso_solicitud OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17195)
-- Name: reembolso_solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE reembolso_solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reembolso_solicitud_id_seq OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 17040)
-- Name: registro_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE registro_solicitud (
    id integer NOT NULL,
    idsolicitud integer,
    idpaciente integer,
    idpatologia integer,
    tratamiento text,
    observacion text,
    informe_medico_ruta text,
    fecha_aprobado date,
    idestatus integer,
    completado boolean
);


ALTER TABLE registro_solicitud OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17048)
-- Name: registro_solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE registro_solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registro_solicitud_id_seq OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 17050)
-- Name: solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE solicitud (
    id integer NOT NULL,
    idtitular integer,
    fecha_solicitud date,
    observacion text,
    completado boolean,
    idtiposolicitud integer
);


ALTER TABLE solicitud OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17056)
-- Name: solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE solicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE solicitud_id_seq OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 17058)
-- Name: tiposolicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tiposolicitud (
    id integer NOT NULL,
    tiposolicitud character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE tiposolicitud OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17062)
-- Name: tiposolicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tiposolicitud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tiposolicitud_id_seq OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17064)
-- Name: titular; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE titular (
    id integer NOT NULL,
    idpersona integer
);


ALTER TABLE titular OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17067)
-- Name: titular_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE titular_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE titular_id_seq OWNER TO postgres;

--
-- TOC entry 2372 (class 0 OID 16953)
-- Dependencies: 183
-- Data for Name: afiliado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY afiliado (id, idtitular, idpersona, idparentesco) FROM stdin;
\.


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 184
-- Name: afiliado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('afiliado_id_seq', 1, false);


--
-- TOC entry 2374 (class 0 OID 16958)
-- Dependencies: 185
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auditoria (id, fecha_accion, usuario_id, tabla, accion, campo, descripcion) FROM stdin;
\.


--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 186
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auditoria_id_seq', 1, false);


--
-- TOC entry 2406 (class 0 OID 17202)
-- Dependencies: 217
-- Data for Name: casos_asignado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY casos_asignado (id, idsolicitud, idanalista, completado) FROM stdin;
\.


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 214
-- Name: casos_asignado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('casos_asignado_id_seq', 1, false);


--
-- TOC entry 2405 (class 0 OID 17197)
-- Dependencies: 216
-- Data for Name: centro_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY centro_medico (id, descripcion, telefono, direccion) FROM stdin;
1	Centro Clínico de Especialidades  Santa  Sofía	2129868243	Santa Sofía    
2	Centro Clínico Materno Leopoldo  Aguerrevere	2129790480	Prados del Este
3	Centro Clínico Profesional Caracas	2125744479	San Bernardino 
4	Centro Clínico Profesional Caracas	2125761874	San Bernardino 
5	Centro Clínico/Anexo Clínica Razetti	2125970248	La Candelaria  
6	Centro Médico de Caracas	2125559111	San Bernardino 
7	Centro Médico Docente La Trinidad	2129496411	La Trinidad    
8	Centro Médico Infantil El Cafetal	2129919344	El Cafetal     
9	Centro Médico Loira CA	2124052384	El Paraíso     
10	Centro Profesional Las Mercedes	2129929591	Las Mercedes   
11	Clínica Atías Hospitalización y Servicio CA	2126033115	Los Rosales    
12	Clínica Cardiológica San Pablo	2129922211	Las Mercedes   
13	Clínica Casablanca	2125527177	San Bernardino 
14	Clínica Caurimare	2127516419	Cnas Bello Monte
15	Clínica El Ávila	2122761533	Altamira       
16	Clínica El Cedral	2127932346	La Florida     
17	Clínica Félix Boada	2129414243	Baruta         
18	Clínica Idet	2122860951	Altamira       
19	Clínica Idet CA	2122847334	Altamira       
20	Clínica Jaimes Cordova	2126613410	Santa Mónica   
21	Clínica La Floresta	2122856058	L P Grandes    
22	Clínica Leopoldo Aguerrevere	2129070811	Prados del Este
23	Clínica Loira	2124512050	El Paraíso     
24	Clínica Luis Razetti	2125970100	La Candelaria  
25	Clínica Rescarven	2122395686	Santa Cecilia  
26	Clínica Rescarven El Paraíso	2124718541	El Paraíso     
27	Clínica Residencial El Cedral	212822348 	La Florida     
28	Clínica Roosevelt	2126327492	Los Rosales    
29	Clínica San Pablo	2129922801	Las Mercedes   
30	Clínica Sanatrix CA	2122016255	Campo Alegre   
31	Clínica Santa Sofía	2129854122	Santa Paula    
32	Clínica Santiago de León	2127619150	Sabana Grande  
33	Clínica Sthory Ruiz	2125767614	La Candelaria  
34	Clínica Venezuela	2125765572	Parque Central 
35	Clínica Vista Alegre CA	2124432055	Vista Alegre   
36	Cruz Roja Venezolana	2125715435	San Bernardino 
37	Dirección de Socorro Cruz Roja  Venezolana	2125782516	La Candelaria  
38	Hospital Andrés Herrera Vegas	2124723138	El Algodonal   
39	Hospital Centro Médico IVSS	2124325511	Caricuao       
40	Hospital Centro Médico IVSS	2128602614	Altagracia     
41	Hospital Centro Médico IVSS Ángel V  Ochoa	2126314677	El Cementerio  
42	Hospital Clínico Universitario	2126067111	Chaguaramos    
43	Hospital de Clínicas Caracas	2125086111	San Bernardino 
44	Hospital de Niños J.M. de Los Ríos	2125743511	San Bernardino 
45	Hospital Dr. Domingo Luciani Llanito	2122578712	El Llanito     
46	Hospital El Algodonal	2124725410	Antímano       
47	Hospital El Manicomio	2128601313	Manicomio      
48	Hospital José Gregorio Hernández	2128707897	Los Magallanes 
49	Hospital Miguel Pérez Carreño	2124728472	Bella Vista    
50	Hospital Militar	2124061241	San Martín     
51	Hospital Municipal Rísquez	2125511851	San Bernardino 
52	Hospital Oncológico Padre Machado	2126310136	Los Castaños   
53	Hospital Ortopédico Infantil	2125736911	P Salinas      
54	Hospital Periférico de Catia	2128702771	Catia          
55	Hospital Periférico de Coche	2126811133	Coche          
56	Hospital San Juan de Dios	2129798166	Cnas Valle Arriba
57	Hospital Unidad Sanidad Catia	2128701033	Catia            
58	Hospital Vargas	2128607274	San José         
59	Instituto Clínico La Florida	2127066111	La Florida        
60	Instituto de Clínicas y Urología Tamanaco	2129990111	San Román         
61	Instituto de Inmunología Fac. Medicina  UCV	2126935195	Los Chaguaramos   
62	Instituto de Inmunología UCV	2126932734	Los Chaguaramos   
63	Instituto Diagnóstico	2125525712	San Bernardino    
64	Instituto Médico La Floresta	2122096222	La Floresta       
65	Instituto Oncológico Luis Razetti	2125525810	San José          
66	Instituto Pediátrico La Florida	2127302255	La Florida        
67	Materno Infantil	2122435430	Petare            
68	Padre Machado	2124429025	Montalbán II      
69	Policlínica David Lobo	2125415465	Santa Rosalía     
70	Policlínica La Arboleda	2125501811	San Bernardino    
71	Policlínica Las Mercedes, CA	2129932323	Las Mercedes      
72	Policlínica Metropolitana	2129080588	Caurimare         
73	Policlínica Santiago de León	2127629025	Sabana Grande     
74	Urológico	2129990111	San Román         
\.


--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 213
-- Name: centro_medico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('centro_medico_id_seq', 1, false);


--
-- TOC entry 2376 (class 0 OID 16970)
-- Dependencies: 187
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estado (id, descripcion, seleccion) FROM stdin;
1	DISTRITO CAPITAL	\N
2	AMAZONAS	\N
3	ANZOATEGUI	\N
4	APURE	\N
5	ARAGUA	\N
6	BARINAS	\N
7	BOLIVAR	\N
8	CARABOBO	\N
9	COJEDES	\N
10	DELTA AMACURO	\N
11	FALCON	\N
12	GUARICO	\N
13	LARA	\N
14	MERIDA	\N
15	MIRANDA	\N
16	MONAGAS	\N
17	NUEVA ESPARTA	\N
18	PORTUGUESA	\N
19	SUCRE	\N
20	TACHIRA	\N
21	TRUJILLO	\N
22	YARACUY	\N
23	ZULIA	\N
24	VARGAS	\N
\.


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 188
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_id_seq', 1, false);


--
-- TOC entry 2378 (class 0 OID 16976)
-- Dependencies: 189
-- Data for Name: estatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estatus (id, estatus) FROM stdin;
1	completado
2	Entregado
3	Revisado
4	Aprobado
5	No Aprobado
\.


--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 190
-- Name: estatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estatus_id_seq', 1, false);


--
-- TOC entry 2380 (class 0 OID 16982)
-- Dependencies: 191
-- Data for Name: fos_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fos_user (id, username, username_canonical, email, email_canonical, enabled, salt, password, last_login, locked, expired, expires_at, confirmation_token, password_requested_at, roles, credentials_expired, credentials_expire_at) FROM stdin;
3	yaperez	yaperez	yaperez@xxx.com	yaperez@xxx.com	t	dqa2d4xpuds8wgssskkwwgc4w0oocko	3pPx0Y27PHcfMt5l6+/ILz0GHCR5BXJLKSaS04KNuUvzDOPrTu2gp5iCLTO5y0JbCca4PxiskwWIpaRZyn1RBw==	2017-06-18 21:29:45	f	f	\N	\N	\N	a:1:{i:0;s:13:"ROLE_TEMPORAL";}	f	\N
2	acontreras	acontreras	acontreras@opsu.gob.ve	acontreras@opsu.gob.ve	t	k9vfq41bsiogs0800cwc8s8ccc80c0k	Ur/g5jTqFYvVxgP8KubMw5b/SyRxWCk3/2KfeVYQB4jODRAeIJhwOZfKjc5YrSL6QgSfjXjf0sX/bxnKxTVj8g==	2017-06-18 23:43:17	f	f	\N	\N	\N	a:1:{i:0;s:13:"ROLE_TEMPORAL";}	f	\N
\.


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 192
-- Name: fos_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fos_user_id_seq', 3, true);


--
-- TOC entry 2382 (class 0 OID 16995)
-- Dependencies: 193
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY municipio (id, descripcion, estado_id) FROM stdin;
201	AUTÓNOMO ALTO ORINOCO	2
101	LIBERTADOR	1
202	AUTÓNOMO ATABAPO	2
203	AUTÓNOMO ATURES	2
204	AUTÓNOMO AUTANA	2
206	AUTÓNOMO MANAPIARE	2
207	AUTÓNOMO RÍO NEGRO	2
301	ANACO	3
302	ARAGUA	3
304	FRANCISCO DEL CARMEN CARVAJAL	3
305	FRANCISCO DE MIRANDA	3
306	GUANTA	3
307	INDEPENDENCIA	3
310	JOSÉ GREGORIO MONAGAS	3
308	JUAN ANTONIO SOTILLO	3
309	JUAN MANUEL CAJIGAL	3
311	LIBERTAD	3
312	MANUEL EZEQUIEL BRUZUAL	3
313	PEDRO MARÍA FREITES	3
314	PÍRITU	3
315	SAN JOSÉ DE GUANIPA	3
316	SAN JUAN DE CAPISTRANO	3
317	SANTA ANA	3
318	SIMÓN BOLÍVAR	3
319	SIMÓN RODRÍGUEZ	3
320	SIR ARTHUR MC GREGOR	3
321	TURÍSTICO DIEGO BAUTISTA URBANEJA	3
401	ACHAGUAS	4
402	BIRUACA	4
404	PÁEZ	4
405	PEDRO CAMEJO	4
406	RÓMULO GALLEGOS	4
407	SAN FERNANDO	4
501	BOLÍVAR	5
502	CAMATAGUA	5
517	FRANCISCO LINARES ALCÁNTARA	5
503	GIRARDOT	5
504	JOSÉ ANGEL LAMAS	5
505	JOSÉ FÉLIX RIBAS	5
506	JOSÉ RAFAEL REVENGA	5
507	LIBERTADOR	5
508	MARIO BRICEÑO IRAGORRY	5
518	OCUMARE DE LA COSTA DE ORO	5
509	SAN CASIMIRO	5
510	SAN SEBASTIÁN	5
511	SANTIAGO MARIÑO	5
512	SANTOS MICHELENA	5
513	SUCRE	5
514	TOVAR	5
515	URDANETA	5
516	ZAMORA	5
601	ALBERTO ARVELO TORREALBA	6
612	ANDRÉS ELOY BLANCO	6
602	ANTONIO JOSÉ DE SUCRE	6
603	ARISMENDI	6
604	BARINAS	6
605	BOLÍVAR	6
606	CRUZ PAREDES	6
607	EZEQUIEL ZAMORA	6
608	OBISPOS	6
609	PEDRAZA	6
610	ROJAS	6
611	SOSA	6
701	CARONÍ	7
702	CEDEÑO	7
703	EL CALLAO	7
704	GRAN SABANA	7
705	HERES	7
711	PADRE PEDRO CHIEN	7
706	PIAR	7
707	RAÚL LEONI	7
708	ROSCIO	7
709	SIFONTES	7
710	SUCRE	7
801	BEJUMA	8
802	CARLOS ARVELO	8
803	DIEGO IBARRA	8
804	GUACARA	8
805	JUAN JOSÉ MORA	8
806	LIBERTADOR	8
807	LOS GUAYOS	8
808	MIRANDA	8
809	MONTALBÁN	8
810	NAGUANAGUA	8
811	PUERTO CABELLO	8
812	SAN DIEGO	8
813	SAN JOAQUÍN	8
814	VALENCIA	8
901	ANZOÁTEGUI	9
902	FALCÓN	9
903	GIRARDOT	9
904	LIMA BLANCO	9
905	PAO DE SAN JUAN BAUTISTA	9
906	RICAURTE	9
907	RÓMULO GALLEGOS	9
908	SAN CARLOS	9
909	TINACO	9
1001	ANTONIO DÍAZ	10
1002	CASACOIMA	10
1003	PEDERNALES	10
1004	TUCUPITA	10
1101	ACOSTA	11
1102	BOLÍVAR	11
1103	BUCHIVACOA	11
1104	CACIQUE MANAURE	11
1105	CARIRUBANA	11
1106	COLINA	11
1107	DABAJURO	11
1108	DEMOCRACIA	11
1109	FALCÓN	11
1110	FEDERACIÓN	11
1111	JACURA	11
1112	LOS TAQUES	11
1113	MAUROA	11
1114	MIRANDA	11
1115	MONSEÑOR ITURRIZA	11
1116	PALMASOLA	11
1117	PETIT	11
1118	PÍRITU	11
1119	SAN FRANCISCO	11
1120	SILVA	11
1121	SUCRE	11
1122	TOCÓPERO	11
1123	UNIÓN	11
1124	URUMACO	11
1125	ZAMORA	11
1201	CAMAGUÁN	12
1202	CHAGUARAMAS	12
1203	EL SOCORRO	12
1208	FRANCISCO DE MIRANDA	12
1209	JOSÉ TADEO MONAGAS	12
1212	JUAN GERMÁN ROSCIO	12
1207	JULIÁN MELLADO	12
1206	LAS MERCEDES	12
1205	LEONARDO INFANTE	12
1210	ORTIZ	12
1204	SAN GERÓNIMO DE GUAYABAL	12
1213	SAN JOSÉ DE GUARIBE	12
1214	SANTA MARÍA DE IPIRE	12
1301	ANDRÉS ELOY BLANCO	13
1302	CRESPO	13
1303	IRIBARREN	13
1304	JIMÉNEZ	13
1305	MORÁN	13
1306	PALAVECINO	13
1307	SIMÓN PLANAS	13
1308	TORRES	13
1309	URDANETA	13
1401	ALBERTO ADRIANI	14
1402	ANDRÉS BELLO	14
1403	ANTONIO PINTO SALINAS	14
1404	ARICAGUA	14
1405	ARZOBISPO CHACÓN	14
1406	CAMPO ELÍAS	14
1407	CARACCIOLO PARRA OLMEDO	14
1408	CARDENAL QUINTERO	14
1409	GUARAQUE	14
1410	JULIO CÉSAR SALAS	14
1411	JUSTO BRICEÑO	14
1412	LIBERTADOR	14
1413	MIRANDA	14
1414	OBISPO RAMOS DE LORA	14
1415	PADRE NOGUERA	14
1416	PUEBLO LLANO	14
1417	RANGEL	14
1418	RIVAS DÁVILA	14
1419	SANTOS MARQUINA	14
1420	SUCRE	14
1421	TOVAR	14
1422	TULIO FEBRES CORDERO	14
1423	ZEA	14
1501	ACEVEDO	15
1502	ANDRÉS BELLO	15
1503	BARUTA	15
1504	BRIÓN	15
1505	BUROZ	15
1506	CARRIZAL	15
1507	CHACAO	15
1508	CRISTÓBAL ROJAS	15
1509	EL HATILLO	15
1510	GUAICAIPURO	15
1511	INDEPENDENCIA	15
1512	LANDER	15
1513	LOS SALIAS	15
1514	PÁEZ	15
1515	PAZ CASTILLO	15
1516	PEDRO GUAL	15
1517	PLAZA	15
1518	SIMÓN BOLÍVAR	15
1519	SUCRE	15
1520	URDANETA	15
1521	ZAMORA	15
1601	ACOSTA	16
1602	AGUASAY	16
1603	BOLÍVAR	16
1604	CARIPE	16
1605	CEDEÑO	16
1606	EZEQUIEL ZAMORA	16
1607	LIBERTADOR	16
1608	MATURÍN	16
1609	PIAR	16
1610	PUNCERES	16
1611	SANTA BÁRBARA	16
1612	SOTILLO	16
1613	URACOA	16
1701	ANTOLÍN DEL CAMPO	17
1702	ARISMENDI	17
1703	DÍAZ	17
1704	GARCÍA	17
1705	GÓMEZ	17
1706	MANEIRO	17
1707	MARCANO	17
1708	MARIÑO	17
1709	PENÍNSULA DE MACANAO	17
1710	TUBORES	17
1711	VILLALBA	17
1801	AGUA BLANCA	18
1802	ARAURE	18
1803	ESTELLER	18
1804	GUANARE	18
1805	GUANARITO	18
1806	MONSEÑOR JOSÉ VICENTE DE UNDA	18
1807	OSPINO	18
1808	PAEZ	18
1809	PAPELON	18
1810	SAN GENARO DE BOCONOÍTO	18
1811	SAN RAFAEL DE ONOTO	18
1812	SANTA ROSALIA	18
1813	SUCRE	18
1814	TUREN	18
1901	ANDRÉS ELOY BLANCO	19
1902	ANDRÉS MATA	19
1903	ARISMENDI	19
1904	BENÍTEZ	19
1905	BERMÚDEZ	19
1906	BOLÍVAR	19
1907	CAJIGAL	19
1908	CRUZ SALMERÓN ACOSTA	19
1909	LIBERTADOR	19
1910	MARIÑO	19
1911	MEJÍA	19
1912	MONTES	19
1913	RIBERO	19
1914	SUCRE	19
1915	VALDEZ	19
2001	ANDRÉS BELLO	20
2002	ANTONIO RÓMULO COSTA	20
2003	AYACUCHO	20
2004	BOLÍVAR	20
2005	CÁRDENAS	20
2006	CÓRDOBA	20
2007	FERNÁNDEZ FEO	20
2008	FRANCISCO DE MIRANDA	20
2009	GARCÍA DE HEVIA	20
2010	GUÁSIMOS	20
2011	INDEPENDENCIA	20
2012	JÁUREGUI	20
2013	JOSÉ MARÍA VARGAS	20
2014	JUNÍN	20
2015	LIBERTAD	20
2016	LIBERTADOR	20
2017	LOBATERA	20
2018	MICHELENA	20
2019	PANAMERICANO	20
2020	PEDRO MARÍA UREÑA	20
2021	RAFAEL URDANETA	20
2022	SAMUEL DARÍO MALDONADO	20
2023	SAN CRISTÓBAL	20
2029	SAN JUDAS TADEO	20
2024	SEBORUCO	20
2025	SIMÓN RODRÍGUEZ	20
2026	SUCRE	20
2027	TORBES	20
2028	URIBANTE	20
2101	ANDRÉS BELLO	21
2102	BOCONÓ	21
2103	BOLÍVAR	21
2104	CANDELARIA	21
2105	CARACHE	21
2106	ESCUQUE	21
2107	JOSÉ FELIPE MÁRQUEZ CAÑIZALES	21
2108	JUAN VICENTE CAMPO ELÍAS	21
2109	LA CEIBA	21
2110	MIRANDA	21
2111	MONTE CARMELO	21
2112	MOTATÁN	21
2113	PAMPÁN	21
2114	PAMPANITO	21
2115	RAFAEL RANGEL	21
2116	SAN RAFAEL DE CARVAJAL	21
2117	SUCRE	21
2118	TRUJILLO	21
2119	URDANETA	21
2120	VALERA	21
2201	ARÍSTIDES BASTIDAS	22
2202	BOLÍVAR	22
2203	BRUZUAL	22
2204	COCOROTE	22
2205	INDEPENDENCIA	22
2206	JOSÉ ANTONIO PÁEZ	22
2207	LA TRINIDAD	22
2208	MANUEL MONGE	22
2209	NIRGUA	22
2210	PEÑA	22
2211	SAN FELIPE	22
2212	SUCRE	22
2213	URACHICHE	22
2214	VEROES	22
2301	ALMIRANTE PADILLA	23
2302	BARALT	23
2303	CABIMAS	23
2304	CATATUMBO	23
2305	COLÓN	23
2306	FRANCISCO JAVIER PULGAR	23
2307	JESÚS ENRIQUE LOSSADA	23
2309	LA CAÑADA DE URDANETA	23
2310	LAGUNILLAS	23
2311	MACHIQUES DE PERIJÁ	23
2312	MARA	23
2313	MARACAIBO	23
2314	MIRANDA	23
2315	PÁEZ	23
2316	ROSARIO DE PERIJÁ	23
2317	SAN FRANCISCO	23
2318	SANTA RITA	23
2319	SIMÓN BOLÍVAR	23
2320	SUCRE	23
2321	VALMORE RODRÍGUEZ	23
2401	VARGAS	24
205	AUTONOMO MAROA	2
303	FERNANDO DE PEÑALVER	3
403	MUÑOZ	4
1211	JOSE FELIX RIVAS	12
1215	ZARAZA	12
2308	JESUS MARIA SEMPRUM	23
\.


--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 194
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_id_seq', 1, false);


--
-- TOC entry 2384 (class 0 OID 17001)
-- Dependencies: 195
-- Data for Name: nacionalidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nacionalidad (id, nacionalidad) FROM stdin;
1	V
2	E
\.


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 196
-- Name: nacionalidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('nacionalidad_id_seq', 2, true);


--
-- TOC entry 2386 (class 0 OID 17007)
-- Dependencies: 197
-- Data for Name: parentesco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY parentesco (id, parentesco) FROM stdin;
1	Padre
2	Madre
3	Hijo
4	Conjugue
\.


--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 198
-- Name: parentesco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parentesco_id_seq', 1, false);


--
-- TOC entry 2388 (class 0 OID 17013)
-- Dependencies: 199
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY parroquia (id, descripcion, municipio_id) FROM stdin;
1020	Ana Maria Campos	2314
1019	Altagracia	2314
1027	Guajira	2315
1026	Elias Sanchez Rubio	2315
1025	Alta Guajira	2315
1024	Sinamaica	2315
1030	Sixto Zambrano	2316
1029	Donaldo Garcia	2316
1028	El Rosario	2316
1036	Marcial Hernandez	2317
1035	Los Cortijos	2317
1034	Francisco Ochoa	2317
1033	Domitila Flores	2317
1032	El Bajo	2317
1031	San Francisco	2317
1040	Pedro Lucas Urribarri	2318
1039	Jose Cenovio Urribarri	2318
1038	El Mene	2318
1037	Santa Rita	2318
1043	Rafael Urdaneta	2319
1042	Rafael Maria Baralt	2319
1041	Manuel Manrique	2319
1049	Romulo Gallegos	2320
1048	Monseñor Arturo Celestino Alvarez	2320
1047	Heras	2320
1046	Gibraltar	2320
1045	El Batey	2320
1044	Bobures	2320
1052	Raul Cuenca	2321
1051	Rafael Urdaneta	2321
1050	La Victoria	2321
930	Carlos Soublette	2401
929	Raul Leoni	2401
13	Sipapo	204
12	Samariapo	204
20	Bajo Ventuari	206
19	Medio Ventuari	206
18	Alto Ventuari	206
23	Cocuy	207
342	23 De Enero	101
341	Sucre	101
340	Santa Teresa	101
339	Santa Rosalia	101
338	San Pedro	101
337	San Juan	101
336	San Jose	101
335	San Bernardino	101
334	San Agustin	101
333	Macarao	101
332	La Vega	101
331	La Pastora	101
330	El Valle	101
329	El Recreo	101
328	El Paraiso	101
327	El Junquito	101
326	Coche	101
325	Catedral	101
324	Caricuao	101
323	Candelaria	101
322	Antimano	101
321	Altagracia	101
4	Sierra Parima	201
3	Mavaca	201
2	Marawaka	201
1	Huachamacare	201
7	Caname	202
6	Yapacana	202
5	Ucata	202
11	Platanillal	203
10	Parhueña	203
9	Luis Alberto Gomez	203
8	Fernando Giron Tovar	203
15	Guayapo	204
14	Munduapo	204
928	Naiguata	2401
927	Maiquetia	2401
926	Macuto	2401
925	La Guaira	2401
924	El Junko	2401
923	El Junko	2401
922	Catia La Mar	2401
921	Caruao	2401
920	Carayaca	2401
919	Caraballeda	2401
17	Comunidad	205
16	Victorino	205
28	Sucre	303
27	San Miguel	303
85	San Vicente	403
84	Rincon Hondo	403
83	Quintero	403
82	Mantecal	403
81	Urbana Bruzual	403
455	San Rafael De Laya	1211
454	Tucupido	1211
463	San Jose De Unare	1215
462	Zaraza	1215
979	Bari	2308
978	Jesus Maria Semprun	2308
897	El Paraiso	2117
896	Sabana De Mendoza	2117
906	Tres Esquinas	2118
905	Monseñor Carrillo	2118
904	Matriz	2118
903	Cruz Carrillo	2118
902	Cristobal Mendoza	2118
901	Chiquinquira	2118
900	Andres Linares	2118
912	Tuñame	2119
911	Santiago	2119
910	La Mesa	2119
909	Jajo	2119
908	Cabimbu	2119
907	La Quebrada	2119
918	Mendoza	2120
917	La Puerta	2120
916	San Luis	2120
915	Mercedes Diaz	2120
914	La Beatriz	2120
913	Juan Ignacio Montilla	2120
931	San Pablo	2201
932	Aroa	2202
933	Campo Elias	2203
934	Cocorote	2204
935	Independencia	2205
936	Sabana De Parra	2206
937	Boraure	2207
938	Yumare	2208
940	Temerla	2209
939	Salom	2209
941	San Andres	2210
943	San Javier	2211
942	Albarico	2211
944	Guama	2212
945	Urachiche	2213
946	El Guayabo	2214
948	Monagas	2301
947	Isla De Toas	2301
954	Pueblo Nuevo	2302
953	Marcelino Briceño	2302
952	Manuel Guanipa Matos	2302
951	Libertador	2302
950	General Urdaneta	2302
949	San Timoteo	2302
963	Punta Gorda	2303
962	Aristides Calvani	2303
961	San Benito	2303
960	Romulo Betancourt	2303
959	Jorge Hernandez	2303
958	La Rosa	2303
957	German Rios Linares	2303
956	Carmen Herrera	2303
955	Ambrosio	2303
965	Udon Perez	2304
964	Encontrados	2304
970	Urribarri	2305
969	Santa Cruz Del Zulia	2305
968	Santa Barbara	2305
967	Moralito	2305
966	San Carlos Del Zulia	2305
973	Francisco Javier Pulgar	2306
972	Carlos Quevedo	2306
971	Simon Rodriguez	2306
977	San Jose	2307
976	Mariano Parra Leon	2307
975	Jose Ramon Yepes	2307
974	La Concepcion	2307
984	Potreritos	2309
983	El Carmelo	2309
982	Chiquinquira	2309
981	Andres Bello	2309
980	Concepcion	2309
989	Venezuela	2310
988	Eleazar Lopez Contreras	2310
987	Campo Lara	2310
986	Libertad	2310
985	Alonso De Ojeda	2310
993	San Jose De Perija	2311
992	Rio Negro	2311
991	Bartolome De Las Casas	2311
990	Libertad	2311
1000	Tamare	2312
999	Ricaurte	2312
998	Monseñor Marcos Sergio Godoy	2312
997	Luis De Vicente	2312
996	Las Parcelas	2312
995	La Sierrita	2312
994	San Rafael	2312
1018	San Isidro	2313
1017	Venancio Pulgar	2313
1016	Santa Lucia	2313
1015	Raul Leoni	2313
1014	Olegario Villalobos	2313
1013	Manuel Dagnino	2313
1012	Luis Hurtado Higuera	2313
1011	Juana De Avila	2313
1010	idelfonso Vasquez	2313
1009	Francisco Eugenio Bustamante	2313
1008	Chiquinquira	2313
1007	Coquivacoa	2313
1006	Cristo De Aranza	2313
1005	Cecilio Acosta	2313
1004	Caracciolo Parra Perez	2313
1003	Cacique Mara	2313
1002	Bolivar	2313
1001	Antonio Borjas Romero	2313
1023	San Jose	2314
1022	San Antonio	2314
1021	Faria	2314
786	Alberto Adriani	2007
788	San Jose De Bolivar	2008
790	Jose Antonio Paez	2009
789	Boca De Grita	2009
791	Palmira	2010
793	Roman Cardenas	2011
792	Juan German Roscio	2011
795	Monseñor Miguel Antonio Salas	2012
794	Emilio Constantino Guerrero	2012
796	El Cobre	2013
799	Bramon	2014
798	Quinimari	2014
797	La Petrolea	2014
801	Manuel Felipe Rugeles	2015
800	Cipriano Castro	2015
804	San Joaquin De Navay	2016
803	Doradas	2016
802	Emeterio Ochoa	2016
805	Constitucion	2017
806	Michelena	2018
807	La Palmita	2019
808	Nueva Arcadia	2020
809	Delicias	2021
811	Hernandez	2022
810	Bocono	2022
816	Dr. Francisco Romero Lobo	2023
815	San Sebastian	2023
814	San Juan Bautista	2023
813	Pedro Maria Morantes	2023
812	La Concordia	2023
825	Umuquena	2029
817	Seboruco	2024
818	San Simon	2025
820	San Pablo	2026
819	Eleazar Lopez Contreras	2026
821	San Josecito	2027
824	Potosi	2028
823	Juan Pablo Peñaloza	2028
822	Cardenas	2028
829	La Esperanza	2101
828	El Jagüito	2101
827	Araguaney	2101
826	Santa Isabel	2101
841	San Jose	2102
840	San Miguel	2102
839	Rafael Rangel	2102
838	Monseñor Jauregui	2102
837	Vega De Guaramacal	2102
836	Guaramacal	2102
835	General Rivas	2102
834	Burbusay	2102
833	Ayacucho	2102
832	Mosquey	2102
831	El Carmen	2102
830	Bocono	2102
844	Granados	2103
843	Cheregüe	2103
842	Sabana Grande	2103
851	San Jose	2104
850	Manuel Salvador Ulloa	2104
849	Cegarra	2104
848	Carrillo	2104
847	Bolivia	2104
846	Arnoldo Gabaldon	2104
845	Chejende	2104
856	Santa Cruz	2105
855	Panamericana	2105
854	La Concepcion	2105
853	Cuicas	2105
852	Carache	2105
860	Santa Rita	2106
859	Sabana Libre	2106
858	La Union	2106
857	Escuque	2106
863	Los Caprichos	2107
862	Antonio Jose De Sucre	2107
861	El Socorro	2107
865	Arnoldo Gabaldon	2108
864	Campo Elias	2108
869	Tres De Febrero	2109
868	La Ceiba	2109
867	El Progreso	2109
866	Santa Apolonia	2109
874	Valerita	2110
873	El Cenizo	2110
872	Agua Caliente	2110
871	Agua Santa	2110
870	El Dividive	2110
877	Santa Maria Del Horcon	2111
876	Buena Vista	2111
875	Monte Carmelo	2111
880	Jalisco	2112
879	El Baño	2112
878	Motatan	2112
884	Santa Ana	2113
883	La Paz	2113
882	Flor De Patria	2113
881	Pampan	2113
887	Pampanito Ii	2114
886	La Concepcion	2114
885	Pampanito	2114
891	Jose Gregorio Hernandez	2115
890	Los Cedros	2115
889	La Pueblita	2115
888	Betijoque	2115
895	Jose Leonardo Suarez	2116
894	Campo Alegre	2116
893	Antonio Nicolas Briceño	2116
892	Carvajal	2116
899	Valmore Rodriguez	2117
898	Junin	2117
676	Guanaguana	1609
675	El Pinto	1609
674	Chaguaramal	1609
673	Aparicio	1609
679	Cachipo	1610
680	Santa Barbara	1611
681	Los Barrancos De Fajardo	1612
682	Uracoa	1613
683	La Plaza De Paraguachi	1701
684	La Asuncion	1702
685	Zabala	1703
686	Francisco Fajardo	1704
690	Sucre	1705
689	Matasiete	1705
688	Guevara	1705
687	Bolivar	1705
691	Aguirre	1706
692	Adrian	1707
693	Porlamar	1708
694	San Francisco	1709
695	Los Barales	1710
696	Vicente Fuentes	1711
697	Agua Blanca	1801
699	Araure	1802
698	Rio Acarigua	1802
700	Uveral	1803
1053	Guanare	1804
704	Virgen De La Coromoto	1804
703	San Juan De Guanaguanare	1804
702	San Jose De La Montaña	1804
701	Cordoba	1804
706	Divina Pastora	1805
705	Trinidad De La Capilla	1805
707	Unda	1806
708	Ospino	1807
711	Pimpinela	1808
710	Payara	1808
709	Acarigua	1808
712	Papelon	1809
717	Boconoito	1810
718	San Rafael	1811
715	Santa Rosalia	1812
714	Sucre	1813
713	Biscucuy	1813
716	Turen	1814
720	Romulo Gallegos	1901
719	Mariño	1901
722	Tavera Acosta	1902
721	San Jose De Aerocuar	1902
727	San Juan De Las Galdonas	1903
726	Puerto Santo	1903
725	El Morro De Puerto Santo	1903
724	Antonio Jose De Sucre	1903
723	Rio Caribe	1903
733	Union	1904
732	Tunapuicito	1904
731	Guaraunos	1904
730	General Francisco Antonio Vasquez	1904
729	El Rincon	1904
728	El Pilar	1904
738	Santa Teresa	1905
737	Santa Rosa	1905
736	Santa Catalina	1905
735	Macarapana	1905
734	Bolivar	1905
739	Marigüitar	1906
742	Libertad	1907
741	El Paujil	1907
740	Yaguaraparo	1907
745	Manicuare	1908
744	Chacopata	1908
743	Araya	1908
747	Campo Elias	1909
746	Tunapuy	1909
751	San Antonio De Irapa	1910
750	Marabal	1910
749	Campo Claro	1910
748	Irapa	1910
753	San Antonio Del Golfo	1911
759	San Lorenzo	1912
758	San Fernando	1912
757	Cocollar	1912
756	Aricagua	1912
755	Arenas	1912
754	Cumanacoa	1912
764	Santa Maria	1913
763	Santa Cruz	1913
762	Rendon	1913
761	Catuaro	1913
760	Cariaco	1913
771	Santa Fe	1914
770	Raul Leoni	1914
769	San Juan	1914
768	Valentin Valiente	1914
767	Santa Ines	1914
766	Ayacucho	1914
765	Altagracia	1914
775	Punta De Piedras	1915
774	Cristobal Colon	1915
773	Bideau	1915
772	Güiria	1915
776	Cordero	2001
777	Las Mesas	2002
779	San Pedro Del Rio	2003
778	Rivas Berti	2003
782	Isaias Medina Angarita	2004
781	Juan Vicente Gomez	2004
780	Palotal	2004
784	La Florida	2005
783	Amenodoro Rangel Lamus	2005
785	Santa Ana	2006
787	Santo Domingo	2007
556	El Llano	1412
555	Domingo Peña	1412
554	Caracciolo Parra Perez	1412
553	Arias	1412
552	Antonio Spinetti Dini	1412
569	Piñango	1413
568	La Venta	1413
567	Andres Eloy Blanco	1413
571	San Rafael De Alcazar	1414
570	Eloy Paredes	1414
572	Santa Maria De Caparo	1415
573	Pueblo Llano	1416
577	San Rafael	1417
576	Mucuruba	1417
575	La Toma	1417
574	Cacute	1417
578	Geronimo Maldonado	1418
579	Tabay	1419
584	San Juan	1420
583	Pueblo Nuevo Del Sur	1420
582	La Trampa	1420
581	Estanquez	1420
580	Chiguara	1420
588	Tovar	1421
587	San Francisco	1421
586	El Llano	1421
585	El Amparo	1421
591	Santa Apolonia	1422
590	Maria De La Concepcion Palacios Blanco	1422
589	Independencia	1422
592	Caño El Tigre	1423
600	Ribas	1501
599	Panaquire	1501
598	Marizapa	1501
597	El Cafe	1501
596	Capaya	1501
595	Arevalo Gonzalez	1501
594	Aragüita	1501
593	Caucagua	1501
602	Cumbo	1502
601	San Jose De Barlovento	1502
605	Las Minas De Baruta	1503
604	El Cafetal	1503
603	Baruta	1503
608	Tacarigua	1504
607	Curiepe	1504
606	Higuerote	1504
609	Mamporal	1505
610	Carrizal	1506
611	Chacao	1507
613	Las Brisas	1508
612	Charallave	1508
614	El Hatillo	1509
621	Tacata	1510
620	San Pedro	1510
619	Paracotos	1510
618	El Jarillo	1510
617	Cecilio Acosta	1510
616	Altagracia De La Montaña	1510
615	Los Teques	1510
623	El Cartanal	1511
622	Santa Teresa Del Tuy	1511
626	Santa Barbara	1512
625	La Democracia	1512
624	Ocumare Del Tuy	1512
627	San Antonio De Los Altos	1513
632	San Fernando Del Guapo	1514
631	Paparo	1514
630	Tacarigua De La Laguna	1514
629	El Guapo	1514
628	Rio Chico	1514
633	Santa Lucia	1515
635	Machurucuto	1516
634	Cupira	1516
636	Guarenas	1517
638	San Antonio De Yare	1518
637	San Francisco De Yare	1518
643	Leoncio Martinez	1519
642	La Dolorita	1519
641	Fila De Mariches	1519
640	Caucagüita	1519
639	Petare	1519
645	Nueva Cua	1520
644	Cua	1520
647	Bolivar	1521
646	Guatire	1521
648	San Francisco	1601
649	Aguasay	1602
650	Caripito	1603
655	Teresen	1604
654	San Agustin	1604
653	Sabana De Piedra	1604
652	La Guanota	1604
651	El Guacharo	1604
658	Viento Fresco	1605
657	San Felix	1605
656	Areo	1605
659	El Tejero	1606
662	Tabasca	1607
661	Las Alhuacas	1607
660	Chaguaramas	1607
672	San Vicente	1608
671	La Pica	1608
670	Jusepin	1608
669	El Furrial	1608
668	El Corozo	1608
667	Santa Cruz	1608
666	San Simon	1608
665	Las Cocuizas	1608
664	Boqueron	1608
663	Alto De Los Godos	1608
677	La Toscana	1609
434	Las Mercedes	1206
433	Espino	1205
432	Valle De La Pascua	1205
453	San Lorenzo De Tiznados	1210
452	San Jose De Tiznados	1210
451	San Francisco De Tiznados	1210
450	Ortiz	1210
431	Cazorla	1204
459	San Jose De Guaribe	1213
461	Altamira	1214
460	Santa Maria De Ipire	1214
466	Yacambu	1301
465	Quebrada Honda De Guache	1301
464	Pio Tamayo	1301
347	San Luis	1102
468	Jose Maria Blanco	1302
467	Freitez	1302
478	Juarez	1303
477	Buena Vista	1303
476	Aguedo Felipe Alvarado	1303
475	Union	1303
474	Tamaca	1303
473	Santa Rosa	1303
472	Juan De Villegas	1303
471	El Cuji	1303
470	Concepcion	1303
469	Catedral	1303
486	Coronel Mariano Peraza	1304
485	Jose Bernardo Dorante	1304
484	Tintorero	1304
483	San Miguel	1304
482	Paraiso De San Jose	1304
481	Diego De Lozada	1304
480	Cuara	1304
479	Juan Bautista Rodriguez	1304
494	Moran	1305
493	La Candelaria	1305
492	Humocaro Bajo	1305
491	Humocaro Alto	1305
490	Hilario Luna Y Luna	1305
489	Guarico	1305
488	Anzoategui	1305
487	Bolivar	1305
497	Agua Viva	1306
496	Jose Gregorio Bastidas	1306
495	Cabudare	1306
500	Gustavo Vegas Leon	1307
499	Buria	1307
498	Sarare	1307
517	Altagracia	1308
516	Reyes Vargas	1308
515	Heriberto Arroyo	1308
514	Torres	1308
513	Montes De Oca	1308
512	Montaña Verde	1308
511	Manuel Morillo	1308
510	Las Mercedes	1308
509	Lara	1308
508	Espinoza De Los Monteros	1308
507	El Blanco	1308
506	Chiquinquira	1308
505	Cecilio Zubillaga	1308
504	Castañeda	1308
503	Camacaro	1308
502	Antonio Diaz	1308
501	Trinidad Samuel	1308
521	Xaguas	1309
520	San Miguel	1309
519	Moroturo	1309
518	Siquisique	1309
528	Pulido Mendez	1401
527	Jose Nucete Sardi	1401
526	Hector Amable Mora	1401
525	Gabriel Picon Gonzalez	1401
524	Presidente Romulo Gallegos	1401
523	Presidente Paez	1401
522	Presidente Betancourt	1401
529	La Azulita	1402
1054	Capital Santa Cruz De Mora	1403
531	Mesa De Las Palmas	1403
530	Mesa Bolivar	1403
532	San Antonio	1404
538	Mucuchachi	1405
537	Mucutuy	1405
536	Guaimaral	1405
535	El Molino	1405
534	Chacanta	1405
533	Capuri	1405
545	San Jose Del Sur	1406
544	La Mesa	1406
543	Jaji	1406
542	Acequias	1406
541	Montalban	1406
540	Matriz	1406
539	Fernandez Peña	1406
546	Florencio Ramirez	1407
547	Las Piedras	1408
549	Rio Negro	1409
548	Mesa De Quintero	1409
550	Palmira	1410
551	San Cristobal De Torondoy	1411
566	Los Nevados	1412
565	El Morro	1412
564	Sagrario	1412
563	Osuna Rodriguez	1412
562	Milla	1412
561	Mariano Picon Salas	1412
560	Lasso De La Vega	1412
559	Juan Rodriguez Suarez	1412
558	Jacinto Plaza	1412
557	Gonzalo Picon Febres	1412
319	San Rafael	1004
318	Monseñor Argimiro Garcia	1004
317	Mariscal Antonio Jose De Sucre	1004
316	Leonardo Ruiz Pineda	1004
315	Juan Millan	1004
314	Jose Vidal Marcano	1004
313	San Jose	1004
346	Libertador	1101
345	La Pastora	1101
344	San Juan De Los Cayos	1101
343	San Juan De Los Cayos	1101
678	Taguaya	1102
349	La Peña	1102
348	Aracua	1102
355	Zazarida	1103
354	Seque	1103
353	Guajiro	1103
352	Borojo	1103
351	Bariro	1103
350	Capatarida	1103
356	Yaracal	1104
360	Santa Ana	1105
359	Punta Cardon	1105
358	Norte	1105
357	Carirubana	1105
365	Macoruca	1106
364	Las Calderas	1106
363	Guaibacoa	1106
362	Acurigua	1106
361	La Vela De Coro	1106
366	Dabajuro	1107
371	Purureche	1108
370	Piedra Grande	1108
369	Avaria	1108
368	Agua Clara	1108
367	Pedregal	1108
380	El Vinculo	1109
379	El Hato	1109
378	Adaure	1109
377	Moruy	1109
376	Jadacaquiva	1109
375	Buena Vista	1109
374	Baraived	1109
373	Adicora	1109
372	Pueblo Nuevo	1109
385	Maparari	1110
384	Independencia	1110
383	Pauji	1110
382	Agua Larga	1110
381	Churuguara	1110
388	Araurima	1111
387	Agua Linda	1111
386	Jacura	1111
390	Judibana	1112
389	Los Taques	1112
393	San Felix	1113
392	Casigua	1113
391	Mene De Mauroa	1113
400	Sabaneta	1114
399	Rio Seco	1114
398	Mitare	1114
397	Guzman Guillermo	1114
396	Santa Ana	1114
395	San Gabriel	1114
394	San Antonio	1114
403	Tocuyo De La Costa	1115
402	Boca De Tocuyo	1115
401	Chichiriviche	1115
404	Palmasola	1116
407	Curimagua	1117
406	Colina	1117
405	Cabure	1117
409	San Jose De La Costa	1118
408	Piritu	1118
410	Mirimire	1119
412	Boca De Aroa	1120
411	Tucacas	1120
414	Pecaya	1121
413	Sucre	1121
415	Tocopero	1122
418	Las Vegas Del Tuy	1123
417	El Charal	1123
416	Santa Cruz De Bucaral	1123
420	Bruzual	1124
419	Urumaco	1124
425	Zazarida	1125
424	Pueblo Cumarebo	1125
423	La Soledad	1125
422	La Cienaga	1125
421	Puerto Cumarebo	1125
428	Uverito	1201
427	Puerto Miranda	1201
426	Camaguan	1201
429	Chaguaramas	1202
430	El Socorro	1203
442	Guardatinajas	1208
441	El Rastro	1208
440	El Calvario	1208
439	Calabozo	1208
449	Soublette	1209
448	San Rafael De Orituco	1209
447	San Francisco De Macaira	1209
446	Paso Real De Macaira	1209
445	Libertad De Orituco	1209
444	Lezama	1209
443	Altagracia De Orituco	1209
458	Parapara	1212
457	Cantagallo	1212
456	San Juan De Los Morros	1212
437	El Sombrero	1207
436	Santa Rita De Manapire	1206
435	Cabruta	1206
204	Once De Abril	701
203	Dalla Costa	701
202	Chirica	701
201	Cachamay	701
216	Pijiguaos	702
215	La Urbana	702
214	Guaniamo	702
213	Ascension Farreras	702
212	Altagracia	702
211	Seccion Capital Cedeño	702
217	El Callao	703
219	Ikabaru	704
218	Seccion Capital Gran Sabana	704
228	Zea	705
227	Panapana	705
226	Orinoco	705
225	Vista Hermosa	705
224	Marhuanta	705
223	La Sabanita	705
222	Jose Antonio Paez	705
221	Catedral	705
220	Agua Salada	705
246	El Palmar	711
231	Pedro Cova	706
230	Andres Eloy Blanco	706
229	Seccion Capital Piar	706
235	Santa Barbara	707
234	San Francisco	707
233	Barceloneta	707
232	Seccion Capital Raul Leoni	707
237	Salom	708
236	Seccion Capital Roscio	708
240	San Isidro	709
239	Dalla Costa	709
238	Seccion Capital Sifontes	709
245	Moitaco	710
244	Las Majadas	710
243	Guarataro	710
242	Aripao	710
241	Seccion Capital Sucre	710
249	No Urbana Simon Bolivar	801
248	No Urbana Canoabo	801
247	Urbana Bejuma	801
252	No Urbana Tacarigua	802
251	No Urbana Belen	802
250	Urbana Güigüe	802
254	Urbana Mariara	803
253	Urbana Aguas Calientes	803
257	No Urbana Yagua	804
256	Urbana Guacara	804
255	Urbana Ciudad Alianza	804
259	No Urbana Urama	805
258	Urbana Moron	805
261	Urbana Independencia	806
260	Urbana Tocuyito	806
262	Urbana Los Guayos	807
263	Urbana Miranda	808
264	Urbana Montalban	809
265	Urbana Naguanagua	810
273	No Urbana Patanemo	811
272	No Urbana Borburata	811
271	Urbana Union	811
270	Urbana Juan Jose Flores	811
269	Urbana Goaigoaza	811
268	Urbana Fraternidad	811
267	Urbana Democracia	811
266	Urbana Bartolome Salom	811
274	Urbana San Diego	812
275	Urbana San Joaquin	813
284	No Urbana Negro Primero	814
283	Urbana Santa Rosa	814
282	Urbana San Jose	814
281	Urbana San Blas	814
280	Urbana Rafael Urdaneta	814
279	Urbana Miguel Peña	814
278	Urbana El Socorro	814
277	Urbana Catedral	814
276	Urbana Candelaria	814
286	Juan De Mata Suarez	901
285	Cojedes	901
287	Tinaquillo	902
289	Sucre	903
288	El Baul	903
291	La Aguadita	904
290	Macapo	904
292	El Pao	905
294	El Amparo	906
293	Libertad De Cojedes	906
295	Romulo Gallegos	907
298	Manuel Manrique	908
297	Juan Angel Bravo	908
296	San Carlos De Austria	908
299	General En Jefe Jose Laurencio Silva	909
305	Santos De Abelgas	1001
304	Padre Barral	1001
303	Manuel Renaud	1001
302	Francisco Aniceto Lugo	1001
301	Almirante Luis Brion	1001
300	Curiapo	1001
310	Romulo Gallegos	1002
309	Manuel Piar	1002
308	Juan Bautista Arismendi	1002
307	Cinco De Julio	1002
306	Imataca	1002
312	Luis Beltran Prieto Figueroa	1003
311	Pedernales	1003
320	Virgen Del Valle	1004
147	No Urbana Monseñor Feliciano Gonzalez	517
146	No Urbana Francisco De Miranda	517
145	Capital Santa Rita	517
109	Urbana Los Tacariguas	503
108	Urbana Andres Eloy Blanco	503
107	Urbana Jose Casanova Godoy	503
106	Urbana Pedro Jose Ovalles	503
105	Urbana Joaquin Crespo	503
104	Urbana Madre Maria De San Jose	503
103	Urbana Las Delicias	503
102	No Urbana Choroni	503
110	Santa Cruz	504
37	Mamo	307
115	No Urbana Zuata	505
114	No Urbana Pao De Zarate	505
113	No Urbana Las Guacamayas	505
112	Urbana Castor Nieves Rios	505
111	Capital La Victoria	505
116	El Consejo	506
118	No Urbana San Martin De Porres	507
117	Capital Palo Negro	507
120	Urbana Caña De Azucar	508
119	Capital El Limon	508
148	Ocumare De La Costa	518
124	No Urbana Valle Morin	509
123	No Urbana Ollas De Caramacate	509
122	No Urbana Güiripa	509
121	Capital San Casimiro	509
125	San Sebastian	510
130	No Urbana Alfredo Pacheco Miranda	511
129	No Urbana Saman De Güere	511
128	No Urbana Chuao	511
127	No Urbana Arevalo Aponte	511
126	Capital Turmero	511
132	No Urbana Tiara	512
131	Capital Las Tejerias	512
134	No Urbana Bella Vista	513
133	Capital Cagua	513
135	La Colonia Tovar	514
139	No Urbana Taguay	515
138	No Urbana San Francisco De Cara	515
137	No Urbana Las Peñitas	515
136	Capital Barbacoas	515
144	No Urbana Valles De Tucutunemo	516
143	No Urbana Augusto Mijares	516
142	No Urbana San Francisco De Asis	516
141	No Urbana Magdaleno	516
140	Capital Villa De Cura	516
150	Rodriguez Dominguez	601
149	Sabaneta	601
200	Puerto Vivas	612
199	Santa Cruz De Guacas	612
198	El Canton	612
153	Nicolas Pulido	602
152	Andres Bello	602
151	Ticoporo	602
157	San Antonio	603
156	La Union	603
155	Guadarrama	603
154	Arismendi	603
171	Dominga Ortiz De Paez	604
170	Juan Antonio Rodriguez Dominguez	604
169	Manuel Palacio Fajardo	604
168	Alto Barinas	604
167	Ramon Ignacio Mendez	604
166	Corazon De Jesus	604
165	Romulo Betancourt	604
164	El Carmen	604
163	Torunos	604
162	Santa Lucia	604
161	Santa Ines	604
160	San Silvestre	604
159	Alfredo Arvelo Larriva	604
158	Barinas	604
174	Calderas	605
173	Altamira	605
172	Barinitas	605
177	Masparrito	606
176	El Socorro	606
175	Barrancas	606
181	Ramon Ignacio Mendez	607
180	Pedro Briceño Mendez	607
179	Jose Ignacio Del Pumar	607
178	Santa Barbara	607
185	Los Guasimitos	608
184	La Luz	608
183	El Real	608
182	Obispos	608
188	Jose Felix Ribas	609
187	Ignacio Briceño	609
186	Ciudad Bolivia	609
193	Santa Rosa	610
192	Palacios Fajardo	610
191	Dolores	610
190	Libertad	610
197	Santa Catalina	611
196	Puerto De Nutrias	611
195	El Regalo	611
194	Ciudad De Nutrias	611
210	Yocoima	701
209	Pozo Verde	701
208	Vista Al Sol	701
207	Universidad	701
206	Unare	701
205	Simon Bolivar	701
189	Paez	609
22	Casiquiare	207
21	Solano	207
25	San Joaquin	301
24	Anaco	301
26	Cachipo	302
30	Santa Barbara	304
29	Valle De Guanare	304
34	El Pao	305
33	El Pao	305
32	Boca Del Pao	305
31	Atapirire	305
36	Chorreron	306
35	Guanta	306
46	Zuata	310
45	Uverito	310
44	Santa Clara	310
43	San Diego De Cabrutica	310
42	Piar	310
39	Pozuelos	308
38	Puerto La Cruz	308
41	San Pablo	309
40	Onoto	309
48	Santa Ines	311
47	El Carito	311
51	Sabana De Uchire	312
50	Guanape	312
49	Clarines	312
54	Urica	313
53	Santa Rosa	313
52	Libertador	313
56	San Francisco	314
55	Piritu	314
57	El Tigrito	315
59	Boca De Chavez	316
58	Boca De Uchire	316
61	Pueblo Nuevo	317
60	Santa Ana	317
67	Naricual	318
66	El Pilar	318
65	Caigua	318
64	Bergantin	318
63	San Cristobal	318
62	El Carmen	318
69	Miguel Otero Silva	319
68	Edmundo Barrios	319
71	Tomas Alfaro Calatrava	320
70	El Chaparro	320
73	El Morro	321
72	Lecherias	321
79	Queseras Del Medio	401
78	Mucuritas	401
77	Guachara	401
76	El Yagual	401
75	Apurito	401
74	Urbana Achaguas	401
80	Urbana Biruaca	402
90	Urdaneta	404
89	San Camilo	404
88	El Amparo	404
87	Aramendi	404
86	Urbana Guasdualito	404
93	Cunaviche	405
92	Codazzi	405
91	Urbana San Juan De Payara	405
95	La Trinidad	406
94	Urbana Elorza	406
98	Peñalver	407
97	El Recreo	407
96	Urbana San Fernando	407
99	San Mateo	501
101	No Urbana Carmen De Cura	502
100	Capital Camatagua	502
752	Soro	1910
438	Sosa	1207
\.


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 200
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parroquia_id_seq', 1, false);


--
-- TOC entry 2390 (class 0 OID 17019)
-- Dependencies: 201
-- Data for Name: patologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patologia (id, patologia) FROM stdin;
1	SINUSITIS
2	ANEMIA
3	ANSIEDAD
4	ARRITMIA
5	BRONQUITIS
6	DIABETES
7	EPILEPSIA
8	HEPATITIS
9	OBESIDAD
10	PSORIASIS
\.


--
-- TOC entry 2430 (class 0 OID 0)
-- Dependencies: 202
-- Name: patologia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patologia_id_seq', 1, false);


--
-- TOC entry 2392 (class 0 OID 17025)
-- Dependencies: 203
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona (id, primer_apellido, segundo_apellido, primer_nombre, segundo_nombre, cedula, idnacionalidad, fecha_nacimiento, direccion, genero, telefono_1, telefono_2, cedula_ruta, carnet_ruta, idparroquia, idusuario) FROM stdin;
5	contre	lope	alfre	luis	1304797	1	2012-03-01	xxxxxxx	f	11111111	1111111	tutut	ruta	79	\N
11	aa	a	a	a	123123	1	2015-03-05	sfa	F	12312321	12312312	xxxxxxxx	xxxxxxxxxxx	640	\N
12	aa	a	a	a	123123	1	2015-03-05	sfa	F	12312321	12312312	xxxxxxxx	xxxxxxxxxxx	640	\N
\.


--
-- TOC entry 2431 (class 0 OID 0)
-- Dependencies: 204
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_id_seq', 14, true);


--
-- TOC entry 2407 (class 0 OID 17209)
-- Dependencies: 218
-- Data for Name: reembolso_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reembolso_solicitud (id, idregistrosolicitud, idcentromedico, monto_solicitado, presupuesto_recibo_ruta, monto_aprobado) FROM stdin;
\.


--
-- TOC entry 2432 (class 0 OID 0)
-- Dependencies: 215
-- Name: reembolso_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reembolso_solicitud_id_seq', 1, false);


--
-- TOC entry 2394 (class 0 OID 17040)
-- Dependencies: 205
-- Data for Name: registro_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY registro_solicitud (id, idsolicitud, idpaciente, idpatologia, tratamiento, observacion, informe_medico_ruta, fecha_aprobado, idestatus, completado) FROM stdin;
\.


--
-- TOC entry 2433 (class 0 OID 0)
-- Dependencies: 206
-- Name: registro_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('registro_solicitud_id_seq', 1, false);


--
-- TOC entry 2396 (class 0 OID 17050)
-- Dependencies: 207
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY solicitud (id, idtitular, fecha_solicitud, observacion, completado, idtiposolicitud) FROM stdin;
\.


--
-- TOC entry 2434 (class 0 OID 0)
-- Dependencies: 208
-- Name: solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('solicitud_id_seq', 1, false);


--
-- TOC entry 2398 (class 0 OID 17058)
-- Dependencies: 209
-- Data for Name: tiposolicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tiposolicitud (id, tiposolicitud) FROM stdin;
1	Medicamento
3	Carta aval
2	Reembolso
\.


--
-- TOC entry 2435 (class 0 OID 0)
-- Dependencies: 210
-- Name: tiposolicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tiposolicitud_id_seq', 2, true);


--
-- TOC entry 2400 (class 0 OID 17064)
-- Dependencies: 211
-- Data for Name: titular; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY titular (id, idpersona) FROM stdin;
\.


--
-- TOC entry 2436 (class 0 OID 0)
-- Dependencies: 212
-- Name: titular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('titular_id_seq', 1, false);


--
-- TOC entry 2232 (class 2606 OID 17206)
-- Name: casos_asignado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT casos_asignado_pkey PRIMARY KEY (id);


--
-- TOC entry 2230 (class 2606 OID 17201)
-- Name: centro_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centro_medico
    ADD CONSTRAINT centro_medico_pkey PRIMARY KEY (id);


--
-- TOC entry 2200 (class 2606 OID 17070)
-- Name: estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2204 (class 2606 OID 17072)
-- Name: fos_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fos_user
    ADD CONSTRAINT fos_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2196 (class 2606 OID 17074)
-- Name: idafiliado_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT idafiliado_pk PRIMARY KEY (id);


--
-- TOC entry 2198 (class 2606 OID 17076)
-- Name: idauditoria_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auditoria
    ADD CONSTRAINT idauditoria_pk PRIMARY KEY (id);


--
-- TOC entry 2202 (class 2606 OID 17078)
-- Name: idestatus_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estatus
    ADD CONSTRAINT idestatus_pk PRIMARY KEY (id);


--
-- TOC entry 2212 (class 2606 OID 17080)
-- Name: idparentesco_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parentesco
    ADD CONSTRAINT idparentesco_pk PRIMARY KEY (id);


--
-- TOC entry 2216 (class 2606 OID 17082)
-- Name: idpatologia_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patologia
    ADD CONSTRAINT idpatologia_pk PRIMARY KEY (id);


--
-- TOC entry 2218 (class 2606 OID 17084)
-- Name: idpersona_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT idpersona_pk PRIMARY KEY (id);


--
-- TOC entry 2221 (class 2606 OID 17086)
-- Name: idregistro_solicitud_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT idregistro_solicitud_pk PRIMARY KEY (id);


--
-- TOC entry 2223 (class 2606 OID 17088)
-- Name: idsolicitud_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT idsolicitud_pk PRIMARY KEY (id);


--
-- TOC entry 2226 (class 2606 OID 17090)
-- Name: idtiposolicitud_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tiposolicitud
    ADD CONSTRAINT idtiposolicitud_pk PRIMARY KEY (id);


--
-- TOC entry 2228 (class 2606 OID 17092)
-- Name: idtitular_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY titular
    ADD CONSTRAINT idtitular_pk PRIMARY KEY (id);


--
-- TOC entry 2208 (class 2606 OID 17094)
-- Name: municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 2210 (class 2606 OID 17096)
-- Name: nacionalidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacionalidad
    ADD CONSTRAINT nacionalidad_pkey PRIMARY KEY (id);


--
-- TOC entry 2214 (class 2606 OID 17098)
-- Name: parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 2238 (class 2606 OID 17216)
-- Name: reembolso_solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT reembolso_solicitud_pkey PRIMARY KEY (id);


--
-- TOC entry 2219 (class 1259 OID 17099)
-- Name: idx_51e5b69bfd61e233; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_51e5b69bfd61e233 ON persona USING btree (idusuario);


--
-- TOC entry 2233 (class 1259 OID 17207)
-- Name: idx_59573d39e8c9d535; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_59573d39e8c9d535 ON casos_asignado USING btree (idsolicitud);


--
-- TOC entry 2234 (class 1259 OID 17208)
-- Name: idx_59573d39f62ac5f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_59573d39f62ac5f6 ON casos_asignado USING btree (idanalista);


--
-- TOC entry 2235 (class 1259 OID 17218)
-- Name: idx_6e879b1a37f801f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_6e879b1a37f801f0 ON reembolso_solicitud USING btree (idcentromedico);


--
-- TOC entry 2236 (class 1259 OID 17217)
-- Name: idx_6e879b1a5d8b930d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_6e879b1a5d8b930d ON reembolso_solicitud USING btree (idregistrosolicitud);


--
-- TOC entry 2224 (class 1259 OID 17244)
-- Name: idx_96d27cc0174d74b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_96d27cc0174d74b2 ON solicitud USING btree (idtiposolicitud);


--
-- TOC entry 2205 (class 1259 OID 17100)
-- Name: uniq_957a647992fc23a8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_957a647992fc23a8 ON fos_user USING btree (username_canonical);


--
-- TOC entry 2206 (class 1259 OID 17101)
-- Name: uniq_957a6479a0d96fbf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_957a6479a0d96fbf ON fos_user USING btree (email_canonical);


--
-- TOC entry 2244 (class 2606 OID 17102)
-- Name: fk_51e5b69bfd61e233; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT fk_51e5b69bfd61e233 FOREIGN KEY (idusuario) REFERENCES fos_user(id);


--
-- TOC entry 2254 (class 2606 OID 17219)
-- Name: fk_59573d39e8c9d535; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT fk_59573d39e8c9d535 FOREIGN KEY (idsolicitud) REFERENCES solicitud(id);


--
-- TOC entry 2255 (class 2606 OID 17224)
-- Name: fk_59573d39f62ac5f6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT fk_59573d39f62ac5f6 FOREIGN KEY (idanalista) REFERENCES fos_user(id);


--
-- TOC entry 2257 (class 2606 OID 17234)
-- Name: fk_6e879b1a37f801f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT fk_6e879b1a37f801f0 FOREIGN KEY (idcentromedico) REFERENCES centro_medico(id);


--
-- TOC entry 2256 (class 2606 OID 17229)
-- Name: fk_6e879b1a5d8b930d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT fk_6e879b1a5d8b930d FOREIGN KEY (idregistrosolicitud) REFERENCES registro_solicitud(id);


--
-- TOC entry 2252 (class 2606 OID 17239)
-- Name: fk_96d27cc0174d74b2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fk_96d27cc0174d74b2 FOREIGN KEY (idtiposolicitud) REFERENCES tiposolicitud(id);


--
-- TOC entry 2242 (class 2606 OID 17107)
-- Name: id_estado_fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT id_estado_fk_estado FOREIGN KEY (estado_id) REFERENCES estado(id);


--
-- TOC entry 2247 (class 2606 OID 17112)
-- Name: id_estatus_fk_estatus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT id_estatus_fk_estatus FOREIGN KEY (idestatus) REFERENCES estatus(id);


--
-- TOC entry 2243 (class 2606 OID 17117)
-- Name: id_municipio_fk_municipio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT id_municipio_fk_municipio FOREIGN KEY (municipio_id) REFERENCES municipio(id);


--
-- TOC entry 2245 (class 2606 OID 17122)
-- Name: id_nacionalidad_fk_nacionalidad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT id_nacionalidad_fk_nacionalidad FOREIGN KEY (idnacionalidad) REFERENCES nacionalidad(id);


--
-- TOC entry 2248 (class 2606 OID 17127)
-- Name: id_paciente_fk_personas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT id_paciente_fk_personas FOREIGN KEY (idpaciente) REFERENCES persona(id);


--
-- TOC entry 2239 (class 2606 OID 17132)
-- Name: id_parentesco_fk_parentesco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT id_parentesco_fk_parentesco FOREIGN KEY (idparentesco) REFERENCES parentesco(id);


--
-- TOC entry 2246 (class 2606 OID 17137)
-- Name: id_parroquia_fk_parroquia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT id_parroquia_fk_parroquia FOREIGN KEY (idparroquia) REFERENCES parroquia(id);


--
-- TOC entry 2249 (class 2606 OID 17142)
-- Name: id_patologia_fk_patologia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT id_patologia_fk_patologia FOREIGN KEY (idpatologia) REFERENCES patologia(id);


--
-- TOC entry 2253 (class 2606 OID 17147)
-- Name: id_persona_fk_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY titular
    ADD CONSTRAINT id_persona_fk_persona FOREIGN KEY (idpersona) REFERENCES persona(id);


--
-- TOC entry 2240 (class 2606 OID 17152)
-- Name: id_persona_fk_persona; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT id_persona_fk_persona FOREIGN KEY (idpersona) REFERENCES persona(id);


--
-- TOC entry 2250 (class 2606 OID 17157)
-- Name: id_solicitud_fk_solicitud; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT id_solicitud_fk_solicitud FOREIGN KEY (idsolicitud) REFERENCES solicitud(id);


--
-- TOC entry 2241 (class 2606 OID 17167)
-- Name: id_titular_fk_titular; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT id_titular_fk_titular FOREIGN KEY (idtitular) REFERENCES titular(id);


--
-- TOC entry 2251 (class 2606 OID 17172)
-- Name: id_titular_fk_titular; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT id_titular_fk_titular FOREIGN KEY (idtitular) REFERENCES titular(id);


--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 9
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2017-06-19 09:52:24 VET

--
-- PostgreSQL database dump complete
--

