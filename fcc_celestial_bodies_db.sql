--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    shape text,
    color text,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: junk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.junk (
    junk_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.junk OWNER TO freecodecamp;

--
-- Name: junk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junk_id_seq OWNER TO freecodecamp;

--
-- Name: junk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junk_id_seq OWNED BY public.junk.junk_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    planet_id integer,
    size integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    has_life boolean,
    star_id integer,
    size integer,
    description text NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    has_life boolean,
    size numeric NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: junk junk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk ALTER COLUMN junk_id SET DEFAULT nextval('public.junk_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a1241', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b1241', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'z1123', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'p500', true, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'z1111', false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'b12341', true, NULL, NULL, NULL);


--
-- Data for Name: junk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.junk VALUES (1, 'a', 'b');
INSERT INTO public.junk VALUES (2, 'c', 'd');
INSERT INTO public.junk VALUES (3, 'e', 'f');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (3, 'b', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (4, 'c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (5, 'd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (6, 'ba', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (7, '1c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (8, 'dcd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (9, 'b5151a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (10, '13213c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (11, 'd55151cd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (12, '131351a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (13, '12626236263213c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (14, 'dgzdfsgdzsfb55151cd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (15, '51a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (16, '12626213c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (17, 'dgzsfb55151cd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (18, '5111111a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (19, '12626233313c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (20, 'dgzsfb5515bxcbx1cd', NULL, 5, 20, NULL);
INSERT INTO public.moon VALUES (21, '511a', NULL, 2, 2, NULL);
INSERT INTO public.moon VALUES (22, '13c', NULL, 3, 3, NULL);
INSERT INTO public.moon VALUES (23, 'dgzsfb551fafa5bxcbx1cd', NULL, 5, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'greaga', NULL, 1, NULL, 'hhhah');
INSERT INTO public.planet VALUES (3, 'nnnana', NULL, 2, NULL, 'dsaa');
INSERT INTO public.planet VALUES (4, 'pppp', NULL, 3, NULL, 'oooo');
INSERT INTO public.planet VALUES (5, 'kkk', NULL, 4, NULL, 'kkkk');
INSERT INTO public.planet VALUES (6, 'bbb', NULL, 5, NULL, 'bbb');
INSERT INTO public.planet VALUES (7, 'greaggga', NULL, 1, NULL, 'hhhah');
INSERT INTO public.planet VALUES (8, 'n4141nnana', NULL, 2, NULL, 'dsaa');
INSERT INTO public.planet VALUES (9, '6767pppp', NULL, 6, NULL, 'oooo');
INSERT INTO public.planet VALUES (10, 'kga123', NULL, 7, NULL, 'kkkk');
INSERT INTO public.planet VALUES (11, 'bb21b', NULL, 5, NULL, 'bbb');
INSERT INTO public.planet VALUES (13, 'greaggg77777a', NULL, 3, NULL, 'hhhah');
INSERT INTO public.planet VALUES (14, 'greaggg77775151517a', NULL, 6, NULL, 'hhhah');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, false, 3141.21, 'ataxis', 1);
INSERT INTO public.star VALUES (2, false, 3145141.21, 'btaxis', 1);
INSERT INTO public.star VALUES (3, true, 5151, 'fasba', 3);
INSERT INTO public.star VALUES (4, true, 656666, 'nnana', 6);
INSERT INTO public.star VALUES (5, true, 9999999, 'pwerag', 3);
INSERT INTO public.star VALUES (6, false, 44444, 'hjhaha', 3);
INSERT INTO public.star VALUES (7, true, 1121, 'aaaa', 4);
INSERT INTO public.star VALUES (8, false, 134131, 'ffff', 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: junk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junk_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: junk junk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk
    ADD CONSTRAINT junk_pkey PRIMARY KEY (junk_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: junk unique_junk_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk
    ADD CONSTRAINT unique_junk_name UNIQUE (name);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

