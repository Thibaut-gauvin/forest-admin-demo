CREATE TABLE public.contact
(
  "id"         integer NOT NULL,
  "name"       character varying NOT NULL,
  "email"      character varying,
  "coordinate" character varying,
  "message"    character varying,
  "created_at" timestamp with time zone
);

CREATE SEQUENCE public.contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.contact ALTER COLUMN id SET DEFAULT nextval('public.contact_id_seq'::regclass);

INSERT INTO "public"."contact"
(id, name, email, coordinate, message, created_at) VALUES
(1, 'john doe', 'john.doe@gmail.com', '6 rue de robinson', 'Hello World !', '2018-07-06 19:20:59'),
(2, 'John smith', 'john.smith@gmail.com', '154 Av de daumesnil', 'Lorem ipsum dolor sit amet', '2018-09-02 10:21:13'),
(3, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2018-10-11 16:10:01'),
(4, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2018-10-16 13:52:56'),
(5, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2018-11-01 16:18:12'),
(6, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2018-11-05 15:01:13'),
(7, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2018-12-28 09:16:16'),
(8, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2019-01-15 17:29:19'),
(9, 'john doe', 'test@email.com', '6 rue du faubourg saint martin', 'Hello world !', '2019-01-28 19:24:21');

CREATE TABLE public.image
(
  "id"         integer NOT NULL,
  "name"       character varying NOT NULL,
  "file_name"  character varying NOT NULL,
  "category"   character varying NOT NULL,
  "updated_at" timestamp with time zone
);

CREATE SEQUENCE public.image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);

INSERT INTO "public"."image"
(id, name, file_name, category, updated_at) VALUES
(1, 'BATIMENTS 1', 'test.jpg', 'batiments', '2018-08-01 16:28:19'),
(2, 'BATIMENTS 2', 'test.jpg', 'batiments', '2018-08-01 16:28:19'),
(3, 'BATIMENTS 3', 'test.jpg', 'batiments', '2018-08-01 16:28:19'),
(4, 'BATIMENTS 4', 'test.jpg', 'batiments', '2018-08-01 16:28:19'),
(5, 'BOIS 1', 'test.jpg', 'bois', '2018-08-01 16:28:19'),
(6, 'BOIS 2', 'test.jpg', 'bois', '2018-08-01 16:28:19'),
(7, 'METAL 1', 'test.jpg', 'metaux', '2018-08-01 16:28:19'),
(8, 'METAL 2', 'test.jpg', 'metaux', '2018-08-01 16:28:19'),
(9, 'NAUTISME 1', 'test.jpg', 'nautisme', '2018-08-01 16:28:19'),
(10, 'NAUTISME 2', 'test.jpg', 'nautisme', '2018-08-01 16:28:19');

CREATE TABLE public.customer
(
    "id"                   integer NOT NULL,
    "username"             character varying NOT NULL,
    "email"                character varying NOT NULL,
    "password"             character varying NOT NULL,
    "role"                 character varying NOT NULL,
    "created_at"           timestamp with time zone,
    "updated_at"           timestamp with time zone,
    "deleted_at"           timestamp with time zone,
    "last_connection_date" timestamp with time zone
);

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY public."customer" ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);

INSERT INTO "public"."customer"
(id, username, email, password, role, created_at, updated_at, deleted_at, last_connection_date) VALUES
(2, 'jean-michel', 'jean-michel@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'premium',  '2018-08-21 16:00:01', '2018-08-21 16:00:01', null, '2019-02-02 22:45:13'),
(2, 'thibaut', 'thibaut@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'premium',  '2018-09-10 22:45:13', '2018-09-10 22:45:13', null, '2019-02-02 22:45:13'),
(3, 'guest 1', 'guest1@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'guest', '2018-09-16 22:45:13', '2018-09-16 22:45:13', null, '2019-02-02 22:45:13'),
(4, 'guest 2', 'guest2@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'guest', '2018-10-11 22:45:13', '2018-10-11 22:45:13', null, '2019-02-02 22:45:13'),
(5, 'user 1', 'user1@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'user', '2018-12-01 22:45:13', '2018-12-01 22:45:13', null, '2019-02-02 22:45:13'),
(6, 'user 2', 'user1@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'user', '2018-12-21 22:45:13', '2018-12-21 22:45:13', null, '2019-02-02 22:45:13'),
(7, 'user 3', 'user3@example', 'vq6lignYT1JAJzepQ9WJQjLmciA=', 'user', '2019-01-29 22:45:13', '2019-01-29 22:45:13', null, '2019-02-02 22:45:13');
