CREATE ROLE multitenancy LOGIN
  PASSWORD 'multitenancy'
  SUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

-- Started on 2018-08-27 10:07:46 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2277 (class 1262 OID 21160)
-- Name: multitenancy; Type: DATABASE; Schema: -; Owner: multitenancy
--

CREATE DATABASE multitenancy WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8';


ALTER DATABASE multitenancy OWNER TO multitenancy;

\connect multitenancy

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 21312)
-- Name: schema1; Type: SCHEMA; Schema: -; Owner: multitenancy
--

CREATE SCHEMA schema1;


ALTER SCHEMA schema1 OWNER TO multitenancy;

--
-- TOC entry 9 (class 2615 OID 21343)
-- Name: schema2; Type: SCHEMA; Schema: -; Owner: multitenancy
--

CREATE SCHEMA schema2;


ALTER SCHEMA schema2 OWNER TO multitenancy;

--
-- TOC entry 1 (class 3079 OID 12469)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2279 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 21284)
-- Name: engine; Type: TABLE; Schema: public; Owner: multitenancy
--

CREATE TABLE public.engine (
    id bigint NOT NULL,
    version bigint NOT NULL,
    cylinders integer NOT NULL
);


ALTER TABLE public.engine OWNER TO multitenancy;

--
-- TOC entry 187 (class 1259 OID 21282)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: multitenancy
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO multitenancy;

--
-- TOC entry 189 (class 1259 OID 21289)
-- Name: manufacturer; Type: TABLE; Schema: public; Owner: multitenancy
--

CREATE TABLE public.manufacturer (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.manufacturer OWNER TO multitenancy;

--
-- TOC entry 190 (class 1259 OID 21294)
-- Name: vehicle; Type: TABLE; Schema: public; Owner: multitenancy
--

CREATE TABLE public.vehicle (
    id bigint NOT NULL,
    version bigint NOT NULL,
    year integer NOT NULL,
    model character varying(255) NOT NULL
);


ALTER TABLE public.vehicle OWNER TO multitenancy;

--
-- TOC entry 191 (class 1259 OID 21299)
-- Name: vehicle_engine; Type: TABLE; Schema: public; Owner: multitenancy
--

CREATE TABLE public.vehicle_engine (
    vehicle_engines_id bigint NOT NULL,
    engine_id bigint
);


ALTER TABLE public.vehicle_engine OWNER TO multitenancy;

--
-- TOC entry 192 (class 1259 OID 21313)
-- Name: engine; Type: TABLE; Schema: schema1; Owner: multitenancy
--

CREATE TABLE schema1.engine (
    id bigint NOT NULL,
    version bigint NOT NULL,
    cylinders integer NOT NULL
);


ALTER TABLE schema1.engine OWNER TO multitenancy;

--
-- TOC entry 193 (class 1259 OID 21316)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: schema1; Owner: multitenancy
--

CREATE SEQUENCE schema1.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE schema1.hibernate_sequence OWNER TO multitenancy;

--
-- TOC entry 194 (class 1259 OID 21318)
-- Name: manufacturer; Type: TABLE; Schema: schema1; Owner: multitenancy
--

CREATE TABLE schema1.manufacturer (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE schema1.manufacturer OWNER TO multitenancy;

--
-- TOC entry 195 (class 1259 OID 21321)
-- Name: vehicle; Type: TABLE; Schema: schema1; Owner: multitenancy
--

CREATE TABLE schema1.vehicle (
    id bigint NOT NULL,
    version bigint NOT NULL,
    year integer NOT NULL,
    model character varying(255) NOT NULL
);


ALTER TABLE schema1.vehicle OWNER TO multitenancy;

--
-- TOC entry 196 (class 1259 OID 21324)
-- Name: vehicle_engine; Type: TABLE; Schema: schema1; Owner: multitenancy
--

CREATE TABLE schema1.vehicle_engine (
    vehicle_engines_id bigint NOT NULL,
    engine_id bigint
);


ALTER TABLE schema1.vehicle_engine OWNER TO multitenancy;

--
-- TOC entry 197 (class 1259 OID 21344)
-- Name: engine; Type: TABLE; Schema: schema2; Owner: multitenancy
--

CREATE TABLE schema2.engine (
    id bigint NOT NULL,
    version bigint NOT NULL,
    cylinders integer NOT NULL
);


ALTER TABLE schema2.engine OWNER TO multitenancy;

--
-- TOC entry 198 (class 1259 OID 21347)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: schema2; Owner: multitenancy
--

CREATE SEQUENCE schema2.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE schema2.hibernate_sequence OWNER TO multitenancy;

--
-- TOC entry 199 (class 1259 OID 21349)
-- Name: manufacturer; Type: TABLE; Schema: schema2; Owner: multitenancy
--

CREATE TABLE schema2.manufacturer (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE schema2.manufacturer OWNER TO multitenancy;

--
-- TOC entry 200 (class 1259 OID 21352)
-- Name: vehicle; Type: TABLE; Schema: schema2; Owner: multitenancy
--

CREATE TABLE schema2.vehicle (
    id bigint NOT NULL,
    version bigint NOT NULL,
    year integer NOT NULL,
    model character varying(255) NOT NULL
);


ALTER TABLE schema2.vehicle OWNER TO multitenancy;

--
-- TOC entry 201 (class 1259 OID 21355)
-- Name: vehicle_engine; Type: TABLE; Schema: schema2; Owner: multitenancy
--

CREATE TABLE schema2.vehicle_engine (
    vehicle_engines_id bigint NOT NULL,
    engine_id bigint
);


ALTER TABLE schema2.vehicle_engine OWNER TO multitenancy;

--
-- TOC entry 2132 (class 2606 OID 21288)
-- Name: engine engine_pkey; Type: CONSTRAINT; Schema: public; Owner: multitenancy
--

ALTER TABLE ONLY public.engine
    ADD CONSTRAINT engine_pkey PRIMARY KEY (id);


--
-- TOC entry 2134 (class 2606 OID 21293)
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: multitenancy
--

ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id);


--
-- TOC entry 2136 (class 2606 OID 21298)
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: multitenancy
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (id);


--
-- TOC entry 2138 (class 2606 OID 21328)
-- Name: engine engine_pkey; Type: CONSTRAINT; Schema: schema1; Owner: multitenancy
--

ALTER TABLE ONLY schema1.engine
    ADD CONSTRAINT engine_pkey PRIMARY KEY (id);


--
-- TOC entry 2140 (class 2606 OID 21330)
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: schema1; Owner: multitenancy
--

ALTER TABLE ONLY schema1.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id);


--
-- TOC entry 2142 (class 2606 OID 21332)
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: schema1; Owner: multitenancy
--

ALTER TABLE ONLY schema1.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (id);


--
-- TOC entry 2144 (class 2606 OID 21359)
-- Name: engine engine_pkey; Type: CONSTRAINT; Schema: schema2; Owner: multitenancy
--

ALTER TABLE ONLY schema2.engine
    ADD CONSTRAINT engine_pkey PRIMARY KEY (id);


--
-- TOC entry 2146 (class 2606 OID 21361)
-- Name: manufacturer manufacturer_pkey; Type: CONSTRAINT; Schema: schema2; Owner: multitenancy
--

ALTER TABLE ONLY schema2.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id);


