--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: age_in_millions_of_years; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_in_millions_of_years (
);


ALTER TABLE public.age_in_millions_of_years OWNER TO freecodecamp;

--
-- Name: astronomical_objects; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_objects (
    object_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    discovered_by text NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.astronomical_objects OWNER TO freecodecamp;

--
-- Name: astronomical_objects_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomical_objects_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomical_objects_object_id_seq OWNER TO freecodecamp;

--
-- Name: astronomical_objects_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomical_objects_object_id_seq OWNED BY public.astronomical_objects.object_id;


--
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_life boolean NOT NULL,
    num_of_stars integer NOT NULL
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: has_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.has_life (
);


ALTER TABLE public.has_life OWNER TO freecodecamp;

--
-- Name: is_spherical; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.is_spherical (
);


ALTER TABLE public.is_spherical OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    numofmoons integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer,
    mass numeric NOT NULL,
    has_life boolean NOT NULL,
    distance_from_sun numeric NOT NULL
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
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    type character varying(50) NOT NULL,
    mass numeric NOT NULL,
    has_life boolean NOT NULL
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
-- Name: astronomical_objects object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_objects ALTER COLUMN object_id SET DEFAULT nextval('public.astronomical_objects_object_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: age_in_millions_of_years; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: astronomical_objects; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_objects VALUES (1, 'Halleys Comet', 'A short-period comet visible from Earth every 75-76 years.', 'Edmond Halley', false);
INSERT INTO public.astronomical_objects VALUES (2, 'ISS', 'International Space Station.', 'NASA', false);
INSERT INTO public.astronomical_objects VALUES (3, 'Voyager 1', 'A space probe launched by NASA to study the outer Solar System.', 'NASA', false);


--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, true, 100000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, false, 1000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000, false, 40000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000000, false, 85000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29000000, false, 10000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 21000000, false, 1000000000);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: has_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: is_spherical; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 5972000000000000000000000, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 641000000000000000000000, false, 1.5);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 4867000000000000000000000, false, 0.72);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, 1898000000000000000000000000, false, 5.2);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 568000000000000000000000000, false, 9.58);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 86800000000000000000000000, false, 19.22);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 102000000000000000000000000, false, 30.1);
INSERT INTO public.planet VALUES (8, 'Proxima b', 2, 1270000000000000000000000, false, 0.05);
INSERT INTO public.planet VALUES (9, 'Sirius A', 3, 2100000000000000000000000000000, false, 0.3);
INSERT INTO public.planet VALUES (10, 'Betelgeuse B', 4, 2300000000000000000000000000000, false, 1.1);
INSERT INTO public.planet VALUES (11, 'Rigel A', 5, 3400000000000000000000000000000, false, 1.7);
INSERT INTO public.planet VALUES (12, 'Vega B', 6, 2900000000000000000000000000000, false, 2.0);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 1989000000000000000000000000000, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 'M-type', 123000000000000000000000000000, false);
INSERT INTO public.star VALUES (3, 'Sirius', 1, 'A-type', 2020000000000000000000000000000, false);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 3, 'M-type', 11600000000000000000000000000000, false);
INSERT INTO public.star VALUES (5, 'Rigel', 3, 'B-type', 21000000000000000000000000000000, false);
INSERT INTO public.star VALUES (6, 'Vega', 2, 'A-type', 2135000000000000000000000000000, false);


--
-- Name: astronomical_objects_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomical_objects_object_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomical_objects astronomical_objects_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_objects
    ADD CONSTRAINT astronomical_objects_name_key UNIQUE (name);


--
-- Name: astronomical_objects astronomical_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_objects
    ADD CONSTRAINT astronomical_objects_pkey PRIMARY KEY (object_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (name);


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

