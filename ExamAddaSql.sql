PGDMP     4                    w            ExamPostgresql    11.4    11.4 ,   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    33529    ExamPostgresql    DATABASE     �   CREATE DATABASE "ExamPostgresql" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE "ExamPostgresql";
             postgres    false            �            1259    34135 	   Game_game    TABLE     �   CREATE TABLE public."Game_game" (
    id integer NOT NULL,
    game_number double precision NOT NULL,
    exam_id integer NOT NULL,
    semester_id integer NOT NULL
);
    DROP TABLE public."Game_game";
       public         postgres    false            �            1259    34175    Game_game_game_subjects    TABLE     �   CREATE TABLE public."Game_game_game_subjects" (
    id integer NOT NULL,
    game_id integer NOT NULL,
    gamesubjects_id integer NOT NULL
);
 -   DROP TABLE public."Game_game_game_subjects";
       public         postgres    false            �            1259    34173    Game_game_game_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_game_game_subjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Game_game_game_subjects_id_seq";
       public       postgres    false    249            �           0    0    Game_game_game_subjects_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Game_game_game_subjects_id_seq" OWNED BY public."Game_game_game_subjects".id;
            public       postgres    false    248            �            1259    34133    Game_game_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_game_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Game_game_id_seq";
       public       postgres    false    239            �           0    0    Game_game_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Game_game_id_seq" OWNED BY public."Game_game".id;
            public       postgres    false    238            �            1259    34143    Game_gameentries    TABLE     �   CREATE TABLE public."Game_gameentries" (
    id integer NOT NULL,
    bronze_question_id integer NOT NULL,
    golden_question_id integer NOT NULL,
    silver_question_id integer NOT NULL,
    subject_id integer NOT NULL,
    user_id integer NOT NULL
);
 &   DROP TABLE public."Game_gameentries";
       public         postgres    false            �            1259    34141    Game_gameentries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_gameentries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Game_gameentries_id_seq";
       public       postgres    false    241            �           0    0    Game_gameentries_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Game_gameentries_id_seq" OWNED BY public."Game_gameentries".id;
            public       postgres    false    240            �            1259    34151    Game_gameentries_questions    TABLE     �   CREATE TABLE public."Game_gameentries_questions" (
    id integer NOT NULL,
    gameentries_id integer NOT NULL,
    questions_id integer NOT NULL
);
 0   DROP TABLE public."Game_gameentries_questions";
       public         postgres    false            �            1259    34149 !   Game_gameentries_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_gameentries_questions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."Game_gameentries_questions_id_seq";
       public       postgres    false    243            �           0    0 !   Game_gameentries_questions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."Game_gameentries_questions_id_seq" OWNED BY public."Game_gameentries_questions".id;
            public       postgres    false    242            �            1259    34159    Game_gamesubjects    TABLE     �   CREATE TABLE public."Game_gamesubjects" (
    id integer NOT NULL,
    game_for_exam_id integer NOT NULL,
    subject_id integer NOT NULL
);
 '   DROP TABLE public."Game_gamesubjects";
       public         postgres    false            �            1259    34167    Game_gamesubjects_entries    TABLE     �   CREATE TABLE public."Game_gamesubjects_entries" (
    id integer NOT NULL,
    gamesubjects_id integer NOT NULL,
    gameentries_id integer NOT NULL
);
 /   DROP TABLE public."Game_gamesubjects_entries";
       public         postgres    false            �            1259    34165     Game_gamesubjects_entries_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_gamesubjects_entries_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."Game_gamesubjects_entries_id_seq";
       public       postgres    false    247            �           0    0     Game_gamesubjects_entries_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Game_gamesubjects_entries_id_seq" OWNED BY public."Game_gamesubjects_entries".id;
            public       postgres    false    246            �            1259    34157    Game_gamesubjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Game_gamesubjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Game_gamesubjects_id_seq";
       public       postgres    false    245            �           0    0    Game_gamesubjects_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Game_gamesubjects_id_seq" OWNED BY public."Game_gamesubjects".id;
            public       postgres    false    244            �            1259    33787    analysis_branches    TABLE     l   CREATE TABLE public.analysis_branches (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE public.analysis_branches;
       public         postgres    false            �            1259    33785    analysis_branches_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.analysis_branches_id_seq;
       public       postgres    false    235            �           0    0    analysis_branches_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.analysis_branches_id_seq OWNED BY public.analysis_branches.id;
            public       postgres    false    234            �            1259    33795    analysis_branches_semesters    TABLE     �   CREATE TABLE public.analysis_branches_semesters (
    id integer NOT NULL,
    branches_id integer NOT NULL,
    semesters_id integer NOT NULL
);
 /   DROP TABLE public.analysis_branches_semesters;
       public         postgres    false            �            1259    33793 "   analysis_branches_semesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_branches_semesters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.analysis_branches_semesters_id_seq;
       public       postgres    false    237            �           0    0 "   analysis_branches_semesters_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.analysis_branches_semesters_id_seq OWNED BY public.analysis_branches_semesters.id;
            public       postgres    false    236            �            1259    33681    analysis_examinations    TABLE     �   CREATE TABLE public.analysis_examinations (
    id integer NOT NULL,
    university_name character varying(50) NOT NULL,
    month character varying(50) NOT NULL,
    year character varying(50) NOT NULL
);
 )   DROP TABLE public.analysis_examinations;
       public         postgres    false            �            1259    33679    analysis_examinations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_examinations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.analysis_examinations_id_seq;
       public       postgres    false    215            �           0    0    analysis_examinations_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.analysis_examinations_id_seq OWNED BY public.analysis_examinations.id;
            public       postgres    false    214            �            1259    33689    analysis_modules    TABLE     �   CREATE TABLE public.analysis_modules (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    weight double precision NOT NULL
);
 $   DROP TABLE public.analysis_modules;
       public         postgres    false            �            1259    33687    analysis_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.analysis_modules_id_seq;
       public       postgres    false    217            �           0    0    analysis_modules_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.analysis_modules_id_seq OWNED BY public.analysis_modules.id;
            public       postgres    false    216            �            1259    33779    analysis_modules_questions    TABLE     �   CREATE TABLE public.analysis_modules_questions (
    id integer NOT NULL,
    modules_id integer NOT NULL,
    questions_id integer NOT NULL
);
 .   DROP TABLE public.analysis_modules_questions;
       public         postgres    false            �            1259    33777 !   analysis_modules_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_modules_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.analysis_modules_questions_id_seq;
       public       postgres    false    233            �           0    0 !   analysis_modules_questions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.analysis_modules_questions_id_seq OWNED BY public.analysis_modules_questions.id;
            public       postgres    false    232            �            1259    33763    analysis_questionpapers    TABLE     �   CREATE TABLE public.analysis_questionpapers (
    id integer NOT NULL,
    subject character varying(50) NOT NULL,
    examination_id integer NOT NULL
);
 +   DROP TABLE public.analysis_questionpapers;
       public         postgres    false            �            1259    33761    analysis_questionpapers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_questionpapers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.analysis_questionpapers_id_seq;
       public       postgres    false    229            �           0    0    analysis_questionpapers_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.analysis_questionpapers_id_seq OWNED BY public.analysis_questionpapers.id;
            public       postgres    false    228            �            1259    33771 !   analysis_questionpapers_questions    TABLE     �   CREATE TABLE public.analysis_questionpapers_questions (
    id integer NOT NULL,
    questionpapers_id integer NOT NULL,
    customuser_id integer NOT NULL
);
 5   DROP TABLE public.analysis_questionpapers_questions;
       public         postgres    false            �            1259    33769 (   analysis_questionpapers_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_questionpapers_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.analysis_questionpapers_questions_id_seq;
       public       postgres    false    231            �           0    0 (   analysis_questionpapers_questions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.analysis_questionpapers_questions_id_seq OWNED BY public.analysis_questionpapers_questions.id;
            public       postgres    false    230            �            1259    33734    analysis_questions    TABLE       CREATE TABLE public.analysis_questions (
    id integer NOT NULL,
    question character varying(2000) NOT NULL,
    difficulty_level character varying(20) NOT NULL,
    marks integer NOT NULL,
    question_author_id integer NOT NULL,
    note_for_question character varying(2000)
);
 &   DROP TABLE public.analysis_questions;
       public         postgres    false            �            1259    33732    analysis_questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.analysis_questions_id_seq;
       public       postgres    false    227            �           0    0    analysis_questions_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.analysis_questions_id_seq OWNED BY public.analysis_questions.id;
            public       postgres    false    226            �            1259    33718    analysis_semesters    TABLE     m   CREATE TABLE public.analysis_semesters (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 &   DROP TABLE public.analysis_semesters;
       public         postgres    false            �            1259    33716    analysis_semesters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_semesters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.analysis_semesters_id_seq;
       public       postgres    false    223            �           0    0    analysis_semesters_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.analysis_semesters_id_seq OWNED BY public.analysis_semesters.id;
            public       postgres    false    222            �            1259    33726    analysis_semesters_subjects    TABLE     �   CREATE TABLE public.analysis_semesters_subjects (
    id integer NOT NULL,
    semesters_id integer NOT NULL,
    subjects_id integer NOT NULL
);
 /   DROP TABLE public.analysis_semesters_subjects;
       public         postgres    false            �            1259    33724 "   analysis_semesters_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_semesters_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.analysis_semesters_subjects_id_seq;
       public       postgres    false    225            �           0    0 "   analysis_semesters_subjects_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.analysis_semesters_subjects_id_seq OWNED BY public.analysis_semesters_subjects.id;
            public       postgres    false    224            �            1259    33702    analysis_subjects    TABLE     l   CREATE TABLE public.analysis_subjects (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 %   DROP TABLE public.analysis_subjects;
       public         postgres    false            �            1259    33700    analysis_subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.analysis_subjects_id_seq;
       public       postgres    false    219            �           0    0    analysis_subjects_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.analysis_subjects_id_seq OWNED BY public.analysis_subjects.id;
            public       postgres    false    218            �            1259    33710    analysis_subjects_modules    TABLE     �   CREATE TABLE public.analysis_subjects_modules (
    id integer NOT NULL,
    subjects_id integer NOT NULL,
    modules_id integer NOT NULL
);
 -   DROP TABLE public.analysis_subjects_modules;
       public         postgres    false            �            1259    33708     analysis_subjects_modules_id_seq    SEQUENCE     �   CREATE SEQUENCE public.analysis_subjects_modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.analysis_subjects_modules_id_seq;
       public       postgres    false    221            �           0    0     analysis_subjects_modules_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.analysis_subjects_modules_id_seq OWNED BY public.analysis_subjects_modules.id;
            public       postgres    false    220            �            1259    33561 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    33559    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    33571    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    33569    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    33553    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    33551    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    34279    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    34277    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    251            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    250            �            1259    33543    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    33541    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    33532    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    33530    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    34301    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    33602    users_customuser    TABLE     0  CREATE TABLE public.users_customuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    unique_id character varying(40),
    email character varying(254) NOT NULL,
    weight double precision NOT NULL
);
 $   DROP TABLE public.users_customuser;
       public         postgres    false            �            1259    33619    users_customuser_groups    TABLE     �   CREATE TABLE public.users_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);
 +   DROP TABLE public.users_customuser_groups;
       public         postgres    false            �            1259    33617    users_customuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.users_customuser_groups_id_seq;
       public       postgres    false    209            �           0    0    users_customuser_groups_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.users_customuser_groups_id_seq OWNED BY public.users_customuser_groups.id;
            public       postgres    false    208            �            1259    33600    users_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.users_customuser_id_seq;
       public       postgres    false    207            �           0    0    users_customuser_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.users_customuser_id_seq OWNED BY public.users_customuser.id;
            public       postgres    false    206            �            1259    33627 !   users_customuser_user_permissions    TABLE     �   CREATE TABLE public.users_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 5   DROP TABLE public.users_customuser_user_permissions;
       public         postgres    false            �            1259    33625 (   users_customuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.users_customuser_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.users_customuser_user_permissions_id_seq OWNED BY public.users_customuser_user_permissions.id;
            public       postgres    false    210            �            1259    33635    users_profile    TABLE     �   CREATE TABLE public.users_profile (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.users_profile;
       public         postgres    false            �            1259    33633    users_profile_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_profile_id_seq;
       public       postgres    false    213            �           0    0    users_profile_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.users_profile_id_seq OWNED BY public.users_profile.id;
            public       postgres    false    212            >           2604    34138    Game_game id    DEFAULT     p   ALTER TABLE ONLY public."Game_game" ALTER COLUMN id SET DEFAULT nextval('public."Game_game_id_seq"'::regclass);
 =   ALTER TABLE public."Game_game" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    239    239            C           2604    34178    Game_game_game_subjects id    DEFAULT     �   ALTER TABLE ONLY public."Game_game_game_subjects" ALTER COLUMN id SET DEFAULT nextval('public."Game_game_game_subjects_id_seq"'::regclass);
 K   ALTER TABLE public."Game_game_game_subjects" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    249    249            ?           2604    34146    Game_gameentries id    DEFAULT     ~   ALTER TABLE ONLY public."Game_gameentries" ALTER COLUMN id SET DEFAULT nextval('public."Game_gameentries_id_seq"'::regclass);
 D   ALTER TABLE public."Game_gameentries" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            @           2604    34154    Game_gameentries_questions id    DEFAULT     �   ALTER TABLE ONLY public."Game_gameentries_questions" ALTER COLUMN id SET DEFAULT nextval('public."Game_gameentries_questions_id_seq"'::regclass);
 N   ALTER TABLE public."Game_gameentries_questions" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            A           2604    34162    Game_gamesubjects id    DEFAULT     �   ALTER TABLE ONLY public."Game_gamesubjects" ALTER COLUMN id SET DEFAULT nextval('public."Game_gamesubjects_id_seq"'::regclass);
 E   ALTER TABLE public."Game_gamesubjects" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            B           2604    34170    Game_gamesubjects_entries id    DEFAULT     �   ALTER TABLE ONLY public."Game_gamesubjects_entries" ALTER COLUMN id SET DEFAULT nextval('public."Game_gamesubjects_entries_id_seq"'::regclass);
 M   ALTER TABLE public."Game_gamesubjects_entries" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247            <           2604    33790    analysis_branches id    DEFAULT     |   ALTER TABLE ONLY public.analysis_branches ALTER COLUMN id SET DEFAULT nextval('public.analysis_branches_id_seq'::regclass);
 C   ALTER TABLE public.analysis_branches ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            =           2604    33798    analysis_branches_semesters id    DEFAULT     �   ALTER TABLE ONLY public.analysis_branches_semesters ALTER COLUMN id SET DEFAULT nextval('public.analysis_branches_semesters_id_seq'::regclass);
 M   ALTER TABLE public.analysis_branches_semesters ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            2           2604    33684    analysis_examinations id    DEFAULT     �   ALTER TABLE ONLY public.analysis_examinations ALTER COLUMN id SET DEFAULT nextval('public.analysis_examinations_id_seq'::regclass);
 G   ALTER TABLE public.analysis_examinations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            3           2604    33692    analysis_modules id    DEFAULT     z   ALTER TABLE ONLY public.analysis_modules ALTER COLUMN id SET DEFAULT nextval('public.analysis_modules_id_seq'::regclass);
 B   ALTER TABLE public.analysis_modules ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            ;           2604    33782    analysis_modules_questions id    DEFAULT     �   ALTER TABLE ONLY public.analysis_modules_questions ALTER COLUMN id SET DEFAULT nextval('public.analysis_modules_questions_id_seq'::regclass);
 L   ALTER TABLE public.analysis_modules_questions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            9           2604    33766    analysis_questionpapers id    DEFAULT     �   ALTER TABLE ONLY public.analysis_questionpapers ALTER COLUMN id SET DEFAULT nextval('public.analysis_questionpapers_id_seq'::regclass);
 I   ALTER TABLE public.analysis_questionpapers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            :           2604    33774 $   analysis_questionpapers_questions id    DEFAULT     �   ALTER TABLE ONLY public.analysis_questionpapers_questions ALTER COLUMN id SET DEFAULT nextval('public.analysis_questionpapers_questions_id_seq'::regclass);
 S   ALTER TABLE public.analysis_questionpapers_questions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            8           2604    33737    analysis_questions id    DEFAULT     ~   ALTER TABLE ONLY public.analysis_questions ALTER COLUMN id SET DEFAULT nextval('public.analysis_questions_id_seq'::regclass);
 D   ALTER TABLE public.analysis_questions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            6           2604    33721    analysis_semesters id    DEFAULT     ~   ALTER TABLE ONLY public.analysis_semesters ALTER COLUMN id SET DEFAULT nextval('public.analysis_semesters_id_seq'::regclass);
 D   ALTER TABLE public.analysis_semesters ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            7           2604    33729    analysis_semesters_subjects id    DEFAULT     �   ALTER TABLE ONLY public.analysis_semesters_subjects ALTER COLUMN id SET DEFAULT nextval('public.analysis_semesters_subjects_id_seq'::regclass);
 M   ALTER TABLE public.analysis_semesters_subjects ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            4           2604    33705    analysis_subjects id    DEFAULT     |   ALTER TABLE ONLY public.analysis_subjects ALTER COLUMN id SET DEFAULT nextval('public.analysis_subjects_id_seq'::regclass);
 C   ALTER TABLE public.analysis_subjects ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            5           2604    33713    analysis_subjects_modules id    DEFAULT     �   ALTER TABLE ONLY public.analysis_subjects_modules ALTER COLUMN id SET DEFAULT nextval('public.analysis_subjects_modules_id_seq'::regclass);
 K   ALTER TABLE public.analysis_subjects_modules ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            ,           2604    33564    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            -           2604    33574    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            +           2604    33556    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            D           2604    34282    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251            *           2604    33546    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            )           2604    33535    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            .           2604    33605    users_customuser id    DEFAULT     z   ALTER TABLE ONLY public.users_customuser ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_id_seq'::regclass);
 B   ALTER TABLE public.users_customuser ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            /           2604    33622    users_customuser_groups id    DEFAULT     �   ALTER TABLE ONLY public.users_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_groups_id_seq'::regclass);
 I   ALTER TABLE public.users_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            0           2604    33630 $   users_customuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_customuser_user_permissions_id_seq'::regclass);
 S   ALTER TABLE public.users_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            1           2604    33638    users_profile id    DEFAULT     t   ALTER TABLE ONLY public.users_profile ALTER COLUMN id SET DEFAULT nextval('public.users_profile_id_seq'::regclass);
 ?   ALTER TABLE public.users_profile ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �          0    34135 	   Game_game 
   TABLE DATA               L   COPY public."Game_game" (id, game_number, exam_id, semester_id) FROM stdin;
    public       postgres    false    239   ��      �          0    34175    Game_game_game_subjects 
   TABLE DATA               Q   COPY public."Game_game_game_subjects" (id, game_id, gamesubjects_id) FROM stdin;
    public       postgres    false    249   �      �          0    34143    Game_gameentries 
   TABLE DATA               �   COPY public."Game_gameentries" (id, bronze_question_id, golden_question_id, silver_question_id, subject_id, user_id) FROM stdin;
    public       postgres    false    241   D�      �          0    34151    Game_gameentries_questions 
   TABLE DATA               X   COPY public."Game_gameentries_questions" (id, gameentries_id, questions_id) FROM stdin;
    public       postgres    false    243   {�      �          0    34159    Game_gamesubjects 
   TABLE DATA               O   COPY public."Game_gamesubjects" (id, game_for_exam_id, subject_id) FROM stdin;
    public       postgres    false    245   ��      �          0    34167    Game_gamesubjects_entries 
   TABLE DATA               Z   COPY public."Game_gamesubjects_entries" (id, gamesubjects_id, gameentries_id) FROM stdin;
    public       postgres    false    247   Ԣ      �          0    33787    analysis_branches 
   TABLE DATA               5   COPY public.analysis_branches (id, name) FROM stdin;
    public       postgres    false    235   �      �          0    33795    analysis_branches_semesters 
   TABLE DATA               T   COPY public.analysis_branches_semesters (id, branches_id, semesters_id) FROM stdin;
    public       postgres    false    237   :�                0    33681    analysis_examinations 
   TABLE DATA               Q   COPY public.analysis_examinations (id, university_name, month, year) FROM stdin;
    public       postgres    false    215   a�      �          0    33689    analysis_modules 
   TABLE DATA               <   COPY public.analysis_modules (id, name, weight) FROM stdin;
    public       postgres    false    217   ��      �          0    33779    analysis_modules_questions 
   TABLE DATA               R   COPY public.analysis_modules_questions (id, modules_id, questions_id) FROM stdin;
    public       postgres    false    233   �      �          0    33763    analysis_questionpapers 
   TABLE DATA               N   COPY public.analysis_questionpapers (id, subject, examination_id) FROM stdin;
    public       postgres    false    229   ;�      �          0    33771 !   analysis_questionpapers_questions 
   TABLE DATA               a   COPY public.analysis_questionpapers_questions (id, questionpapers_id, customuser_id) FROM stdin;
    public       postgres    false    231   X�      �          0    33734    analysis_questions 
   TABLE DATA               z   COPY public.analysis_questions (id, question, difficulty_level, marks, question_author_id, note_for_question) FROM stdin;
    public       postgres    false    227   u�      �          0    33718    analysis_semesters 
   TABLE DATA               6   COPY public.analysis_semesters (id, name) FROM stdin;
    public       postgres    false    223   g�      �          0    33726    analysis_semesters_subjects 
   TABLE DATA               T   COPY public.analysis_semesters_subjects (id, semesters_id, subjects_id) FROM stdin;
    public       postgres    false    225   ��      �          0    33702    analysis_subjects 
   TABLE DATA               5   COPY public.analysis_subjects (id, name) FROM stdin;
    public       postgres    false    219   ƥ      �          0    33710    analysis_subjects_modules 
   TABLE DATA               P   COPY public.analysis_subjects_modules (id, subjects_id, modules_id) FROM stdin;
    public       postgres    false    221   �      s          0    33561 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   F�      u          0    33571    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   c�      q          0    33553    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��      �          0    34279    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    251   z�      o          0    33543    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ��      m          0    33532    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   z�      �          0    34301    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    252   Я      w          0    33602    users_customuser 
   TABLE DATA               �   COPY public.users_customuser (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, unique_id, email, weight) FROM stdin;
    public       postgres    false    207   ��      y          0    33619    users_customuser_groups 
   TABLE DATA               N   COPY public.users_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public       postgres    false    209   I�      {          0    33627 !   users_customuser_user_permissions 
   TABLE DATA               ]   COPY public.users_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public       postgres    false    211   f�      }          0    33635    users_profile 
   TABLE DATA               ;   COPY public.users_profile (id, image, user_id) FROM stdin;
    public       postgres    false    213   ��      �           0    0    Game_game_game_subjects_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Game_game_game_subjects_id_seq"', 2, true);
            public       postgres    false    248            �           0    0    Game_game_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Game_game_id_seq"', 1, true);
            public       postgres    false    238            �           0    0    Game_gameentries_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Game_gameentries_id_seq"', 4, true);
            public       postgres    false    240            �           0    0 !   Game_gameentries_questions_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."Game_gameentries_questions_id_seq"', 4, true);
            public       postgres    false    242            �           0    0     Game_gamesubjects_entries_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Game_gamesubjects_entries_id_seq"', 4, true);
            public       postgres    false    246            �           0    0    Game_gamesubjects_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Game_gamesubjects_id_seq"', 2, true);
            public       postgres    false    244            �           0    0    analysis_branches_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.analysis_branches_id_seq', 1, true);
            public       postgres    false    234            �           0    0 "   analysis_branches_semesters_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.analysis_branches_semesters_id_seq', 2, true);
            public       postgres    false    236            �           0    0    analysis_examinations_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.analysis_examinations_id_seq', 1, true);
            public       postgres    false    214            �           0    0    analysis_modules_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.analysis_modules_id_seq', 7, true);
            public       postgres    false    216            �           0    0 !   analysis_modules_questions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.analysis_modules_questions_id_seq', 10, true);
            public       postgres    false    232            �           0    0    analysis_questionpapers_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.analysis_questionpapers_id_seq', 1, false);
            public       postgres    false    228            �           0    0 (   analysis_questionpapers_questions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.analysis_questionpapers_questions_id_seq', 1, false);
            public       postgres    false    230            �           0    0    analysis_questions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.analysis_questions_id_seq', 11, true);
            public       postgres    false    226            �           0    0    analysis_semesters_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.analysis_semesters_id_seq', 2, true);
            public       postgres    false    222            �           0    0 "   analysis_semesters_subjects_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.analysis_semesters_subjects_id_seq', 6, true);
            public       postgres    false    224            �           0    0    analysis_subjects_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.analysis_subjects_id_seq', 7, true);
            public       postgres    false    218            �           0    0     analysis_subjects_modules_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.analysis_subjects_modules_id_seq', 7, true);
            public       postgres    false    220            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
            public       postgres    false    200            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 36, true);
            public       postgres    false    250            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 27, true);
            public       postgres    false    196            �           0    0    users_customuser_groups_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.users_customuser_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    users_customuser_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.users_customuser_id_seq', 2, true);
            public       postgres    false    206            �           0    0 (   users_customuser_user_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.users_customuser_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    users_profile_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_profile_id_seq', 2, true);
            public       postgres    false    212            �           2606    34268 U   Game_game_game_subjects Game_game_game_subjects_game_id_gamesubjects_id_cb3c73a4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Game_game_game_subjects"
    ADD CONSTRAINT "Game_game_game_subjects_game_id_gamesubjects_id_cb3c73a4_uniq" UNIQUE (game_id, gamesubjects_id);
 �   ALTER TABLE ONLY public."Game_game_game_subjects" DROP CONSTRAINT "Game_game_game_subjects_game_id_gamesubjects_id_cb3c73a4_uniq";
       public         postgres    false    249    249            �           2606    34180 4   Game_game_game_subjects Game_game_game_subjects_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Game_game_game_subjects"
    ADD CONSTRAINT "Game_game_game_subjects_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Game_game_game_subjects" DROP CONSTRAINT "Game_game_game_subjects_pkey";
       public         postgres    false    249            �           2606    34140    Game_game Game_game_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Game_game"
    ADD CONSTRAINT "Game_game_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Game_game" DROP CONSTRAINT "Game_game_pkey";
       public         postgres    false    239            �           2606    34148 &   Game_gameentries Game_gameentries_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_pkey";
       public         postgres    false    241            �           2606    34228 Z   Game_gameentries_questions Game_gameentries_questio_gameentries_id_questions_e85ab300_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries_questions"
    ADD CONSTRAINT "Game_gameentries_questio_gameentries_id_questions_e85ab300_uniq" UNIQUE (gameentries_id, questions_id);
 �   ALTER TABLE ONLY public."Game_gameentries_questions" DROP CONSTRAINT "Game_gameentries_questio_gameentries_id_questions_e85ab300_uniq";
       public         postgres    false    243    243            �           2606    34156 :   Game_gameentries_questions Game_gameentries_questions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public."Game_gameentries_questions"
    ADD CONSTRAINT "Game_gameentries_questions_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."Game_gameentries_questions" DROP CONSTRAINT "Game_gameentries_questions_pkey";
       public         postgres    false    243            �           2606    34254 Y   Game_gamesubjects_entries Game_gamesubjects_entrie_gamesubjects_id_gameentr_dd5b49e9_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Game_gamesubjects_entries"
    ADD CONSTRAINT "Game_gamesubjects_entrie_gamesubjects_id_gameentr_dd5b49e9_uniq" UNIQUE (gamesubjects_id, gameentries_id);
 �   ALTER TABLE ONLY public."Game_gamesubjects_entries" DROP CONSTRAINT "Game_gamesubjects_entrie_gamesubjects_id_gameentr_dd5b49e9_uniq";
       public         postgres    false    247    247            �           2606    34172 8   Game_gamesubjects_entries Game_gamesubjects_entries_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Game_gamesubjects_entries"
    ADD CONSTRAINT "Game_gamesubjects_entries_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."Game_gamesubjects_entries" DROP CONSTRAINT "Game_gamesubjects_entries_pkey";
       public         postgres    false    247            �           2606    34164 (   Game_gamesubjects Game_gamesubjects_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Game_gamesubjects"
    ADD CONSTRAINT "Game_gamesubjects_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."Game_gamesubjects" DROP CONSTRAINT "Game_gamesubjects_pkey";
       public         postgres    false    245            �           2606    33792 (   analysis_branches analysis_branches_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.analysis_branches
    ADD CONSTRAINT analysis_branches_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.analysis_branches DROP CONSTRAINT analysis_branches_pkey;
       public         postgres    false    235            �           2606    33910 [   analysis_branches_semesters analysis_branches_semest_branches_id_semesters_id_2052339c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_branches_semesters
    ADD CONSTRAINT analysis_branches_semest_branches_id_semesters_id_2052339c_uniq UNIQUE (branches_id, semesters_id);
 �   ALTER TABLE ONLY public.analysis_branches_semesters DROP CONSTRAINT analysis_branches_semest_branches_id_semesters_id_2052339c_uniq;
       public         postgres    false    237    237            �           2606    33800 <   analysis_branches_semesters analysis_branches_semesters_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.analysis_branches_semesters
    ADD CONSTRAINT analysis_branches_semesters_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.analysis_branches_semesters DROP CONSTRAINT analysis_branches_semesters_pkey;
       public         postgres    false    237            x           2606    33686 0   analysis_examinations analysis_examinations_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.analysis_examinations
    ADD CONSTRAINT analysis_examinations_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.analysis_examinations DROP CONSTRAINT analysis_examinations_pkey;
       public         postgres    false    215            z           2606    33697 &   analysis_modules analysis_modules_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.analysis_modules
    ADD CONSTRAINT analysis_modules_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.analysis_modules DROP CONSTRAINT analysis_modules_pkey;
       public         postgres    false    217            �           2606    33896 Y   analysis_modules_questions analysis_modules_questio_modules_id_questions_id_9c142903_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_modules_questions
    ADD CONSTRAINT analysis_modules_questio_modules_id_questions_id_9c142903_uniq UNIQUE (modules_id, questions_id);
 �   ALTER TABLE ONLY public.analysis_modules_questions DROP CONSTRAINT analysis_modules_questio_modules_id_questions_id_9c142903_uniq;
       public         postgres    false    233    233            �           2606    33784 :   analysis_modules_questions analysis_modules_questions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.analysis_modules_questions
    ADD CONSTRAINT analysis_modules_questions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.analysis_modules_questions DROP CONSTRAINT analysis_modules_questions_pkey;
       public         postgres    false    233            �           2606    33882 a   analysis_questionpapers_questions analysis_questionpapers__questionpapers_id_custom_d630ef6f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questionpapers_questions
    ADD CONSTRAINT analysis_questionpapers__questionpapers_id_custom_d630ef6f_uniq UNIQUE (questionpapers_id, customuser_id);
 �   ALTER TABLE ONLY public.analysis_questionpapers_questions DROP CONSTRAINT analysis_questionpapers__questionpapers_id_custom_d630ef6f_uniq;
       public         postgres    false    231    231            �           2606    33768 4   analysis_questionpapers analysis_questionpapers_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.analysis_questionpapers
    ADD CONSTRAINT analysis_questionpapers_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.analysis_questionpapers DROP CONSTRAINT analysis_questionpapers_pkey;
       public         postgres    false    229            �           2606    33776 H   analysis_questionpapers_questions analysis_questionpapers_questions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questionpapers_questions
    ADD CONSTRAINT analysis_questionpapers_questions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.analysis_questionpapers_questions DROP CONSTRAINT analysis_questionpapers_questions_pkey;
       public         postgres    false    231            �           2606    33742 *   analysis_questions analysis_questions_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.analysis_questions
    ADD CONSTRAINT analysis_questions_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.analysis_questions DROP CONSTRAINT analysis_questions_pkey;
       public         postgres    false    227            �           2606    33723 *   analysis_semesters analysis_semesters_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.analysis_semesters
    ADD CONSTRAINT analysis_semesters_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.analysis_semesters DROP CONSTRAINT analysis_semesters_pkey;
       public         postgres    false    223            �           2606    33827 [   analysis_semesters_subjects analysis_semesters_subje_semesters_id_subjects_id_a9422f82_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_semesters_subjects
    ADD CONSTRAINT analysis_semesters_subje_semesters_id_subjects_id_a9422f82_uniq UNIQUE (semesters_id, subjects_id);
 �   ALTER TABLE ONLY public.analysis_semesters_subjects DROP CONSTRAINT analysis_semesters_subje_semesters_id_subjects_id_a9422f82_uniq;
       public         postgres    false    225    225            �           2606    33731 <   analysis_semesters_subjects analysis_semesters_subjects_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.analysis_semesters_subjects
    ADD CONSTRAINT analysis_semesters_subjects_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.analysis_semesters_subjects DROP CONSTRAINT analysis_semesters_subjects_pkey;
       public         postgres    false    225                       2606    33715 8   analysis_subjects_modules analysis_subjects_modules_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.analysis_subjects_modules
    ADD CONSTRAINT analysis_subjects_modules_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.analysis_subjects_modules DROP CONSTRAINT analysis_subjects_modules_pkey;
       public         postgres    false    221            �           2606    33813 X   analysis_subjects_modules analysis_subjects_modules_subjects_id_modules_id_d4eede64_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.analysis_subjects_modules
    ADD CONSTRAINT analysis_subjects_modules_subjects_id_modules_id_d4eede64_uniq UNIQUE (subjects_id, modules_id);
 �   ALTER TABLE ONLY public.analysis_subjects_modules DROP CONSTRAINT analysis_subjects_modules_subjects_id_modules_id_d4eede64_uniq;
       public         postgres    false    221    221            |           2606    33707 (   analysis_subjects analysis_subjects_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.analysis_subjects
    ADD CONSTRAINT analysis_subjects_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.analysis_subjects DROP CONSTRAINT analysis_subjects_pkey;
       public         postgres    false    219            S           2606    33568    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            X           2606    33597 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            [           2606    33576 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            U           2606    33566    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            N           2606    33583 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            P           2606    33558 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            �           2606    34288 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    251            I           2606    33550 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            K           2606    33548 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            G           2606    33540 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            �           2606    34308 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    252            ^           2606    33616 +   users_customuser users_customuser_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_email_key UNIQUE (email);
 U   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_email_key;
       public         postgres    false    207            i           2606    33657 T   users_customuser_groups users_customuser_groups_customuser_id_group_id_76b619e3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq UNIQUE (customuser_id, group_id);
 ~   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_customuser_id_group_id_76b619e3_uniq;
       public         postgres    false    209    209            l           2606    33624 4   users_customuser_groups users_customuser_groups_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_pkey;
       public         postgres    false    209            `           2606    33610 &   users_customuser users_customuser_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_pkey;
       public         postgres    false    207            c           2606    33614 /   users_customuser users_customuser_unique_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_unique_id_key UNIQUE (unique_id);
 Y   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_unique_id_key;
       public         postgres    false    207            n           2606    33671 a   users_customuser_user_permissions users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq;
       public         postgres    false    211    211            r           2606    33632 H   users_customuser_user_permissions users_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_user_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_user_permissions_pkey;
       public         postgres    false    211            f           2606    33612 .   users_customuser users_customuser_username_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.users_customuser
    ADD CONSTRAINT users_customuser_username_key UNIQUE (username);
 X   ALTER TABLE ONLY public.users_customuser DROP CONSTRAINT users_customuser_username_key;
       public         postgres    false    207            t           2606    33640     users_profile users_profile_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_pkey;
       public         postgres    false    213            v           2606    33642 '   users_profile users_profile_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_user_id_key;
       public         postgres    false    213            �           1259    34186    Game_game_exam_id_709b8d27    INDEX     W   CREATE INDEX "Game_game_exam_id_709b8d27" ON public."Game_game" USING btree (exam_id);
 0   DROP INDEX public."Game_game_exam_id_709b8d27";
       public         postgres    false    239            �           1259    34269 (   Game_game_game_subjects_game_id_781efc10    INDEX     s   CREATE INDEX "Game_game_game_subjects_game_id_781efc10" ON public."Game_game_game_subjects" USING btree (game_id);
 >   DROP INDEX public."Game_game_game_subjects_game_id_781efc10";
       public         postgres    false    249            �           1259    34270 0   Game_game_game_subjects_gamesubjects_id_edd7ab84    INDEX     �   CREATE INDEX "Game_game_game_subjects_gamesubjects_id_edd7ab84" ON public."Game_game_game_subjects" USING btree (gamesubjects_id);
 F   DROP INDEX public."Game_game_game_subjects_gamesubjects_id_edd7ab84";
       public         postgres    false    249            �           1259    34271    Game_game_semester_id_9dcd89b8    INDEX     _   CREATE INDEX "Game_game_semester_id_9dcd89b8" ON public."Game_game" USING btree (semester_id);
 4   DROP INDEX public."Game_game_semester_id_9dcd89b8";
       public         postgres    false    239            �           1259    34212 ,   Game_gameentries_bronze_question_id_2dfcd4a4    INDEX     {   CREATE INDEX "Game_gameentries_bronze_question_id_2dfcd4a4" ON public."Game_gameentries" USING btree (bronze_question_id);
 B   DROP INDEX public."Game_gameentries_bronze_question_id_2dfcd4a4";
       public         postgres    false    241            �           1259    34213 ,   Game_gameentries_golden_question_id_1a872bd9    INDEX     {   CREATE INDEX "Game_gameentries_golden_question_id_1a872bd9" ON public."Game_gameentries" USING btree (golden_question_id);
 B   DROP INDEX public."Game_gameentries_golden_question_id_1a872bd9";
       public         postgres    false    241            �           1259    34229 2   Game_gameentries_questions_gameentries_id_3a0b81ae    INDEX     �   CREATE INDEX "Game_gameentries_questions_gameentries_id_3a0b81ae" ON public."Game_gameentries_questions" USING btree (gameentries_id);
 H   DROP INDEX public."Game_gameentries_questions_gameentries_id_3a0b81ae";
       public         postgres    false    243            �           1259    34230 0   Game_gameentries_questions_questions_id_188c3f91    INDEX     �   CREATE INDEX "Game_gameentries_questions_questions_id_188c3f91" ON public."Game_gameentries_questions" USING btree (questions_id);
 F   DROP INDEX public."Game_gameentries_questions_questions_id_188c3f91";
       public         postgres    false    243            �           1259    34214 ,   Game_gameentries_silver_question_id_2a1a28b5    INDEX     {   CREATE INDEX "Game_gameentries_silver_question_id_2a1a28b5" ON public."Game_gameentries" USING btree (silver_question_id);
 B   DROP INDEX public."Game_gameentries_silver_question_id_2a1a28b5";
       public         postgres    false    241            �           1259    34215 $   Game_gameentries_subject_id_cb31b5ff    INDEX     k   CREATE INDEX "Game_gameentries_subject_id_cb31b5ff" ON public."Game_gameentries" USING btree (subject_id);
 :   DROP INDEX public."Game_gameentries_subject_id_cb31b5ff";
       public         postgres    false    241            �           1259    34216 !   Game_gameentries_user_id_847cc34a    INDEX     e   CREATE INDEX "Game_gameentries_user_id_847cc34a" ON public."Game_gameentries" USING btree (user_id);
 7   DROP INDEX public."Game_gameentries_user_id_847cc34a";
       public         postgres    false    241            �           1259    34256 1   Game_gamesubjects_entries_gameentries_id_4ba07bc9    INDEX     �   CREATE INDEX "Game_gamesubjects_entries_gameentries_id_4ba07bc9" ON public."Game_gamesubjects_entries" USING btree (gameentries_id);
 G   DROP INDEX public."Game_gamesubjects_entries_gameentries_id_4ba07bc9";
       public         postgres    false    247            �           1259    34255 2   Game_gamesubjects_entries_gamesubjects_id_7b836cb9    INDEX     �   CREATE INDEX "Game_gamesubjects_entries_gamesubjects_id_7b836cb9" ON public."Game_gamesubjects_entries" USING btree (gamesubjects_id);
 H   DROP INDEX public."Game_gamesubjects_entries_gamesubjects_id_7b836cb9";
       public         postgres    false    247            �           1259    34241 +   Game_gamesubjects_game_for_exam_id_2785af2d    INDEX     y   CREATE INDEX "Game_gamesubjects_game_for_exam_id_2785af2d" ON public."Game_gamesubjects" USING btree (game_for_exam_id);
 A   DROP INDEX public."Game_gamesubjects_game_for_exam_id_2785af2d";
       public         postgres    false    245            �           1259    34242 %   Game_gamesubjects_subject_id_6db622e9    INDEX     m   CREATE INDEX "Game_gamesubjects_subject_id_6db622e9" ON public."Game_gamesubjects" USING btree (subject_id);
 ;   DROP INDEX public."Game_gamesubjects_subject_id_6db622e9";
       public         postgres    false    245            �           1259    33911 0   analysis_branches_semesters_branches_id_596769ee    INDEX        CREATE INDEX analysis_branches_semesters_branches_id_596769ee ON public.analysis_branches_semesters USING btree (branches_id);
 D   DROP INDEX public.analysis_branches_semesters_branches_id_596769ee;
       public         postgres    false    237            �           1259    33912 1   analysis_branches_semesters_semesters_id_6eea25fb    INDEX     �   CREATE INDEX analysis_branches_semesters_semesters_id_6eea25fb ON public.analysis_branches_semesters USING btree (semesters_id);
 E   DROP INDEX public.analysis_branches_semesters_semesters_id_6eea25fb;
       public         postgres    false    237            �           1259    33897 .   analysis_modules_questions_modules_id_1bdd1760    INDEX     {   CREATE INDEX analysis_modules_questions_modules_id_1bdd1760 ON public.analysis_modules_questions USING btree (modules_id);
 B   DROP INDEX public.analysis_modules_questions_modules_id_1bdd1760;
       public         postgres    false    233            �           1259    33898 0   analysis_modules_questions_questions_id_4ffdb63e    INDEX        CREATE INDEX analysis_modules_questions_questions_id_4ffdb63e ON public.analysis_modules_questions USING btree (questions_id);
 D   DROP INDEX public.analysis_modules_questions_questions_id_4ffdb63e;
       public         postgres    false    233            �           1259    33870 /   analysis_questionpapers_examination_id_1b84fb20    INDEX     }   CREATE INDEX analysis_questionpapers_examination_id_1b84fb20 ON public.analysis_questionpapers USING btree (examination_id);
 C   DROP INDEX public.analysis_questionpapers_examination_id_1b84fb20;
       public         postgres    false    229            �           1259    33884 8   analysis_questionpapers_questions_customuser_id_00ca36ea    INDEX     �   CREATE INDEX analysis_questionpapers_questions_customuser_id_00ca36ea ON public.analysis_questionpapers_questions USING btree (customuser_id);
 L   DROP INDEX public.analysis_questionpapers_questions_customuser_id_00ca36ea;
       public         postgres    false    231            �           1259    33883 <   analysis_questionpapers_questions_questionpapers_id_3997b686    INDEX     �   CREATE INDEX analysis_questionpapers_questions_questionpapers_id_3997b686 ON public.analysis_questionpapers_questions USING btree (questionpapers_id);
 P   DROP INDEX public.analysis_questionpapers_questions_questionpapers_id_3997b686;
       public         postgres    false    231            �           1259    33836 .   analysis_questions_question_author_id_52dc8b3d    INDEX     {   CREATE INDEX analysis_questions_question_author_id_52dc8b3d ON public.analysis_questions USING btree (question_author_id);
 B   DROP INDEX public.analysis_questions_question_author_id_52dc8b3d;
       public         postgres    false    227            �           1259    33828 1   analysis_semesters_subjects_semesters_id_55e8f738    INDEX     �   CREATE INDEX analysis_semesters_subjects_semesters_id_55e8f738 ON public.analysis_semesters_subjects USING btree (semesters_id);
 E   DROP INDEX public.analysis_semesters_subjects_semesters_id_55e8f738;
       public         postgres    false    225            �           1259    33829 0   analysis_semesters_subjects_subjects_id_d1bf700b    INDEX        CREATE INDEX analysis_semesters_subjects_subjects_id_d1bf700b ON public.analysis_semesters_subjects USING btree (subjects_id);
 D   DROP INDEX public.analysis_semesters_subjects_subjects_id_d1bf700b;
       public         postgres    false    225            }           1259    33815 -   analysis_subjects_modules_modules_id_ddaf3d54    INDEX     y   CREATE INDEX analysis_subjects_modules_modules_id_ddaf3d54 ON public.analysis_subjects_modules USING btree (modules_id);
 A   DROP INDEX public.analysis_subjects_modules_modules_id_ddaf3d54;
       public         postgres    false    221            �           1259    33814 .   analysis_subjects_modules_subjects_id_75951023    INDEX     {   CREATE INDEX analysis_subjects_modules_subjects_id_75951023 ON public.analysis_subjects_modules USING btree (subjects_id);
 B   DROP INDEX public.analysis_subjects_modules_subjects_id_75951023;
       public         postgres    false    221            Q           1259    33585    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            V           1259    33598 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            Y           1259    33599 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            L           1259    33584 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            �           1259    34299 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    251            �           1259    34300 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    251            �           1259    34310 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    252            �           1259    34309 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    252            \           1259    33645 $   users_customuser_email_6445acef_like    INDEX     v   CREATE INDEX users_customuser_email_6445acef_like ON public.users_customuser USING btree (email varchar_pattern_ops);
 8   DROP INDEX public.users_customuser_email_6445acef_like;
       public         postgres    false    207            g           1259    33658 .   users_customuser_groups_customuser_id_958147bf    INDEX     {   CREATE INDEX users_customuser_groups_customuser_id_958147bf ON public.users_customuser_groups USING btree (customuser_id);
 B   DROP INDEX public.users_customuser_groups_customuser_id_958147bf;
       public         postgres    false    209            j           1259    33659 )   users_customuser_groups_group_id_01390b14    INDEX     q   CREATE INDEX users_customuser_groups_group_id_01390b14 ON public.users_customuser_groups USING btree (group_id);
 =   DROP INDEX public.users_customuser_groups_group_id_01390b14;
       public         postgres    false    209            a           1259    33644 (   users_customuser_unique_id_ba3477a1_like    INDEX     ~   CREATE INDEX users_customuser_unique_id_ba3477a1_like ON public.users_customuser USING btree (unique_id varchar_pattern_ops);
 <   DROP INDEX public.users_customuser_unique_id_ba3477a1_like;
       public         postgres    false    207            o           1259    33672 8   users_customuser_user_permissions_customuser_id_5771478b    INDEX     �   CREATE INDEX users_customuser_user_permissions_customuser_id_5771478b ON public.users_customuser_user_permissions USING btree (customuser_id);
 L   DROP INDEX public.users_customuser_user_permissions_customuser_id_5771478b;
       public         postgres    false    211            p           1259    33673 8   users_customuser_user_permissions_permission_id_baaa2f74    INDEX     �   CREATE INDEX users_customuser_user_permissions_permission_id_baaa2f74 ON public.users_customuser_user_permissions USING btree (permission_id);
 L   DROP INDEX public.users_customuser_user_permissions_permission_id_baaa2f74;
       public         postgres    false    211            d           1259    33643 '   users_customuser_username_80452fdf_like    INDEX     |   CREATE INDEX users_customuser_username_80452fdf_like ON public.users_customuser USING btree (username varchar_pattern_ops);
 ;   DROP INDEX public.users_customuser_username_80452fdf_like;
       public         postgres    false    207            �           2606    34181 @   Game_game Game_game_exam_id_709b8d27_fk_analysis_examinations_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_game"
    ADD CONSTRAINT "Game_game_exam_id_709b8d27_fk_analysis_examinations_id" FOREIGN KEY (exam_id) REFERENCES public.analysis_examinations(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."Game_game" DROP CONSTRAINT "Game_game_exam_id_709b8d27_fk_analysis_examinations_id";
       public       postgres    false    239    215    2936            �           2606    34262 R   Game_game_game_subjects Game_game_game_subje_gamesubjects_id_edd7ab84_fk_Game_game    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_game_game_subjects"
    ADD CONSTRAINT "Game_game_game_subje_gamesubjects_id_edd7ab84_fk_Game_game" FOREIGN KEY (gamesubjects_id) REFERENCES public."Game_gamesubjects"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Game_game_game_subjects" DROP CONSTRAINT "Game_game_game_subje_gamesubjects_id_edd7ab84_fk_Game_game";
       public       postgres    false    245    3000    249            �           2606    34257 P   Game_game_game_subjects Game_game_game_subjects_game_id_781efc10_fk_Game_game_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_game_game_subjects"
    ADD CONSTRAINT "Game_game_game_subjects_game_id_781efc10_fk_Game_game_id" FOREIGN KEY (game_id) REFERENCES public."Game_game"(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public."Game_game_game_subjects" DROP CONSTRAINT "Game_game_game_subjects_game_id_781efc10_fk_Game_game_id";
       public       postgres    false    2983    239    249            �           2606    34272 A   Game_game Game_game_semester_id_9dcd89b8_fk_analysis_semesters_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_game"
    ADD CONSTRAINT "Game_game_semester_id_9dcd89b8_fk_analysis_semesters_id" FOREIGN KEY (semester_id) REFERENCES public.analysis_semesters(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public."Game_game" DROP CONSTRAINT "Game_game_semester_id_9dcd89b8_fk_analysis_semesters_id";
       public       postgres    false    2948    239    223            �           2606    34187 J   Game_gameentries Game_gameentries_bronze_question_id_2dfcd4a4_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_bronze_question_id_2dfcd4a4_fk_analysis_" FOREIGN KEY (bronze_question_id) REFERENCES public.analysis_questions(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_bronze_question_id_2dfcd4a4_fk_analysis_";
       public       postgres    false    227    241    2956            �           2606    34192 J   Game_gameentries Game_gameentries_golden_question_id_1a872bd9_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_golden_question_id_1a872bd9_fk_analysis_" FOREIGN KEY (golden_question_id) REFERENCES public.analysis_questions(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_golden_question_id_1a872bd9_fk_analysis_";
       public       postgres    false    227    241    2956            �           2606    34217 T   Game_gameentries_questions Game_gameentries_que_gameentries_id_3a0b81ae_fk_Game_game    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries_questions"
    ADD CONSTRAINT "Game_gameentries_que_gameentries_id_3a0b81ae_fk_Game_game" FOREIGN KEY (gameentries_id) REFERENCES public."Game_gameentries"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Game_gameentries_questions" DROP CONSTRAINT "Game_gameentries_que_gameentries_id_3a0b81ae_fk_Game_game";
       public       postgres    false    2988    241    243            �           2606    34222 R   Game_gameentries_questions Game_gameentries_que_questions_id_188c3f91_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries_questions"
    ADD CONSTRAINT "Game_gameentries_que_questions_id_188c3f91_fk_analysis_" FOREIGN KEY (questions_id) REFERENCES public.analysis_questions(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Game_gameentries_questions" DROP CONSTRAINT "Game_gameentries_que_questions_id_188c3f91_fk_analysis_";
       public       postgres    false    227    243    2956            �           2606    34197 J   Game_gameentries Game_gameentries_silver_question_id_2a1a28b5_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_silver_question_id_2a1a28b5_fk_analysis_" FOREIGN KEY (silver_question_id) REFERENCES public.analysis_questions(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_silver_question_id_2a1a28b5_fk_analysis_";
       public       postgres    false    227    241    2956            �           2606    34202 M   Game_gameentries Game_gameentries_subject_id_cb31b5ff_fk_analysis_subjects_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_subject_id_cb31b5ff_fk_analysis_subjects_id" FOREIGN KEY (subject_id) REFERENCES public.analysis_subjects(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_subject_id_cb31b5ff_fk_analysis_subjects_id";
       public       postgres    false    241    2940    219            �           2606    34207 I   Game_gameentries Game_gameentries_user_id_847cc34a_fk_users_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gameentries"
    ADD CONSTRAINT "Game_gameentries_user_id_847cc34a_fk_users_customuser_id" FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public."Game_gameentries" DROP CONSTRAINT "Game_gameentries_user_id_847cc34a_fk_users_customuser_id";
       public       postgres    false    207    241    2912            �           2606    34248 S   Game_gamesubjects_entries Game_gamesubjects_en_gameentries_id_4ba07bc9_fk_Game_game    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gamesubjects_entries"
    ADD CONSTRAINT "Game_gamesubjects_en_gameentries_id_4ba07bc9_fk_Game_game" FOREIGN KEY (gameentries_id) REFERENCES public."Game_gameentries"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Game_gamesubjects_entries" DROP CONSTRAINT "Game_gamesubjects_en_gameentries_id_4ba07bc9_fk_Game_game";
       public       postgres    false    2988    241    247            �           2606    34243 T   Game_gamesubjects_entries Game_gamesubjects_en_gamesubjects_id_7b836cb9_fk_Game_game    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gamesubjects_entries"
    ADD CONSTRAINT "Game_gamesubjects_en_gamesubjects_id_7b836cb9_fk_Game_game" FOREIGN KEY (gamesubjects_id) REFERENCES public."Game_gamesubjects"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Game_gamesubjects_entries" DROP CONSTRAINT "Game_gamesubjects_en_gamesubjects_id_7b836cb9_fk_Game_game";
       public       postgres    false    247    245    3000            �           2606    34231 J   Game_gamesubjects Game_gamesubjects_game_for_exam_id_2785af2d_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gamesubjects"
    ADD CONSTRAINT "Game_gamesubjects_game_for_exam_id_2785af2d_fk_analysis_" FOREIGN KEY (game_for_exam_id) REFERENCES public.analysis_examinations(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."Game_gamesubjects" DROP CONSTRAINT "Game_gamesubjects_game_for_exam_id_2785af2d_fk_analysis_";
       public       postgres    false    2936    215    245            �           2606    34236 O   Game_gamesubjects Game_gamesubjects_subject_id_6db622e9_fk_analysis_subjects_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Game_gamesubjects"
    ADD CONSTRAINT "Game_gamesubjects_subject_id_6db622e9_fk_analysis_subjects_id" FOREIGN KEY (subject_id) REFERENCES public.analysis_subjects(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public."Game_gamesubjects" DROP CONSTRAINT "Game_gamesubjects_subject_id_6db622e9_fk_analysis_subjects_id";
       public       postgres    false    219    245    2940            �           2606    33968 R   analysis_branches_semesters analysis_branches_se_branches_id_596769ee_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_branches_semesters
    ADD CONSTRAINT analysis_branches_se_branches_id_596769ee_fk_analysis_ FOREIGN KEY (branches_id) REFERENCES public.analysis_branches(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.analysis_branches_semesters DROP CONSTRAINT analysis_branches_se_branches_id_596769ee_fk_analysis_;
       public       postgres    false    2974    237    235            �           2606    33963 S   analysis_branches_semesters analysis_branches_se_semesters_id_6eea25fb_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_branches_semesters
    ADD CONSTRAINT analysis_branches_se_semesters_id_6eea25fb_fk_analysis_ FOREIGN KEY (semesters_id) REFERENCES public.analysis_semesters(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.analysis_branches_semesters DROP CONSTRAINT analysis_branches_se_semesters_id_6eea25fb_fk_analysis_;
       public       postgres    false    237    2948    223            �           2606    33978 P   analysis_modules_questions analysis_modules_que_modules_id_1bdd1760_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_modules_questions
    ADD CONSTRAINT analysis_modules_que_modules_id_1bdd1760_fk_analysis_ FOREIGN KEY (modules_id) REFERENCES public.analysis_modules(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.analysis_modules_questions DROP CONSTRAINT analysis_modules_que_modules_id_1bdd1760_fk_analysis_;
       public       postgres    false    217    233    2938            �           2606    33973 R   analysis_modules_questions analysis_modules_que_questions_id_4ffdb63e_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_modules_questions
    ADD CONSTRAINT analysis_modules_que_questions_id_4ffdb63e_fk_analysis_ FOREIGN KEY (questions_id) REFERENCES public.analysis_questions(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.analysis_modules_questions DROP CONSTRAINT analysis_modules_que_questions_id_4ffdb63e_fk_analysis_;
       public       postgres    false    233    2956    227            �           2606    33983 Z   analysis_questionpapers_questions analysis_questionpap_customuser_id_00ca36ea_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questionpapers_questions
    ADD CONSTRAINT analysis_questionpap_customuser_id_00ca36ea_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.analysis_questionpapers_questions DROP CONSTRAINT analysis_questionpap_customuser_id_00ca36ea_fk_users_cus;
       public       postgres    false    231    207    2912            �           2606    33865 Q   analysis_questionpapers analysis_questionpap_examination_id_1b84fb20_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questionpapers
    ADD CONSTRAINT analysis_questionpap_examination_id_1b84fb20_fk_analysis_ FOREIGN KEY (examination_id) REFERENCES public.analysis_examinations(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.analysis_questionpapers DROP CONSTRAINT analysis_questionpap_examination_id_1b84fb20_fk_analysis_;
       public       postgres    false    2936    229    215            �           2606    33988 ^   analysis_questionpapers_questions analysis_questionpap_questionpapers_id_3997b686_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questionpapers_questions
    ADD CONSTRAINT analysis_questionpap_questionpapers_id_3997b686_fk_analysis_ FOREIGN KEY (questionpapers_id) REFERENCES public.analysis_questionpapers(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.analysis_questionpapers_questions DROP CONSTRAINT analysis_questionpap_questionpapers_id_3997b686_fk_analysis_;
       public       postgres    false    2960    231    229            �           2606    33830 N   analysis_questions analysis_questions_question_author_id_52dc8b3d_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_questions
    ADD CONSTRAINT analysis_questions_question_author_id_52dc8b3d_fk_users_cus FOREIGN KEY (question_author_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.analysis_questions DROP CONSTRAINT analysis_questions_question_author_id_52dc8b3d_fk_users_cus;
       public       postgres    false    207    227    2912            �           2606    33998 S   analysis_semesters_subjects analysis_semesters_s_semesters_id_55e8f738_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_semesters_subjects
    ADD CONSTRAINT analysis_semesters_s_semesters_id_55e8f738_fk_analysis_ FOREIGN KEY (semesters_id) REFERENCES public.analysis_semesters(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.analysis_semesters_subjects DROP CONSTRAINT analysis_semesters_s_semesters_id_55e8f738_fk_analysis_;
       public       postgres    false    225    2948    223            �           2606    33993 R   analysis_semesters_subjects analysis_semesters_s_subjects_id_d1bf700b_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_semesters_subjects
    ADD CONSTRAINT analysis_semesters_s_subjects_id_d1bf700b_fk_analysis_ FOREIGN KEY (subjects_id) REFERENCES public.analysis_subjects(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.analysis_semesters_subjects DROP CONSTRAINT analysis_semesters_s_subjects_id_d1bf700b_fk_analysis_;
       public       postgres    false    225    219    2940            �           2606    34003 O   analysis_subjects_modules analysis_subjects_mo_modules_id_ddaf3d54_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_subjects_modules
    ADD CONSTRAINT analysis_subjects_mo_modules_id_ddaf3d54_fk_analysis_ FOREIGN KEY (modules_id) REFERENCES public.analysis_modules(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.analysis_subjects_modules DROP CONSTRAINT analysis_subjects_mo_modules_id_ddaf3d54_fk_analysis_;
       public       postgres    false    217    2938    221            �           2606    34008 P   analysis_subjects_modules analysis_subjects_mo_subjects_id_75951023_fk_analysis_    FK CONSTRAINT     �   ALTER TABLE ONLY public.analysis_subjects_modules
    ADD CONSTRAINT analysis_subjects_mo_subjects_id_75951023_fk_analysis_ FOREIGN KEY (subjects_id) REFERENCES public.analysis_subjects(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.analysis_subjects_modules DROP CONSTRAINT analysis_subjects_mo_subjects_id_75951023_fk_analysis_;
       public       postgres    false    219    221    2940            �           2606    33591 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2896            �           2606    33586 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    2901    205            �           2606    33577 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    2891    199            �           2606    34289 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    2891    251    199            �           2606    34294 I   django_admin_log django_admin_log_user_id_c564eba6_fk_users_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_customuser_id;
       public       postgres    false    251    2912    207            �           2606    33646 P   users_customuser_groups users_customuser_gro_customuser_id_958147bf_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_gro_customuser_id_958147bf_fk_users_cus;
       public       postgres    false    207    209    2912            �           2606    33651 R   users_customuser_groups users_customuser_groups_group_id_01390b14_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_groups
    ADD CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.users_customuser_groups DROP CONSTRAINT users_customuser_groups_group_id_01390b14_fk_auth_group_id;
       public       postgres    false    209    2901    203            �           2606    33660 Z   users_customuser_user_permissions users_customuser_use_customuser_id_5771478b_fk_users_cus    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus FOREIGN KEY (customuser_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_customuser_id_5771478b_fk_users_cus;
       public       postgres    false    207    211    2912            �           2606    33665 Z   users_customuser_user_permissions users_customuser_use_permission_id_baaa2f74_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_customuser_user_permissions
    ADD CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.users_customuser_user_permissions DROP CONSTRAINT users_customuser_use_permission_id_baaa2f74_fk_auth_perm;
       public       postgres    false    211    201    2896            �           2606    33674 C   users_profile users_profile_user_id_2112e78d_fk_users_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_profile
    ADD CONSTRAINT users_profile_user_id_2112e78d_fk_users_customuser_id FOREIGN KEY (user_id) REFERENCES public.users_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.users_profile DROP CONSTRAINT users_profile_user_id_2112e78d_fk_users_customuser_id;
       public       postgres    false    2912    213    207            �      x�3�4A�=... ��      �      x�3�4�4�2�F\1z\\\ 	      �   '   x�3�4CCNC.#N04�4�2���L�j��b���� �gG      �   "   x�3�4�4�2�4�4�2�4�&�&@�=... 4�{      �      x�3�4�4�2��\1z\\\ 
      �   "   x�3�4�4�2�&\ƜF�F\&@Ҙ+F��� 4cs      �   $   x�3�t��-(-I-Rp�K��KM-��K����� ���      �      x�3�4�4�2�F\1z\\\ 	            x�3����*ͩ�420������ 21      �   S   x�3�tq�V0�42�2�� �M�L ���)�9�
F I#Ng?�2.3NGIsNgw_�PW����p%`�=... ��      �   ;   x�ɻ !��X������qN6�õل'ĔK5�z�ѡ��4�d��L��u      �      x������ � �      �      x������ � �      �   �   x�MP�N�0<�_��.�
�K�J=p�eo[�do��8�8�|�fvfg�A|���dXo�'&-�B	��p��� ?�����xpAw�`1k�y_�o��n�Q��E,ƙ�jE�_��T4�M��}��tp�'�����hM�l�?�pJ��bƔ���׀6��h�,)����!}���Ů(*cu7�x�[[�sY�YL���Tevۗ��o���G�o|      �      x�3�4�2�4����� �      �   *   x��I 0�wL�=K��q4~8
��VjY��|g5�      �   1   x�3���2�tq��2�t��2�t�qq�2�tv�2�������� ��      �   /   x�ȹ�0���&w��e��JAxH�I��?eӌò.C{?���      s      x������ � �      u      x������ � �      q   �  x�u�[��0E��*���%��6R�bl�q���$��`��}�՜�9�u���k?���p��~����f����KS����^Q�$`����Y��$`�?�Wa��@5�=�x�L��>dEP��iPN�d�C?Œ ��(*28ױ�y�?Y�ocs�K�ɋ�N	!B
QI@���%�ü��a�|��
"TzU��Pg���kt[��FDWt�U�c��ǽ��0��mQV�d�CG�H/aE.j+F,='?fMܿ�4�o��)T�I��Jai� �7	H�x�q�����W�Ї��t���=c��'�<C�'DN����.C?/[7em�)��_�$�TV�� +<HkXRr���W?e]���)U8�!U�T&#A� 
-F Ϗ_�8O�����)u K1`R� Ȕ�DV�b���ϛ�f?.���R�T�)��SfK�T`9��VW )��IB~?�Z��wL�b�@�VeE�d	,F���ncyx��J�r�US�{�г�Nmv��Vo�ڊ�k@�z��"i����s9�6^8imj(��^H�)$IXH�r�Q(Iֹ���ƛ����*Q�q������t#�����9<�ꯇn./͆-�d�b-�4HqC�v�p�J�"����\�����4w�A^Z��[@_Zڕ?6�ޭ&���]��|�&��v򭚼+֓oa�|3�n3yW��|�7yW��|�7y׼�|���so&_��ɻM��7y�ɔjٛ|���|��L��c���XI      �     x���]OA����b�+�a2�c��J�E$^���P���6���g�l���%�>s����&�SJr%D퍏�_[�)��u3^��RM.gK��ӟ�x2�&�R����R 0�6��F���5�jއ��K�lR]��b�c�������t^Uw��u��90� :�h�� j�V�u�f[���y@�6p ��]\۲�� ��Z�� *���FC��h��������ciH{��q#�bt�'�o-�����;�)�`Ą���4Ns�������0
 I[��cm���ǐ����خ0'�Sz!O�F�� u�S-ͣƮ��@!���bYݕ�j�$~}=Oo��b��$��C(hF�=4�|��}1O%{�����-����(5��mԖ�m���p�Y�����4�֎.Է��o����Ҍ˳- ��p�nz7�U���o��j�?�x����0���JX�.ަ�Y�c{iy�f�t"p�wU�����2�	�t��p�FOxeR�i���S�n'�j:W��d}[)�]ܦ����>�Tze��dj��s��ߝ՘ W7���#b�uZ�N��������K=�е�,F1P�@T|�\�Y*�=��Z�b��o�zp�w�֘z[�9��4%x�#�1�:Q�O�v�\.+Si��������o�i�!E�Հ��ý��%��g 蠦d[���+ޟ8�s�����C�⋣w�zj��jo��[_���J^gH�"Yu2�<5�޾sw�ɶA�v%7��&9��."�s ���a��?�8y�[�g=�Y�e)      o   �   x�e�K� �urG��z/�&�Xq�C3��B}��.����h���0a��<�E���z�\��٘G��Y�lAxNȻ��p�cI�3��͋|pg=2n�,��h�S~
ŲwՍ;��ղ�����Q}!����j��R�y�Z��'?������ra[q è�_(_������붰��+���;�,�}R�"> ì��      m   F  x���]��  �g�}��b����Jh�?Y����#C��}�"��y���8;�p�X_B@��g��PoD����El	�e��%�Er�/�TO�?�^o��Lo���\5����2��<��rզv�;��{7�����֝��ƈ �V�gWm��b{�] �!�-�[R�%���Ŋ4�Hg|��xv�sW�c�Q�:2;"��cvS�ϭqz�^�ᄱTj��fM��t�d�8ymN'm�i�to�7g�����t> Y��*�U\"`�����j���`��j���V��C��tW�v��B�K�6�q��0�%�H��aE�Ir/'��V�c�>�u�:��m�O{*j�P�2'6{N	)���ul6� "�""C�"7�xEx�5�2#j�4O4�tR�\bJ�o˷���RK
ҫc�̩w�^� ��F�atY����5u��~ܺ�� ���;xw��5�e0�Μ��}t���F�B�.�X����7�1�q!�V�>孢�8�0��%�e��=���&ۙ��MT�l�r�RZ�42�kmgR=!�xD(iA,�ąL�|�����       �     x�=�Oo�0@��)v_4�;�d��HJl��	mv���*3��O?����%�IN]��.ϭ��3vEU���k�k��ԉ,�r>�r��0�>At�;Y'��aݓY�p-l3�u�U��r��<�o��I}Ps79,���^�.�����eFԞ��]8u[:~+�i���U�����l	/ ��0�.u�Vf9���"�%l��.�z6cí��.j���}���$̅�_��(|�y�3}a��ĝ�{�h���&�'@c����+"y_��~ g�      w   C  x�m�[k�@��7������[vW(��Uz1Z�M
e��4^B�Z��]�PJ��0�33EURf�~lrCE�&|�UV���6�u�z+�Uv{#�Xdy\�f}��!����.�g{1��QٿD�Ơ0�-���t���1`�D�r�.�D�:7+�*J����7���2o!'Z�S,#�k��"a�G��Bb�]N���7_͗�X��z�  ����뽝ȤxmWG5��mJ��i�M=/'�c�U���慦�rPM?��8*BR�ӓ:�M^��.ЛWh�#��|��C��O�(�2�8ӒbZ`ee�u��� ����4�2��=�� qy�      y      x������ � �      {      x������ � �      }   "   x�3�LIMK,�)��*H�4�2D�r��qqq ��
O     