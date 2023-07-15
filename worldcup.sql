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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (58, 59, 4, 2, 1, 2018, 'Final');
INSERT INTO public.games VALUES (60, 61, 2, 0, 2, 2018, 'Third Place');
INSERT INTO public.games VALUES (59, 61, 2, 1, 3, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (58, 60, 1, 0, 4, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (59, 62, 3, 2, 5, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (61, 63, 2, 0, 6, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (60, 64, 2, 1, 7, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (58, 65, 2, 0, 8, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (61, 66, 2, 1, 9, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 67, 1, 0, 10, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 68, 3, 2, 11, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 69, 2, 0, 12, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 70, 2, 1, 13, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 71, 2, 1, 14, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (65, 72, 2, 1, 15, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 73, 4, 3, 16, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 73, 1, 0, 17, 2014, 'Final');
INSERT INTO public.games VALUES (75, 64, 3, 0, 18, 2014, 'Third Place');
INSERT INTO public.games VALUES (73, 75, 1, 0, 19, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (74, 64, 7, 1, 20, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (75, 76, 1, 0, 21, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 60, 1, 0, 22, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (64, 66, 2, 1, 23, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (74, 58, 1, 0, 24, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (64, 77, 2, 1, 25, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (66, 65, 2, 0, 26, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 78, 2, 0, 27, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 79, 2, 1, 28, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 69, 2, 1, 29, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 80, 2, 1, 30, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 67, 1, 0, 31, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 81, 2, 1, 32, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (58, 'France');
INSERT INTO public.teams VALUES (59, 'Croatia');
INSERT INTO public.teams VALUES (60, 'Belgium');
INSERT INTO public.teams VALUES (61, 'England');
INSERT INTO public.teams VALUES (62, 'Russia');
INSERT INTO public.teams VALUES (63, 'Sweden');
INSERT INTO public.teams VALUES (64, 'Brazil');
INSERT INTO public.teams VALUES (65, 'Uruguay');
INSERT INTO public.teams VALUES (66, 'Colombia');
INSERT INTO public.teams VALUES (67, 'Switzerland');
INSERT INTO public.teams VALUES (68, 'Japan');
INSERT INTO public.teams VALUES (69, 'Mexico');
INSERT INTO public.teams VALUES (70, 'Denmark');
INSERT INTO public.teams VALUES (71, 'Spain');
INSERT INTO public.teams VALUES (72, 'Portugal');
INSERT INTO public.teams VALUES (73, 'Argentina');
INSERT INTO public.teams VALUES (74, 'Germany');
INSERT INTO public.teams VALUES (75, 'Netherlands');
INSERT INTO public.teams VALUES (76, 'Costa Rica');
INSERT INTO public.teams VALUES (77, 'Chile');
INSERT INTO public.teams VALUES (78, 'Nigeria');
INSERT INTO public.teams VALUES (79, 'Algeria');
INSERT INTO public.teams VALUES (80, 'Greece');
INSERT INTO public.teams VALUES (81, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 81, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

