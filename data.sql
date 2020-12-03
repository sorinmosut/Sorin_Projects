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
-- Name: _app_1_mymodel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._app_1_mymodel (
    id smallint,
    first_name character varying(9) DEFAULT NULL::character varying,
    last_name character varying(8) DEFAULT NULL::character varying,
    age smallint,
    sex character varying(3) DEFAULT NULL::character varying
);


ALTER TABLE public._app_1_mymodel OWNER TO rebasedata;

--
-- Name: _app_1_otherroles; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._app_1_otherroles (
    id smallint,
    is_owner smallint,
    has_rank smallint,
    user_id smallint
);


ALTER TABLE public._app_1_otherroles OWNER TO rebasedata;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id smallint,
    name character varying(9) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id smallint,
    group_id smallint,
    permission_id smallint
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(23) DEFAULT NULL::character varying,
    name character varying(25) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id smallint,
    password character varying(78) DEFAULT NULL::character varying,
    last_login character varying(10) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(13) DEFAULT NULL::character varying,
    first_name character varying(7) DEFAULT NULL::character varying,
    email character varying(18) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    last_name character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id smallint,
    user_id smallint,
    group_id smallint
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id smallint,
    action_time character varying(10) DEFAULT NULL::character varying,
    object_id smallint,
    object_repr character varying(35) DEFAULT NULL::character varying,
    change_message character varying(37) DEFAULT NULL::character varying,
    content_type_id smallint,
    user_id smallint,
    action_flag smallint
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_celery_beat_clockedschedule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_clockedschedule (
    id character varying(1) DEFAULT NULL::character varying,
    clocked_time character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_clockedschedule OWNER TO rebasedata;

--
-- Name: _django_celery_beat_crontabschedule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_crontabschedule (
    id character varying(1) DEFAULT NULL::character varying,
    minute character varying(1) DEFAULT NULL::character varying,
    hour character varying(1) DEFAULT NULL::character varying,
    day_of_week character varying(1) DEFAULT NULL::character varying,
    day_of_month character varying(1) DEFAULT NULL::character varying,
    month_of_year character varying(1) DEFAULT NULL::character varying,
    timezone character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_crontabschedule OWNER TO rebasedata;

--
-- Name: _django_celery_beat_intervalschedule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_intervalschedule (
    id smallint,
    every smallint,
    period character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_intervalschedule OWNER TO rebasedata;

--
-- Name: _django_celery_beat_periodictask; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_periodictask (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    task character varying(1) DEFAULT NULL::character varying,
    args character varying(1) DEFAULT NULL::character varying,
    kwargs character varying(1) DEFAULT NULL::character varying,
    queue character varying(1) DEFAULT NULL::character varying,
    exchange character varying(1) DEFAULT NULL::character varying,
    routing_key character varying(1) DEFAULT NULL::character varying,
    expires character varying(1) DEFAULT NULL::character varying,
    enabled character varying(1) DEFAULT NULL::character varying,
    last_run_at character varying(1) DEFAULT NULL::character varying,
    total_run_count character varying(1) DEFAULT NULL::character varying,
    date_changed character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    crontab_id character varying(1) DEFAULT NULL::character varying,
    interval_id character varying(1) DEFAULT NULL::character varying,
    solar_id character varying(1) DEFAULT NULL::character varying,
    one_off character varying(1) DEFAULT NULL::character varying,
    start_time character varying(1) DEFAULT NULL::character varying,
    priority character varying(1) DEFAULT NULL::character varying,
    headers character varying(1) DEFAULT NULL::character varying,
    clocked_id character varying(1) DEFAULT NULL::character varying,
    expire_seconds character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_periodictask OWNER TO rebasedata;

--
-- Name: _django_celery_beat_periodictasks; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_periodictasks (
    ident smallint,
    last_update character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_periodictasks OWNER TO rebasedata;

--
-- Name: _django_celery_beat_solarschedule; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_beat_solarschedule (
    id character varying(1) DEFAULT NULL::character varying,
    event character varying(1) DEFAULT NULL::character varying,
    latitude character varying(1) DEFAULT NULL::character varying,
    longitude character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_beat_solarschedule OWNER TO rebasedata;

--
-- Name: _django_celery_results_chordcounter; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_results_chordcounter (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    sub_tasks character varying(1) DEFAULT NULL::character varying,
    count character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_results_chordcounter OWNER TO rebasedata;

--
-- Name: _django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_celery_results_taskresult (
    id smallint,
    task_id character varying(36) DEFAULT NULL::character varying,
    status character varying(7) DEFAULT NULL::character varying,
    content_type character varying(16) DEFAULT NULL::character varying,
    content_encoding character varying(5) DEFAULT NULL::character varying,
    result character varying(21) DEFAULT NULL::character varying,
    date_done character varying(10) DEFAULT NULL::character varying,
    traceback character varying(1) DEFAULT NULL::character varying,
    meta character varying(16) DEFAULT NULL::character varying,
    task_args character varying(10) DEFAULT NULL::character varying,
    task_kwargs character varying(129) DEFAULT NULL::character varying,
    task_name character varying(39) DEFAULT NULL::character varying,
    worker character varying(23) DEFAULT NULL::character varying,
    date_created character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_celery_results_taskresult OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(21) DEFAULT NULL::character varying,
    model character varying(16) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(21) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(32) DEFAULT NULL::character varying,
    session_data character varying(252) DEFAULT NULL::character varying,
    expire_date character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _email_sending_mailmodel; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._email_sending_mailmodel (
    id smallint,
    subject character varying(15) DEFAULT NULL::character varying,
    message character varying(41) DEFAULT NULL::character varying,
    from_mail character varying(27) DEFAULT NULL::character varying,
    to_mail character varying(21) DEFAULT NULL::character varying
);


ALTER TABLE public._email_sending_mailmodel OWNER TO rebasedata;

--
-- Name: _library_book; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._library_book (
    id smallint,
    title character varying(23) DEFAULT NULL::character varying,
    author character varying(5) DEFAULT NULL::character varying,
    year smallint,
    subcategory_id smallint
);


ALTER TABLE public._library_book OWNER TO rebasedata;

--
-- Name: _library_category; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._library_category (
    id smallint,
    name character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._library_category OWNER TO rebasedata;

--
-- Name: _library_publishedbook; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._library_publishedbook (
    id smallint,
    price smallint,
    book_id smallint,
    publisher_id smallint,
    supply smallint
);


ALTER TABLE public._library_publishedbook OWNER TO rebasedata;

--
-- Name: _library_publisher; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._library_publisher (
    id smallint,
    name character varying(18) DEFAULT NULL::character varying,
    user_id smallint
);


ALTER TABLE public._library_publisher OWNER TO rebasedata;

--
-- Name: _library_subcategory; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._library_subcategory (
    id smallint,
    name character varying(24) DEFAULT NULL::character varying,
    category_id smallint
);


ALTER TABLE public._library_subcategory OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(35) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Data for Name: _app_1_mymodel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._app_1_mymodel (id, first_name, last_name, age, sex) FROM stdin;
1	Mosut	Sorin	38	M
2	Pop	Ioan	30	M
3	Morar	Gelu	25	M
4	Florescu	Ana	20	F
5	Vasilescu	George	26	M
6	Vasilescu	George	26	M
7	Popescu	Ionica	35	M
8	Popescu	Ionica	35	M
9	Ion	Ion	40	M
10	Doe	John	0	N/A
11	Doe	John	0	N/A
12	Frank	Giuliano	44	M
13	Tom	Max	37	M
14	Mois	Adi	37	m
15	uuu	aaa	25	m
\.


--
-- Data for Name: _app_1_otherroles; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._app_1_otherroles (id, is_owner, has_rank, user_id) FROM stdin;
4	1	0	1
\.


--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
2	Publisher
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
3	2	33
4	2	36
5	2	37
6	2	38
7	2	39
8	2	40
9	2	45
10	2	46
11	2	47
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_mymodel	Can add my model
26	7	change_mymodel	Can change my model
27	7	delete_mymodel	Can delete my model
28	7	view_mymodel	Can view my model
29	8	add_otherroles	Can add other roles
30	8	change_otherroles	Can change other roles
31	8	delete_otherroles	Can delete other roles
32	8	view_otherroles	Can view other roles
33	9	add_book	Can add book
34	9	change_book	Can change book
35	9	delete_book	Can delete book
36	9	view_book	Can view book
37	10	add_publishedbook	Can add published book
38	10	change_publishedbook	Can change published book
39	10	delete_publishedbook	Can delete published book
40	10	view_publishedbook	Can view published book
41	11	add_category	Can add category
42	11	change_category	Can change category
43	11	delete_category	Can delete category
44	11	view_category	Can view category
45	12	add_publisher	Can add publisher
46	12	change_publisher	Can change publisher
47	12	delete_publisher	Can delete publisher
48	12	view_publisher	Can view publisher
49	13	add_subcategory	Can add subcategory
50	13	change_subcategory	Can change subcategory
51	13	delete_subcategory	Can delete subcategory
52	13	view_subcategory	Can view subcategory
53	14	add_crontabschedule	Can add crontab
54	14	change_crontabschedule	Can change crontab
55	14	delete_crontabschedule	Can delete crontab
56	14	view_crontabschedule	Can view crontab
57	15	add_intervalschedule	Can add interval
58	15	change_intervalschedule	Can change interval
59	15	delete_intervalschedule	Can delete interval
60	15	view_intervalschedule	Can view interval
61	16	add_periodictask	Can add periodic task
62	16	change_periodictask	Can change periodic task
63	16	delete_periodictask	Can delete periodic task
64	16	view_periodictask	Can view periodic task
65	17	add_periodictasks	Can add periodic tasks
66	17	change_periodictasks	Can change periodic tasks
67	17	delete_periodictasks	Can delete periodic tasks
68	17	view_periodictasks	Can view periodic tasks
69	18	add_solarschedule	Can add solar event
70	18	change_solarschedule	Can change solar event
71	18	delete_solarschedule	Can delete solar event
72	18	view_solarschedule	Can view solar event
73	19	add_clockedschedule	Can add clocked
74	19	change_clockedschedule	Can change clocked
75	19	delete_clockedschedule	Can delete clocked
76	19	view_clockedschedule	Can view clocked
77	20	add_mailmodel	Can add mail model
78	20	change_mailmodel	Can change mail model
79	20	delete_mailmodel	Can delete mail model
80	20	view_mailmodel	Can view mail model
81	21	add_taskresult	Can add task result
82	21	change_taskresult	Can change task result
83	21	delete_taskresult	Can delete task result
84	21	view_taskresult	Can view task result
85	22	add_chordcounter	Can add chord counter
86	22	change_chordcounter	Can change chord counter
87	22	delete_chordcounter	Can delete chord counter
88	22	view_chordcounter	Can view chord counter
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, first_name, email, is_staff, is_active, date_joined, last_name) FROM stdin;
1	pbkdf2_sha256$180000$ndU37KKmOvCa$GWEBqZpf8Tgh7BREH8hQp4aXxRK/veDpE0PFVD/+Gks=	2020-11-19	1	admin	Mosut	admin@gmail.com	1	1	2020-11-03	Sorin
2	pbkdf2_sha256$180000$nddzWASufJmD$T0g7nXEQl3ORUyR52est3QfpYAPmjBtShKuOiMZJk8I=	2020-11-14	0	georgepop	Pop	account1@gmail.com	1	1		George
3	pbkdf2_sha256$180000$BsO2ueSMjxjN$Z8zZtL6JBnJdiHcc/HyjIaljSF/C14WYUWisLEOw+u0=	2020-11-13	0	danion	Ion	danion@yahoo.com	1	1		Dan
4	pbkdf2_sha256$180000$45w7JYWDBz25$lXwOxMBETjmhYbR8QurYgMBvojQ7BZwPId9gGMRNN08=		0	johndoe	Doe	johndoe@gmail.com	0	1	2020-11-09	John
5	pbkdf2_sha256$180000$MgJdO7oAzk0k$0QPgBUgsUzOnn+baKGMIZsrh/dQuc0sVTy+1cPnZv0c=	2020-11-12	0	fr	Ford	fr@gmail.com	0	1	2020-11-09	Robert
8			0	tc@yahoo.com	Cruise	tc@yahoo.com	0	1	2020-11-15	Tom
9			0	tc2@yahoo.com	Cruise	tc2@yahoo.com	0	1	2020-11-15	Tom
10			0	jb@yahoo.com	Jackson	jb@yahoo.com	0	1	2020-11-15	Ben
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
2	2	2
3	3	2
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
1	2020-11-03	2	account1	[{"added": {}}]	4	1	1
2	2020-11-03	4	MyModel object (4)	[{"added": {}}]	7	1	1
3	2020-11-03	1	Pubisher	[{"added": {}}]	3	1	1
4	2020-11-03	2	account1	[{"changed": {"fields": ["Groups"]}}]	4	1	2
5	2020-11-12	1	Sport	[{"added": {}}]	11	1	1
6	2020-11-12	2	Istorice	[{"added": {}}]	11	1	1
7	2020-11-12	3	Drama	[{"added": {}}]	11	1	1
8	2020-11-12	4	Documentar	[{"added": {}}]	11	1	1
9	2020-11-12	5	Tehnice	[{"added": {}}]	11	1	1
10	2020-11-12	6	Povesti	[{"added": {}}]	11	1	1
11	2020-11-12	1	Antichitate [Istorice]	[{"added": {}}]	13	1	1
12	2020-11-12	2	Medievala [Istorice]	[{"added": {}}]	13	1	1
13	2020-11-12	3	Al doilea razboi mondial [Istorice]	[{"added": {}}]	13	1	1
14	2020-11-12	4	Echipe de traditie [Sport]	[{"added": {}}]	13	1	1
15	2020-11-12	5	Antrenorat [Sport]	[{"added": {}}]	13	1	1
16	2020-11-12	6	Vestigii [Documentar]	[{"added": {}}]	13	1	1
17	2020-11-12	7	Fauna [Documentar]	[{"added": {}}]	13	1	1
18	2020-11-12	8	Flora [Documentar]	[{"added": {}}]	13	1	1
19	2020-11-12	1	Imperiul Roman	[{"added": {}}]	9	1	1
20	2020-11-12	2	Dacii si Romanii	[{"added": {}}]	9	1	1
21	2020-11-12	3	Transilvania Medievala	[{"added": {}}]	9	1	1
22	2020-11-12	4	tancuri nemtesti	[{"added": {}}]	9	1	1
23	2020-11-12	5	Berlin	[{"added": {}}]	9	1	1
24	2020-11-12	6	Universitatea Cluj 1919	[{"added": {}}]	9	1	1
25	2020-11-12	7	FC Maramures	[{"added": {}}]	9	1	1
26	2020-11-12	8	Mircea Lucescu	[{"added": {}}]	9	1	1
27	2020-11-12	9	Lupii	[{"added": {}}]	9	1	1
28	2020-11-12	4	Tancuri nemtesti	[{"changed": {"fields": ["Title"]}}]	9	1	2
29	2020-11-12	1	PublishedBook object (1)	[{"added": {}}]	10	1	1
30	2020-11-12	2	PublishedBook object (2)	[{"added": {}}]	10	1	1
31	2020-11-12	3	PublishedBook object (3)	[{"added": {}}]	10	1	1
32	2020-11-12	4	PublishedBook object (4)	[{"added": {}}]	10	1	1
33	2020-11-12	5	PublishedBook object (5)	[{"added": {}}]	10	1	1
34	2020-11-12	6	PublishedBook object (6)	[{"added": {}}]	10	1	1
35	2020-11-12	7	PublishedBook object (7)	[{"added": {}}]	10	1	1
36	2020-11-12	8	PublishedBook object (8)	[{"added": {}}]	10	1	1
37	2020-11-12	9	PublishedBook object (9)	[{"added": {}}]	10	1	1
38	2020-11-12	2	Editura Sportul	[]	12	1	2
39	2020-11-12	1	Editura Romaneasca	[]	12	1	2
40	2020-11-12	2	Editura Sportul	[]	12	1	2
41	2020-11-12	2	Publisher	[{"added": {}}]	3	1	1
42	2020-11-12	1	Pubisher		3	1	3
43	2020-11-12	2	georgepop	[{"changed": {"fields": ["Groups"]}}]	4	1	2
44	2020-11-12	3	danion	[{"changed": {"fields": ["Groups"]}}]	4	1	2
45	2020-11-12	3	Editura Tehnica	[{"added": {}}]	12	1	1
46	2020-11-12	3	Editura Tehnica		12	2	3
47	2020-11-12	4	Editura Tehnica	[{"added": {}}]	12	1	1
48	2020-11-12	5	Editura UTC-N	[{"added": {}}]	12	3	1
49	2020-11-12	6	Editura Fantastica	[{"added": {}}]	12	2	1
50	2020-11-12	7	Editura Agricola	[{"added": {}}]	12	1	1
51	2020-11-12	7	Editura Agricola		12	1	3
52	2020-11-12	6	Editura Fantastica		12	1	3
53	2020-11-12	5	Editura UTC-N		12	1	3
54	2020-11-12	4	Editura Tehnica		12	1	3
55	2020-11-12	8	Editura Tehnica	[{"added": {}}]	12	1	1
56	2020-11-12	8	Editura Tehnica		12	1	3
57	2020-11-12	9	Editura Tehnica	[{"added": {}}]	12	1	1
58	2020-11-12	9	Editura Tehnica		12	1	3
59	2020-11-12	10	Editura Tehnica	[{"added": {}}]	12	1	1
60	2020-11-12	11	Editura UTC-N	[{"added": {}}]	12	2	1
61	2020-11-12	12	Editura Agricola	[{"added": {}}]	12	2	1
62	2020-11-12	13	Editura Fantastica	[{"added": {}}]	12	3	1
63	2020-11-13	10	PublishedBook object (10)	[{"added": {}}]	10	3	1
64	2020-11-19	1	every 5 seconds	[{"added": {}}]	15	1	1
65	2020-11-19	1	date-time-5sec: every 5 seconds	[{"added": {}}]	16	1	1
66	2020-11-19	2	sum: every 5 seconds	[{"added": {}}]	16	1	1
67	2020-11-20	2	sum: every 5 seconds		16	1	3
68	2020-11-20	1	date-time-5sec: every 5 seconds		16	1	3
\.


--
-- Data for Name: _django_celery_beat_clockedschedule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
\.


--
-- Data for Name: _django_celery_beat_crontabschedule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
\.


--
-- Data for Name: _django_celery_beat_intervalschedule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_intervalschedule (id, every, period) FROM stdin;
1	5	seconds
\.


--
-- Data for Name: _django_celery_beat_periodictask; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
\.


--
-- Data for Name: _django_celery_beat_periodictasks; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_periodictasks (ident, last_update) FROM stdin;
1	2020-11-20
\.


--
-- Data for Name: _django_celery_beat_solarschedule; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
\.


--
-- Data for Name: _django_celery_results_chordcounter; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
\.


--
-- Data for Name: _django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created) FROM stdin;
7259	61c033b7-b661-4b9f-9d53-1fcc09257fcd	SUCCESS	application/json	utf-8	30	2020-11-23		{"children": []}	"()"	"{'x': 10, 'y': 20}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7260	562ed979-16bc-4d15-9bfd-91dd16533bbc	SUCCESS	application/json	utf-8	"11/23/20 - 06:43:45"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7261	97439a1a-4cf8-49d3-afbb-85da585d0306	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:11"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7262	c2db4a37-c49e-48c4-8e4d-e4bc0df3b3cd	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7263	dc2b6129-9d61-4539-8363-68f6b9c21ca7	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:16"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7264	33f3411d-eccc-4710-8180-4b703586e0cf	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7265	410dff08-c859-4d13-ab8b-34461ade8735	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:21"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7266	43b5bc77-345a-4484-9af3-1390f3c9a858	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7267	fa339e52-fb5d-4e80-a4ac-3c0cb7a98e06	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:26"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7268	89e1cf2f-9132-4c9e-a0d7-17c2bf843d07	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7269	bf790c67-85ac-4735-a87a-690040731995	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:31"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7270	6a610922-66be-4086-96eb-1f39bbc5601a	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7271	76bfdedb-9336-43a7-a82e-ef639a48c713	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:36"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7272	0846dc3c-9e14-454b-b6fa-c4c950c6d487	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7273	2d00cf3e-5b80-4e58-bb5b-0eacff3d4542	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:41"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7274	90105f0b-adf1-40ff-a945-3510255383b4	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7275	8786de6e-240a-4b9f-a45c-c8787c87b1a0	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:46"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7276	c5229ec8-575b-46f6-a490-fb67753f8143	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7277	a84eb949-87be-4257-8034-6abac344c6fd	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:51"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7278	d18b6ba1-d450-4008-8525-905c5e712387	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7279	73b37352-0e74-4a40-a728-9c433999a624	SUCCESS	application/json	utf-8	"11/23/20 - 06:45:56"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7280	4bb465c7-76be-425e-9f3b-ca3ee12630a3	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7281	36d30753-a898-45f9-8105-0cf5f14a9575	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:01"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7282	a832b72f-88d1-4ede-8e90-b8d2277c7253	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7283	173e1e8c-9d66-4727-8176-f8caf47b06a7	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:06"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7284	c6fbe7a8-f9bd-41dd-815f-89f4289be5e2	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7285	d0c16882-c3c3-4e5d-8090-6560dddd7cd9	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:11"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7286	cf58285a-b161-4e1c-90bc-d6ff7612286c	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7287	cd754804-1347-48a6-83c5-57c5a46ddc77	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:16"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7288	b3642e13-e9fb-4eda-9ecb-b2f4a7ba2293	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7289	5280ffe5-dcbd-406e-bf89-243150c7dbc5	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:21"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7290	3a83e7f5-f0a3-4c39-8f6c-4ea92d9592b6	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7291	c6aace97-b090-4e8a-9fc6-350a3f54356c	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:26"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7292	88d8d457-47be-4710-9f55-2665249a30aa	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7293	0406262d-876f-42e3-8da2-cba9a1763abe	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:31"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7294	95df434c-d6e8-41bb-b01c-9897e19713fc	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7295	6956aea6-65db-4734-8600-7155a640c095	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:36"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7296	7474e4fc-f3d2-4be8-8727-5055d7c18ae2	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7297	5a4813f8-3c18-411f-b77c-67268b56fe6f	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:41"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7298	f3eb9768-c080-4102-a101-2d2af7233f7c	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7299	6311ae5a-18d5-4f05-a6a9-9a096ca2efd7	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:46"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7300	0ad46cb4-51fc-433a-bbdc-9a10518df95b	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7301	2ae3563b-8d3b-4754-8bd2-5c29da8d0547	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:51"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7302	7cf43e04-27ff-4d69-8f77-d40801ab557f	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7303	00ef5471-6096-4ca4-8a05-848c56cc1a19	SUCCESS	application/json	utf-8	"11/23/20 - 06:46:56"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7304	66dd5406-f244-47a0-a1ee-d23e40d2ba06	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7305	6c2e8fb7-cad0-41d1-a4e5-bf55cd3842d3	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:01"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7306	1667dc4a-767e-4d85-a417-61326ad412b9	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7307	8db384f7-7444-412c-a336-ca0054779b3e	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:06"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7308	9c1508dd-ab4f-4d88-98bf-011c63848680	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7309	63e06224-e401-4d4a-a9aa-1d1a4f337947	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:11"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7310	6d873807-a26c-4f63-90d9-1d0d0f1ce142	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7311	eaa9cd3b-9bcb-41e9-b2af-97b616c6c517	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:16"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7312	274cca6a-4054-4bb3-888e-a8d38caff34f	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7313	2d3bf5fe-2b3b-4aa2-b7ec-59254ce36aee	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:21"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7314	e8053353-774b-41f3-9e42-107cd04a1681	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7315	d465058b-a944-4ec4-b320-dd4aa6f79028	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:26"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7316	c5b707be-668d-4a7c-9326-25a52a3bdeb5	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7317	f9806b9e-90ae-408e-a600-2c3dbe054aa7	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:31"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7318	db8f8c41-2f16-4c4a-ac5b-298358077446	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7319	affefb54-cb63-4991-8e98-21992d437647	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:36"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7320	9d5848ab-f674-4335-b83c-7e8decc60ea4	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7321	1473728c-f14a-48d0-b6c8-0a070af1b42d	SUCCESS	application/json	utf-8	null	2020-11-23		{"children": []}	"()"	"{'subject': 'First mail', 'message': 'test test', 'from_mail': 'testmailadres1919@gmail.com', 'to_mail': 'azan9@puttingpv.com'}"	email_sending.tasks.send_email_task	celery@sorin-VirtualBox	2020-11-23
7322	94c54961-58b0-4ef1-bfe1-f57d0fe5c1bd	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:41"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7323	ee9ec6ae-0266-478d-8bcb-dea0e06d3095	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7324	b0e00920-1f16-4fd4-9f13-a43d8aa65571	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:46"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7325	3218d79c-d99b-4113-9a65-bf0d44243554	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7326	87b4afd2-c3bc-46f5-a2ea-51c87ecf7516	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:51"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7327	5f4802f4-c1aa-4362-b8e9-92d02b33dddb	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7328	84000656-2c67-47d7-ac65-caa42d9e119e	SUCCESS	application/json	utf-8	"11/23/20 - 06:47:56"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7329	48ecb3ce-0c3a-47f2-9964-86936a588dc8	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7330	24206fac-809c-4329-9815-fea0922fdda7	SUCCESS	application/json	utf-8	"11/23/20 - 06:48:01"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7331	1d444389-45ee-4878-b2ad-7bfb9d8950c3	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7332	d292c730-c9ff-4800-8bb6-c43e7e4aed21	SUCCESS	application/json	utf-8	"11/23/20 - 06:48:06"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7333	14dda1db-1002-4771-a009-d10c49f8bfa8	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7334	03dcdd8b-257a-4589-abe7-af8e32b201e3	SUCCESS	application/json	utf-8	"11/23/20 - 06:48:11"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7335	063ace9a-2d50-48e7-8b1a-d7ed579054db	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7336	ae5fa781-693c-4517-9af7-ead464cf005e	SUCCESS	application/json	utf-8	"11/23/20 - 06:48:16"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7337	53e37ca2-fe7e-4781-920b-be79acd9d5f1	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
7338	7fdbee2e-3dcc-4bfd-a0a1-895dcc2815de	SUCCESS	application/json	utf-8	"11/23/20 - 06:48:21"	2020-11-23		{"children": []}	"()"	"{}"	email_sending.tasks.show_date_time_task	celery@sorin-VirtualBox	2020-11-23
7339	9ad7c3e5-715c-4d81-a136-27694e01ec32	SUCCESS	application/json	utf-8	50	2020-11-23		{"children": []}	"[30, 20]"	"{}"	email_sending.tasks.add	celery@sorin-VirtualBox	2020-11-23
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
7	app_1	mymodel
8	app_1	otherroles
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
19	django_celery_beat	clockedschedule
14	django_celery_beat	crontabschedule
15	django_celery_beat	intervalschedule
16	django_celery_beat	periodictask
17	django_celery_beat	periodictasks
18	django_celery_beat	solarschedule
22	django_celery_results	chordcounter
21	django_celery_results	taskresult
20	email_sending	mailmodel
9	library	book
11	library	category
10	library	publishedbook
12	library	publisher
13	library	subcategory
6	sessions	session
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-03
2	auth	0001_initial	2020-11-03
3	admin	0001_initial	2020-11-03
4	admin	0002_logentry_remove_auto_add	2020-11-03
5	admin	0003_logentry_add_action_flag_choices	2020-11-03
6	contenttypes	0002_remove_content_type_name	2020-11-03
7	auth	0002_alter_permission_name_max_length	2020-11-03
8	auth	0003_alter_user_email_max_length	2020-11-03
9	auth	0004_alter_user_username_opts	2020-11-03
10	auth	0005_alter_user_last_login_null	2020-11-03
11	auth	0006_require_contenttypes_0002	2020-11-03
12	auth	0007_alter_validators_add_error_messages	2020-11-03
13	auth	0008_alter_user_username_max_length	2020-11-03
14	auth	0009_alter_user_last_name_max_length	2020-11-03
15	auth	0010_alter_group_name_max_length	2020-11-03
16	auth	0011_update_proxy_permissions	2020-11-03
17	sessions	0001_initial	2020-11-03
18	app_1	0001_initial	2020-11-03
19	app_1	0002_mymodel_last_name	2020-11-03
20	app_1	0003_mymodel_no_tel	2020-11-03
21	app_1	0004_remove_mymodel_no_tel	2020-11-03
22	app_1	0005_otherroles	2020-11-03
23	app_1	0006_auto_20201103_2305	2020-11-03
24	app_1	0007_auto_20201103_2319	2020-11-03
25	app_1	0008_auto_20201103_2352	2020-11-04
26	app_1	0009_mymodel_sex	2020-11-09
27	app_1	0010_mymodel_age	2020-11-09
28	app_1	0011_auto_20201109_1446	2020-11-09
29	library	0001_initial	2020-11-12
30	library	0002_auto_20201112_1949	2020-11-12
31	app_1	0012_auto_20201112_2016	2020-11-12
32	library	0003_auto_20201112_2126	2020-11-12
33	library	0004_auto_20201113_1419	2020-11-13
34	app_1	0013_auto_20201119_1028	2020-11-19
35	django_celery_beat	0001_initial	2020-11-19
36	django_celery_beat	0002_auto_20161118_0346	2020-11-19
37	django_celery_beat	0003_auto_20161209_0049	2020-11-19
38	django_celery_beat	0004_auto_20170221_0000	2020-11-19
39	django_celery_beat	0005_add_solarschedule_events_choices	2020-11-19
40	django_celery_beat	0006_auto_20180322_0932	2020-11-19
41	django_celery_beat	0007_auto_20180521_0826	2020-11-19
42	django_celery_beat	0008_auto_20180914_1922	2020-11-19
43	django_celery_beat	0006_auto_20180210_1226	2020-11-19
44	django_celery_beat	0006_periodictask_priority	2020-11-19
45	django_celery_beat	0009_periodictask_headers	2020-11-19
46	django_celery_beat	0010_auto_20190429_0326	2020-11-19
47	django_celery_beat	0011_auto_20190508_0153	2020-11-19
48	django_celery_beat	0012_periodictask_expire_seconds	2020-11-19
49	django_celery_beat	0013_auto_20200609_0727	2020-11-19
50	django_celery_beat	0014_remove_clockedschedule_enabled	2020-11-19
51	email_sending	0001_initial	2020-11-19
52	django_celery_results	0001_initial	2020-11-19
53	django_celery_results	0002_add_task_name_args_kwargs	2020-11-19
54	django_celery_results	0003_auto_20181106_1101	2020-11-19
55	django_celery_results	0004_auto_20190516_0412	2020-11-19
56	django_celery_results	0005_taskresult_worker	2020-11-19
57	django_celery_results	0006_taskresult_date_created	2020-11-19
58	django_celery_results	0007_remove_taskresult_hidden	2020-11-19
59	django_celery_results	0008_chordcounter	2020-11-19
60	email_sending	0002_auto_20201119_2210	2020-11-19
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
ypc6sginawwuzovfkvknvhwuek06jfjy	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-23
t3ul3rudtl7n4cjwtv40ip39x2simk40	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-23
iok1uhd8tsj02yj7eme3rujx8pa4dpiu	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
pq5yuit6cybcionngsy2qfaf8c4ivd3g	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
q959pz27wnq7sz4bodrdz6gxv7qbiutm	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
jtzh23n984tzd8n0uwis71dcfkrt5pm9	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
mndnqp8n5fpwud5vo8zdvrqckjftwsc3	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
ccfpv64xjxu8813ti786yggrzobm8gob	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
b26lc17sdrdwjwkbrdmaogxo730bgvlz	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
8jyqm6ekqmzwv5ewjts3hpd3loscbglx	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
a945wahndfebrabbvfiql2cbkl43g12g	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
qhsawzufygrvcszowgj3lz8ayz6s25op	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
uond41e7q77zyj4ekqr1pbs1t1hr4lnk	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
5se0t4m9k897th4c2etht9fxgkbztaie	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
2ceaspa8nc8sz81g5fcfqq1xi6yjr7nq	ODlmYzM0ZmU3YWZmYTAyYTVjYmViZWQ2MDljMTczMjc2NWI0ZjQ3Zjp7fQ==	2020-11-25
6b5mqer8uwy8lrl1tqe3gwker61fxccp	ODljNWU0MzE1ODVkMzIzMjExODVlNWM3M2ViMWYwYzAxOTY3ODNmYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYTJlZTMxYjJjODk2NGU1Nzg0MmYzZmUyYTQ2ZDE1ZmZjMWRjMTE2In0=	2020-12-03
\.


--
-- Data for Name: _email_sending_mailmodel; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._email_sending_mailmodel (id, subject, message, from_mail, to_mail) FROM stdin;
1	aaa	bbb	ccc	ddd
2	First mail	test mail	a@a.com	b@b.com
3	First mail	test mail	a@a.com	b@b.com
4	second mail	another test	a@a.com	b@b.com
5	third mail	test test	a@a.com	b@b.com
6	First mail	test mail	a@a.com	b@b.com
7	First mail	test mail	a@a.com	b@b.com
8	third mail	another test	a@a.com	b@b.com
9	second mail	test test	a@a.com	b@b.com
10	third mail	test test	a@a.com	b@b.com
11	First mail	test mail	testmailadres1919@gmail.com	onofre@yiustrange.com
12	First mail	test mail	testmailadres1919@gmail.com	onofre@yiustrange.com
13	second mail	another test	testmailadres1919@gmail.com	onofre@yiustrange.com
14	First mail	test mail	testmailadres1919@gmail.com	onofre@yiustrange.com
15	second mail	another test	testmailadres1919@gmail.com	onofre@yiustrange.com
16	Just Subject	Hey Django	testmailadres1919@gmail.com	onofre@yiustrange.com
17	Another subject	Message	testmailadres1919@gmail.com	onofre@yiustrange.com
18	Just Subject	test test	testmailadres1919@gmail.com	onofre@yiustrange.com
19	Just Subject	Hey Django	testmailadres1919@gmail.com	onofre@yiustrange.com
20	third mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
21	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
22	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
23	Another subject	Hey Django	testmailadres1919@gmail.com	azan9@puttingpv.com
24	third mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
25	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
26	Just Subject	Hey Django	testmailadres1919@gmail.com	azan9@puttingpv.com
27	Another subject	Hey Django	testmailadres1919@gmail.com	azan9@puttingpv.com
28	Just Subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
29	First mail	test mail	testmailadres1919@gmail.com	onofre@yiustrange.com
30	third mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
31	First mail	test mail	testmailadres1919@gmail.com	onofre@yiustrange.com
32	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
33	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
34	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
35	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
36	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
37	third mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
38	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
39	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
40	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
41	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
42	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
43	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
44	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
45	Another subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
46	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
47	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
48	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
49	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
50	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
51	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
52	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
53	Another subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
54	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
55	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
56	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
57	Another subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
58	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
59	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
60	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
61	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
62	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
63	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
64	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
65	Another subject	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
66	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
67	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
68	Another subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
69	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
70	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
71	Another subject	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
72	First mail	another test	testmailadres1919@gmail.com	azan9@puttingpv.com
73	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
74	First mail	test mail	a@a.com	azan9@puttingpv.com
75	Another subject	another test	testmailadres1919@gmail.com	b@b.com
76	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
77	First mail	test mail	testmailadres1919@gmail.com	azan9@puttingpv.com
78	Test mail ...	Using logging with celery and celery beat	testmailadres1919@gmail.com	azan9@puttingpv.com
79	Test mail ...	Using logging with celery and celery beat	testmailadres1919@gmail.com	azan9@puttingpv.com
80	First mail	test test	testmailadres1919@gmail.com	azan9@puttingpv.com
\.


--
-- Data for Name: _library_book; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._library_book (id, title, author, year, subcategory_id) FROM stdin;
1	Imperiul Roman	A. A.	1991	1
2	Dacii si Romanii	A. A.	1993	1
3	Transilvania Medievala	A. B.	2002	2
4	Tancuri nemtesti	H. L.	1965	3
5	Berlin	O. H.	1970	3
6	Universitatea Cluj 1919	S. M.	2015	4
7	FC Maramures	F.L.	1996	4
8	Mircea Lucescu	R.P.	2016	5
9	Lupii	A. A.	2005	7
\.


--
-- Data for Name: _library_category; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._library_category (id, name) FROM stdin;
4	Documentar
3	Drama
2	Istorice
6	Povesti
1	Sport
5	Tehnice
\.


--
-- Data for Name: _library_publishedbook; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._library_publishedbook (id, price, book_id, publisher_id, supply) FROM stdin;
1	125	1	1	100
2	150	2	1	200
3	200	3	1	0
4	170	4	1	25
5	100	5	1	50
6	250	7	2	50
7	500	6	2	300
8	150	8	2	0
9	120	9	1	75
10	200	7	2	100
\.


--
-- Data for Name: _library_publisher; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._library_publisher (id, name, user_id) FROM stdin;
1	Editura Romaneasca	2
2	Editura Sportul	3
10	Editura Tehnica	3
11	Editura UTC-N	2
12	Editura Agricola	2
13	Editura Fantastica	3
\.


--
-- Data for Name: _library_subcategory; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._library_subcategory (id, name, category_id) FROM stdin;
1	Antichitate	2
2	Medievala	2
3	Al doilea razboi mondial	2
4	Echipe de traditie	1
5	Antrenorat	1
6	Vestigii	4
7	Fauna	4
8	Flora	4
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	60
django_admin_log	68
django_content_type	22
auth_permission	88
auth_user	10
auth_group	2
auth_group_permissions	11
auth_user_groups	3
app_1_mymodel	15
library_book	9
library_category	6
library_subcategory	8
library_publisher	13
library_publishedbook	10
app_1_otherroles	4
django_celery_beat_intervalschedule	1
django_celery_beat_solarschedule	0
django_celery_beat_periodictask	2
django_celery_beat_crontabschedule	0
django_celery_beat_clockedschedule	0
django_celery_results_taskresult	7339
email_sending_mailmodel	80
\.


--
-- PostgreSQL database dump complete
--

