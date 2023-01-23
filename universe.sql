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
-- Name: dimension; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dimension (
    dimension_id integer NOT NULL,
    name character varying(50),
    diameter_in_dimensional_units integer NOT NULL
);


ALTER TABLE public.dimension OWNER TO freecodecamp;

--
-- Name: dimension_dimension_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dimension_dimension_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dimension_dimension_id_seq OWNER TO freecodecamp;

--
-- Name: dimension_dimension_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dimension_dimension_id_seq OWNED BY public.dimension.dimension_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    diameter_in_light_yrs integer NOT NULL,
    has_swag boolean,
    tripadvisor_rating numeric(3,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    diameter_in_km integer NOT NULL,
    period_in_h integer NOT NULL,
    has_swag boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    diameter_in_km integer NOT NULL,
    hosts_life boolean,
    hosts_intelligent_life boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    diameter_in_km integer NOT NULL,
    has_swag boolean,
    fusion_fuel text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dimension dimension_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension ALTER COLUMN dimension_id SET DEFAULT nextval('public.dimension_dimension_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dimension; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dimension VALUES (1, 'Monkey_dimension', 19191919);
INSERT INTO public.dimension VALUES (2, 'Vanilla_dimension', 8888919);
INSERT INTO public.dimension VALUES (3, 'Hash_brownie_dimension', 8888000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pete', 15622, false, 7.9);
INSERT INTO public.galaxy VALUES (2, 'Berta', 17, true, 9.0);
INSERT INTO public.galaxy VALUES (3, 'Nebulon_5', 3475982, true, 5.0);
INSERT INTO public.galaxy VALUES (4, 'Nebulon_9', 23876235, true, 3.2);
INSERT INTO public.galaxy VALUES (5, 'Hilton_Resort', 2342233, false, 4.3);
INSERT INTO public.galaxy VALUES (6, 'SSW', 1, true, 10.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'To', 1, 9, true, 1);
INSERT INTO public.moon VALUES (2, 'Tog', 12, 92, true, 1);
INSERT INTO public.moon VALUES (3, 'Toug', 212, 292, true, 1);
INSERT INTO public.moon VALUES (4, 'Ga', 2124, 24, false, 2);
INSERT INTO public.moon VALUES (5, 'Gas', 251524, 254, false, 2);
INSERT INTO public.moon VALUES (6, 'Gask', 514, 54, false, 2);
INSERT INTO public.moon VALUES (7, 'Gasok', 5214, 54, false, 3);
INSERT INTO public.moon VALUES (8, 'Gasoki', 95214, 54, false, 3);
INSERT INTO public.moon VALUES (9, 'Gasokif', 958, 548, false, 4);
INSERT INTO public.moon VALUES (10, 'Fu', 7958, 548, false, 4);
INSERT INTO public.moon VALUES (11, 'Fum', 79458, 8, false, 4);
INSERT INTO public.moon VALUES (12, 'Fumm', 79458, 8, true, 4);
INSERT INTO public.moon VALUES (13, 'Fumml', 458, 8, true, 5);
INSERT INTO public.moon VALUES (14, 'Fummli', 418, 8, true, 7);
INSERT INTO public.moon VALUES (15, 'Fummlib', 118, 48, true, 8);
INSERT INTO public.moon VALUES (16, 'Fummlibb', 1182, 48, true, 9);
INSERT INTO public.moon VALUES (17, 'Fummlibbl', 1182, 4558, false, 10);
INSERT INTO public.moon VALUES (18, 'Fummlibbli', 1182, 4558, false, 11);
INSERT INTO public.moon VALUES (19, 'Fummlibblig', 11825, 4558, false, 12);
INSERT INTO public.moon VALUES (20, 'Fummlibbligu', 825, 4558, true, 12);
INSERT INTO public.moon VALUES (21, 'Fummlibbliguz', 825, 4558, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Grubb', 34, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Igg', 34, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Bazz', 111, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Pumm', 191, false, false, 2);
INSERT INTO public.planet VALUES (5, 'Puk', 199, true, true, 2);
INSERT INTO public.planet VALUES (6, 'Pak', 399, true, true, 2);
INSERT INTO public.planet VALUES (7, 'Quk', 5399, true, true, 3);
INSERT INTO public.planet VALUES (8, 'Zuk', 54399, true, true, 3);
INSERT INTO public.planet VALUES (9, 'Huk', 14399, true, true, 5);
INSERT INTO public.planet VALUES (10, 'Slug', 94399, true, true, 5);
INSERT INTO public.planet VALUES (11, 'Treg', 34399, true, false, 4);
INSERT INTO public.planet VALUES (12, 'Ceg', 314399, true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Grufti', 234, true, 'H2', 1);
INSERT INTO public.star VALUES (2, 'Miesmuschel', 76788, true, 'O2', 2);
INSERT INTO public.star VALUES (3, 'Rani', 90000, true, 'Fe', 4);
INSERT INTO public.star VALUES (4, 'Marcel', 2, false, 'Li', 1);
INSERT INTO public.star VALUES (5, 'Osiris', 51, false, 'H2', 3);
INSERT INTO public.star VALUES (6, 'Nabulon', 42, true, 'He', 3);


--
-- Name: dimension_dimension_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dimension_dimension_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dimension dimension_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT dimension_name_key UNIQUE (name);


--
-- Name: dimension dimension_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dimension
    ADD CONSTRAINT dimension_pkey PRIMARY KEY (dimension_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

