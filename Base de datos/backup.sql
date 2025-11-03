--
-- PostgreSQL database dump
--

\restrict WIBOo5CbJEGo8hdfofJyfa9XPOP92Zu96DdO2vKI2XIzHGab6Oqn2AM9DCMWT2e

-- Dumped from database version 18.0
-- Dumped by pg_dump version 18.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: ejercicios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ejercicios (
    id_ejercicio integer NOT NULL,
    enunciado text,
    tipo character varying(50),
    respuesta_corta character varying(255),
    id_leccion integer
);


ALTER TABLE public.ejercicios OWNER TO postgres;

--
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.ejercicios ALTER COLUMN id_ejercicio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ejercicios_id_ejercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: estudiantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estudiantes (
    id_estudiante integer NOT NULL,
    nombre_usuario character varying(50),
    credencial character varying(100),
    grado character varying(20)
);


ALTER TABLE public.estudiantes OWNER TO postgres;

--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.estudiantes ALTER COLUMN id_estudiante ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.estudiantes_id_estudiante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    id_feedback integer NOT NULL,
    comentario text,
    id_leccion integer,
    id_respuesta integer
);


ALTER TABLE public.feedback OWNER TO postgres;

--
-- Name: feedback_id_feedback_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.feedback ALTER COLUMN id_feedback ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.feedback_id_feedback_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: leccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leccion (
    id_leccion integer NOT NULL,
    titulo_leccion character varying(150),
    contenido_leccion text,
    multimedia_leccion character varying(255),
    genero character varying(30),
    id_tema integer
);


ALTER TABLE public.leccion OWNER TO postgres;

--
-- Name: leccion_id_leccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.leccion ALTER COLUMN id_leccion ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.leccion_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: progreso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.progreso (
    id_progreso integer NOT NULL,
    id_estudiante integer,
    nivel_actual integer,
    puntos_totales numeric(10,2),
    temas_completados integer
);


ALTER TABLE public.progreso OWNER TO postgres;

--
-- Name: progreso_id_progreso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.progreso ALTER COLUMN id_progreso ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.progreso_id_progreso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: respuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respuestas (
    id_respuesta integer NOT NULL,
    respuesta text,
    puntuaje_obtenido numeric(6,2),
    fecha date,
    respuesta_correcta boolean DEFAULT true,
    id_ejercicio integer,
    id_estudiante integer
);


ALTER TABLE public.respuestas OWNER TO postgres;

--
-- Name: respuestas_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.respuestas ALTER COLUMN id_respuesta ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.respuestas_id_respuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: tema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tema (
    id_tema integer NOT NULL,
    nombre_tema character varying(30),
    descripcion character varying(255)
);


ALTER TABLE public.tema OWNER TO postgres;

--
-- Name: tema_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tema ALTER COLUMN id_tema ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tema_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ejercicios (id_ejercicio, enunciado, tipo, respuesta_corta, id_leccion) FROM stdin;
\.


--
-- Data for Name: estudiantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiantes (id_estudiante, nombre_usuario, credencial, grado) FROM stdin;
\.


--
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedback (id_feedback, comentario, id_leccion, id_respuesta) FROM stdin;
\.


--
-- Data for Name: leccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.leccion (id_leccion, titulo_leccion, contenido_leccion, multimedia_leccion, genero, id_tema) FROM stdin;
\.


--
-- Data for Name: progreso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.progreso (id_progreso, id_estudiante, nivel_actual, puntos_totales, temas_completados) FROM stdin;
\.


--
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respuestas (id_respuesta, respuesta, puntuaje_obtenido, fecha, respuesta_correcta, id_ejercicio, id_estudiante) FROM stdin;
\.


--
-- Data for Name: tema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tema (id_tema, nombre_tema, descripcion) FROM stdin;
\.


--
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ejercicios_id_ejercicio_seq', 1, false);


--
-- Name: estudiantes_id_estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiantes_id_estudiante_seq', 1, false);


--
-- Name: feedback_id_feedback_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedback_id_feedback_seq', 1, false);


--
-- Name: leccion_id_leccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.leccion_id_leccion_seq', 1, false);


--
-- Name: progreso_id_progreso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.progreso_id_progreso_seq', 1, false);


--
-- Name: respuestas_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_respuesta_seq', 1, false);


--
-- Name: tema_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tema_id_tema_seq', 1, false);


--
-- Name: ejercicios ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicio);


--
-- Name: estudiantes estudiantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estudiantes
    ADD CONSTRAINT estudiantes_pkey PRIMARY KEY (id_estudiante);


--
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (id_feedback);


--
-- Name: leccion leccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leccion
    ADD CONSTRAINT leccion_pkey PRIMARY KEY (id_leccion);


--
-- Name: progreso progreso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT progreso_pkey PRIMARY KEY (id_progreso);


--
-- Name: respuestas respuestas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pkey PRIMARY KEY (id_respuesta);


--
-- Name: tema tema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tema
    ADD CONSTRAINT tema_pkey PRIMARY KEY (id_tema);


--
-- Name: ejercicios fk_ejercicio_leccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ejercicios
    ADD CONSTRAINT fk_ejercicio_leccion FOREIGN KEY (id_leccion) REFERENCES public.leccion(id_leccion) ON DELETE CASCADE;


--
-- Name: feedback fk_feedback_leccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT fk_feedback_leccion FOREIGN KEY (id_leccion) REFERENCES public.leccion(id_leccion) ON DELETE SET NULL;


--
-- Name: feedback fk_feedback_respuesta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT fk_feedback_respuesta FOREIGN KEY (id_respuesta) REFERENCES public.respuestas(id_respuesta) ON DELETE SET NULL;


--
-- Name: leccion fk_leccion_tema; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leccion
    ADD CONSTRAINT fk_leccion_tema FOREIGN KEY (id_tema) REFERENCES public.tema(id_tema) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: progreso fk_progreso_estudiante; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT fk_progreso_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante) ON DELETE CASCADE;


--
-- Name: respuestas fk_respuesta_ejercicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_respuesta_ejercicio FOREIGN KEY (id_ejercicio) REFERENCES public.ejercicios(id_ejercicio) ON DELETE CASCADE;


--
-- Name: respuestas fk_respuesta_estudiante; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT fk_respuesta_estudiante FOREIGN KEY (id_estudiante) REFERENCES public.estudiantes(id_estudiante) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict WIBOo5CbJEGo8hdfofJyfa9XPOP92Zu96DdO2vKI2XIzHGab6Oqn2AM9DCMWT2e

