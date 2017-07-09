--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.7
-- Dumped by pg_dump version 9.5.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: afiliado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE afiliado (
    id integer NOT NULL,
    idafiliado integer,
    idtitular integer
);


ALTER TABLE afiliado OWNER TO postgres;

--
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
-- Name: auditoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auditoria (
    id integer NOT NULL,
    fecha_accion date,
    usuario_id integer NOT NULL,
    tabla character varying(255) NOT NULL,
    accion character varying(255) NOT NULL,
    campo character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL
);


ALTER TABLE auditoria OWNER TO postgres;

--
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
-- Name: casos_asignado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE casos_asignado (
    id integer NOT NULL,
    idanalista integer,
    idsolicitud integer,
    completado boolean NOT NULL
);


ALTER TABLE casos_asignado OWNER TO postgres;

--
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
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estado (
    id integer NOT NULL,
    descripcion character varying(100) DEFAULT NULL::character varying,
    seleccion integer
);


ALTER TABLE estado OWNER TO postgres;

--
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
-- Name: estatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estatus (
    id integer NOT NULL,
    estatus character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE estatus OWNER TO postgres;

--
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
-- Name: COLUMN fos_user.roles; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN fos_user.roles IS '(DC2Type:array)';


--
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
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE municipio (
    id integer NOT NULL,
    estado_id integer,
    descripcion character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE municipio OWNER TO postgres;

--
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
-- Name: nacionalidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE nacionalidad (
    id integer NOT NULL,
    nacionalidad character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE nacionalidad OWNER TO postgres;

--
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
-- Name: parentesco; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parentesco (
    id integer NOT NULL,
    parentesco character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE parentesco OWNER TO postgres;

--
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
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE parroquia (
    id integer NOT NULL,
    municipio_id integer,
    descripcion character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE parroquia OWNER TO postgres;

--
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
-- Name: patologia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE patologia (
    id integer NOT NULL,
    patologia character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE patologia OWNER TO postgres;

--
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
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona (
    id integer NOT NULL,
    idnacionalidad integer,
    idparroquia integer,
    idparentesco integer,
    primer_apellido character varying(50) NOT NULL,
    segundo_apellido character varying(50) DEFAULT NULL::character varying,
    primer_nombre character varying(50) NOT NULL,
    segundo_nombre character varying(50) DEFAULT NULL::character varying,
    cedula integer,
    fecha_nacimiento date,
    direccion text,
    genero character varying(1) NOT NULL,
    telefono_1 character varying(11) DEFAULT NULL::character varying,
    telefono_2 character varying(11) DEFAULT NULL::character varying,
    cedula_ruta character varying(255) NOT NULL,
    carnet_ruta character varying(255) DEFAULT NULL::character varying,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE persona OWNER TO postgres;

--
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
-- Name: persona_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE persona_user (
    id integer NOT NULL,
    idpersona integer,
    idusuario integer
);


ALTER TABLE persona_user OWNER TO postgres;

--
-- Name: persona_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE persona_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persona_user_id_seq OWNER TO postgres;

--
-- Name: reembolso_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reembolso_solicitud (
    id integer NOT NULL,
    idcentromedico integer,
    idregistrosolicitud integer,
    monto_solicitado numeric(10,2) NOT NULL,
    presupuesto_recibo_ruta text,
    monto_aprobado numeric(10,2) NOT NULL
);


ALTER TABLE reembolso_solicitud OWNER TO postgres;

--
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
-- Name: registro_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE registro_solicitud (
    id integer NOT NULL,
    idestatus integer,
    idpaciente integer,
    idpatologia integer,
    idsolicitud integer,
    tratamiento text,
    observacion text,
    informe_medico_ruta text,
    fecha_aprobado date,
    completado boolean
);


ALTER TABLE registro_solicitud OWNER TO postgres;

--
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
-- Name: saime_cedulas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE saime_cedulas (
    id integer NOT NULL,
    letra character varying(255) DEFAULT NULL::character varying,
    numcedula integer,
    paisorigen character varying(1) DEFAULT NULL::character varying,
    nacionalidad character varying(255) DEFAULT NULL::character varying,
    primernombre character varying(255) DEFAULT NULL::character varying,
    segundonombre character varying(255) DEFAULT NULL::character varying,
    primerapellido character varying(255) DEFAULT NULL::character varying,
    segundoapellido character varying(255) DEFAULT NULL::character varying,
    fechanac character varying(255) DEFAULT NULL::character varying,
    fechacedorg character varying(1) DEFAULT NULL::character varying,
    codobjecion character varying(1) DEFAULT NULL::character varying,
    codoficina character varying(1) DEFAULT NULL::character varying,
    codestadocivil character varying(255) DEFAULT NULL::character varying,
    naturalizado character varying(255) DEFAULT NULL::character varying,
    sexo character varying(255) DEFAULT NULL::character varying,
    fecha_creacion timestamp(0) without time zone NOT NULL
);


ALTER TABLE saime_cedulas OWNER TO postgres;

--
-- Name: saime_cedulas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE saime_cedulas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE saime_cedulas_id_seq OWNER TO postgres;

--
-- Name: solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE solicitud (
    id integer NOT NULL,
    idtiposolicitud integer,
    idtitular integer,
    fecha_solicitud date,
    observacion text,
    completado boolean
);


ALTER TABLE solicitud OWNER TO postgres;

--
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
-- Name: tiposolicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tiposolicitud (
    id integer NOT NULL,
    tiposolicitud character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE tiposolicitud OWNER TO postgres;

--
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
-- Data for Name: afiliado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY afiliado (id, idafiliado, idtitular) FROM stdin;
\.


--
-- Name: afiliado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('afiliado_id_seq', 1, false);


--
-- Data for Name: auditoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auditoria (id, fecha_accion, usuario_id, tabla, accion, campo, descripcion) FROM stdin;
\.


--
-- Name: auditoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auditoria_id_seq', 1, false);


--
-- Data for Name: casos_asignado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY casos_asignado (id, idanalista, idsolicitud, completado) FROM stdin;
\.


--
-- Name: casos_asignado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('casos_asignado_id_seq', 1, false);


--
-- Data for Name: centro_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY centro_medico (id, descripcion, telefono, direccion) FROM stdin;
\.


--
-- Name: centro_medico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('centro_medico_id_seq', 1, false);


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estado (id, descripcion, seleccion) FROM stdin;
\.


--
-- Name: estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estado_id_seq', 1, false);


--
-- Data for Name: estatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY estatus (id, estatus) FROM stdin;
\.


--
-- Name: estatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('estatus_id_seq', 1, false);


--
-- Data for Name: fos_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fos_user (id, username, username_canonical, email, email_canonical, enabled, salt, password, last_login, locked, expired, expires_at, confirmation_token, password_requested_at, roles, credentials_expired, credentials_expire_at) FROM stdin;
\.


--
-- Name: fos_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fos_user_id_seq', 1, false);


--
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY municipio (id, estado_id, descripcion) FROM stdin;
\.


--
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_id_seq', 1, false);


--
-- Data for Name: nacionalidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY nacionalidad (id, nacionalidad) FROM stdin;
\.


--
-- Name: nacionalidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('nacionalidad_id_seq', 1, false);


--
-- Data for Name: parentesco; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY parentesco (id, parentesco) FROM stdin;
\.


--
-- Name: parentesco_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parentesco_id_seq', 1, false);


--
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY parroquia (id, municipio_id, descripcion) FROM stdin;
\.


--
-- Name: parroquia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parroquia_id_seq', 1, false);


--
-- Data for Name: patologia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY patologia (id, patologia) FROM stdin;
\.


--
-- Name: patologia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('patologia_id_seq', 1, false);


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona (id, idnacionalidad, idparroquia, idparentesco, primer_apellido, segundo_apellido, primer_nombre, segundo_nombre, cedula, fecha_nacimiento, direccion, genero, telefono_1, telefono_2, cedula_ruta, carnet_ruta, updated_at) FROM stdin;
\.


--
-- Name: persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_id_seq', 1, false);


--
-- Data for Name: persona_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY persona_user (id, idpersona, idusuario) FROM stdin;
\.


--
-- Name: persona_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('persona_user_id_seq', 1, false);


--
-- Data for Name: reembolso_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reembolso_solicitud (id, idcentromedico, idregistrosolicitud, monto_solicitado, presupuesto_recibo_ruta, monto_aprobado) FROM stdin;
\.


--
-- Name: reembolso_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('reembolso_solicitud_id_seq', 1, false);


--
-- Data for Name: registro_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY registro_solicitud (id, idestatus, idpaciente, idpatologia, idsolicitud, tratamiento, observacion, informe_medico_ruta, fecha_aprobado, completado) FROM stdin;
\.


--
-- Name: registro_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('registro_solicitud_id_seq', 1, false);


--
-- Data for Name: saime_cedulas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY saime_cedulas (id, letra, numcedula, paisorigen, nacionalidad, primernombre, segundonombre, primerapellido, segundoapellido, fechanac, fechacedorg, codobjecion, codoficina, codestadocivil, naturalizado, sexo, fecha_creacion) FROM stdin;
\.


--
-- Name: saime_cedulas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('saime_cedulas_id_seq', 1, false);


--
-- Data for Name: solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY solicitud (id, idtiposolicitud, idtitular, fecha_solicitud, observacion, completado) FROM stdin;
\.


--
-- Name: solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('solicitud_id_seq', 1, false);


--
-- Data for Name: tiposolicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tiposolicitud (id, tiposolicitud) FROM stdin;
\.


--
-- Name: tiposolicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tiposolicitud_id_seq', 1, false);


--
-- Name: afiliado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT afiliado_pkey PRIMARY KEY (id);


--
-- Name: auditoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auditoria
    ADD CONSTRAINT auditoria_pkey PRIMARY KEY (id);


--
-- Name: casos_asignado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT casos_asignado_pkey PRIMARY KEY (id);


--
-- Name: centro_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY centro_medico
    ADD CONSTRAINT centro_medico_pkey PRIMARY KEY (id);


--
-- Name: estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- Name: estatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estatus
    ADD CONSTRAINT estatus_pkey PRIMARY KEY (id);


--
-- Name: fos_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fos_user
    ADD CONSTRAINT fos_user_pkey PRIMARY KEY (id);


--
-- Name: municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- Name: nacionalidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY nacionalidad
    ADD CONSTRAINT nacionalidad_pkey PRIMARY KEY (id);


--
-- Name: parentesco_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parentesco
    ADD CONSTRAINT parentesco_pkey PRIMARY KEY (id);


--
-- Name: parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- Name: patologia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY patologia
    ADD CONSTRAINT patologia_pkey PRIMARY KEY (id);


--
-- Name: persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (id);


--
-- Name: persona_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona_user
    ADD CONSTRAINT persona_user_pkey PRIMARY KEY (id);


--
-- Name: reembolso_solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT reembolso_solicitud_pkey PRIMARY KEY (id);


--
-- Name: registro_solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT registro_solicitud_pkey PRIMARY KEY (id);


--
-- Name: saime_cedulas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY saime_cedulas
    ADD CONSTRAINT saime_cedulas_pkey PRIMARY KEY (id);


--
-- Name: solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT solicitud_pkey PRIMARY KEY (id);


--
-- Name: tiposolicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tiposolicitud
    ADD CONSTRAINT tiposolicitud_pkey PRIMARY KEY (id);


--
-- Name: idx_23a7166858bc1be0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_23a7166858bc1be0 ON parroquia USING btree (municipio_id);


--
-- Name: idx_319b09b99b4e41b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_319b09b99b4e41b4 ON afiliado USING btree (idafiliado);


--
-- Name: idx_319b09b9a62749a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_319b09b9a62749a9 ON afiliado USING btree (idtitular);


--
-- Name: idx_3c2e4c851242aed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_3c2e4c851242aed ON registro_solicitud USING btree (idestatus);


--
-- Name: idx_3c2e4c869e0b680; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_3c2e4c869e0b680 ON registro_solicitud USING btree (idpatologia);


--
-- Name: idx_3c2e4c86c1ee153; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_3c2e4c86c1ee153 ON registro_solicitud USING btree (idpaciente);


--
-- Name: idx_3c2e4c8e8c9d535; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_3c2e4c8e8c9d535 ON registro_solicitud USING btree (idsolicitud);


--
-- Name: idx_42f0df4b8ee1e4f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_42f0df4b8ee1e4f5 ON persona_user USING btree (idpersona);


--
-- Name: idx_42f0df4bfd61e233; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_42f0df4bfd61e233 ON persona_user USING btree (idusuario);


--
-- Name: idx_51e5b69b53b72d2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_51e5b69b53b72d2c ON persona USING btree (idparentesco);


--
-- Name: idx_51e5b69b5dbcbf9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_51e5b69b5dbcbf9d ON persona USING btree (idparroquia);


--
-- Name: idx_51e5b69bd5b220ca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_51e5b69bd5b220ca ON persona USING btree (idnacionalidad);


--
-- Name: idx_59573d39e8c9d535; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_59573d39e8c9d535 ON casos_asignado USING btree (idsolicitud);


--
-- Name: idx_59573d39f62ac5f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_59573d39f62ac5f6 ON casos_asignado USING btree (idanalista);


--
-- Name: idx_6e879b1a37f801f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_6e879b1a37f801f0 ON reembolso_solicitud USING btree (idcentromedico);


--
-- Name: idx_6e879b1a5d8b930d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_6e879b1a5d8b930d ON reembolso_solicitud USING btree (idregistrosolicitud);


--
-- Name: idx_96d27cc0174d74b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_96d27cc0174d74b2 ON solicitud USING btree (idtiposolicitud);


--
-- Name: idx_96d27cc0a62749a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_96d27cc0a62749a9 ON solicitud USING btree (idtitular);


--
-- Name: idx_fe98f5e09f5a440b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_fe98f5e09f5a440b ON municipio USING btree (estado_id);


--
-- Name: uniq_957a647992fc23a8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_957a647992fc23a8 ON fos_user USING btree (username_canonical);


--
-- Name: uniq_957a6479a0d96fbf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX uniq_957a6479a0d96fbf ON fos_user USING btree (email_canonical);


--
-- Name: fk_23a7166858bc1be0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY parroquia
    ADD CONSTRAINT fk_23a7166858bc1be0 FOREIGN KEY (municipio_id) REFERENCES municipio(id);


--
-- Name: fk_319b09b99b4e41b4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT fk_319b09b99b4e41b4 FOREIGN KEY (idafiliado) REFERENCES persona(id);


--
-- Name: fk_319b09b9a62749a9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY afiliado
    ADD CONSTRAINT fk_319b09b9a62749a9 FOREIGN KEY (idtitular) REFERENCES persona(id);


--
-- Name: fk_3c2e4c851242aed; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT fk_3c2e4c851242aed FOREIGN KEY (idestatus) REFERENCES estatus(id);


--
-- Name: fk_3c2e4c869e0b680; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT fk_3c2e4c869e0b680 FOREIGN KEY (idpatologia) REFERENCES patologia(id);


--
-- Name: fk_3c2e4c86c1ee153; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT fk_3c2e4c86c1ee153 FOREIGN KEY (idpaciente) REFERENCES persona(id);


--
-- Name: fk_3c2e4c8e8c9d535; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY registro_solicitud
    ADD CONSTRAINT fk_3c2e4c8e8c9d535 FOREIGN KEY (idsolicitud) REFERENCES solicitud(id);


--
-- Name: fk_42f0df4b8ee1e4f5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona_user
    ADD CONSTRAINT fk_42f0df4b8ee1e4f5 FOREIGN KEY (idpersona) REFERENCES persona(id);


--
-- Name: fk_42f0df4bfd61e233; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona_user
    ADD CONSTRAINT fk_42f0df4bfd61e233 FOREIGN KEY (idusuario) REFERENCES fos_user(id);


--
-- Name: fk_51e5b69b53b72d2c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT fk_51e5b69b53b72d2c FOREIGN KEY (idparentesco) REFERENCES parentesco(id);


--
-- Name: fk_51e5b69b5dbcbf9d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT fk_51e5b69b5dbcbf9d FOREIGN KEY (idparroquia) REFERENCES parroquia(id);


--
-- Name: fk_51e5b69bd5b220ca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY persona
    ADD CONSTRAINT fk_51e5b69bd5b220ca FOREIGN KEY (idnacionalidad) REFERENCES nacionalidad(id);


--
-- Name: fk_59573d39e8c9d535; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT fk_59573d39e8c9d535 FOREIGN KEY (idsolicitud) REFERENCES solicitud(id);


--
-- Name: fk_59573d39f62ac5f6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY casos_asignado
    ADD CONSTRAINT fk_59573d39f62ac5f6 FOREIGN KEY (idanalista) REFERENCES fos_user(id);


--
-- Name: fk_6e879b1a37f801f0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT fk_6e879b1a37f801f0 FOREIGN KEY (idcentromedico) REFERENCES centro_medico(id);


--
-- Name: fk_6e879b1a5d8b930d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reembolso_solicitud
    ADD CONSTRAINT fk_6e879b1a5d8b930d FOREIGN KEY (idregistrosolicitud) REFERENCES registro_solicitud(id);


--
-- Name: fk_96d27cc0174d74b2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fk_96d27cc0174d74b2 FOREIGN KEY (idtiposolicitud) REFERENCES tiposolicitud(id);


--
-- Name: fk_96d27cc0a62749a9; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY solicitud
    ADD CONSTRAINT fk_96d27cc0a62749a9 FOREIGN KEY (idtitular) REFERENCES persona(id);


--
-- Name: fk_fe98f5e09f5a440b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY municipio
    ADD CONSTRAINT fk_fe98f5e09f5a440b FOREIGN KEY (estado_id) REFERENCES estado(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

