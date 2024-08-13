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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (33, 2018, 'Final', 1, 3, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 2, 6, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 3, 6, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 1, 2, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 3, 14, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 6, 10, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 2, 12, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 1, 15, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 6, 26, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 10, 42, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 2, 43, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 12, 44, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 3, 45, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 14, 46, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 15, 47, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 1, 19, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 17, 19, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 18, 12, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 19, 18, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 17, 12, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 18, 30, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 19, 2, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 12, 26, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 17, 1, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 12, 57, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 26, 15, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 1, 59, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 17, 60, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 18, 44, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 30, 62, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 19, 42, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 64, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Belgium');
INSERT INTO public.teams VALUES (3, 'Croatia');
INSERT INTO public.teams VALUES (6, 'England');
INSERT INTO public.teams VALUES (10, 'Sweden');
INSERT INTO public.teams VALUES (12, 'Brazil');
INSERT INTO public.teams VALUES (14, 'Russia');
INSERT INTO public.teams VALUES (15, 'Uruguay');
INSERT INTO public.teams VALUES (17, 'Germany');
INSERT INTO public.teams VALUES (18, 'Netherlands');
INSERT INTO public.teams VALUES (19, 'Argentina');
INSERT INTO public.teams VALUES (26, 'Colombia');
INSERT INTO public.teams VALUES (30, 'Costa Rica');
INSERT INTO public.teams VALUES (42, 'Switzerland');
INSERT INTO public.teams VALUES (43, 'Japan');
INSERT INTO public.teams VALUES (44, 'Mexico');
INSERT INTO public.teams VALUES (45, 'Denmark');
INSERT INTO public.teams VALUES (46, 'Spain');
INSERT INTO public.teams VALUES (47, 'Portugal');
INSERT INTO public.teams VALUES (57, 'Chile');
INSERT INTO public.teams VALUES (59, 'Nigeria');
INSERT INTO public.teams VALUES (60, 'Algeria');
INSERT INTO public.teams VALUES (62, 'Greece');
INSERT INTO public.teams VALUES (64, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 64, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--