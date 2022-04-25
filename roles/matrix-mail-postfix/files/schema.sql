--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _accounts; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._accounts (
    id character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    domain character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    quota character varying(1) DEFAULT NULL::character varying,
    enabled character varying(1) DEFAULT NULL::character varying,
    sendonly character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._accounts OWNER TO rebasedata;

--
-- Name: _aliases; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._aliases (
    id character varying(1) DEFAULT NULL::character varying,
    source_username character varying(1) DEFAULT NULL::character varying,
    source_domain character varying(1) DEFAULT NULL::character varying,
    destination_username character varying(1) DEFAULT NULL::character varying,
    destination_domain character varying(1) DEFAULT NULL::character varying,
    enabled character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._aliases OWNER TO rebasedata;

--
-- Name: _domains; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._domains (
    id character varying(1) DEFAULT NULL::character varying,
    domain character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._domains OWNER TO rebasedata;

--
-- Name: _tlspolicies; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._tlspolicies (
    id character varying(1) DEFAULT NULL::character varying,
    domain character varying(1) DEFAULT NULL::character varying,
    policy character varying(1) DEFAULT NULL::character varying,
    params character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._tlspolicies OWNER TO rebasedata;

--
-- Data for Name: _accounts; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._accounts (id, username, domain, password, quota, enabled, sendonly) FROM stdin;
\.


--
-- Data for Name: _aliases; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._aliases (id, source_username, source_domain, destination_username, destination_domain, enabled) FROM stdin;
\.


--
-- Data for Name: _domains; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._domains (id, domain) FROM stdin;
\.


--
-- Data for Name: _tlspolicies; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._tlspolicies (id, domain, policy, params) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

