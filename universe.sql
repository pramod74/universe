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
    name character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_millions_of_miles integer
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
    name character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_millions_of_miles integer,
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
    name character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_millions_of_miles integer,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(40) NOT NULL,
    estimated_count numeric,
    inhabitable text,
    planet_types_id integer NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth_in_millions_of_miles integer,
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, true, 1000, 200);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', true, false, 1000, 2000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', false, false, 2500, 5000);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', false, false, 3000, 1000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, true, 500, 2500);
INSERT INTO public.galaxy VALUES (6, 'Large Megallanic', false, false, 3000, 1200);
INSERT INTO public.galaxy VALUES (7, 'Cart Wheel', false, true, 5000, 5100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, false, 10, 1, 1);
INSERT INTO public.moon VALUES (2, 'Europa', false, false, 20, 2, 5);
INSERT INTO public.moon VALUES (3, 'Io', false, false, 30, 3, 5);
INSERT INTO public.moon VALUES (4, 'Ganymede', false, false, 40, 4, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', false, false, 50, 5, 5);
INSERT INTO public.moon VALUES (6, 'Amalthea', false, false, 60, 6, 5);
INSERT INTO public.moon VALUES (7, 'Adrastea', false, false, 70, 7, 5);
INSERT INTO public.moon VALUES (8, 'Jupiter LXI', false, false, 80, 8, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', false, false, 90, 9, 5);
INSERT INTO public.moon VALUES (10, 'Thebe', false, false, 100, 10, 5);
INSERT INTO public.moon VALUES (11, 'Valetudo', false, false, 110, 11, 5);
INSERT INTO public.moon VALUES (12, 'Lysithea', false, false, 120, 12, 5);
INSERT INTO public.moon VALUES (13, 'Euporie', false, false, 130, 13, 5);
INSERT INTO public.moon VALUES (14, 'Carme', false, false, 140, 14, 5);
INSERT INTO public.moon VALUES (15, 'Kallichore', false, false, 150, 15, 5);
INSERT INTO public.moon VALUES (16, 'Jupiter LXIII', false, false, 160, 16, 5);
INSERT INTO public.moon VALUES (17, 'Jupiter LII', false, false, 170, 17, 5);
INSERT INTO public.moon VALUES (18, 'Elara', false, false, 180, 18, 5);
INSERT INTO public.moon VALUES (19, 'S/2003 J 2', false, false, 190, 19, 5);
INSERT INTO public.moon VALUES (20, 'Harpalyke', false, false, 200, 20, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, true, 50, 10, 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, true, 60, 20, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, true, 70, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, true, 60, 20, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 70, 30, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 80, 40, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 100, 50, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 150, 80, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 200, 100, 1);
INSERT INTO public.planet VALUES (10, 'Proxima d', false, false, 50, 10, 2);
INSERT INTO public.planet VALUES (11, 'Proxima b', false, false, 60, 20, 3);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri', false, false, 70, 500, 4);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('Dwarf Planet', 500, 'No', 1);
INSERT INTO public.planet_types VALUES ('ice Giant', 100, 'No', 2);
INSERT INTO public.planet_types VALUES ('Giant Planet', 200, 'Yes', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, true, 500, 25, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', false, true, 1000, 250, 1);
INSERT INTO public.star VALUES (3, 'Alpheratz', false, false, 1000, 250, 2);
INSERT INTO public.star VALUES (4, 'Adhil', false, false, 1200, 300, 2);
INSERT INTO public.star VALUES (5, 'Nembus', false, false, 1500, 200, 2);
INSERT INTO public.star VALUES (6, 'Messier 51', false, false, 1500, 55, 3);
INSERT INTO public.star VALUES (7, 'Le Gentil', false, false, 1200, 2500, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pk PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_type_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_type_id_key UNIQUE (planet_types_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


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

