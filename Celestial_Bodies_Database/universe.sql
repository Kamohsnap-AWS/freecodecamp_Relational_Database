--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    age integer NOT NULL,
    has_blackhole boolean,
    description text
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    size_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    size_id integer NOT NULL,
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
-- Name: size; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.size (
    size_id integer NOT NULL,
    name character varying(20) NOT NULL,
    risk_of_blackhole boolean NOT NULL
);


ALTER TABLE public.size OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric(3,1) NOT NULL,
    size_id integer NOT NULL,
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

INSERT INTO public.galaxy VALUES (1, 'a1', 75, true, 'a1 is one of the oldest galaxy in the universe. It has black at its center and all visible satalites have been removed from its orbit');
INSERT INTO public.galaxy VALUES (2, 'b2', 68, false, 'A fairly old galaxy, b2 has many satalites contained within. It has 2 suns and an abundance of life.');
INSERT INTO public.galaxy VALUES (3, 'c3', 49, true, 'c3 has a very small black hole in the outer regions of its folds. It is fairly close to d4 its very close by neighbor.');
INSERT INTO public.galaxy VALUES (4, 'd4', 48, true, 'd4 is very close to c3 and shares a very small black hole. Unlike c3, d4 has many moons within its domain.');
INSERT INTO public.galaxy VALUES (5, 'e5', 16, false, 'A fairly young galaxy, e5 is only 16 eon old. It is further from any other galaxy but its full of life');
INSERT INTO public.galaxy VALUES (6, 'f6', 1, false, 'Newly born galaxy with nothing inside it besides gas.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 4, 1, 1);
INSERT INTO public.moon VALUES (2, 'b', 3, 1, 1);
INSERT INTO public.moon VALUES (3, 'c', 3, 1, 2);
INSERT INTO public.moon VALUES (4, 'd', 3, 1, 2);
INSERT INTO public.moon VALUES (5, 'e', 2, 1, 3);
INSERT INTO public.moon VALUES (6, 'f', 2, 1, 4);
INSERT INTO public.moon VALUES (7, 'g', 2, 1, 5);
INSERT INTO public.moon VALUES (8, 'h', 4, 1, 6);
INSERT INTO public.moon VALUES (9, 'i', 4, 1, 6);
INSERT INTO public.moon VALUES (10, 'j', 4, 1, 7);
INSERT INTO public.moon VALUES (11, 'k', 3, 1, 8);
INSERT INTO public.moon VALUES (12, 'l', 2, 1, 9);
INSERT INTO public.moon VALUES (13, 'm', 1, 1, 10);
INSERT INTO public.moon VALUES (14, 'n', 1, 1, 11);
INSERT INTO public.moon VALUES (15, 'o', 6, 1, 12);
INSERT INTO public.moon VALUES (16, 'p', 5, 1, 12);
INSERT INTO public.moon VALUES (17, 'q', 2, 1, 13);
INSERT INTO public.moon VALUES (18, 'r', 1, 1, 13);
INSERT INTO public.moon VALUES (19, 's', 4, 1, 15);
INSERT INTO public.moon VALUES (20, 't', 2, 1, 15);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'brownie_1', 33, 3, 1);
INSERT INTO public.planet VALUES (2, 'brownie_2', 32, 3, 1);
INSERT INTO public.planet VALUES (3, 'brownie_3', 22, 2, 1);
INSERT INTO public.planet VALUES (4, 'brownie_4', 17, 2, 1);
INSERT INTO public.planet VALUES (5, 'brownie_5', 16, 2, 1);
INSERT INTO public.planet VALUES (6, 'banana_1', 29, 3, 2);
INSERT INTO public.planet VALUES (7, 'banana_2', 28, 3, 2);
INSERT INTO public.planet VALUES (8, 'banana_3', 26, 3, 2);
INSERT INTO public.planet VALUES (9, 'banana_4', 16, 2, 2);
INSERT INTO public.planet VALUES (10, 'catoline_1', 8, 1, 3);
INSERT INTO public.planet VALUES (11, 'datoline_1', 7, 1, 4);
INSERT INTO public.planet VALUES (12, 'egg_1', 7, 1, 5);
INSERT INTO public.planet VALUES (13, 'egg_2', 3, 1, 5);
INSERT INTO public.planet VALUES (14, 'egg_3', 2, 1, 5);
INSERT INTO public.planet VALUES (15, 'eun_1', 6, 1, 6);
INSERT INTO public.planet VALUES (16, 'eun_2', 1, 1, 6);


--
-- Data for Name: size; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.size VALUES (1, 'MICRO', false);
INSERT INTO public.size VALUES (2, 'SMALL', false);
INSERT INTO public.size VALUES (3, 'MEDIUM', false);
INSERT INTO public.size VALUES (4, 'LARGE', false);
INSERT INTO public.size VALUES (5, 'SUPER', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'brownie', 66.5, 5, 2);
INSERT INTO public.star VALUES (2, 'banana', 57.9, 4, 2);
INSERT INTO public.star VALUES (3, 'catoline', 15.1, 3, 3);
INSERT INTO public.star VALUES (4, 'datoline', 15.1, 3, 4);
INSERT INTO public.star VALUES (5, 'egg', 14.7, 3, 5);
INSERT INTO public.star VALUES (6, 'eun', 11.4, 3, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


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
-- Name: size size_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_name_key UNIQUE (name);


--
-- Name: size size_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.size
    ADD CONSTRAINT size_pkey PRIMARY KEY (size_id);


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
-- Name: moon moon_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(size_id);


--
-- Name: planet planet_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(size_id);


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
-- Name: star star_size_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_id_fkey FOREIGN KEY (size_id) REFERENCES public.size(size_id);


--
-- PostgreSQL database dump complete
--