--
-- TOC entry 2148 (class 2606 OID 21363)
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: schema2; Owner: multitenancy
--

ALTER TABLE ONLY schema2.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (id);


--
-- TOC entry 2150 (class 2606 OID 21307)
-- Name: vehicle_engine fk20u1vlbyr35125i6ck6lp5al8; Type: FK CONSTRAINT; Schema: public; Owner: multitenancy
--

ALTER TABLE ONLY public.vehicle_engine
    ADD CONSTRAINT fk20u1vlbyr35125i6ck6lp5al8 FOREIGN KEY (vehicle_engines_id) REFERENCES public.vehicle(id);


--
-- TOC entry 2149 (class 2606 OID 21302)
-- Name: vehicle_engine fkq2ly23eua5t9f146rns6j6mev; Type: FK CONSTRAINT; Schema: public; Owner: multitenancy
--

ALTER TABLE ONLY public.vehicle_engine
    ADD CONSTRAINT fkq2ly23eua5t9f146rns6j6mev FOREIGN KEY (engine_id) REFERENCES public.engine(id);


--
-- TOC entry 2151 (class 2606 OID 21333)
-- Name: vehicle_engine fk20u1vlbyr35125i6ck6lp5al8; Type: FK CONSTRAINT; Schema: schema1; Owner: multitenancy
--

ALTER TABLE ONLY schema1.vehicle_engine
    ADD CONSTRAINT fk20u1vlbyr35125i6ck6lp5al8 FOREIGN KEY (vehicle_engines_id) REFERENCES schema1.vehicle(id);


--
-- TOC entry 2152 (class 2606 OID 21338)
-- Name: vehicle_engine fkq2ly23eua5t9f146rns6j6mev; Type: FK CONSTRAINT; Schema: schema1; Owner: multitenancy
--

ALTER TABLE ONLY schema1.vehicle_engine
    ADD CONSTRAINT fkq2ly23eua5t9f146rns6j6mev FOREIGN KEY (engine_id) REFERENCES schema1.engine(id);


--
-- TOC entry 2153 (class 2606 OID 21364)
-- Name: vehicle_engine fk20u1vlbyr35125i6ck6lp5al8; Type: FK CONSTRAINT; Schema: schema2; Owner: multitenancy
--

ALTER TABLE ONLY schema2.vehicle_engine
    ADD CONSTRAINT fk20u1vlbyr35125i6ck6lp5al8 FOREIGN KEY (vehicle_engines_id) REFERENCES schema2.vehicle(id);


--
-- TOC entry 2154 (class 2606 OID 21369)
-- Name: vehicle_engine fkq2ly23eua5t9f146rns6j6mev; Type: FK CONSTRAINT; Schema: schema2; Owner: multitenancy
--

ALTER TABLE ONLY schema2.vehicle_engine
    ADD CONSTRAINT fkq2ly23eua5t9f146rns6j6mev FOREIGN KEY (engine_id) REFERENCES schema2.engine(id);


-- Completed on 2018-08-27 10:07:46 CEST

--
-- PostgreSQL database dump complete
--

