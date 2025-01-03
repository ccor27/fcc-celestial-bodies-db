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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size numeric(4,2),
    age integer,
    is_destroyed boolean,
    description text
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    size numeric(4,2),
    age integer,
    is_destroyed boolean,
    description text,
    planet_id integer
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
    name character varying(60) NOT NULL,
    size numeric(4,2),
    age integer,
    is_destroyed boolean,
    description text,
    star_id integer
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
    name character varying(60) NOT NULL,
    size numeric(4,2),
    age integer,
    is_destroyed boolean,
    description text,
    galaxy_id integer
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', 10.00, 14, false, 'Nuestra galaxia hogar');
INSERT INTO public.galaxy VALUES (2, 'Andrómeda', 22.00, 10, false, 'La galaxia más cercana a la Vía Láctea');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 5.00, 13, false, 'Galaxia espiral con un prominente anillo de polvo');
INSERT INTO public.galaxy VALUES (4, 'Cigarro', 3.00, 11, false, 'Galaxia lenticular con forma de cigarro');
INSERT INTO public.galaxy VALUES (5, 'Nubes de Magallanes', 15.00, 16, false, 'Galaxias satélites de la Vía Láctea');
INSERT INTO public.galaxy VALUES (6, 'M87', 16.00, 13, false, 'Galaxia elíptica gigante con un agujero negro supermasivo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1.00, 5, false, 'Earths only natural satellite', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.09, 5, false, 'Mars larger and closer moon', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.06, 5, false, 'Mars smaller and farther moon', 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1.43, 5, false, 'Largest moon in the Solar System', 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 1.11, 5, false, 'One of Jupiters four Galilean moons', 5);
INSERT INTO public.moon VALUES (6, 'Io', 1.16, 5, false, 'Most volcanically active body in the Solar System', 6);
INSERT INTO public.moon VALUES (7, 'Europa', 0.95, 5, false, 'A moon with a subsurface ocean', 7);
INSERT INTO public.moon VALUES (8, 'Titan', 1.51, 5, false, 'Saturns largest moon and only moon with a dense atmosphere', 8);
INSERT INTO public.moon VALUES (9, 'Rhea', 0.76, 5, false, 'Second-largest moon of Saturn', 9);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1.16, 5, false, 'Saturnian moon with a two-toned appearance', 10);
INSERT INTO public.moon VALUES (11, 'Triton', 1.35, 5, false, 'Neptunes largest moon', 11);
INSERT INTO public.moon VALUES (12, 'Oberon', 0.76, 5, false, 'One of Uranus largest moons', 12);
INSERT INTO public.moon VALUES (13, 'Titania', 0.81, 5, false, 'Largest moon of Uranus', 1);
INSERT INTO public.moon VALUES (14, 'Umbriel', 0.53, 5, false, 'One of Uranus five major moons', 2);
INSERT INTO public.moon VALUES (15, 'Ariel', 0.58, 5, false, 'One of Uranus five major moons', 3);
INSERT INTO public.moon VALUES (16, 'Miranda', 0.47, 5, false, 'Smallest and innermost of Uranus five major moons', 4);
INSERT INTO public.moon VALUES (17, 'Charon', 0.52, 5, false, 'Plutos largest moon', 5);
INSERT INTO public.moon VALUES (18, 'Enceladus', 0.51, 5, false, 'Saturnian moon with a global ocean', 6);
INSERT INTO public.moon VALUES (19, 'Mimas', 0.39, 5, false, 'Saturnian moon known for its large crater', 7);
INSERT INTO public.moon VALUES (20, 'Dione', 1.12, 5, false, 'One of Saturns larger moons', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4.50, 0, false, 'The smallest and closest planet to the Sun.', 7);
INSERT INTO public.planet VALUES (2, 'Venus', 4.50, 1, false, 'The hottest planet in the Solar System.', 8);
INSERT INTO public.planet VALUES (3, 'Earth', 4.50, 1, false, 'The only known planet to support life.', 9);
INSERT INTO public.planet VALUES (4, 'Mars', 4.50, 1, false, 'The Red Planet.', 10);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4.60, 11, false, 'The largest planet in the Solar System.', 11);
INSERT INTO public.planet VALUES (6, 'Saturn', 4.50, 9, false, 'Known for its rings.', 12);
INSERT INTO public.planet VALUES (7, 'Uranus', 4.50, 4, false, 'An ice giant with a tilted axis.', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 4.50, 4, false, 'The farthest planet from the Sun.', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 4.60, 0, false, 'Formerly classified as a planet, now considered a dwarf planet.', 9);
INSERT INTO public.planet VALUES (10, 'Ceres', 4.60, 0, false, 'The largest object in the asteroid belt.', 10);
INSERT INTO public.planet VALUES (11, 'Eris', 4.50, 1, false, 'A dwarf planet in the Kuiper Belt.', 11);
INSERT INTO public.planet VALUES (12, 'Makemake', 4.50, 1, false, 'A dwarf planet in the Kuiper Belt.', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Sol', 1.00, 46, false, 'Our Sun, a G-type main-sequence star', 1);
INSERT INTO public.star VALUES (8, 'Sirio', 1.71, 230, false, 'The brightest star in the night sky', 2);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 10.00, 10, false, 'A red supergiant star', 3);
INSERT INTO public.star VALUES (10, 'Rigel', 85.00, 8, false, 'A blue-white supergiant star', 4);
INSERT INTO public.star VALUES (11, 'Antares', 70.00, 12, false, 'A red supergiant star', 5);
INSERT INTO public.star VALUES (12, 'Polaris', 30.00, 100, false, 'The North Star', 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

