--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-28 00:58:23 CST

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

--
-- TOC entry 3221 (class 0 OID 19354)
-- Dependencies: 204
-- Data for Name: statuses; Type: TABLE DATA; Schema: refdata; Owner: postgres
--

COPY refdata.statuses (statusid, statusdesc) FROM stdin;
1	Active
2	Inactive
\.


--
-- TOC entry 3223 (class 0 OID 19365)
-- Dependencies: 206
-- Data for Name: industrystd; Type: TABLE DATA; Schema: refdata; Owner: Developer
--

COPY refdata.industrystd (industrystd, industrystddesc, statusid) FROM stdin;
hl7v2	HL7 v 2,x	1
edi	EDI	1
ncpdp	NCPDP 	1
fhir	HL7 FHIR	1
\.


--
-- TOC entry 3225 (class 0 OID 19389)
-- Dependencies: 208
-- Data for Name: usstates; Type: TABLE DATA; Schema: refdata; Owner: Developer
--

COPY refdata.usstates (statecode, statedesc, statusid) FROM stdin;
\.


--
-- TOC entry 3224 (class 0 OID 19377)
-- Dependencies: 207
-- Data for Name: organization; Type: TABLE DATA; Schema: refdata; Owner: Developer
--

COPY refdata.organization (organizationid, organizationname, address, city, statecode, zipcode, areacode, statusid) FROM stdin;
\.


--
-- TOC entry 3231 (class 0 OID 0)
-- Dependencies: 205
-- Name: statuses_statusID_seq; Type: SEQUENCE SET; Schema: refdata; Owner: postgres
--

SELECT pg_catalog.setval('refdata."statuses_statusID_seq"', 2, true);


-- Completed on 2019-12-28 00:58:23 CST

--
-- PostgreSQL database dump complete
--

