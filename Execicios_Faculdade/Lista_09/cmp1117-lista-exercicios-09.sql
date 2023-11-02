--
-- Name: cargo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cargo (
    id integer NOT NULL,
    nome character varying(100),
    salario numeric(9,2)
);


--
-- Name: cargo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cargo_id_seq OWNED BY cargo.id;


--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario (
    fk_pessoa numeric(11,0) NOT NULL,
    fk_orgao integer NOT NULL,
    fk_cargo integer NOT NULL,
    matricula numeric(8,0) NOT NULL
);


--
-- Name: funcionario_projeto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE funcionario_projeto (
    fk_funcionario numeric(11,0) NOT NULL,
    fk_projeto integer NOT NULL,
    data_alocacao date
);


--
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE municipio (
    id integer NOT NULL,
    nome character varying(200)
);


--
-- Name: municipio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE municipio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: municipio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE municipio_id_seq OWNED BY municipio.id;


--
-- Name: orgao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE orgao (
    id integer NOT NULL,
    nome character varying(200),
    fk_municipio integer
);


--
-- Name: orgao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE orgao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orgao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE orgao_id_seq OWNED BY orgao.id;


--
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pessoa (
    cpf numeric(11,0) NOT NULL,
    rg numeric(6,0),
    nome character varying(150),
    data_nascimento date,
    fk_municipio_nascimento integer
);


--
-- Name: projeto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projeto (
    codigo integer NOT NULL,
    nome character varying(120),
    fk_orgao_responsavel integer,
    fk_funcionario_coordenador numeric(8,0)
);


--
-- Name: projeto_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projeto_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projeto_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE projeto_codigo_seq OWNED BY projeto.codigo;


--
-- Name: telefone; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE telefone (
    fk_pessoa numeric(11,0) NOT NULL,
    numero character varying(20) NOT NULL
);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE cargo ALTER COLUMN id SET DEFAULT nextval('cargo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE municipio ALTER COLUMN id SET DEFAULT nextval('municipio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE orgao ALTER COLUMN id SET DEFAULT nextval('orgao_id_seq'::regclass);


--
-- Name: codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE projeto ALTER COLUMN codigo SET DEFAULT nextval('projeto_codigo_seq'::regclass);


--
-- Data for Name: cargo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cargo VALUES (2, 'Programador Java Junior', 1500.00);
INSERT INTO cargo VALUES (3, 'Programador Java Sênior', 11754.84);
INSERT INTO cargo VALUES (1, 'Analista de Sistemas', 10800.97);
INSERT INTO cargo VALUES (4, 'Analista de testes', 8000.88);
INSERT INTO cargo VALUES (5, 'Gerente de Projetos', 15000.00);
INSERT INTO cargo VALUES (7, 'Administrador de Banco de Dados', 12710.54);
INSERT INTO cargo VALUES (8, 'Administrador de Redes', 9500.00);
INSERT INTO cargo VALUES (9, 'Arquiteto de Software', 13500.00);
INSERT INTO cargo VALUES (6, 'Projetista de Banco de Dados', 11500.00);
INSERT INTO cargo VALUES (10, 'Analista de dados', 15754.11);


--
-- Name: cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cargo_id_seq', 1, false);


--
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO funcionario VALUES (767751556, 8, 3, 22703018);
INSERT INTO funcionario VALUES (1652053251, 4, 3, 35754078);
INSERT INTO funcionario VALUES (1683729219, 10, 1, 29967373);
INSERT INTO funcionario VALUES (1903921812, 2, 9, 76044525);
INSERT INTO funcionario VALUES (2203673380, 7, 5, 33328105);
INSERT INTO funcionario VALUES (4116235183, 11, 8, 95443264);
INSERT INTO funcionario VALUES (4328537580, 2, 6, 86104652);
INSERT INTO funcionario VALUES (4697450721, 4, 9, 19932355);
INSERT INTO funcionario VALUES (4915867442, 5, 1, 78981503);
INSERT INTO funcionario VALUES (4970999186, 3, 10, 68905123);
INSERT INTO funcionario VALUES (4975487531, 5, 6, 68779667);
INSERT INTO funcionario VALUES (5360882851, 9, 4, 81844766);
INSERT INTO funcionario VALUES (5402647067, 5, 1, 50772719);
INSERT INTO funcionario VALUES (5951737809, 3, 5, 51970169);
INSERT INTO funcionario VALUES (6065222433, 8, 5, 65847228);
INSERT INTO funcionario VALUES (6237179943, 6, 4, 62361835);
INSERT INTO funcionario VALUES (6694277965, 10, 3, 54049583);
INSERT INTO funcionario VALUES (6854285955, 1, 8, 69677091);
INSERT INTO funcionario VALUES (8336775141, 11, 3, 45564074);
INSERT INTO funcionario VALUES (8391505720, 7, 3, 257180);
INSERT INTO funcionario VALUES (8948394174, 1, 9, 3076557);
INSERT INTO funcionario VALUES (9932188733, 11, 9, 24545061);
INSERT INTO funcionario VALUES (10145444354, 15, 6, 35059545);
INSERT INTO funcionario VALUES (11493425289, 1, 6, 80348020);
INSERT INTO funcionario VALUES (11604830179, 16, 1, 54904509);
INSERT INTO funcionario VALUES (12062788246, 13, 7, 18192189);
INSERT INTO funcionario VALUES (13801022447, 11, 8, 23719652);
INSERT INTO funcionario VALUES (14009857270, 12, 4, 58314868);
INSERT INTO funcionario VALUES (15485520230, 9, 8, 45885553);
INSERT INTO funcionario VALUES (15902663077, 14, 3, 2992565);
INSERT INTO funcionario VALUES (19294345588, 8, 3, 81639632);
INSERT INTO funcionario VALUES (21235352001, 16, 6, 32959939);
INSERT INTO funcionario VALUES (21273455861, 15, 2, 57062413);
INSERT INTO funcionario VALUES (21276398036, 12, 8, 14967737);
INSERT INTO funcionario VALUES (21845201213, 11, 7, 43167065);
INSERT INTO funcionario VALUES (24365596848, 3, 9, 34900093);
INSERT INTO funcionario VALUES (28544622752, 6, 8, 7384707);
INSERT INTO funcionario VALUES (28550265529, 6, 2, 12072188);
INSERT INTO funcionario VALUES (29644432324, 3, 5, 89229473);
INSERT INTO funcionario VALUES (29919660295, 4, 2, 62844908);
INSERT INTO funcionario VALUES (30565506462, 7, 6, 55649930);
INSERT INTO funcionario VALUES (32345427113, 16, 7, 55076702);
INSERT INTO funcionario VALUES (33212575126, 1, 10, 9699513);
INSERT INTO funcionario VALUES (33242390571, 8, 7, 24753793);
INSERT INTO funcionario VALUES (33320303881, 6, 4, 70770818);
INSERT INTO funcionario VALUES (34804983237, 14, 7, 9956693);
INSERT INTO funcionario VALUES (35938495284, 6, 1, 95315879);
INSERT INTO funcionario VALUES (36068292175, 1, 7, 45016238);
INSERT INTO funcionario VALUES (37506635099, 11, 9, 8178371);
INSERT INTO funcionario VALUES (38116582903, 12, 5, 50220389);
INSERT INTO funcionario VALUES (40733765838, 11, 7, 77953151);
INSERT INTO funcionario VALUES (40915349740, 16, 7, 73940041);
INSERT INTO funcionario VALUES (42565273394, 14, 6, 21523297);
INSERT INTO funcionario VALUES (43169889122, 15, 1, 23838704);
INSERT INTO funcionario VALUES (44109533037, 7, 1, 2541185);
INSERT INTO funcionario VALUES (45315873582, 15, 10, 5478337);
INSERT INTO funcionario VALUES (46093830048, 14, 8, 9892547);
INSERT INTO funcionario VALUES (46434529106, 6, 8, 59603598);
INSERT INTO funcionario VALUES (47415512495, 11, 6, 38295751);
INSERT INTO funcionario VALUES (49379616666, 8, 10, 2770663);
INSERT INTO funcionario VALUES (50449391734, 9, 4, 55346167);
INSERT INTO funcionario VALUES (50772117645, 9, 4, 45680458);
INSERT INTO funcionario VALUES (52368530201, 14, 1, 59025928);
INSERT INTO funcionario VALUES (52413727638, 1, 1, 34909932);
INSERT INTO funcionario VALUES (53010607655, 9, 9, 77687761);
INSERT INTO funcionario VALUES (53350250165, 3, 8, 14675858);
INSERT INTO funcionario VALUES (54948334673, 6, 7, 2894504);
INSERT INTO funcionario VALUES (55165410444, 15, 1, 24375372);
INSERT INTO funcionario VALUES (55371473144, 2, 9, 14740428);
INSERT INTO funcionario VALUES (55751318402, 1, 4, 73665322);
INSERT INTO funcionario VALUES (57160629574, 2, 8, 42570779);
INSERT INTO funcionario VALUES (57222018508, 11, 3, 68981202);
INSERT INTO funcionario VALUES (58900728159, 9, 3, 79348304);
INSERT INTO funcionario VALUES (59220986159, 6, 5, 50749150);
INSERT INTO funcionario VALUES (59409901226, 15, 10, 42556733);
INSERT INTO funcionario VALUES (59675096117, 1, 9, 28702302);
INSERT INTO funcionario VALUES (59690243741, 6, 8, 93141632);
INSERT INTO funcionario VALUES (60736342690, 10, 8, 64080031);
INSERT INTO funcionario VALUES (64942609961, 14, 9, 70074239);
INSERT INTO funcionario VALUES (65485525863, 3, 6, 66621216);
INSERT INTO funcionario VALUES (65517466925, 14, 7, 58019344);
INSERT INTO funcionario VALUES (65822153089, 17, 6, 79966787);
INSERT INTO funcionario VALUES (66734840758, 13, 1, 78465419);
INSERT INTO funcionario VALUES (68808914807, 11, 10, 18262538);
INSERT INTO funcionario VALUES (69769796456, 12, 5, 28995478);
INSERT INTO funcionario VALUES (70577773702, 16, 5, 33811586);
INSERT INTO funcionario VALUES (71318287280, 5, 6, 43838330);
INSERT INTO funcionario VALUES (71446448178, 15, 4, 92837515);
INSERT INTO funcionario VALUES (71523816197, 8, 1, 98852929);
INSERT INTO funcionario VALUES (71572836753, 7, 10, 21526091);
INSERT INTO funcionario VALUES (72906762643, 6, 1, 88839564);
INSERT INTO funcionario VALUES (73242013672, 7, 3, 24420596);
INSERT INTO funcionario VALUES (73306264313, 4, 10, 31888746);
INSERT INTO funcionario VALUES (74054545141, 13, 9, 3579992);
INSERT INTO funcionario VALUES (75262372636, 8, 8, 66220812);
INSERT INTO funcionario VALUES (76020034645, 8, 6, 46150772);
INSERT INTO funcionario VALUES (76040886753, 12, 9, 67067121);
INSERT INTO funcionario VALUES (76380017067, 9, 6, 45569117);
INSERT INTO funcionario VALUES (78933601238, 6, 7, 86268712);
INSERT INTO funcionario VALUES (79784679460, 9, 1, 88125851);
INSERT INTO funcionario VALUES (80008607684, 15, 8, 25602225);
INSERT INTO funcionario VALUES (80050121626, 17, 5, 79410345);
INSERT INTO funcionario VALUES (81218146322, 2, 10, 78143232);
INSERT INTO funcionario VALUES (82515673893, 1, 7, 49484585);
INSERT INTO funcionario VALUES (83601630114, 3, 8, 18827098);
INSERT INTO funcionario VALUES (84419558125, 11, 1, 36162576);
INSERT INTO funcionario VALUES (85024963638, 3, 10, 45051913);
INSERT INTO funcionario VALUES (85380703772, 2, 5, 14627995);
INSERT INTO funcionario VALUES (86095790075, 13, 4, 47713910);
INSERT INTO funcionario VALUES (87053852893, 4, 6, 74047391);
INSERT INTO funcionario VALUES (88469580056, 11, 8, 11656907);
INSERT INTO funcionario VALUES (88739458626, 7, 8, 17885722);
INSERT INTO funcionario VALUES (89248287530, 8, 4, 41277098);
INSERT INTO funcionario VALUES (89258654834, 12, 6, 10509837);
INSERT INTO funcionario VALUES (91730489504, 11, 2, 48790473);
INSERT INTO funcionario VALUES (93683391241, 14, 3, 99349401);
INSERT INTO funcionario VALUES (93980743880, 14, 3, 63832410);
INSERT INTO funcionario VALUES (94199108120, 11, 4, 80679219);
INSERT INTO funcionario VALUES (95548768156, 15, 2, 61918330);
INSERT INTO funcionario VALUES (95566871284, 7, 8, 46900032);
INSERT INTO funcionario VALUES (95805403879, 7, 1, 49080166);
INSERT INTO funcionario VALUES (96887677708, 14, 9, 28985451);
INSERT INTO funcionario VALUES (98005411946, 2, 5, 45980089);
INSERT INTO funcionario VALUES (98064717597, 1, 7, 15254164);
INSERT INTO funcionario VALUES (99042385982, 4, 5, 80595001);
INSERT INTO funcionario VALUES (13615488294, 6, 3, 69774780);
INSERT INTO funcionario VALUES (19251615012, 13, 9, 81017887);
INSERT INTO funcionario VALUES (21302324648, 3, 10, 28403204);
INSERT INTO funcionario VALUES (29454393939, 15, 8, 3679760);
INSERT INTO funcionario VALUES (32443874608, 3, 7, 25206743);
INSERT INTO funcionario VALUES (35104861845, 12, 10, 27830350);
INSERT INTO funcionario VALUES (38188681084, 11, 6, 63208428);
INSERT INTO funcionario VALUES (43986664042, 12, 1, 76932607);
INSERT INTO funcionario VALUES (46565464995, 15, 3, 20446074);
INSERT INTO funcionario VALUES (51589611568, 5, 8, 14842852);
INSERT INTO funcionario VALUES (54459479953, 14, 10, 89986634);
INSERT INTO funcionario VALUES (56211937954, 13, 9, 34332065);
INSERT INTO funcionario VALUES (59246869246, 12, 1, 19201591);
INSERT INTO funcionario VALUES (63621780019, 2, 6, 52541007);
INSERT INTO funcionario VALUES (65958274658, 14, 3, 26224814);
INSERT INTO funcionario VALUES (70670748486, 6, 1, 63942996);
INSERT INTO funcionario VALUES (72470822293, 3, 3, 7513374);
INSERT INTO funcionario VALUES (74651565238, 10, 3, 98085919);
INSERT INTO funcionario VALUES (77175850393, 3, 2, 96899922);
INSERT INTO funcionario VALUES (80991221311, 2, 3, 52205882);
INSERT INTO funcionario VALUES (84596631407, 11, 2, 29451372);
INSERT INTO funcionario VALUES (87468044065, 3, 2, 48439582);
INSERT INTO funcionario VALUES (90170592985, 3, 8, 39411814);
INSERT INTO funcionario VALUES (95084756868, 14, 2, 2929394);
INSERT INTO funcionario VALUES (97971190178, 2, 3, 92469150);


--
-- Data for Name: funcionario_projeto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO funcionario_projeto VALUES (17885722, 17, '2017-10-14');
INSERT INTO funcionario_projeto VALUES (70074239, 1, '2017-10-22');
INSERT INTO funcionario_projeto VALUES (14740428, 1, '2017-08-05');
INSERT INTO funcionario_projeto VALUES (92469150, 1, '2017-08-28');
INSERT INTO funcionario_projeto VALUES (3076557, 9, '2017-10-17');
INSERT INTO funcionario_projeto VALUES (9956693, 15, '2017-08-01');
INSERT INTO funcionario_projeto VALUES (73940041, 19, '2017-10-03');
INSERT INTO funcionario_projeto VALUES (9699513, 18, '2017-08-05');
INSERT INTO funcionario_projeto VALUES (42570779, 1, '2017-08-25');
INSERT INTO funcionario_projeto VALUES (9892547, 9, '2017-11-08');
INSERT INTO funcionario_projeto VALUES (28403204, 16, '2017-08-06');
INSERT INTO funcionario_projeto VALUES (52541007, 4, '2017-10-05');
INSERT INTO funcionario_projeto VALUES (55346167, 20, '2017-09-26');
INSERT INTO funcionario_projeto VALUES (33328105, 25, '2017-09-02');
INSERT INTO funcionario_projeto VALUES (80595001, 27, '2017-08-11');
INSERT INTO funcionario_projeto VALUES (51970169, 18, '2017-10-11');
INSERT INTO funcionario_projeto VALUES (3679760, 23, '2017-08-23');
INSERT INTO funcionario_projeto VALUES (62361835, 6, '2017-11-26');
INSERT INTO funcionario_projeto VALUES (59603598, 19, '2017-09-03');
INSERT INTO funcionario_projeto VALUES (86104652, 1, '2017-10-31');
INSERT INTO funcionario_projeto VALUES (78465419, 16, '2017-08-30');
INSERT INTO funcionario_projeto VALUES (25206743, 26, '2017-11-07');
INSERT INTO funcionario_projeto VALUES (2541185, 30, '2017-08-21');
INSERT INTO funcionario_projeto VALUES (8178371, 9, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (12072188, 5, '2017-10-15');
INSERT INTO funcionario_projeto VALUES (25206743, 23, '2017-10-23');
INSERT INTO funcionario_projeto VALUES (38295751, 10, '2017-08-03');
INSERT INTO funcionario_projeto VALUES (73665322, 15, '2017-08-16');
INSERT INTO funcionario_projeto VALUES (20446074, 12, '2017-09-21');
INSERT INTO funcionario_projeto VALUES (55649930, 25, '2017-10-05');
INSERT INTO funcionario_projeto VALUES (64080031, 8, '2017-11-01');
INSERT INTO funcionario_projeto VALUES (15254164, 27, '2017-10-24');
INSERT INTO funcionario_projeto VALUES (39411814, 13, '2017-11-21');
INSERT INTO funcionario_projeto VALUES (65847228, 29, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (42556733, 6, '2017-10-20');
INSERT INTO funcionario_projeto VALUES (58019344, 12, '2017-09-19');
INSERT INTO funcionario_projeto VALUES (3076557, 17, '2017-08-14');
INSERT INTO funcionario_projeto VALUES (14627995, 15, '2017-10-16');
INSERT INTO funcionario_projeto VALUES (86104652, 16, '2017-11-02');
INSERT INTO funcionario_projeto VALUES (52205882, 29, '2017-10-09');
INSERT INTO funcionario_projeto VALUES (2894504, 29, '2017-09-07');
INSERT INTO funcionario_projeto VALUES (25602225, 22, '2017-08-15');
INSERT INTO funcionario_projeto VALUES (66621216, 29, '2017-08-31');
INSERT INTO funcionario_projeto VALUES (31888746, 16, '2017-11-02');
INSERT INTO funcionario_projeto VALUES (5478337, 13, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (80595001, 28, '2017-08-21');
INSERT INTO funcionario_projeto VALUES (25206743, 15, '2017-09-12');
INSERT INTO funcionario_projeto VALUES (61918330, 23, '2017-08-30');
INSERT INTO funcionario_projeto VALUES (95315879, 6, '2017-09-15');
INSERT INTO funcionario_projeto VALUES (69677091, 17, '2017-09-08');
INSERT INTO funcionario_projeto VALUES (93141632, 23, '2017-10-03');
INSERT INTO funcionario_projeto VALUES (81844766, 15, '2017-10-07');
INSERT INTO funcionario_projeto VALUES (52205882, 17, '2017-08-13');
INSERT INTO funcionario_projeto VALUES (68779667, 16, '2017-11-07');
INSERT INTO funcionario_projeto VALUES (33811586, 5, '2017-07-31');
INSERT INTO funcionario_projeto VALUES (45980089, 28, '2017-10-22');
INSERT INTO funcionario_projeto VALUES (76044525, 3, '2017-08-31');
INSERT INTO funcionario_projeto VALUES (23719652, 21, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (45051913, 2, '2017-09-18');
INSERT INTO funcionario_projeto VALUES (14740428, 11, '2017-11-04');
INSERT INTO funcionario_projeto VALUES (69677091, 15, '2017-07-31');
INSERT INTO funcionario_projeto VALUES (78143232, 23, '2017-10-04');
INSERT INTO funcionario_projeto VALUES (28985451, 11, '2017-10-31');
INSERT INTO funcionario_projeto VALUES (27830350, 12, '2017-08-22');
INSERT INTO funcionario_projeto VALUES (81639632, 25, '2017-11-08');
INSERT INTO funcionario_projeto VALUES (81017887, 17, '2017-08-24');
INSERT INTO funcionario_projeto VALUES (14842852, 23, '2017-10-28');
INSERT INTO funcionario_projeto VALUES (42570779, 3, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (18262538, 12, '2017-11-22');
INSERT INTO funcionario_projeto VALUES (21523297, 9, '2017-08-13');
INSERT INTO funcionario_projeto VALUES (99349401, 13, '2017-09-04');
INSERT INTO funcionario_projeto VALUES (42556733, 11, '2017-07-30');
INSERT INTO funcionario_projeto VALUES (19201591, 10, '2017-08-11');
INSERT INTO funcionario_projeto VALUES (49484585, 2, '2017-09-11');
INSERT INTO funcionario_projeto VALUES (3679760, 29, '2017-10-12');
INSERT INTO funcionario_projeto VALUES (86268712, 27, '2017-08-26');
INSERT INTO funcionario_projeto VALUES (17885722, 16, '2017-10-05');
INSERT INTO funcionario_projeto VALUES (54049583, 13, '2017-09-21');
INSERT INTO funcionario_projeto VALUES (54049583, 11, '2017-10-02');
INSERT INTO funcionario_projeto VALUES (45016238, 18, '2017-11-15');
INSERT INTO funcionario_projeto VALUES (43838330, 5, '2017-08-06');
INSERT INTO funcionario_projeto VALUES (23719652, 16, '2017-09-15');
INSERT INTO funcionario_projeto VALUES (38295751, 20, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (45680458, 2, '2017-08-24');
INSERT INTO funcionario_projeto VALUES (68981202, 27, '2017-11-14');
INSERT INTO funcionario_projeto VALUES (79348304, 24, '2017-09-12');
INSERT INTO funcionario_projeto VALUES (81844766, 19, '2017-11-24');
INSERT INTO funcionario_projeto VALUES (45980089, 29, '2017-08-02');
INSERT INTO funcionario_projeto VALUES (98085919, 17, '2017-08-21');
INSERT INTO funcionario_projeto VALUES (93141632, 4, '2017-11-10');
INSERT INTO funcionario_projeto VALUES (3076557, 23, '2017-10-05');
INSERT INTO funcionario_projeto VALUES (88125851, 9, '2017-09-26');
INSERT INTO funcionario_projeto VALUES (29967373, 25, '2017-10-07');
INSERT INTO funcionario_projeto VALUES (45051913, 30, '2017-09-21');
INSERT INTO funcionario_projeto VALUES (68779667, 29, '2017-10-09');
INSERT INTO funcionario_projeto VALUES (33811586, 21, '2017-11-21');
INSERT INTO funcionario_projeto VALUES (36162576, 12, '2017-10-27');
INSERT INTO funcionario_projeto VALUES (2992565, 5, '2017-09-12');
INSERT INTO funcionario_projeto VALUES (79410345, 21, '2017-11-04');
INSERT INTO funcionario_projeto VALUES (2541185, 26, '2017-09-07');
INSERT INTO funcionario_projeto VALUES (51970169, 12, '2017-08-06');
INSERT INTO funcionario_projeto VALUES (33811586, 23, '2017-09-11');
INSERT INTO funcionario_projeto VALUES (98085919, 21, '2017-09-04');
INSERT INTO funcionario_projeto VALUES (34900093, 9, '2017-09-08');
INSERT INTO funcionario_projeto VALUES (257180, 27, '2017-08-31');
INSERT INTO funcionario_projeto VALUES (23719652, 6, '2017-08-23');
INSERT INTO funcionario_projeto VALUES (66621216, 16, '2017-11-24');
INSERT INTO funcionario_projeto VALUES (24545061, 27, '2017-08-02');
INSERT INTO funcionario_projeto VALUES (50220389, 9, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (28985451, 15, '2017-09-11');
INSERT INTO funcionario_projeto VALUES (96899922, 29, '2017-08-05');
INSERT INTO funcionario_projeto VALUES (15254164, 3, '2017-09-23');
INSERT INTO funcionario_projeto VALUES (14675858, 18, '2017-09-16');
INSERT INTO funcionario_projeto VALUES (21526091, 8, '2017-11-19');
INSERT INTO funcionario_projeto VALUES (76932607, 13, '2017-11-17');
INSERT INTO funcionario_projeto VALUES (42556733, 17, '2017-11-20');
INSERT INTO funcionario_projeto VALUES (14740428, 16, '2017-10-07');
INSERT INTO funcionario_projeto VALUES (5478337, 15, '2017-10-25');
INSERT INTO funcionario_projeto VALUES (55649930, 28, '2017-08-30');
INSERT INTO funcionario_projeto VALUES (57062413, 2, '2017-09-09');
INSERT INTO funcionario_projeto VALUES (9956693, 3, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (9699513, 28, '2017-09-17');
INSERT INTO funcionario_projeto VALUES (17885722, 24, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (23719652, 30, '2017-10-22');
INSERT INTO funcionario_projeto VALUES (11656907, 8, '2017-11-02');
INSERT INTO funcionario_projeto VALUES (32959939, 30, '2017-09-16');
INSERT INTO funcionario_projeto VALUES (38295751, 29, '2017-08-29');
INSERT INTO funcionario_projeto VALUES (18262538, 25, '2017-09-11');
INSERT INTO funcionario_projeto VALUES (49080166, 25, '2017-09-19');
INSERT INTO funcionario_projeto VALUES (28995478, 25, '2017-10-05');
INSERT INTO funcionario_projeto VALUES (7384707, 12, '2017-10-02');
INSERT INTO funcionario_projeto VALUES (21526091, 26, '2017-09-28');
INSERT INTO funcionario_projeto VALUES (96899922, 23, '2017-11-08');
INSERT INTO funcionario_projeto VALUES (17885722, 7, '2017-09-25');
INSERT INTO funcionario_projeto VALUES (76932607, 14, '2017-11-23');
INSERT INTO funcionario_projeto VALUES (15254164, 30, '2017-09-07');
INSERT INTO funcionario_projeto VALUES (20446074, 1, '2017-11-08');
INSERT INTO funcionario_projeto VALUES (45016238, 22, '2017-08-25');
INSERT INTO funcionario_projeto VALUES (96899922, 18, '2017-09-21');
INSERT INTO funcionario_projeto VALUES (36162576, 24, '2017-09-01');
INSERT INTO funcionario_projeto VALUES (50220389, 28, '2017-09-17');
INSERT INTO funcionario_projeto VALUES (24753793, 24, '2017-09-06');
INSERT INTO funcionario_projeto VALUES (88125851, 19, '2017-10-30');
INSERT INTO funcionario_projeto VALUES (61918330, 24, '2017-10-27');
INSERT INTO funcionario_projeto VALUES (29967373, 7, '2017-08-27');
INSERT INTO funcionario_projeto VALUES (24545061, 12, '2017-08-16');
INSERT INTO funcionario_projeto VALUES (78465419, 12, '2017-11-13');
INSERT INTO funcionario_projeto VALUES (67067121, 23, '2017-10-12');
INSERT INTO funcionario_projeto VALUES (42570779, 7, '2017-10-01');
INSERT INTO funcionario_projeto VALUES (61918330, 13, '2017-08-07');
INSERT INTO funcionario_projeto VALUES (73665322, 1, '2017-08-19');
INSERT INTO funcionario_projeto VALUES (45564074, 7, '2017-10-28');
INSERT INTO funcionario_projeto VALUES (95315879, 5, '2017-10-31');
INSERT INTO funcionario_projeto VALUES (2894504, 24, '2017-10-27');
INSERT INTO funcionario_projeto VALUES (50749150, 4, '2017-09-09');
INSERT INTO funcionario_projeto VALUES (29967373, 21, '2017-09-12');
INSERT INTO funcionario_projeto VALUES (42570779, 8, '2017-09-01');
INSERT INTO funcionario_projeto VALUES (7513374, 27, '2017-11-24');
INSERT INTO funcionario_projeto VALUES (24420596, 27, '2017-09-23');
INSERT INTO funcionario_projeto VALUES (58314868, 16, '2017-09-27');
INSERT INTO funcionario_projeto VALUES (76932607, 24, '2017-08-12');
INSERT INTO funcionario_projeto VALUES (45016238, 13, '2017-10-28');
INSERT INTO funcionario_projeto VALUES (65847228, 12, '2017-10-08');
INSERT INTO funcionario_projeto VALUES (21526091, 5, '2017-11-23');
INSERT INTO funcionario_projeto VALUES (55346167, 13, '2017-10-15');
INSERT INTO funcionario_projeto VALUES (35059545, 18, '2017-11-11');
INSERT INTO funcionario_projeto VALUES (41277098, 5, '2017-11-03');
INSERT INTO funcionario_projeto VALUES (24753793, 13, '2017-10-08');
INSERT INTO funcionario_projeto VALUES (79348304, 25, '2017-11-14');
INSERT INTO funcionario_projeto VALUES (96899922, 6, '2017-10-14');
INSERT INTO funcionario_projeto VALUES (38295751, 14, '2017-10-02');
INSERT INTO funcionario_projeto VALUES (43167065, 19, '2017-08-28');
INSERT INTO funcionario_projeto VALUES (92469150, 28, '2017-09-25');
INSERT INTO funcionario_projeto VALUES (28403204, 30, '2017-10-23');
INSERT INTO funcionario_projeto VALUES (54049583, 6, '2017-10-03');
INSERT INTO funcionario_projeto VALUES (81844766, 8, '2017-10-06');
INSERT INTO funcionario_projeto VALUES (24420596, 10, '2017-09-28');
INSERT INTO funcionario_projeto VALUES (66220812, 24, '2017-08-24');
INSERT INTO funcionario_projeto VALUES (50220389, 2, '2017-10-11');
INSERT INTO funcionario_projeto VALUES (24753793, 28, '2017-08-22');
INSERT INTO funcionario_projeto VALUES (63942996, 18, '2017-08-01');
INSERT INTO funcionario_projeto VALUES (96899922, 7, '2017-11-23');
INSERT INTO funcionario_projeto VALUES (5478337, 9, '2017-11-17');
INSERT INTO funcionario_projeto VALUES (45016238, 2, '2017-08-12');
INSERT INTO funcionario_projeto VALUES (7513374, 29, '2017-10-24');
INSERT INTO funcionario_projeto VALUES (2894504, 18, '2017-09-05');
INSERT INTO funcionario_projeto VALUES (50220389, 10, '2017-11-19');
INSERT INTO funcionario_projeto VALUES (7513374, 17, '2017-10-14');
INSERT INTO funcionario_projeto VALUES (28403204, 21, '2017-10-13');
INSERT INTO funcionario_projeto VALUES (45564074, 11, '2017-08-27');
INSERT INTO funcionario_projeto VALUES (58314868, 20, '2017-10-10');
INSERT INTO funcionario_projeto VALUES (69677091, 19, '2017-10-29');
INSERT INTO funcionario_projeto VALUES (8178371, 11, '2017-08-20');
INSERT INTO funcionario_projeto VALUES (18192189, 8, '2017-11-23');
INSERT INTO funcionario_projeto VALUES (81639632, 1, '2017-11-02');
INSERT INTO funcionario_projeto VALUES (50749150, 10, '2017-11-02');
INSERT INTO funcionario_projeto VALUES (36162576, 23, '2017-11-07');
INSERT INTO funcionario_projeto VALUES (68779667, 5, '2017-11-22');
INSERT INTO funcionario_projeto VALUES (41277098, 1, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (50749150, 18, '2017-09-07');
INSERT INTO funcionario_projeto VALUES (78465419, 13, '2017-08-29');
INSERT INTO funcionario_projeto VALUES (52541007, 17, '2017-10-03');
INSERT INTO funcionario_projeto VALUES (57062413, 13, '2017-09-09');
INSERT INTO funcionario_projeto VALUES (45680458, 11, '2017-10-27');
INSERT INTO funcionario_projeto VALUES (89986634, 24, '2017-09-11');
INSERT INTO funcionario_projeto VALUES (18262538, 14, '2017-10-03');
INSERT INTO funcionario_projeto VALUES (96899922, 4, '2017-10-24');
INSERT INTO funcionario_projeto VALUES (42556733, 20, '2017-08-03');
INSERT INTO funcionario_projeto VALUES (52541007, 25, '2017-09-08');
INSERT INTO funcionario_projeto VALUES (20446074, 6, '2017-11-09');
INSERT INTO funcionario_projeto VALUES (23719652, 2, '2017-08-21');
INSERT INTO funcionario_projeto VALUES (49080166, 27, '2017-09-05');
INSERT INTO funcionario_projeto VALUES (31888746, 27, '2017-08-11');
INSERT INTO funcionario_projeto VALUES (17885722, 11, '2017-11-20');
INSERT INTO funcionario_projeto VALUES (3679760, 16, '2017-08-28');
INSERT INTO funcionario_projeto VALUES (24753793, 26, '2017-11-13');
INSERT INTO funcionario_projeto VALUES (63942996, 10, '2017-10-13');
INSERT INTO funcionario_projeto VALUES (36162576, 3, '2017-09-24');
INSERT INTO funcionario_projeto VALUES (38295751, 7, '2017-07-31');
INSERT INTO funcionario_projeto VALUES (9892547, 8, '2017-08-18');
INSERT INTO funcionario_projeto VALUES (11656907, 1, '2017-08-18');
INSERT INTO funcionario_projeto VALUES (12072188, 1, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (92469150, 9, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (66621216, 1, '2017-11-26');
INSERT INTO funcionario_projeto VALUES (59603598, 4, '2017-10-07');
INSERT INTO funcionario_projeto VALUES (12072188, 28, '2017-09-12');
INSERT INTO funcionario_projeto VALUES (58314868, 24, '2017-11-07');
INSERT INTO funcionario_projeto VALUES (2992565, 24, '2017-09-02');
INSERT INTO funcionario_projeto VALUES (14740428, 17, '2017-10-08');
INSERT INTO funcionario_projeto VALUES (3076557, 24, '2017-10-04');
INSERT INTO funcionario_projeto VALUES (74047391, 20, '2017-10-19');
INSERT INTO funcionario_projeto VALUES (70074239, 7, '2017-09-29');
INSERT INTO funcionario_projeto VALUES (39411814, 12, '2017-10-23');
INSERT INTO funcionario_projeto VALUES (63942996, 28, '2017-08-31');
INSERT INTO funcionario_projeto VALUES (63832410, 24, '2017-08-07');
INSERT INTO funcionario_projeto VALUES (28702302, 20, '2017-09-26');
INSERT INTO funcionario_projeto VALUES (45885553, 2, '2017-11-13');
INSERT INTO funcionario_projeto VALUES (92837515, 19, '2017-09-07');
INSERT INTO funcionario_projeto VALUES (29451372, 28, '2017-08-17');
INSERT INTO funcionario_projeto VALUES (48439582, 21, '2017-08-20');
INSERT INTO funcionario_projeto VALUES (46900032, 28, '2017-09-22');
INSERT INTO funcionario_projeto VALUES (54904509, 17, '2017-09-15');
INSERT INTO funcionario_projeto VALUES (62844908, 20, '2017-10-30');
INSERT INTO funcionario_projeto VALUES (68905123, 18, '2017-09-02');
INSERT INTO funcionario_projeto VALUES (88839564, 18, '2017-10-18');
INSERT INTO funcionario_projeto VALUES (18827098, 21, '2017-08-15');
INSERT INTO funcionario_projeto VALUES (35754078, 16, '2017-11-19');
INSERT INTO funcionario_projeto VALUES (70770818, 25, '2017-11-18');
INSERT INTO funcionario_projeto VALUES (48439582, 23, NULL);
INSERT INTO funcionario_projeto VALUES (5478337, 5, NULL);
INSERT INTO funcionario_projeto VALUES (7513374, 24, NULL);
INSERT INTO funcionario_projeto VALUES (67067121, 13, NULL);
INSERT INTO funcionario_projeto VALUES (62844908, 30, NULL);
INSERT INTO funcionario_projeto VALUES (42570779, 18, NULL);
INSERT INTO funcionario_projeto VALUES (55649930, 29, NULL);
INSERT INTO funcionario_projeto VALUES (22703018, 15, NULL);
INSERT INTO funcionario_projeto VALUES (92837515, 25, NULL);
INSERT INTO funcionario_projeto VALUES (80348020, 21, NULL);
INSERT INTO funcionario_projeto VALUES (81639632, 27, NULL);
INSERT INTO funcionario_projeto VALUES (49080166, 22, NULL);
INSERT INTO funcionario_projeto VALUES (28702302, 8, NULL);
INSERT INTO funcionario_projeto VALUES (55076702, 19, NULL);
INSERT INTO funcionario_projeto VALUES (25602225, 14, NULL);
INSERT INTO funcionario_projeto VALUES (19932355, 28, NULL);
INSERT INTO funcionario_projeto VALUES (3579992, 12, NULL);
INSERT INTO funcionario_projeto VALUES (79410345, 3, NULL);
INSERT INTO funcionario_projeto VALUES (45980089, 2, NULL);
INSERT INTO funcionario_projeto VALUES (48790473, 10, NULL);
INSERT INTO funcionario_projeto VALUES (50749150, 6, NULL);
INSERT INTO funcionario_projeto VALUES (33328105, 11, NULL);
INSERT INTO funcionario_projeto VALUES (43838330, 16, NULL);
INSERT INTO funcionario_projeto VALUES (66220812, 7, NULL);
INSERT INTO funcionario_projeto VALUES (21523297, 4, NULL);
INSERT INTO funcionario_projeto VALUES (28995478, 9, NULL);
INSERT INTO funcionario_projeto VALUES (98852929, 1, NULL);
INSERT INTO funcionario_projeto VALUES (63942996, 26, NULL);


--
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO municipio VALUES (1, 'SAO LUIS DE MONTES BELOS');
INSERT INTO municipio VALUES (2, 'ALCANTARAS');
INSERT INTO municipio VALUES (3, 'IBIA');
INSERT INTO municipio VALUES (4, 'TRINDADE');
INSERT INTO municipio VALUES (5, 'SAO CAETANO DO SUL');
INSERT INTO municipio VALUES (6, 'JARAGUA');
INSERT INTO municipio VALUES (7, 'RIANAPOLIS');
INSERT INTO municipio VALUES (8, 'CARMO DO PARANAIBA');
INSERT INTO municipio VALUES (9, 'BARRA');
INSERT INTO municipio VALUES (10, 'ANAPOLIS');
INSERT INTO municipio VALUES (11, 'PICUI');
INSERT INTO municipio VALUES (12, 'INHUMAS');
INSERT INTO municipio VALUES (13, 'PIRENOPOLIS');
INSERT INTO municipio VALUES (14, 'FERROS');
INSERT INTO municipio VALUES (15, 'SANTA MARIA DA VITORIA');
INSERT INTO municipio VALUES (16, 'PORANGATU');
INSERT INTO municipio VALUES (17, 'GOIANIA');
INSERT INTO municipio VALUES (18, 'ARAGUAPAZ');
INSERT INTO municipio VALUES (19, 'PIRES DO RIO');
INSERT INTO municipio VALUES (20, 'CERES');
INSERT INTO municipio VALUES (21, 'BARREIRAS');
INSERT INTO municipio VALUES (22, 'PARNAIBA');
INSERT INTO municipio VALUES (23, 'CURRAIS NOVOS');
INSERT INTO municipio VALUES (24, 'GOIAS');
INSERT INTO municipio VALUES (25, 'IMPERATRIZ');
INSERT INTO municipio VALUES (26, 'MONTE ALEGRE DE GOIAS');
INSERT INTO municipio VALUES (27, 'CORRENTINA');
INSERT INTO municipio VALUES (28, 'FAZENDA NOVA');
INSERT INTO municipio VALUES (29, 'BURITI ALEGRE');
INSERT INTO municipio VALUES (30, 'MARA ROSA');
INSERT INTO municipio VALUES (31, 'RIO VERDE');
INSERT INTO municipio VALUES (32, 'BRASILIA');
INSERT INTO municipio VALUES (33, 'IPIACU');
INSERT INTO municipio VALUES (34, 'QUIRINOPOLIS');
INSERT INTO municipio VALUES (35, 'SILVANIA');
INSERT INTO municipio VALUES (36, 'SAO DESIDERIO');
INSERT INTO municipio VALUES (37, 'PIRACANJUBA');
INSERT INTO municipio VALUES (38, 'MANGA');
INSERT INTO municipio VALUES (39, 'PEIXE');
INSERT INTO municipio VALUES (40, 'UBERABA');
INSERT INTO municipio VALUES (41, 'PATOS DE MINAS');
INSERT INTO municipio VALUES (42, 'ITABERAI');
INSERT INTO municipio VALUES (43, 'JATAI');
INSERT INTO municipio VALUES (44, 'ITUMBIARA');
INSERT INTO municipio VALUES (45, 'CATURAI');
INSERT INTO municipio VALUES (46, 'ARAXA');
INSERT INTO municipio VALUES (47, 'UBERLANDIA');
INSERT INTO municipio VALUES (48, 'ARAGUARI');
INSERT INTO municipio VALUES (49, 'ITAPIRAPUA');
INSERT INTO municipio VALUES (50, 'AURORA DO TOCANTINS');
INSERT INTO municipio VALUES (51, 'IPORA');
INSERT INTO municipio VALUES (52, 'FORMOSO');
INSERT INTO municipio VALUES (53, 'FORTALEZA');
INSERT INTO municipio VALUES (54, 'CARINHANHA');
INSERT INTO municipio VALUES (55, 'SANTA VITORIA');
INSERT INTO municipio VALUES (56, 'PILAR DE GOIAS');
INSERT INTO municipio VALUES (57, 'SAO FRANCISCO DE GOIAS');
INSERT INTO municipio VALUES (58, 'NOVA FRIBURGO');
INSERT INTO municipio VALUES (59, 'CASCALHO RICO');
INSERT INTO municipio VALUES (60, 'ITAPURANGA');
INSERT INTO municipio VALUES (61, 'FLORES DE GOIAS');
INSERT INTO municipio VALUES (62, 'ITUIUTABA');
INSERT INTO municipio VALUES (63, 'RIO DE JANEIRO');
INSERT INTO municipio VALUES (64, 'PETROLINA DE GOIAS');
INSERT INTO municipio VALUES (65, 'ARAGUACU');
INSERT INTO municipio VALUES (66, 'GOIANESIA');
INSERT INTO municipio VALUES (67, 'MACAPA');
INSERT INTO municipio VALUES (68, 'URUACU');
INSERT INTO municipio VALUES (69, 'PIUMHI');
INSERT INTO municipio VALUES (70, 'PARAISO DO TOCANTINS');
INSERT INTO municipio VALUES (71, 'CATALAO');
INSERT INTO municipio VALUES (72, 'GURUPI');
INSERT INTO municipio VALUES (73, 'ARUANA');
INSERT INTO municipio VALUES (74, 'XIQUE-XIQUE');
INSERT INTO municipio VALUES (75, 'PADRE BERNARDO');
INSERT INTO municipio VALUES (76, 'VIANOPOLIS');
INSERT INTO municipio VALUES (77, 'SANTA ROSA DE GOIAS');
INSERT INTO municipio VALUES (78, 'SAO DOMINGOS');
INSERT INTO municipio VALUES (79, 'SANCLERLANDIA');
INSERT INTO municipio VALUES (80, 'SERRA DOS AIMORES');
INSERT INTO municipio VALUES (81, 'FREDERICO WESTPHALEN');
INSERT INTO municipio VALUES (82, 'CUIABA');
INSERT INTO municipio VALUES (83, 'AVELINOPOLIS');
INSERT INTO municipio VALUES (84, 'ISRAELANDIA');
INSERT INTO municipio VALUES (85, 'GOIATUBA');
INSERT INTO municipio VALUES (86, 'ORIZONA');
INSERT INTO municipio VALUES (87, 'CATARINA');
INSERT INTO municipio VALUES (88, 'IPAMERI');
INSERT INTO municipio VALUES (89, 'SANTA HELENA DE GOIAS');
INSERT INTO municipio VALUES (90, 'ITAGUARU');
INSERT INTO municipio VALUES (91, 'SANTA TEREZA DE GOIAS');
INSERT INTO municipio VALUES (92, 'CANAPOLIS');
INSERT INTO municipio VALUES (93, 'NEROPOLIS');
INSERT INTO municipio VALUES (94, 'ARACU');
INSERT INTO municipio VALUES (95, 'CATOLANDIA');
INSERT INTO municipio VALUES (96, 'AGUA LIMPA');
INSERT INTO municipio VALUES (97, 'PONTALINA');
INSERT INTO municipio VALUES (98, 'LIZARDA');
INSERT INTO municipio VALUES (99, 'SAO MIGUEL DO ARAGUAIA');
INSERT INTO municipio VALUES (100, 'SAO SIMAO');
INSERT INTO municipio VALUES (101, 'MORRINHOS');
INSERT INTO municipio VALUES (102, 'PRATA');
INSERT INTO municipio VALUES (103, 'POCONE');
INSERT INTO municipio VALUES (104, 'PEREIRA BARRETO');
INSERT INTO municipio VALUES (105, 'TABOAO DA SERRA');
INSERT INTO municipio VALUES (106, 'SAO JOAO DO ARAGUAIA');
INSERT INTO municipio VALUES (107, 'URUANA');
INSERT INTO municipio VALUES (108, 'UNAI');
INSERT INTO municipio VALUES (109, 'SALVADOR');
INSERT INTO municipio VALUES (110, 'PALMEIRAS DE GOIAS');
INSERT INTO municipio VALUES (111, 'CAIAPONIA');
INSERT INTO municipio VALUES (112, 'MIRA ESTRELA');
INSERT INTO municipio VALUES (113, 'NOVA VENECIA');
INSERT INTO municipio VALUES (114, 'PORTO NACIONAL');
INSERT INTO municipio VALUES (115, 'BELA VISTA DE GOIAS');
INSERT INTO municipio VALUES (116, 'FORMIGA');
INSERT INTO municipio VALUES (117, 'PARANA');
INSERT INTO municipio VALUES (118, 'BARRA DO GARCAS');
INSERT INTO municipio VALUES (119, 'GUAPO');
INSERT INTO municipio VALUES (120, 'COROMANDEL');
INSERT INTO municipio VALUES (121, 'ARAGUAINA');
INSERT INTO municipio VALUES (122, 'CORREGO DO OURO');
INSERT INTO municipio VALUES (123, 'RUBIATABA');
INSERT INTO municipio VALUES (124, 'CORUMBA DE GOIAS');
INSERT INTO municipio VALUES (125, 'DIANOPOLIS');
INSERT INTO municipio VALUES (126, 'ICEM');
INSERT INTO municipio VALUES (127, 'BARRETOS');
INSERT INTO municipio VALUES (128, 'INHAPIM');
INSERT INTO municipio VALUES (129, 'JACUI');
INSERT INTO municipio VALUES (130, 'MIRACEMA DO TOCANTINS');
INSERT INTO municipio VALUES (131, 'MONTE CARMELO');
INSERT INTO municipio VALUES (132, 'CRISTAIS');
INSERT INTO municipio VALUES (133, 'NOVA VENEZA');
INSERT INTO municipio VALUES (134, 'ANICUNS');
INSERT INTO municipio VALUES (135, 'PARAUNA');
INSERT INTO municipio VALUES (136, 'JUSSARA');
INSERT INTO municipio VALUES (137, 'SANTANA');
INSERT INTO municipio VALUES (138, 'ALOANDIA');
INSERT INTO municipio VALUES (139, 'BELEM');
INSERT INTO municipio VALUES (140, 'COLINAS DO TOCANTINS');
INSERT INTO municipio VALUES (141, 'CACU');
INSERT INTO municipio VALUES (142, 'NIQUELANDIA');
INSERT INTO municipio VALUES (143, 'MARAGOGIPE');
INSERT INTO municipio VALUES (144, 'JANUARIA');
INSERT INTO municipio VALUES (145, 'AURILANDIA');
INSERT INTO municipio VALUES (146, 'SAO PEDRO');
INSERT INTO municipio VALUES (147, 'FIRMINOPOLIS');
INSERT INTO municipio VALUES (148, 'PEDRO AFONSO');
INSERT INTO municipio VALUES (149, 'BARRA DO PIRAI');
INSERT INTO municipio VALUES (150, 'SABOEIRO');
INSERT INTO municipio VALUES (151, 'IRAI DE MINAS');
INSERT INTO municipio VALUES (152, 'GUARAI');
INSERT INTO municipio VALUES (153, 'NATAL');
INSERT INTO municipio VALUES (154, 'ESTREITO');
INSERT INTO municipio VALUES (155, 'ITAPACI');
INSERT INTO municipio VALUES (156, 'BARRA DO CORDA');
INSERT INTO municipio VALUES (157, 'COCOS');
INSERT INTO municipio VALUES (158, 'TRES RANCHOS');
INSERT INTO municipio VALUES (159, 'ITAJA');
INSERT INTO municipio VALUES (160, 'CRATO');
INSERT INTO municipio VALUES (161, 'ARCOS');
INSERT INTO municipio VALUES (162, 'TERESINA');
INSERT INTO municipio VALUES (163, 'SANTA FE DE GOIAS');
INSERT INTO municipio VALUES (164, 'SAO PAULO');
INSERT INTO municipio VALUES (165, 'CRISTOPOLIS');
INSERT INTO municipio VALUES (166, 'BURITI DE GOIAS');
INSERT INTO municipio VALUES (167, 'TEOFILO OTONI');
INSERT INTO municipio VALUES (168, 'HIDROLANDIA');
INSERT INTO municipio VALUES (169, 'ESTRELA DO SUL');
INSERT INTO municipio VALUES (170, 'MANAUS');
INSERT INTO municipio VALUES (171, 'PRESIDENTE OLEGARIO');
INSERT INTO municipio VALUES (172, 'PAULO DE FARIA');
INSERT INTO municipio VALUES (173, 'RECIFE');
INSERT INTO municipio VALUES (174, 'OUREM');
INSERT INTO municipio VALUES (175, 'PIUM');
INSERT INTO municipio VALUES (176, 'RIO BRANCO');
INSERT INTO municipio VALUES (177, 'EDEIA');
INSERT INTO municipio VALUES (178, 'SAO RAIMUNDO DAS MANGABEIRAS');
INSERT INTO municipio VALUES (179, 'BRUMADO');
INSERT INTO municipio VALUES (180, 'PIRANHAS');
INSERT INTO municipio VALUES (181, 'CARAZINHO');
INSERT INTO municipio VALUES (182, 'MAURILANDIA');
INSERT INTO municipio VALUES (183, 'RONDONOPOLIS');
INSERT INTO municipio VALUES (184, 'LEME');
INSERT INTO municipio VALUES (185, 'CAMPOS ALTOS');
INSERT INTO municipio VALUES (186, 'MARABA');
INSERT INTO municipio VALUES (187, 'DAMIANOPOLIS');
INSERT INTO municipio VALUES (188, 'FILADELFIA');
INSERT INTO municipio VALUES (189, 'MARCO');
INSERT INTO municipio VALUES (190, 'CUMARI');
INSERT INTO municipio VALUES (191, 'TURVANIA');
INSERT INTO municipio VALUES (192, 'ITARUMA');
INSERT INTO municipio VALUES (193, 'OURO VERDE DE GOIAS');
INSERT INTO municipio VALUES (194, 'MINACU');
INSERT INTO municipio VALUES (195, 'DUERE');
INSERT INTO municipio VALUES (196, 'VERISSIMO');
INSERT INTO municipio VALUES (197, 'CARMO DO RIO VERDE');
INSERT INTO municipio VALUES (198, 'CORRENTE');
INSERT INTO municipio VALUES (199, 'ARARIPINA');
INSERT INTO municipio VALUES (200, 'CORUMBAIBA');
INSERT INTO municipio VALUES (201, 'PONTE ALTA DO BOM JESUS');
INSERT INTO municipio VALUES (202, 'APARECIDA DE GOIANIA');
INSERT INTO municipio VALUES (203, 'SANTA TEREZINHA DE GOIAS');
INSERT INTO municipio VALUES (204, 'SANTA FE');
INSERT INTO municipio VALUES (205, 'SAO BENTO DO UNA');
INSERT INTO municipio VALUES (206, 'GOIANAPOLIS');
INSERT INTO municipio VALUES (207, 'GOIANIRA');
INSERT INTO municipio VALUES (208, 'FORMOSA');
INSERT INTO municipio VALUES (209, 'SERRA DOURADA');
INSERT INTO municipio VALUES (210, 'GOIANDIRA');
INSERT INTO municipio VALUES (211, 'CALDAS NOVAS');
INSERT INTO municipio VALUES (212, 'GRAJAU');
INSERT INTO municipio VALUES (213, 'ARAGOIANIA');
INSERT INTO municipio VALUES (214, 'SANTA CRUZ DE GOIAS');
INSERT INTO municipio VALUES (215, 'AMERICANO DO BRASIL');
INSERT INTO municipio VALUES (216, 'CRATEUS');
INSERT INTO municipio VALUES (217, 'PATROCINIO');
INSERT INTO municipio VALUES (218, 'CAXIAS');
INSERT INTO municipio VALUES (219, 'ITAUCU');
INSERT INTO municipio VALUES (220, 'SAO JOAQUIM DA BARRA');
INSERT INTO municipio VALUES (221, 'BOM JESUS');
INSERT INTO municipio VALUES (222, 'ABADIANIA');
INSERT INTO municipio VALUES (223, 'SAO LUIS GONZAGA DO MARANHAO');
INSERT INTO municipio VALUES (224, 'ITAGUATINS');
INSERT INTO municipio VALUES (225, 'PERDIZES');
INSERT INTO municipio VALUES (226, 'TUPACIGUARA');
INSERT INTO municipio VALUES (227, 'REMANSO');
INSERT INTO municipio VALUES (228, 'PALMEIROPOLIS');
INSERT INTO municipio VALUES (229, 'PITANGUI');
INSERT INTO municipio VALUES (230, 'ARAGARCAS');
INSERT INTO municipio VALUES (231, 'MONTANHA');
INSERT INTO municipio VALUES (232, 'CAMPINORTE');
INSERT INTO municipio VALUES (233, 'MACAUBAS');
INSERT INTO municipio VALUES (234, 'PIRIPIRI');
INSERT INTO municipio VALUES (235, 'JANDAIA');
INSERT INTO municipio VALUES (236, 'BELO HORIZONTE');
INSERT INTO municipio VALUES (237, 'ICHU');
INSERT INTO municipio VALUES (238, 'NOVA RESENDE');
INSERT INTO municipio VALUES (239, 'ITAUNA DO SUL');
INSERT INTO municipio VALUES (240, 'MAUA');
INSERT INTO municipio VALUES (241, 'NAZARIO');
INSERT INTO municipio VALUES (242, 'MOIPORA');
INSERT INTO municipio VALUES (243, 'CACULE');
INSERT INTO municipio VALUES (244, 'ANGICAL');
INSERT INTO municipio VALUES (245, 'CAMPOS BELOS');
INSERT INTO municipio VALUES (246, 'SAO JOSE DA VARGINHA');
INSERT INTO municipio VALUES (247, 'CRIXAS');
INSERT INTO municipio VALUES (248, 'SAO GONCALO DO ABAETE');
INSERT INTO municipio VALUES (249, 'SERRA DO SALITRE');
INSERT INTO municipio VALUES (250, 'SAO GONCALO DO AMARANTE');
INSERT INTO municipio VALUES (251, 'NOVA AURORA');
INSERT INTO municipio VALUES (252, 'ITAGUARI');
INSERT INTO municipio VALUES (253, 'PAINS');
INSERT INTO municipio VALUES (254, 'JOACABA');
INSERT INTO municipio VALUES (255, 'PORTEL');
INSERT INTO municipio VALUES (256, 'DOURADOQUARA');
INSERT INTO municipio VALUES (257, 'CAROLINA');
INSERT INTO municipio VALUES (258, 'MACEIO');
INSERT INTO municipio VALUES (259, 'PIMENTA');
INSERT INTO municipio VALUES (260, 'SACRAMENTO');
INSERT INTO municipio VALUES (261, 'CAICO');
INSERT INTO municipio VALUES (262, 'GUAPORE');
INSERT INTO municipio VALUES (263, 'MUNDO NOVO');
INSERT INTO municipio VALUES (264, 'FORMOSO DO ARAGUAIA');
INSERT INTO municipio VALUES (265, 'CAMPESTRE DE GOIAS');
INSERT INTO municipio VALUES (266, 'BALSAS');
INSERT INTO municipio VALUES (267, 'ALTO PARANA');
INSERT INTO municipio VALUES (268, 'JUAZEIRO');
INSERT INTO municipio VALUES (269, 'SANTA BARBARA DE GOIAS');
INSERT INTO municipio VALUES (270, 'SOBRAL');
INSERT INTO municipio VALUES (271, 'ITAPECERICA');
INSERT INTO municipio VALUES (272, 'MONTES CLAROS DE GOIAS');
INSERT INTO municipio VALUES (273, 'XAMBIOA');
INSERT INTO municipio VALUES (274, 'LUZIANIA');
INSERT INTO municipio VALUES (275, 'BARRO ALTO');
INSERT INTO municipio VALUES (276, 'TRIUNFO');
INSERT INTO municipio VALUES (277, 'TAQUARAL DE GOIAS');
INSERT INTO municipio VALUES (278, 'CACHOEIRA ALTA');
INSERT INTO municipio VALUES (279, 'IPAUMIRIM');
INSERT INTO municipio VALUES (280, 'LEOPOLDO DE BULHOES');
INSERT INTO municipio VALUES (281, 'PORTO FRANCO');
INSERT INTO municipio VALUES (282, 'DORES DO INDAIA');
INSERT INTO municipio VALUES (283, 'MOSSAMEDES');
INSERT INTO municipio VALUES (284, 'ARAPUA');
INSERT INTO municipio VALUES (285, 'SITIO DABADIA');
INSERT INTO municipio VALUES (286, 'CAMPO BELO');
INSERT INTO municipio VALUES (287, 'SANTA QUITERIA');
INSERT INTO municipio VALUES (288, 'FLORANIA');
INSERT INTO municipio VALUES (289, 'MINEIROS');
INSERT INTO municipio VALUES (290, 'MUNHOZ');
INSERT INTO municipio VALUES (291, 'ALAGOA NOVA');
INSERT INTO municipio VALUES (292, 'POCOS DE CALDAS');
INSERT INTO municipio VALUES (293, 'PORTO ALEGRE');
INSERT INTO municipio VALUES (294, 'MIRASSOLANDIA');
INSERT INTO municipio VALUES (295, 'BOA NOVA');
INSERT INTO municipio VALUES (296, 'FORMOSA DO RIO PRETO');
INSERT INTO municipio VALUES (297, 'DORESOPOLIS');
INSERT INTO municipio VALUES (298, 'NOVO BRASIL');
INSERT INTO municipio VALUES (299, 'CRISTALANDIA');
INSERT INTO municipio VALUES (300, 'CORIBE');
INSERT INTO municipio VALUES (301, 'CAMPINA GRANDE');
INSERT INTO municipio VALUES (302, 'MONTALVANIA');
INSERT INTO municipio VALUES (303, 'CONCEICAO');
INSERT INTO municipio VALUES (304, 'TANGARA');
INSERT INTO municipio VALUES (305, 'QUIXADA');
INSERT INTO municipio VALUES (306, 'PAINEIRAS');
INSERT INTO municipio VALUES (307, 'GOIATINS');
INSERT INTO municipio VALUES (308, 'DESTERRO DE ENTRE RIOS');
INSERT INTO municipio VALUES (309, 'LENCOIS');
INSERT INTO municipio VALUES (310, 'JOAO PINHEIRO');
INSERT INTO municipio VALUES (311, 'LAGOA FORMOSA');
INSERT INTO municipio VALUES (312, 'BOM JARDIM DE GOIAS');
INSERT INTO municipio VALUES (313, 'CAMPINAS');
INSERT INTO municipio VALUES (314, 'CAPINOPOLIS');
INSERT INTO municipio VALUES (315, 'MORRO DO CHAPEU');
INSERT INTO municipio VALUES (316, 'JOVIANIA');
INSERT INTO municipio VALUES (317, 'DIORAMA');
INSERT INTO municipio VALUES (318, 'ALFENAS');
INSERT INTO municipio VALUES (319, 'CAMAMU');
INSERT INTO municipio VALUES (320, 'BABACULANDIA');
INSERT INTO municipio VALUES (321, 'PALMELO');
INSERT INTO municipio VALUES (322, 'DELFINOPOLIS');
INSERT INTO municipio VALUES (323, 'INDEPENDENCIA');
INSERT INTO municipio VALUES (324, 'GILBUES');
INSERT INTO municipio VALUES (325, 'PARACATU');
INSERT INTO municipio VALUES (326, 'MERUOCA');
INSERT INTO municipio VALUES (327, 'DAMOLANDIA');
INSERT INTO municipio VALUES (328, 'VICOSA');
INSERT INTO municipio VALUES (329, 'ARAGUACEMA');
INSERT INTO municipio VALUES (330, 'CANDEIAS');
INSERT INTO municipio VALUES (331, 'TIROS');
INSERT INTO municipio VALUES (332, 'ARRAIAS');
INSERT INTO municipio VALUES (333, 'ITABAIANA');
INSERT INTO municipio VALUES (334, 'SANTOS');
INSERT INTO municipio VALUES (335, 'HEITORAI');
INSERT INTO municipio VALUES (336, 'MANOEL EMIDIO');
INSERT INTO municipio VALUES (337, 'ARAPOEMA');
INSERT INTO municipio VALUES (338, 'PANAMA');
INSERT INTO municipio VALUES (339, 'ITUVERAVA');
INSERT INTO municipio VALUES (340, 'TOCANTINIA');
INSERT INTO municipio VALUES (341, 'MUTUNOPOLIS');
INSERT INTO municipio VALUES (342, 'CARAUBAS');
INSERT INTO municipio VALUES (343, 'ERVAL SECO');
INSERT INTO municipio VALUES (344, 'ANTONINA DO NORTE');
INSERT INTO municipio VALUES (345, 'VITORIA DE SANTO ANTAO');
INSERT INTO municipio VALUES (346, 'BAMBUI');
INSERT INTO municipio VALUES (347, 'PIRAPORA');
INSERT INTO municipio VALUES (348, 'CURITIBA');
INSERT INTO municipio VALUES (349, 'NAZARE');
INSERT INTO municipio VALUES (350, 'NOVA RUSSAS');
INSERT INTO municipio VALUES (351, 'ITAETE');
INSERT INTO municipio VALUES (352, 'ALTO PARNAIBA');
INSERT INTO municipio VALUES (353, 'RIO PARANAIBA');
INSERT INTO municipio VALUES (354, 'LUCIARA');
INSERT INTO municipio VALUES (355, 'IBOTIRAMA');
INSERT INTO municipio VALUES (356, 'PALMINOPOLIS');
INSERT INTO municipio VALUES (357, 'SERRA AZUL');
INSERT INTO municipio VALUES (358, 'ARAGUATINS');
INSERT INTO municipio VALUES (359, 'HIDROLINA');
INSERT INTO municipio VALUES (360, 'TAGUATINGA');
INSERT INTO municipio VALUES (361, 'VALENCA');
INSERT INTO municipio VALUES (362, 'URUTAI');
INSERT INTO municipio VALUES (363, 'LAGOA VERMELHA');
INSERT INTO municipio VALUES (364, 'SAMBAIBA');
INSERT INTO municipio VALUES (365, 'SAO JOAO BATISTA DO GLORIA');
INSERT INTO municipio VALUES (366, 'CONSELHEIRO PENA');
INSERT INTO municipio VALUES (367, 'FRANCA');
INSERT INTO municipio VALUES (368, 'MONTES CLAROS');
INSERT INTO municipio VALUES (369, 'VARJAO');
INSERT INTO municipio VALUES (370, 'CATANDUVA');
INSERT INTO municipio VALUES (371, 'ITIQUIRA');
INSERT INTO municipio VALUES (372, 'NOVA ROMA');
INSERT INTO municipio VALUES (373, 'ITABUNA');
INSERT INTO municipio VALUES (374, 'PARAMIRIM');
INSERT INTO municipio VALUES (375, 'REDENCAO');
INSERT INTO municipio VALUES (376, 'BOA ESPERANCA');
INSERT INTO municipio VALUES (377, 'CAMPO GRANDE');
INSERT INTO municipio VALUES (378, 'ICO');
INSERT INTO municipio VALUES (379, 'VARZELANDIA');
INSERT INTO municipio VALUES (380, 'NOVA AMERICA');
INSERT INTO municipio VALUES (381, 'TABOCAS DO BREJO VELHO');
INSERT INTO municipio VALUES (382, 'GRUPIARA');
INSERT INTO municipio VALUES (383, 'RIACHAO');
INSERT INTO municipio VALUES (384, 'GOVERNADOR VALADARES');
INSERT INTO municipio VALUES (385, 'PRADO');
INSERT INTO municipio VALUES (386, 'CROMINIA');
INSERT INTO municipio VALUES (387, 'AMORINOPOLIS');
INSERT INTO municipio VALUES (388, 'PEDRO GOMES');
INSERT INTO municipio VALUES (389, 'PORANGABA');
INSERT INTO municipio VALUES (390, 'CAMACHO');
INSERT INTO municipio VALUES (391, 'CAJUEIRO');
INSERT INTO municipio VALUES (392, 'POSSE');
INSERT INTO municipio VALUES (393, 'XINGUARA');
INSERT INTO municipio VALUES (394, 'TOCANTINOPOLIS');
INSERT INTO municipio VALUES (395, 'GUARINOS');
INSERT INTO municipio VALUES (396, 'BRUMADINHO');
INSERT INTO municipio VALUES (397, 'RIALMA');
INSERT INTO municipio VALUES (398, 'CABACEIRAS');
INSERT INTO municipio VALUES (399, 'SERRA TALHADA');
INSERT INTO municipio VALUES (400, 'ALMAS');
INSERT INTO municipio VALUES (401, 'BREJOLANDIA');
INSERT INTO municipio VALUES (402, 'LAJES');
INSERT INTO municipio VALUES (403, 'PRESIDENTE DUTRA');
INSERT INTO municipio VALUES (404, 'CAXIAS DO SUL');
INSERT INTO municipio VALUES (405, 'SAO JOAO DOS PATOS');
INSERT INTO municipio VALUES (406, 'VALENTE');
INSERT INTO municipio VALUES (407, 'CASSILANDIA');
INSERT INTO municipio VALUES (408, 'SAO RAIMUNDO NONATO');
INSERT INTO municipio VALUES (409, 'TAMBORIL');
INSERT INTO municipio VALUES (410, 'RUSSAS');
INSERT INTO municipio VALUES (411, 'CANOAS');
INSERT INTO municipio VALUES (412, 'AMERICANA');
INSERT INTO municipio VALUES (413, 'MORADA NOVA DE MINAS');
INSERT INTO municipio VALUES (414, 'PINDORAMA DO TOCANTINS');
INSERT INTO municipio VALUES (415, 'URUGUAIANA');
INSERT INTO municipio VALUES (416, 'POXOREO');
INSERT INTO municipio VALUES (417, 'PRATAPOLIS');
INSERT INTO municipio VALUES (418, 'BRITANIA');
INSERT INTO municipio VALUES (419, 'ABAETE');
INSERT INTO municipio VALUES (420, 'TROMBAS');
INSERT INTO municipio VALUES (421, 'PARANAVAI');
INSERT INTO municipio VALUES (422, 'DOURADOS');
INSERT INTO municipio VALUES (423, 'RIBEIRAO PRETO');
INSERT INTO municipio VALUES (424, 'COXIM');
INSERT INTO municipio VALUES (425, 'VIGIA');
INSERT INTO municipio VALUES (426, 'MOZARLANDIA');
INSERT INTO municipio VALUES (427, 'PORTALEGRE');
INSERT INTO municipio VALUES (428, 'MURICI');
INSERT INTO municipio VALUES (429, 'INDIARA');
INSERT INTO municipio VALUES (430, 'CENTRALINA');
INSERT INTO municipio VALUES (431, 'BONFINOPOLIS');
INSERT INTO municipio VALUES (432, 'BRAGANCA');
INSERT INTO municipio VALUES (433, 'ALTO ARAGUAIA');
INSERT INTO municipio VALUES (434, 'LONDRINA');
INSERT INTO municipio VALUES (435, 'CONQUISTA');
INSERT INTO municipio VALUES (436, 'OLIVEIRA DOS BREJINHOS');
INSERT INTO municipio VALUES (437, 'CONCEICAO DO ARAGUAIA');
INSERT INTO municipio VALUES (438, 'CARLOS CHAGAS');
INSERT INTO municipio VALUES (439, 'TIMON');
INSERT INTO municipio VALUES (440, 'CURIMATA');
INSERT INTO municipio VALUES (441, 'FATIMA');
INSERT INTO municipio VALUES (442, 'PRESIDENTE KENNEDY');
INSERT INTO municipio VALUES (443, 'CONSELHEIRO LAFAIETE');
INSERT INTO municipio VALUES (444, 'CAMPO REDONDO');
INSERT INTO municipio VALUES (445, 'UNIAO DA VITORIA');
INSERT INTO municipio VALUES (446, 'JOAO PESSOA');
INSERT INTO municipio VALUES (447, 'BOM SUCESSO DO SUL');
INSERT INTO municipio VALUES (448, 'ROSARIO');
INSERT INTO municipio VALUES (449, 'GARANHUNS');
INSERT INTO municipio VALUES (450, 'MONTE DO CARMO');
INSERT INTO municipio VALUES (451, 'GUAIRA');
INSERT INTO municipio VALUES (452, 'CONCEICAO DA BARRA');
INSERT INTO municipio VALUES (453, 'IACIARA');
INSERT INTO municipio VALUES (454, 'CURUCA');
INSERT INTO municipio VALUES (455, 'OURICURI');
INSERT INTO municipio VALUES (456, 'ITAPORANGA');
INSERT INTO municipio VALUES (457, 'LAGOA DA PRATA');
INSERT INTO municipio VALUES (458, 'ALTONIA');
INSERT INTO municipio VALUES (459, 'ARACAJU');
INSERT INTO municipio VALUES (460, 'SAUDE');
INSERT INTO municipio VALUES (461, 'SAO FELIX DO ARAGUAIA');
INSERT INTO municipio VALUES (462, 'LUCELIA');
INSERT INTO municipio VALUES (463, 'ALVORADA DO NORTE');
INSERT INTO municipio VALUES (464, 'MONTE ALEGRE DE MINAS');
INSERT INTO municipio VALUES (465, 'COLOMBIA');
INSERT INTO municipio VALUES (466, 'CAMPO FLORIDO');
INSERT INTO municipio VALUES (467, 'POCAO DE PEDRAS');
INSERT INTO municipio VALUES (468, 'SAO SEBASTIAO DO PARAISO');
INSERT INTO municipio VALUES (469, 'ITAJUBA');
INSERT INTO municipio VALUES (470, 'CONCEICAO DO TOCANTINS');
INSERT INTO municipio VALUES (471, 'SANTANA DO JACARE');
INSERT INTO municipio VALUES (472, 'SAO BERNARDO DO CAMPO');
INSERT INTO municipio VALUES (473, 'PANORAMA');
INSERT INTO municipio VALUES (474, 'BURITI DOS LOPES');
INSERT INTO municipio VALUES (475, 'AVELINO LOPES');
INSERT INTO municipio VALUES (476, 'NATIVIDADE');
INSERT INTO municipio VALUES (477, 'OURINHOS');
INSERT INTO municipio VALUES (478, 'MOSSORO');
INSERT INTO municipio VALUES (479, 'VICOSA DO CEARA');
INSERT INTO municipio VALUES (480, 'DOVERLANDIA');
INSERT INTO municipio VALUES (481, 'CARIRIACU');
INSERT INTO municipio VALUES (482, 'JUNDIAI');
INSERT INTO municipio VALUES (483, 'SAO GOTARDO');
INSERT INTO municipio VALUES (484, 'AMARANTE DO MARANHAO');
INSERT INTO municipio VALUES (485, 'CACHOEIRA DE GOIAS');
INSERT INTO municipio VALUES (486, 'ARACATUBA');
INSERT INTO municipio VALUES (487, 'CAPELINHA');
INSERT INTO municipio VALUES (488, 'COTEGIPE');
INSERT INTO municipio VALUES (489, 'ITAMBACURI');
INSERT INTO municipio VALUES (490, 'ABADIA DOS DOURADOS');
INSERT INTO municipio VALUES (491, 'ALEXANIA');
INSERT INTO municipio VALUES (492, 'JACOBINA');
INSERT INTO municipio VALUES (493, 'MAIRIPOTABA');
INSERT INTO municipio VALUES (494, 'JAPARAIBA');
INSERT INTO municipio VALUES (495, 'NOVA PONTE');
INSERT INTO municipio VALUES (496, 'SAO MATEUS');
INSERT INTO municipio VALUES (497, 'PRESIDENTE BERNARDES');
INSERT INTO municipio VALUES (498, 'CAJARI');
INSERT INTO municipio VALUES (499, 'ALAGOINHAS');
INSERT INTO municipio VALUES (500, 'GUIRATINGA');
INSERT INTO municipio VALUES (501, 'ITAOBIM');
INSERT INTO municipio VALUES (502, 'CAMPINAS DO SUL');
INSERT INTO municipio VALUES (503, 'SAO FRANCISCO DO CONDE');
INSERT INTO municipio VALUES (504, 'CASCAVEL');
INSERT INTO municipio VALUES (505, 'BONFIM');
INSERT INTO municipio VALUES (506, 'TESOURO');
INSERT INTO municipio VALUES (507, 'ASSARE');
INSERT INTO municipio VALUES (508, 'ITAPAGE');
INSERT INTO municipio VALUES (509, 'NEPOMUCENO');
INSERT INTO municipio VALUES (510, 'ESPUMOSO');
INSERT INTO municipio VALUES (511, 'CORUMBA');
INSERT INTO municipio VALUES (512, 'LAJINHA');
INSERT INTO municipio VALUES (513, 'TOCANTINS');
INSERT INTO municipio VALUES (514, 'CACHOEIRA DE MINAS');
INSERT INTO municipio VALUES (515, 'IVAIPORA');
INSERT INTO municipio VALUES (516, 'BREJINHO DE NAZARE');
INSERT INTO municipio VALUES (517, 'PENAPOLIS');
INSERT INTO municipio VALUES (518, 'CRUZETA');
INSERT INTO municipio VALUES (519, 'BOM DESPACHO');
INSERT INTO municipio VALUES (520, 'SERRANOPOLIS');
INSERT INTO municipio VALUES (521, 'SALTO GRANDE');
INSERT INTO municipio VALUES (522, 'FAINA');
INSERT INTO municipio VALUES (523, 'POCOES');
INSERT INTO municipio VALUES (524, 'ELDORADO');
INSERT INTO municipio VALUES (525, 'SENA MADUREIRA');
INSERT INTO municipio VALUES (526, 'CABECEIRAS');
INSERT INTO municipio VALUES (527, 'SILVANOPOLIS');
INSERT INTO municipio VALUES (528, 'INDIANOPOLIS');
INSERT INTO municipio VALUES (529, 'WANDERLEY');
INSERT INTO municipio VALUES (530, 'FRUTAL');
INSERT INTO municipio VALUES (531, 'LUZILANDIA');
INSERT INTO municipio VALUES (532, 'MONSENHOR TABOSA');
INSERT INTO municipio VALUES (533, 'JAUPACI');
INSERT INTO municipio VALUES (534, 'ITAMARAJU');
INSERT INTO municipio VALUES (535, 'GUIMARANIA');
INSERT INTO municipio VALUES (536, 'BAIANOPOLIS');
INSERT INTO municipio VALUES (537, 'MUTUM');
INSERT INTO municipio VALUES (538, 'MONTIVIDIU');
INSERT INTO municipio VALUES (539, 'ARARUNA');
INSERT INTO municipio VALUES (540, 'CAMPO ALEGRE DE GOIAS');
INSERT INTO municipio VALUES (541, 'BALIZA');
INSERT INTO municipio VALUES (542, 'CRISTALINA');
INSERT INTO municipio VALUES (543, 'COELHO NETO');
INSERT INTO municipio VALUES (544, 'IPUEIRAS');
INSERT INTO municipio VALUES (545, 'PAU DOS FERROS');
INSERT INTO municipio VALUES (546, 'ITAPIPOCA');
INSERT INTO municipio VALUES (547, 'MONTE APRAZIVEL');
INSERT INTO municipio VALUES (548, 'GUARANI DE GOIAS');
INSERT INTO municipio VALUES (549, 'ALVORADA');
INSERT INTO municipio VALUES (550, 'MENDES PIMENTEL');
INSERT INTO municipio VALUES (551, 'LIVRAMENTO DO BRUMADO');
INSERT INTO municipio VALUES (552, 'VICENTINOPOLIS');
INSERT INTO municipio VALUES (553, 'PERDOES');
INSERT INTO municipio VALUES (554, 'CAMPO MAIOR');
INSERT INTO municipio VALUES (555, 'SOLONOPOLE');
INSERT INTO municipio VALUES (556, 'SAO JOAO DEL REI');
INSERT INTO municipio VALUES (557, 'IBITINGA');
INSERT INTO municipio VALUES (558, 'MIRANDIBA');
INSERT INTO municipio VALUES (559, 'PARAIBANO');
INSERT INTO municipio VALUES (560, 'NOVA CRIXAS');
INSERT INTO municipio VALUES (561, 'DARIO MEIRA');
INSERT INTO municipio VALUES (562, 'OLIMPIA');
INSERT INTO municipio VALUES (563, 'TAUA');
INSERT INTO municipio VALUES (564, 'BRAZABRANTES');
INSERT INTO municipio VALUES (565, 'OLIVEIRA');
INSERT INTO municipio VALUES (566, 'IPU');
INSERT INTO municipio VALUES (567, 'PARANAIBA');
INSERT INTO municipio VALUES (568, 'GURINHATA');
INSERT INTO municipio VALUES (569, 'JUCAS');
INSERT INTO municipio VALUES (570, 'SANTA RITA DO ARAGUAIA');
INSERT INTO municipio VALUES (571, 'BARREIRAS DO PIAUI');
INSERT INTO municipio VALUES (572, 'IVOLANDIA');
INSERT INTO municipio VALUES (573, 'TUCURUI');
INSERT INTO municipio VALUES (574, 'IBIARA');
INSERT INTO municipio VALUES (575, 'SANTA ROSA DA SERRA');
INSERT INTO municipio VALUES (576, 'ESTRELA DO NORTE');
INSERT INTO municipio VALUES (577, 'PASSO FUNDO');
INSERT INTO municipio VALUES (578, 'URANDI');
INSERT INTO municipio VALUES (579, 'SOUSA');
INSERT INTO municipio VALUES (580, 'DOM PEDRITO');
INSERT INTO municipio VALUES (581, 'SAO ROMAO');
INSERT INTO municipio VALUES (582, 'CONCEICAO DAS ALAGOAS');
INSERT INTO municipio VALUES (583, 'DAVINOPOLIS');
INSERT INTO municipio VALUES (584, 'SAO FRANCISCO');
INSERT INTO municipio VALUES (585, 'JACAREI');
INSERT INTO municipio VALUES (586, 'SOROCABA');
INSERT INTO municipio VALUES (587, 'OSASCO');
INSERT INTO municipio VALUES (588, 'JUAZEIRO DO NORTE');
INSERT INTO municipio VALUES (589, 'BANDEIRA');
INSERT INTO municipio VALUES (590, 'PEQUIZEIRO');
INSERT INTO municipio VALUES (591, 'BELO JARDIM');
INSERT INTO municipio VALUES (592, 'SANTA TERESINHA');
INSERT INTO municipio VALUES (593, 'ITAU');
INSERT INTO municipio VALUES (594, 'ANTONIO PRADO DE MINAS');
INSERT INTO municipio VALUES (595, 'PATOS');
INSERT INTO municipio VALUES (596, 'PLANALTINA');
INSERT INTO municipio VALUES (597, 'MARINGA');
INSERT INTO municipio VALUES (598, 'CUSTODIA');
INSERT INTO municipio VALUES (599, 'BOM JESUS DA LAPA');
INSERT INTO municipio VALUES (600, 'LAVRAS');
INSERT INTO municipio VALUES (601, 'SANTA CRUZ DO MONTE CASTELO');
INSERT INTO municipio VALUES (602, 'BRASILIA DE MINAS');
INSERT INTO municipio VALUES (603, 'POMPEU');
INSERT INTO municipio VALUES (604, 'DUQUE DE CAXIAS');
INSERT INTO municipio VALUES (605, 'PORTO XAVIER');
INSERT INTO municipio VALUES (606, 'SIMONESIA');
INSERT INTO municipio VALUES (607, 'ACREUNA');
INSERT INTO municipio VALUES (608, 'TUNTUM');
INSERT INTO municipio VALUES (609, 'ITAGUARA');
INSERT INTO municipio VALUES (610, 'CRISTINO CASTRO');
INSERT INTO municipio VALUES (611, 'IPUIUNA');
INSERT INTO municipio VALUES (612, 'CACERES');
INSERT INTO municipio VALUES (613, 'PARANAIGUARA');
INSERT INTO municipio VALUES (614, 'PONTE ALTA DO TOCANTINS');
INSERT INTO municipio VALUES (615, 'PARAOPEBA');
INSERT INTO municipio VALUES (616, 'ANHANGUERA');
INSERT INTO municipio VALUES (617, 'ITURAMA');
INSERT INTO municipio VALUES (618, 'PEDREGULHO');
INSERT INTO municipio VALUES (619, 'JUIZ DE FORA');
INSERT INTO municipio VALUES (620, 'SAO JOAO BATISTA');
INSERT INTO municipio VALUES (621, 'LAVRAS DA MANGABEIRA');
INSERT INTO municipio VALUES (622, 'CAETITE');
INSERT INTO municipio VALUES (623, 'SAO JOSE DO RIO PRETO');
INSERT INTO municipio VALUES (624, 'BARAO DE GRAJAU');
INSERT INTO municipio VALUES (625, 'NANUQUE');
INSERT INTO municipio VALUES (626, 'CRISTIANOPOLIS');
INSERT INTO municipio VALUES (627, 'ITAUNA');
INSERT INTO municipio VALUES (628, 'IPIAU');
INSERT INTO municipio VALUES (629, 'CURVELO');
INSERT INTO municipio VALUES (630, 'CORONEL FABRICIANO');
INSERT INTO municipio VALUES (631, 'VALPARAISO');
INSERT INTO municipio VALUES (632, 'IGUARACI');
INSERT INTO municipio VALUES (633, 'BURITIS');
INSERT INTO municipio VALUES (634, 'ADAMANTINA');
INSERT INTO municipio VALUES (635, 'CAMPO ALEGRE DE LOURDES');
INSERT INTO municipio VALUES (636, 'PEDRA DO INDAIA');
INSERT INTO municipio VALUES (637, 'CIANORTE');
INSERT INTO municipio VALUES (638, 'IBITIARA');
INSERT INTO municipio VALUES (639, 'CACHOEIRA DOURADA');
INSERT INTO municipio VALUES (640, 'SANTA CRUZ');
INSERT INTO municipio VALUES (641, 'SAO ROQUE DE MINAS');
INSERT INTO municipio VALUES (642, 'CAPETINGA');
INSERT INTO municipio VALUES (643, 'ARARA');
INSERT INTO municipio VALUES (644, 'PASSAGEM');
INSERT INTO municipio VALUES (645, 'NOVA OLINDA');
INSERT INTO municipio VALUES (646, 'CLARAVAL');
INSERT INTO municipio VALUES (647, 'ITAQUI');
INSERT INTO municipio VALUES (648, 'SAO FELIX DO PIAUI');
INSERT INTO municipio VALUES (649, 'FRONTEIRAS');
INSERT INTO municipio VALUES (650, 'UMBUZEIRO');
INSERT INTO municipio VALUES (651, 'VAZANTE');
INSERT INTO municipio VALUES (652, 'TIANGUA');
INSERT INTO municipio VALUES (653, 'DIVINOPOLIS DE GOIAS');
INSERT INTO municipio VALUES (654, 'PALMEIRAS');
INSERT INTO municipio VALUES (655, 'ESTEIO');
INSERT INTO municipio VALUES (656, 'ANANAS');
INSERT INTO municipio VALUES (657, 'SILVA JARDIM');
INSERT INTO municipio VALUES (658, 'ARAPIRACA');
INSERT INTO municipio VALUES (659, 'OLINDA');
INSERT INTO municipio VALUES (660, 'VARGEM BONITA');
INSERT INTO municipio VALUES (661, 'SAO FRANCISCO DO SUL');
INSERT INTO municipio VALUES (662, 'MANTENA');
INSERT INTO municipio VALUES (663, 'CAMPOS GERAIS');
INSERT INTO municipio VALUES (664, 'BAURU');
INSERT INTO municipio VALUES (665, 'MIRANORTE');
INSERT INTO municipio VALUES (666, 'PEDRA LAVRADA');
INSERT INTO municipio VALUES (667, 'PIQUET CARNEIRO');
INSERT INTO municipio VALUES (668, 'ALTOS');
INSERT INTO municipio VALUES (669, 'SANTO ANGELO');
INSERT INTO municipio VALUES (670, 'UIRAUNA');
INSERT INTO municipio VALUES (671, 'COUTO DE MAGALHAES');
INSERT INTO municipio VALUES (672, 'ALTANEIRA');
INSERT INTO municipio VALUES (673, 'MEDEIROS');
INSERT INTO municipio VALUES (674, 'GUADALUPE');
INSERT INTO municipio VALUES (675, 'GOUVELANDIA');
INSERT INTO municipio VALUES (676, 'CODO');
INSERT INTO municipio VALUES (677, 'BENEDITO LEITE');
INSERT INTO municipio VALUES (678, 'ROMARIA');
INSERT INTO municipio VALUES (679, 'ITAITUBA');
INSERT INTO municipio VALUES (680, 'JACARACI');
INSERT INTO municipio VALUES (681, 'VARZEA DA PALMA');
INSERT INTO municipio VALUES (682, 'ANDARAI');
INSERT INTO municipio VALUES (683, 'CRUZ DAS ALMAS');
INSERT INTO municipio VALUES (684, 'CARATINGA');
INSERT INTO municipio VALUES (685, 'MIRASSOL D OESTE');
INSERT INTO municipio VALUES (686, 'CAMPINA VERDE');
INSERT INTO municipio VALUES (687, 'PEDRINOPOLIS');
INSERT INTO municipio VALUES (688, 'GUARATINGUETA');
INSERT INTO municipio VALUES (689, 'JUAZEIRINHO');
INSERT INTO municipio VALUES (690, 'CANGUARETAMA');
INSERT INTO municipio VALUES (691, 'AURIFLAMA');
INSERT INTO municipio VALUES (692, 'ACOPIARA');
INSERT INTO municipio VALUES (693, 'ALEGRE');
INSERT INTO municipio VALUES (694, 'SAPUCAI-MIRIM');
INSERT INTO municipio VALUES (695, 'SAO JOAO DALIANCA');
INSERT INTO municipio VALUES (696, 'CAMPINACU');
INSERT INTO municipio VALUES (697, 'PEDRA BRANCA');
INSERT INTO municipio VALUES (698, 'TORIXOREU');
INSERT INTO municipio VALUES (699, 'RIACHAO DAS NEVES');
INSERT INTO municipio VALUES (700, 'ALTO PARAISO DE GOIAS');
INSERT INTO municipio VALUES (701, 'ITAPEBI');
INSERT INTO municipio VALUES (702, 'ACARA');
INSERT INTO municipio VALUES (703, 'NOVA VICOSA');
INSERT INTO municipio VALUES (704, 'OUVIDOR');
INSERT INTO municipio VALUES (705, 'RIBEIRO GONCALVES');
INSERT INTO municipio VALUES (706, 'MORRO AGUDO DE GOIAS');
INSERT INTO municipio VALUES (707, 'PEDREIRAS');
INSERT INTO municipio VALUES (708, 'SANTO ANTONIO DO MONTE');
INSERT INTO municipio VALUES (709, 'AGUA BRANCA');
INSERT INTO municipio VALUES (710, 'JAGUARIBE');
INSERT INTO municipio VALUES (711, 'SANTO ANTONIO DE JESUS');
INSERT INTO municipio VALUES (712, 'CAUCAIA');
INSERT INTO municipio VALUES (713, 'ITACAJA');
INSERT INTO municipio VALUES (714, 'GUARABIRA');
INSERT INTO municipio VALUES (715, 'SANTA ROSA DO TOCANTINS');
INSERT INTO municipio VALUES (716, 'ALTO GARCAS');
INSERT INTO municipio VALUES (717, 'MORRO AGUDO');
INSERT INTO municipio VALUES (718, 'NOVO ACORDO');
INSERT INTO municipio VALUES (719, 'CORACAO DE JESUS');
INSERT INTO municipio VALUES (720, 'NOVA IGUACU');
INSERT INTO municipio VALUES (721, 'TURIUBA');
INSERT INTO municipio VALUES (722, 'BONITO');
INSERT INTO municipio VALUES (723, 'SANTA FILOMENA');
INSERT INTO municipio VALUES (724, 'PASTOS BONS');
INSERT INTO municipio VALUES (725, 'CONCEICAO DO MATO DENTRO');
INSERT INTO municipio VALUES (726, 'GUARACI');
INSERT INTO municipio VALUES (727, 'DIAMANTINA');
INSERT INTO municipio VALUES (728, 'JARDIM');
INSERT INTO municipio VALUES (729, 'PANAMBI');
INSERT INTO municipio VALUES (730, 'PASSOS');
INSERT INTO municipio VALUES (731, 'SANTIAGO');
INSERT INTO municipio VALUES (732, 'FEIRA DE SANTANA');
INSERT INTO municipio VALUES (733, 'ANDIRA');
INSERT INTO municipio VALUES (734, 'MARCELINO RAMOS');
INSERT INTO municipio VALUES (735, 'TAQUARITINGA');
INSERT INTO municipio VALUES (736, 'CHAPADA DOS GUIMARAES');
INSERT INTO municipio VALUES (737, 'SANTANA DO IPANEMA');
INSERT INTO municipio VALUES (738, 'NOVA GRANADA');
INSERT INTO municipio VALUES (739, 'PIRACEMA');
INSERT INTO municipio VALUES (740, 'MARZAGAO');
INSERT INTO municipio VALUES (741, 'LAGOA DO OURO');
INSERT INTO municipio VALUES (742, 'URUCUI');
INSERT INTO municipio VALUES (743, 'RIACHAO DO JACUIPE');
INSERT INTO municipio VALUES (744, 'IRECE');
INSERT INTO municipio VALUES (745, 'LORETO');
INSERT INTO municipio VALUES (746, 'CASA NOVA');
INSERT INTO municipio VALUES (747, 'SAO TOME');
INSERT INTO municipio VALUES (748, 'MIGUELOPOLIS');
INSERT INTO municipio VALUES (749, 'SETE LAGOAS');
INSERT INTO municipio VALUES (750, 'PONTE BRANCA');
INSERT INTO municipio VALUES (751, 'CANDIBA');
INSERT INTO municipio VALUES (752, 'ITUACU');
INSERT INTO municipio VALUES (753, 'GURUPA');
INSERT INTO municipio VALUES (754, 'ONCA DE PITANGUI');
INSERT INTO municipio VALUES (755, 'CARMO DO CAJURU');
INSERT INTO municipio VALUES (756, 'IRAUCUBA');
INSERT INTO municipio VALUES (757, 'COLORADO');
INSERT INTO municipio VALUES (758, 'MAMBAI');
INSERT INTO municipio VALUES (759, 'CAMPOS SALES');
INSERT INTO municipio VALUES (760, 'IGARAPAVA');
INSERT INTO municipio VALUES (761, 'SANTAREM');
INSERT INTO municipio VALUES (762, 'ACARAU');
INSERT INTO municipio VALUES (763, 'COLMEIA');
INSERT INTO municipio VALUES (764, 'TAPEJARA');
INSERT INTO municipio VALUES (765, 'COQUEIRAL');
INSERT INTO municipio VALUES (766, 'JOAO LISBOA');
INSERT INTO municipio VALUES (767, 'ARENOPOLIS');
INSERT INTO municipio VALUES (768, 'SANTA LUZIA');
INSERT INTO municipio VALUES (769, 'SEABRA');
INSERT INTO municipio VALUES (770, 'SAO MIGUEL');
INSERT INTO municipio VALUES (771, 'MANSIDAO');
INSERT INTO municipio VALUES (772, 'DIVINOPOLIS');
INSERT INTO municipio VALUES (773, 'LUIS CORREIA');
INSERT INTO municipio VALUES (774, 'CRUZEIRO DO OESTE');
INSERT INTO municipio VALUES (775, 'MOEDA');
INSERT INTO municipio VALUES (776, 'FERNANDOPOLIS');
INSERT INTO municipio VALUES (777, 'GUARACAI');
INSERT INTO municipio VALUES (778, 'JEREMOABO');
INSERT INTO municipio VALUES (779, 'SANTO ANTONIO DA PATRULHA');
INSERT INTO municipio VALUES (780, 'MONTES ALTOS');
INSERT INTO municipio VALUES (781, 'VARZEA ALEGRE');
INSERT INTO municipio VALUES (782, 'MARTINHO CAMPOS');
INSERT INTO municipio VALUES (783, 'APODI');
INSERT INTO municipio VALUES (784, 'IGUATU');
INSERT INTO municipio VALUES (785, 'AQUIRAZ');
INSERT INTO municipio VALUES (786, 'GALILEIA');
INSERT INTO municipio VALUES (787, 'SANTANA DOS GARROTES');
INSERT INTO municipio VALUES (788, 'CORINTO');
INSERT INTO municipio VALUES (789, 'SAO JOAO DA PONTE');
INSERT INTO municipio VALUES (790, 'ALPINOPOLIS');
INSERT INTO municipio VALUES (791, 'CRUCILANDIA');
INSERT INTO municipio VALUES (792, 'AUGUSTO SEVERO');
INSERT INTO municipio VALUES (793, 'CARMO DA MATA');
INSERT INTO municipio VALUES (794, 'MORADA NOVA');
INSERT INTO municipio VALUES (795, 'JANIOPOLIS');
INSERT INTO municipio VALUES (796, 'ITABERABA');
INSERT INTO municipio VALUES (797, 'DOIS IRMAOS DO TOCANTINS');
INSERT INTO municipio VALUES (798, 'SERRINHA');
INSERT INTO municipio VALUES (799, 'VITORIA DA CONQUISTA');
INSERT INTO municipio VALUES (800, 'JATAIZINHO');
INSERT INTO municipio VALUES (801, 'VACARIA');
INSERT INTO municipio VALUES (802, 'JAICOS');
INSERT INTO municipio VALUES (803, 'PIO XII');
INSERT INTO municipio VALUES (804, 'TASSO FRAGOSO');
INSERT INTO municipio VALUES (805, 'TRES LAGOAS');
INSERT INTO municipio VALUES (806, 'BREJO SANTO');
INSERT INTO municipio VALUES (807, 'SAO JOSE DE PIRANHAS');
INSERT INTO municipio VALUES (808, 'SAO JOSE DO GOIABAL');
INSERT INTO municipio VALUES (809, 'VARGEM GRANDE');
INSERT INTO municipio VALUES (810, 'SANTA ISABEL');
INSERT INTO municipio VALUES (811, 'PITANGUEIRAS');
INSERT INTO municipio VALUES (812, 'RIACHAO DO DANTAS');
INSERT INTO municipio VALUES (813, 'APORE');
INSERT INTO municipio VALUES (814, 'CAVALCANTE');
INSERT INTO municipio VALUES (815, 'OURO FINO');
INSERT INTO municipio VALUES (816, 'PICOS');
INSERT INTO municipio VALUES (817, 'PORANGA');
INSERT INTO municipio VALUES (818, 'BROTAS DE MACAUBAS');
INSERT INTO municipio VALUES (819, 'RUY BARBOSA');
INSERT INTO municipio VALUES (820, 'CARANAIBA');
INSERT INTO municipio VALUES (821, 'PONTA PORA');
INSERT INTO municipio VALUES (822, 'EXU');
INSERT INTO municipio VALUES (823, 'GUAXUPE');
INSERT INTO municipio VALUES (824, 'IGAPORA');
INSERT INTO municipio VALUES (825, 'BARBACENA');
INSERT INTO municipio VALUES (826, 'NOSSA SENHORA DA GLORIA');
INSERT INTO municipio VALUES (827, 'CRUZEIRO DA FORTALEZA');
INSERT INTO municipio VALUES (828, 'FIGUEIROPOLIS');
INSERT INTO municipio VALUES (829, 'JALES');
INSERT INTO municipio VALUES (830, 'VITORIA DO MEARIM');
INSERT INTO municipio VALUES (831, 'GROSSOS');
INSERT INTO municipio VALUES (832, 'ASSIS CHATEAUBRIAND');
INSERT INTO municipio VALUES (833, 'LIMA DUARTE');
INSERT INTO municipio VALUES (834, 'IPUBI');
INSERT INTO municipio VALUES (835, 'BELO VALE');
INSERT INTO municipio VALUES (836, 'CUBATAO');
INSERT INTO municipio VALUES (837, 'BERTOLINIA');
INSERT INTO municipio VALUES (838, 'PRESIDENTE PRUDENTE');
INSERT INTO municipio VALUES (839, 'LAGOA NOVA');
INSERT INTO municipio VALUES (840, 'CRUZ DO ESPIRITO SANTO');
INSERT INTO municipio VALUES (841, 'MARILIA');
INSERT INTO municipio VALUES (842, 'RIO MANSO');
INSERT INTO municipio VALUES (843, 'CRUZ ALTA');
INSERT INTO municipio VALUES (844, 'MAURITI');
INSERT INTO municipio VALUES (845, 'SANTO ANTONIO DO RIO VERDE');
INSERT INTO municipio VALUES (846, 'GUARAPUAVA');
INSERT INTO municipio VALUES (847, 'MONTE ALEGRE DO PIAUI');
INSERT INTO municipio VALUES (848, 'AURORA');
INSERT INTO municipio VALUES (849, 'ILHEUS');
INSERT INTO municipio VALUES (850, 'PALMAS DE MONTE ALTO');
INSERT INTO municipio VALUES (851, 'JUCURUTU');
INSERT INTO municipio VALUES (852, 'GOIANINHA');
INSERT INTO municipio VALUES (853, 'PARACURU');
INSERT INTO municipio VALUES (854, 'AGUA COMPRIDA');
INSERT INTO municipio VALUES (855, 'CHAPECO');
INSERT INTO municipio VALUES (856, 'NOVA FLORESTA');
INSERT INTO municipio VALUES (857, 'COROACI');
INSERT INTO municipio VALUES (858, 'RAUL SOARES');
INSERT INTO municipio VALUES (859, 'MATUTINA');
INSERT INTO municipio VALUES (860, 'VIANA');
INSERT INTO municipio VALUES (861, 'SAO GONCALO');
INSERT INTO municipio VALUES (862, 'CORURIPE');
INSERT INTO municipio VALUES (863, 'GOVERNADOR DIX-SEPT ROSADO');
INSERT INTO municipio VALUES (864, 'SAO LUIS');
INSERT INTO municipio VALUES (865, 'COSTA MARQUES');
INSERT INTO municipio VALUES (866, 'FLORIANO');
INSERT INTO municipio VALUES (867, 'COREAU');
INSERT INTO municipio VALUES (868, 'BOA VISTA DO TUPIM');
INSERT INTO municipio VALUES (869, 'SANTA MERCEDES');
INSERT INTO municipio VALUES (870, 'CARIRE');
INSERT INTO municipio VALUES (871, 'SENADOR FIRMINO');
INSERT INTO municipio VALUES (872, 'FLORESTAL');
INSERT INTO municipio VALUES (873, 'SAO BENEDITO');
INSERT INTO municipio VALUES (874, 'MIRASSOL');
INSERT INTO municipio VALUES (875, 'GETULIO VARGAS');
INSERT INTO municipio VALUES (876, 'GUAPE');
INSERT INTO municipio VALUES (877, 'BOM JESUS DA PENHA');
INSERT INTO municipio VALUES (878, 'SANTO ANDRE');
INSERT INTO municipio VALUES (879, 'TURMALINA');
INSERT INTO municipio VALUES (880, 'CAETANOPOLIS');
INSERT INTO municipio VALUES (881, 'SENADOR CANEDO');
INSERT INTO municipio VALUES (882, 'NOVO ORIENTE DO PIAUI');
INSERT INTO municipio VALUES (883, 'ARARAQUARA');
INSERT INTO municipio VALUES (884, 'CAMACARI');
INSERT INTO municipio VALUES (885, 'CANTO DO BURITI');
INSERT INTO municipio VALUES (886, 'ITABIRITO');
INSERT INTO municipio VALUES (887, 'JARDIM ALEGRE');
INSERT INTO municipio VALUES (888, 'BOCAIUVA');
INSERT INTO municipio VALUES (889, 'PORTO SEGURO');
INSERT INTO municipio VALUES (890, 'VARZEA GRANDE');
INSERT INTO municipio VALUES (891, 'ITAPICURU');
INSERT INTO municipio VALUES (892, 'JARDIM DO SERIDO');
INSERT INTO municipio VALUES (893, 'CORREGO DANTA');
INSERT INTO municipio VALUES (894, 'AQUIDABA');
INSERT INTO municipio VALUES (895, 'MIRANTE DO PARANAPANEMA');
INSERT INTO municipio VALUES (896, 'LAGES');
INSERT INTO municipio VALUES (897, 'ITU');
INSERT INTO municipio VALUES (898, 'MONTE AZUL');
INSERT INTO municipio VALUES (899, 'IGACI');
INSERT INTO municipio VALUES (900, 'BOQUIM');
INSERT INTO municipio VALUES (901, 'ARARIPE');
INSERT INTO municipio VALUES (902, 'LAGO DA PEDRA');
INSERT INTO municipio VALUES (903, 'SANTA JULIANA');
INSERT INTO municipio VALUES (904, 'FLORESTA');
INSERT INTO municipio VALUES (905, 'CAMPO DO MEIO');
INSERT INTO municipio VALUES (906, 'JABORANDI');
INSERT INTO municipio VALUES (907, 'SAO DOMINGOS DO MARANHAO');
INSERT INTO municipio VALUES (908, 'CARDOSO');
INSERT INTO municipio VALUES (909, 'SAO FRANCISCO DE PAULA');
INSERT INTO municipio VALUES (910, 'GUARARAPES');
INSERT INTO municipio VALUES (911, 'GAMELEIRA');
INSERT INTO municipio VALUES (912, 'NITEROI');
INSERT INTO municipio VALUES (913, 'SAO DOMINGOS DO CAPIM');
INSERT INTO municipio VALUES (914, 'REDENCAO DO GURGUEIA');
INSERT INTO municipio VALUES (915, 'QUARTEL GERAL');
INSERT INTO municipio VALUES (916, 'SERRO');
INSERT INTO municipio VALUES (917, 'BACABAL');
INSERT INTO municipio VALUES (918, 'MIGUEL CALMON');
INSERT INTO municipio VALUES (919, 'JOAO CAMARA');
INSERT INTO municipio VALUES (920, 'RIFAINA');
INSERT INTO municipio VALUES (921, 'MARTINOPOLIS');
INSERT INTO municipio VALUES (922, 'PIRANGUCU');
INSERT INTO municipio VALUES (923, 'PANELAS');
INSERT INTO municipio VALUES (924, 'ARAGUAINHA');
INSERT INTO municipio VALUES (925, 'IBIRACI');
INSERT INTO municipio VALUES (926, 'PARELHAS');
INSERT INTO municipio VALUES (927, 'COLINA');
INSERT INTO municipio VALUES (928, 'ARAUJOS');
INSERT INTO municipio VALUES (929, 'GRAO MOGOL');
INSERT INTO municipio VALUES (930, 'PRESIDENTE VENCESLAU');
INSERT INTO municipio VALUES (931, 'PRATINHA');
INSERT INTO municipio VALUES (932, 'PIQUEROBI');
INSERT INTO municipio VALUES (933, 'ALBERTINA');
INSERT INTO municipio VALUES (934, 'SANTALUZ');
INSERT INTO municipio VALUES (935, 'RIACHO DE SANTANA');
INSERT INTO municipio VALUES (936, 'MACAE');
INSERT INTO municipio VALUES (937, 'UBAI');
INSERT INTO municipio VALUES (938, 'ATALEIA');
INSERT INTO municipio VALUES (939, 'COMENDADOR GOMES');
INSERT INTO municipio VALUES (940, 'BETIM');
INSERT INTO municipio VALUES (941, 'AMARANTE');
INSERT INTO municipio VALUES (942, 'SANTANA DO ARAGUAIA');
INSERT INTO municipio VALUES (943, 'PARANAGUA');
INSERT INTO municipio VALUES (944, 'PIATA');
INSERT INTO municipio VALUES (945, 'NOVA CRUZ');
INSERT INTO municipio VALUES (946, 'SAO TOMAS DE AQUINO');
INSERT INTO municipio VALUES (947, 'GUAJARA-MIRIM');
INSERT INTO municipio VALUES (948, 'GRANJA');
INSERT INTO municipio VALUES (949, 'CATINGUEIRA');
INSERT INTO municipio VALUES (950, 'PEDRA PRETA');
INSERT INTO municipio VALUES (951, 'MERIDIANO');
INSERT INTO municipio VALUES (952, 'TRES MARIAS');
INSERT INTO municipio VALUES (953, 'SAO VICENTE');
INSERT INTO municipio VALUES (954, 'IGARAPE');
INSERT INTO municipio VALUES (955, 'ITANHOMI');
INSERT INTO municipio VALUES (956, 'JAGUARIBARA');
INSERT INTO municipio VALUES (957, 'OURO VERDE DE MINAS');
INSERT INTO municipio VALUES (958, 'ARAPORA');
INSERT INTO municipio VALUES (959, 'ALPERCATA');
INSERT INTO municipio VALUES (960, 'JOAO RAMALHO');
INSERT INTO municipio VALUES (961, 'PARNARAMA');
INSERT INTO municipio VALUES (962, 'PINDARE MIRIM');
INSERT INTO municipio VALUES (963, 'CHOPINZINHO');
INSERT INTO municipio VALUES (964, 'SOBRADINHO');
INSERT INTO municipio VALUES (965, 'CANAVIEIRAS');
INSERT INTO municipio VALUES (966, 'GETULINA');
INSERT INTO municipio VALUES (967, 'SAO JOAO DA BOA VISTA');
INSERT INTO municipio VALUES (968, 'TAPIRAMUTA');
INSERT INTO municipio VALUES (969, 'CAMPANARIO');
INSERT INTO municipio VALUES (970, 'CATOLE DO ROCHA');
INSERT INTO municipio VALUES (971, 'PECANHA');
INSERT INTO municipio VALUES (972, 'AIMORES');
INSERT INTO municipio VALUES (973, 'FRONTEIRA');
INSERT INTO municipio VALUES (974, 'ACORIZAL');
INSERT INTO municipio VALUES (975, 'NAVIRAI');
INSERT INTO municipio VALUES (976, 'SANTO ANTONIO DO AMPARO');
INSERT INTO municipio VALUES (977, 'RIBEIRAO CORRENTE');
INSERT INTO municipio VALUES (978, 'GAMA');
INSERT INTO municipio VALUES (979, 'JACUNDA');
INSERT INTO municipio VALUES (980, 'MONTE ALEGRE');
INSERT INTO municipio VALUES (981, 'FEIRA GRANDE');
INSERT INTO municipio VALUES (982, 'SANTANA DE MANGUEIRA');
INSERT INTO municipio VALUES (983, 'GUARATUBA');
INSERT INTO municipio VALUES (984, 'SANTA FE DE MINAS');
INSERT INTO municipio VALUES (985, 'ITAPAGIPE');
INSERT INTO municipio VALUES (986, 'SAO JOSE DOS CAMPOS');
INSERT INTO municipio VALUES (987, 'SAO FELIX DE BALSAS');
INSERT INTO municipio VALUES (988, 'BARRO');
INSERT INTO municipio VALUES (989, 'POUSO ALEGRE');
INSERT INTO municipio VALUES (990, 'CAPITAO ENEAS');
INSERT INTO municipio VALUES (991, 'FRANCO DA ROCHA');
INSERT INTO municipio VALUES (992, 'SAO JOSE DA BELA VISTA');
INSERT INTO municipio VALUES (993, 'CAJAZEIRAS');
INSERT INTO municipio VALUES (994, 'ARVOREZINHA');
INSERT INTO municipio VALUES (995, 'TENENTE PORTELA');
INSERT INTO municipio VALUES (996, 'PIRACAIA');
INSERT INTO municipio VALUES (997, 'SAO GONCALO DOS CAMPOS');
INSERT INTO municipio VALUES (998, 'CAETES');
INSERT INTO municipio VALUES (999, 'AFOGADOS DA INGAZEIRA');
INSERT INTO municipio VALUES (1000, 'IGUAI');
INSERT INTO municipio VALUES (1001, 'CORNELIO PROCOPIO');
INSERT INTO municipio VALUES (1002, 'RINCAO');
INSERT INTO municipio VALUES (1003, 'SAO GONCALO DO SAPUCAI');
INSERT INTO municipio VALUES (1004, 'ALEGRETE');
INSERT INTO municipio VALUES (1005, 'ALTAIR');
INSERT INTO municipio VALUES (1006, 'CENTENARIO DO SUL');
INSERT INTO municipio VALUES (1007, 'RIO DO ANTONIO');
INSERT INTO municipio VALUES (1008, 'PIEDADE DOS GERAIS');
INSERT INTO municipio VALUES (1009, 'QUIXERE');
INSERT INTO municipio VALUES (1010, 'ITAJAI');
INSERT INTO municipio VALUES (1011, 'LUZ');
INSERT INTO municipio VALUES (1012, 'ORLANDIA');
INSERT INTO municipio VALUES (1013, 'SANTO ANTONIO');
INSERT INTO municipio VALUES (1014, 'ALCOBACA');
INSERT INTO municipio VALUES (1015, 'LAGAMAR');
INSERT INTO municipio VALUES (1016, 'PETROLINA');
INSERT INTO municipio VALUES (1017, 'PASSAGEM FRANCA');
INSERT INTO municipio VALUES (1018, 'CAMPO MOURAO');
INSERT INTO municipio VALUES (1019, 'ALENQUER');
INSERT INTO municipio VALUES (1020, 'MANAIRA');
INSERT INTO municipio VALUES (1021, 'ESTRELA');
INSERT INTO municipio VALUES (1022, 'CARACOL');
INSERT INTO municipio VALUES (1023, 'ESTRELA DO INDAIA');
INSERT INTO municipio VALUES (1024, 'MEDINA');
INSERT INTO municipio VALUES (1025, 'TRAIRI');
INSERT INTO municipio VALUES (1026, 'BOA VISTA');
INSERT INTO municipio VALUES (1027, 'CORTES');
INSERT INTO municipio VALUES (1028, 'ALMENARA');
INSERT INTO municipio VALUES (1029, 'LADAINHA');
INSERT INTO municipio VALUES (1030, 'PILOES');
INSERT INTO municipio VALUES (1031, 'CANHOTINHO');
INSERT INTO municipio VALUES (1032, 'FLORIDA PAULISTA');
INSERT INTO municipio VALUES (1033, 'LAGOLANDIA');
INSERT INTO municipio VALUES (1034, 'CABROBO');
INSERT INTO municipio VALUES (1035, 'AROEIRAS');
INSERT INTO municipio VALUES (1036, 'SANTA ROSA');
INSERT INTO municipio VALUES (1037, 'IVINHEMA');
INSERT INTO municipio VALUES (1038, 'JABOTICABAL');
INSERT INTO municipio VALUES (1039, 'SANTA MARIA');
INSERT INTO municipio VALUES (1040, 'SAO FELIX');
INSERT INTO municipio VALUES (1041, 'PINDOBACU');
INSERT INTO municipio VALUES (1042, 'MALHADA');
INSERT INTO municipio VALUES (1043, 'FLORIANOPOLIS');
INSERT INTO municipio VALUES (1044, 'ARACAI');
INSERT INTO municipio VALUES (1045, 'POTIRETAMA');
INSERT INTO municipio VALUES (1046, 'BIQUINHAS');
INSERT INTO municipio VALUES (1047, 'BARRO DURO');
INSERT INTO municipio VALUES (1048, 'PORTEIRINHA');
INSERT INTO municipio VALUES (1049, 'MIMOSO DE GOIAS');
INSERT INTO municipio VALUES (1050, 'BURITIZAL');
INSERT INTO municipio VALUES (1051, 'BARRA DE SAO FRANCISCO');
INSERT INTO municipio VALUES (1052, 'SAO JOAO DO IVAI');
INSERT INTO municipio VALUES (1053, 'PLANALTO');
INSERT INTO municipio VALUES (1054, 'ITUPIRANGA');
INSERT INTO municipio VALUES (1055, 'GOIOERE');
INSERT INTO municipio VALUES (1056, 'ECHAPORA');
INSERT INTO municipio VALUES (1057, 'PIRAPOZINHO');
INSERT INTO municipio VALUES (1058, 'LAPAO');
INSERT INTO municipio VALUES (1059, 'NOVO CRUZEIRO');
INSERT INTO municipio VALUES (1060, 'LIMEIRA');
INSERT INTO municipio VALUES (1061, 'SAO SEBASTIAO DO TOCANTINS');
INSERT INTO municipio VALUES (1062, 'SAO BENTO');
INSERT INTO municipio VALUES (1063, 'ASSAI');
INSERT INTO municipio VALUES (1064, 'OEIRAS');
INSERT INTO municipio VALUES (1065, 'SANTO ANTONIO DA ALEGRIA');
INSERT INTO municipio VALUES (1066, 'OURO PRETO');
INSERT INTO municipio VALUES (1067, 'HERCULANDIA');
INSERT INTO municipio VALUES (1068, 'CHAPADINHA');
INSERT INTO municipio VALUES (1069, 'ARROIO DO MEIO');
INSERT INTO municipio VALUES (1070, 'MARANGUAPE');
INSERT INTO municipio VALUES (1071, 'TAPES');
INSERT INTO municipio VALUES (1072, 'ARAIOSES');
INSERT INTO municipio VALUES (1073, 'BOM SUCESSO');
INSERT INTO municipio VALUES (1074, 'QUIXERAMOBIM');
INSERT INTO municipio VALUES (1075, 'BATATAIS');
INSERT INTO municipio VALUES (1076, 'SANTO ANTONIO DAS MISSOES');
INSERT INTO municipio VALUES (1077, 'POMPEIA');
INSERT INTO municipio VALUES (1078, 'GUARACIABA DO NORTE');
INSERT INTO municipio VALUES (1079, 'IBIQUERA');
INSERT INTO municipio VALUES (1080, 'TEIXEIRA');
INSERT INTO municipio VALUES (1081, 'SIMPLICIO MENDES');
INSERT INTO municipio VALUES (1082, 'GUARULHOS');
INSERT INTO municipio VALUES (1083, 'ARACATI');
INSERT INTO municipio VALUES (1084, 'LINS');
INSERT INTO municipio VALUES (1085, 'PARANACITY');
INSERT INTO municipio VALUES (1086, 'LIMOEIRO');
INSERT INTO municipio VALUES (1087, 'SALES');
INSERT INTO municipio VALUES (1088, 'ADELANDIA');
INSERT INTO municipio VALUES (1089, 'GUANAMBI');
INSERT INTO municipio VALUES (1090, 'ABAIRA');
INSERT INTO municipio VALUES (1091, 'PAULISTANA');
INSERT INTO municipio VALUES (1092, 'IBICUI');
INSERT INTO municipio VALUES (1093, 'ANGICOS');
INSERT INTO municipio VALUES (1094, 'FRANCISCO BELTRAO');
INSERT INTO municipio VALUES (1095, 'ITAPETININGA');
INSERT INTO municipio VALUES (1096, 'BRAZLANDIA');
INSERT INTO municipio VALUES (1097, 'MURITIBA');
INSERT INTO municipio VALUES (1098, 'APUCARANA');
INSERT INTO municipio VALUES (1099, 'VALINHOS');
INSERT INTO municipio VALUES (1100, 'RIO MARIA');
INSERT INTO municipio VALUES (1101, 'FLORES');
INSERT INTO municipio VALUES (1102, 'ITAGIBA');
INSERT INTO municipio VALUES (1103, 'SANTO ANTONIO DO DESCOBERTO');
INSERT INTO municipio VALUES (1104, 'FLORES DO PIAUI');
INSERT INTO municipio VALUES (1105, 'CACOAL');
INSERT INTO municipio VALUES (1106, 'PORTO VELHO');
INSERT INTO municipio VALUES (1107, 'AFRANIO');
INSERT INTO municipio VALUES (1108, 'SATIRO DIAS');
INSERT INTO municipio VALUES (1109, 'VARGINHA');
INSERT INTO municipio VALUES (1110, 'BELMIRO BRAGA');
INSERT INTO municipio VALUES (1111, 'ATALAIA');
INSERT INTO municipio VALUES (1112, 'CABO DE SANTO AGOSTINHO');
INSERT INTO municipio VALUES (1113, 'SELBACH');
INSERT INTO municipio VALUES (1114, 'OSVALDO CRUZ');
INSERT INTO municipio VALUES (1115, 'ANAPURUS');
INSERT INTO municipio VALUES (1116, 'CARNAUBAIS');
INSERT INTO municipio VALUES (1117, 'CARNEIRINHO');
INSERT INTO municipio VALUES (1118, 'SAO JOSE DE ESPINHARAS');
INSERT INTO municipio VALUES (1119, 'DOURADINA');
INSERT INTO municipio VALUES (1120, 'SALINAS');
INSERT INTO municipio VALUES (1121, 'BOA VIAGEM');
INSERT INTO municipio VALUES (1122, 'PAPANDUVA');
INSERT INTO municipio VALUES (1123, 'ITAPARICA');
INSERT INTO municipio VALUES (1124, 'BARREIRINHAS');
INSERT INTO municipio VALUES (1125, 'SAO PEDRO DO PIAUI');
INSERT INTO municipio VALUES (1126, 'AGUA BOA');
INSERT INTO municipio VALUES (1127, 'GRACA ARANHA');
INSERT INTO municipio VALUES (1128, 'CAFELANDIA');
INSERT INTO municipio VALUES (1129, 'CRISTALANDIA DO PIAUI');
INSERT INTO municipio VALUES (1130, 'PIANCO');
INSERT INTO municipio VALUES (1131, 'MISSAO VELHA');
INSERT INTO municipio VALUES (1132, 'CAMAPUA');
INSERT INTO municipio VALUES (1133, 'MIGUEL ALVES');
INSERT INTO municipio VALUES (1134, 'JEQUIE');
INSERT INTO municipio VALUES (1135, 'AMAMBAI');
INSERT INTO municipio VALUES (1136, 'SANTA RITA DO PASSA QUATRO');
INSERT INTO municipio VALUES (1137, 'JECEABA');
INSERT INTO municipio VALUES (1138, 'AMARO LEITE');
INSERT INTO municipio VALUES (1139, 'PALMEIRAIS');
INSERT INTO municipio VALUES (1140, 'UIBAI');
INSERT INTO municipio VALUES (1141, 'RIO TINTO');
INSERT INTO municipio VALUES (1142, 'SAO JOSE DE MIPIBU');
INSERT INTO municipio VALUES (1143, 'TANHACU');
INSERT INTO municipio VALUES (1144, 'ARENAPOLIS');
INSERT INTO municipio VALUES (1145, 'CEZARINA');
INSERT INTO municipio VALUES (1146, 'OLHO D AGUA DAS CUNHAS');
INSERT INTO municipio VALUES (1147, 'CRAVINHOS');
INSERT INTO municipio VALUES (1148, 'CURACA');
INSERT INTO municipio VALUES (1149, 'DIAMANTE');
INSERT INTO municipio VALUES (1150, 'ALTO JEQUITIBA');
INSERT INTO municipio VALUES (1151, 'MIRANDA');
INSERT INTO municipio VALUES (1152, 'PATO BRANCO');
INSERT INTO municipio VALUES (1153, 'NOVO HAMBURGO');
INSERT INTO municipio VALUES (1154, 'VARZEA DO POCO');
INSERT INTO municipio VALUES (1155, 'JACUTINGA');
INSERT INTO municipio VALUES (1156, 'BURITI BRAVO');
INSERT INTO municipio VALUES (1157, 'MIMOSO DO SUL');
INSERT INTO municipio VALUES (1158, 'ITORORO');
INSERT INTO municipio VALUES (1159, 'PORTO DE MOZ');
INSERT INTO municipio VALUES (1160, 'ANAGE');
INSERT INTO municipio VALUES (1161, 'MOEMA');
INSERT INTO municipio VALUES (1162, 'MIRANDOPOLIS');
INSERT INTO municipio VALUES (1163, 'CASTELO DO PIAUI');
INSERT INTO municipio VALUES (1164, 'AMARGOSA');
INSERT INTO municipio VALUES (1165, 'PAULISTA');
INSERT INTO municipio VALUES (1166, 'FARIAS BRITO');
INSERT INTO municipio VALUES (1167, 'CORONEL EZEQUIEL');
INSERT INTO municipio VALUES (1168, 'FLORES DA CUNHA');
INSERT INTO municipio VALUES (1169, 'FORTALEZA DE MINAS');
INSERT INTO municipio VALUES (1170, 'TERESINA DE GOIAS');
INSERT INTO municipio VALUES (1171, 'SUCUPIRA DO NORTE');
INSERT INTO municipio VALUES (1172, 'LAGUNA');
INSERT INTO municipio VALUES (1173, 'TUTOIA');
INSERT INTO municipio VALUES (1174, 'PIRASSUNUNGA');
INSERT INTO municipio VALUES (1175, 'SAO FELIX DO XINGU');
INSERT INTO municipio VALUES (1176, 'RIO BRILHANTE');
INSERT INTO municipio VALUES (1177, 'SANTA RITA');
INSERT INTO municipio VALUES (1178, 'SAO MAMEDE');
INSERT INTO municipio VALUES (1179, 'MARAU');
INSERT INTO municipio VALUES (1180, 'ESMERALDAS');
INSERT INTO municipio VALUES (1181, 'SAO MIGUEL ARCANJO');
INSERT INTO municipio VALUES (1182, 'QUEIMADAS');
INSERT INTO municipio VALUES (1183, 'TUPIRAMA');
INSERT INTO municipio VALUES (1184, 'ITAPIRA');
INSERT INTO municipio VALUES (1185, 'BEBEDOURO');
INSERT INTO municipio VALUES (1186, 'SAO JULIAO');
INSERT INTO municipio VALUES (1187, 'BELA VISTA DE MINAS');
INSERT INTO municipio VALUES (1188, 'TRES CORACOES');
INSERT INTO municipio VALUES (1189, 'MUCUGE');
INSERT INTO municipio VALUES (1190, 'IPIRA');
INSERT INTO municipio VALUES (1191, 'VOTUPORANGA');
INSERT INTO municipio VALUES (1192, 'ELESBAO VELOSO');
INSERT INTO municipio VALUES (1193, 'ABAIARA');
INSERT INTO municipio VALUES (1194, 'BENTO FERNANDES');
INSERT INTO municipio VALUES (1195, 'TEIXEIRA DE FREITAS');
INSERT INTO municipio VALUES (1196, 'CAPIM GROSSO');
INSERT INTO municipio VALUES (1197, 'MALACACHETA');
INSERT INTO municipio VALUES (1198, 'SANTO ANTONIO DO LEVERGER');
INSERT INTO municipio VALUES (1199, 'SANTO ANTONIO DOS LOPES');
INSERT INTO municipio VALUES (1200, 'CIPO');
INSERT INTO municipio VALUES (1201, 'RESTINGA');
INSERT INTO municipio VALUES (1202, 'SAO MIGUEL D OESTE');
INSERT INTO municipio VALUES (1203, 'MARILAC');
INSERT INTO municipio VALUES (1204, 'BAIXIO');
INSERT INTO municipio VALUES (1205, 'GLORIA DO GOITA');
INSERT INTO municipio VALUES (1206, 'BONFINOPOLIS DE MINAS');
INSERT INTO municipio VALUES (1207, 'PARAMBU');
INSERT INTO municipio VALUES (1208, 'PAULO AFONSO');
INSERT INTO municipio VALUES (1209, 'SAO FELIPE');
INSERT INTO municipio VALUES (1210, 'IPIRANGA DO PIAUI');
INSERT INTO municipio VALUES (1211, 'BENTO DE ABREU');
INSERT INTO municipio VALUES (1212, 'PARAGUACU PAULISTA');
INSERT INTO municipio VALUES (1213, 'CONTAGEM');
INSERT INTO municipio VALUES (1214, 'JARDINOPOLIS');
INSERT INTO municipio VALUES (1215, 'PITANGA');
INSERT INTO municipio VALUES (1216, 'LIMOEIRO DO NORTE');
INSERT INTO municipio VALUES (1217, 'AREALVA');
INSERT INTO municipio VALUES (1218, 'AGUA PRETA');
INSERT INTO municipio VALUES (1219, 'CUITE');
INSERT INTO municipio VALUES (1220, 'MACAIBA');
INSERT INTO municipio VALUES (1221, 'BOTUCATU');
INSERT INTO municipio VALUES (1222, 'PONTAL');
INSERT INTO municipio VALUES (1223, 'VOLTA REDONDA');
INSERT INTO municipio VALUES (1224, 'ARAMINA');
INSERT INTO municipio VALUES (1225, 'RIO PARDO DE MINAS');
INSERT INTO municipio VALUES (1226, 'PALMEIRA DOS INDIOS');
INSERT INTO municipio VALUES (1227, 'PACUJA');
INSERT INTO municipio VALUES (1228, 'SAO MIGUEL DO TAPUIO');
INSERT INTO municipio VALUES (1229, 'RETIROLANDIA');
INSERT INTO municipio VALUES (1230, 'LOANDA');
INSERT INTO municipio VALUES (1231, 'CEDRO');
INSERT INTO municipio VALUES (1232, 'CONCEICAO DA APARECIDA');
INSERT INTO municipio VALUES (1233, 'PROFESSOR JAMIL');
INSERT INTO municipio VALUES (1234, 'PARNAMIRIM');
INSERT INTO municipio VALUES (1235, 'PEDRO II');
INSERT INTO municipio VALUES (1236, 'ALTO RIO DOCE');
INSERT INTO municipio VALUES (1237, 'SAO MIGUEL DO PASSA QUATRO');
INSERT INTO municipio VALUES (1238, 'MUANA');
INSERT INTO municipio VALUES (1239, 'PINTADAS');
INSERT INTO municipio VALUES (1240, 'GUARUJA');
INSERT INTO municipio VALUES (1241, 'ROLANDIA');
INSERT INTO municipio VALUES (1242, 'FRECHEIRINHA');
INSERT INTO municipio VALUES (1243, 'RIBEIRAO VERMELHO');
INSERT INTO municipio VALUES (1244, 'ITAPORA');
INSERT INTO municipio VALUES (1245, 'ALIANCA DO TOCANTINS');
INSERT INTO municipio VALUES (1246, 'ANADIA');
INSERT INTO municipio VALUES (1247, 'ICATU');
INSERT INTO municipio VALUES (1248, 'TREMEDAL');
INSERT INTO municipio VALUES (1249, 'VISEU');
INSERT INTO municipio VALUES (1250, 'RESPLENDOR');
INSERT INTO municipio VALUES (1251, 'NOVO HORIZONTE');
INSERT INTO municipio VALUES (1252, 'MUTUIPE');
INSERT INTO municipio VALUES (1253, 'NOVA CANAA');
INSERT INTO municipio VALUES (1254, 'CERRO CORA');
INSERT INTO municipio VALUES (1255, 'SAO GONCALO DO PARA');
INSERT INTO municipio VALUES (1256, 'PASSA TEMPO');
INSERT INTO municipio VALUES (1257, 'CAARAPO');
INSERT INTO municipio VALUES (1258, 'GUARA');
INSERT INTO municipio VALUES (1259, 'IACRI');
INSERT INTO municipio VALUES (1260, 'BURITIRAMA');
INSERT INTO municipio VALUES (1261, 'DIADEMA');
INSERT INTO municipio VALUES (1262, 'ARINOS');
INSERT INTO municipio VALUES (1263, 'GUAIMBE');
INSERT INTO municipio VALUES (1264, 'PALMITOS');
INSERT INTO municipio VALUES (1265, 'RIO VERMELHO');
INSERT INTO municipio VALUES (1266, 'SANTA INES');
INSERT INTO municipio VALUES (1267, 'UMUARAMA');
INSERT INTO municipio VALUES (1268, 'IAPU');
INSERT INTO municipio VALUES (1269, 'SAO JOAO DO PARAISO');
INSERT INTO municipio VALUES (1270, 'CONCEICAO DO COITE');
INSERT INTO municipio VALUES (1271, 'SANTA ISABEL DO PARA');
INSERT INTO municipio VALUES (1272, 'SENHOR DO BONFIM');
INSERT INTO municipio VALUES (1273, 'NOVA XAVANTINA');
INSERT INTO municipio VALUES (1274, 'ARAPONGAS');
INSERT INTO municipio VALUES (1275, 'BEZERROS');
INSERT INTO municipio VALUES (1276, 'ASSIS');
INSERT INTO municipio VALUES (1277, 'SAO RAFAEL');
INSERT INTO municipio VALUES (1278, 'MARIALVA');
INSERT INTO municipio VALUES (1279, 'SAO JOSE DE RIBAMAR');
INSERT INTO municipio VALUES (1280, 'MATINHA');
INSERT INTO municipio VALUES (1281, 'JANDUIS');
INSERT INTO municipio VALUES (1282, 'TERENOS');
INSERT INTO municipio VALUES (1283, 'PONTE NOVA');
INSERT INTO municipio VALUES (1284, 'BODOCO');
INSERT INTO municipio VALUES (1285, 'PARA DE MINAS');
INSERT INTO municipio VALUES (1286, 'COLINAS');
INSERT INTO municipio VALUES (1287, 'GANDU');
INSERT INTO municipio VALUES (1288, 'IBICUITINGA');
INSERT INTO municipio VALUES (1289, 'COLATINA');
INSERT INTO municipio VALUES (1290, 'SAO JOAO DE MERITI');
INSERT INTO municipio VALUES (1291, 'TACAIMBO');
INSERT INTO municipio VALUES (1292, 'CARIRA');
INSERT INTO municipio VALUES (1293, 'SANTA CRUZ DO CAPIBARIBE');
INSERT INTO municipio VALUES (1294, 'MARECHAL CANDIDO RONDON');
INSERT INTO municipio VALUES (1295, 'APARECIDA DO TABOADO');
INSERT INTO municipio VALUES (1296, 'SAO JOAO DO PIAUI');
INSERT INTO municipio VALUES (1297, 'JACIARA');
INSERT INTO municipio VALUES (1298, 'CLAUDIO');
INSERT INTO municipio VALUES (1299, 'ITABAIANINHA');
INSERT INTO municipio VALUES (1300, 'CURURUPU');
INSERT INTO municipio VALUES (1301, 'ERVALIA');
INSERT INTO municipio VALUES (1302, 'COCAL');
INSERT INTO municipio VALUES (1303, 'ITAPETINGA');
INSERT INTO municipio VALUES (1304, 'CORREIA PINTO');
INSERT INTO municipio VALUES (1305, 'BIRIGUI');
INSERT INTO municipio VALUES (1306, 'PALESTINA');
INSERT INTO municipio VALUES (1307, 'ALTO LONGA');
INSERT INTO municipio VALUES (1308, 'GENERAL SALGADO');
INSERT INTO municipio VALUES (1309, 'RIO DAS FLORES');
INSERT INTO municipio VALUES (1310, 'BELA CRUZ');
INSERT INTO municipio VALUES (1311, 'IPUA');
INSERT INTO municipio VALUES (1312, 'FRUTUOSO GOMES');
INSERT INTO municipio VALUES (1313, 'PAULO RAMOS');
INSERT INTO municipio VALUES (1314, 'UAUA');
INSERT INTO municipio VALUES (1315, 'MASCOTE');
INSERT INTO municipio VALUES (1316, 'IACU');
INSERT INTO municipio VALUES (1317, 'CANAPI');
INSERT INTO municipio VALUES (1318, 'PERDIGAO');
INSERT INTO municipio VALUES (1319, 'SITIO NOVO');
INSERT INTO municipio VALUES (1320, 'SAO JOSE DO BELMONTE');
INSERT INTO municipio VALUES (1321, 'RINOPOLIS');
INSERT INTO municipio VALUES (1322, 'PINHEIROS');
INSERT INTO municipio VALUES (1323, 'CANINDE');
INSERT INTO municipio VALUES (1324, 'ALMADINA');
INSERT INTO municipio VALUES (1325, 'MARIANA');
INSERT INTO municipio VALUES (1326, 'PAVAO');
INSERT INTO municipio VALUES (1327, 'CARUARU');
INSERT INTO municipio VALUES (1328, 'SAO FRANCISCO DE SALES');
INSERT INTO municipio VALUES (1329, 'CORREGO NOVO');
INSERT INTO municipio VALUES (1330, 'RIBEIRAO');
INSERT INTO municipio VALUES (1331, 'MANHUACU');
INSERT INTO municipio VALUES (1332, 'CARAVELAS');
INSERT INTO municipio VALUES (1333, 'RONDON DO PARA');
INSERT INTO municipio VALUES (1334, 'FOZ DO IGUACU');
INSERT INTO municipio VALUES (1335, 'AQUIDAUANA');
INSERT INTO municipio VALUES (1336, 'MARAIAL');
INSERT INTO municipio VALUES (1337, 'ARAPONGA');
INSERT INTO municipio VALUES (1338, 'ITAJU DO COLONIA');
INSERT INTO municipio VALUES (1339, 'NOVA LIMA');
INSERT INTO municipio VALUES (1340, 'TARUMIRIM');
INSERT INTO municipio VALUES (1341, 'SAO TIAGO');
INSERT INTO municipio VALUES (1342, 'CARMO DO RIO CLARO');
INSERT INTO municipio VALUES (1343, 'CAPOEIRAS');
INSERT INTO municipio VALUES (1344, 'IPANEMA');
INSERT INTO municipio VALUES (1345, 'TARABAI');
INSERT INTO municipio VALUES (1346, 'IGUATAMA');
INSERT INTO municipio VALUES (1347, 'AUGUSTINOPOLIS');
INSERT INTO municipio VALUES (1348, 'PARAGUACU');
INSERT INTO municipio VALUES (1349, 'MAMANGUAPE');
INSERT INTO municipio VALUES (1350, 'SAO JOAO DAS DUAS PONTES');
INSERT INTO municipio VALUES (1351, 'NOVA GLORIA');
INSERT INTO municipio VALUES (1352, 'ITAPEMIRIM');
INSERT INTO municipio VALUES (1353, 'BRAUNA');
INSERT INTO municipio VALUES (1354, 'BARRA MANSA');
INSERT INTO municipio VALUES (1355, 'MACAU');
INSERT INTO municipio VALUES (1356, 'CAMPINA DA LAGOA');
INSERT INTO municipio VALUES (1357, 'CASTELANDIA');
INSERT INTO municipio VALUES (1358, 'NIOAQUE');
INSERT INTO municipio VALUES (1359, 'JOSE BONIFACIO');
INSERT INTO municipio VALUES (1360, 'SAO FRANCISCO DO MARANHAO');
INSERT INTO municipio VALUES (1361, 'OLARIA');
INSERT INTO municipio VALUES (1362, 'COLUNA');
INSERT INTO municipio VALUES (1363, 'JUVENILIA');
INSERT INTO municipio VALUES (1364, 'JERUMENHA');
INSERT INTO municipio VALUES (1365, 'NOVO PLANALTO');
INSERT INTO municipio VALUES (1366, 'PESQUEIRA');
INSERT INTO municipio VALUES (1367, 'PENALVA');
INSERT INTO municipio VALUES (1368, 'CONCEICAO DA BARRA DE MINAS');
INSERT INTO municipio VALUES (1369, 'ECOPORANGA');
INSERT INTO municipio VALUES (1370, 'IRARA');
INSERT INTO municipio VALUES (1371, 'REGENERACAO');
INSERT INTO municipio VALUES (1372, 'VIRADOURO');
INSERT INTO municipio VALUES (1373, 'TARAUACA');
INSERT INTO municipio VALUES (1374, 'SANTA CRUZ DO RIO PARDO');
INSERT INTO municipio VALUES (1375, 'BRASILEIA');
INSERT INTO municipio VALUES (1376, 'CACEQUI');
INSERT INTO municipio VALUES (1377, 'DOM AQUINO');
INSERT INTO municipio VALUES (1378, 'BOM JESUS DO ITABAPOANA');
INSERT INTO municipio VALUES (1379, 'FATIMA DO SUL');
INSERT INTO municipio VALUES (1380, 'SIMOES');
INSERT INTO municipio VALUES (1381, 'CENTRAL');
INSERT INTO municipio VALUES (1382, 'VERA CRUZ');
INSERT INTO municipio VALUES (1383, 'SOLANEA');
INSERT INTO municipio VALUES (1384, 'BANANAL');
INSERT INTO municipio VALUES (1385, 'VALENCA DO PIAUI');
INSERT INTO municipio VALUES (1386, 'ALTINOPOLIS');
INSERT INTO municipio VALUES (1387, 'FORTALEZA DOS NOGUEIRAS');
INSERT INTO municipio VALUES (1388, 'RIACHO DOS MACHADOS');
INSERT INTO municipio VALUES (1389, 'SENADOR POMPEU');
INSERT INTO municipio VALUES (1390, 'SANTA ISABEL DO IVAI');
INSERT INTO municipio VALUES (1391, 'BREJO');
INSERT INTO municipio VALUES (1392, 'TRAIPU');
INSERT INTO municipio VALUES (1393, 'PORTO CALVO');
INSERT INTO municipio VALUES (1394, 'RERIUTABA');
INSERT INTO municipio VALUES (1395, 'GRANJEIRO');
INSERT INTO municipio VALUES (1396, 'UNIAO DOS PALMARES');
INSERT INTO municipio VALUES (1397, 'CAPITAO DE CAMPOS');
INSERT INTO municipio VALUES (1398, 'MARIA HELENA');
INSERT INTO municipio VALUES (1399, 'AMARAJI');
INSERT INTO municipio VALUES (1400, 'CAPITOLIO');
INSERT INTO municipio VALUES (1401, 'ITAPORA DO TOCANTINS');
INSERT INTO municipio VALUES (1402, 'GRANITO');
INSERT INTO municipio VALUES (1403, 'BREJO GRANDE');
INSERT INTO municipio VALUES (1404, 'ITAMBE');
INSERT INTO municipio VALUES (1405, 'AREIA');
INSERT INTO municipio VALUES (1406, 'BARUERI');
INSERT INTO municipio VALUES (1407, 'LUIZ ALVES');
INSERT INTO municipio VALUES (1408, 'AGUAS FORMOSAS');
INSERT INTO municipio VALUES (1409, 'MINAS NOVAS');
INSERT INTO municipio VALUES (1410, 'MASSARANDUBA');
INSERT INTO municipio VALUES (1411, 'VITORIA');
INSERT INTO municipio VALUES (1412, 'SAO BENEDITO DO RIO PRETO');
INSERT INTO municipio VALUES (1413, 'CRISTIANO OTONI');
INSERT INTO municipio VALUES (1414, 'IPUPIARA');
INSERT INTO municipio VALUES (1415, 'BANANEIRAS');
INSERT INTO municipio VALUES (1416, 'MONJOLOS');
INSERT INTO municipio VALUES (1417, 'LEANDRO FERREIRA');
INSERT INTO municipio VALUES (1418, 'BOM JESUS DO GALHO');
INSERT INTO municipio VALUES (1419, 'COARACI');
INSERT INTO municipio VALUES (1420, 'ITACARE');
INSERT INTO municipio VALUES (1421, 'MURIAE');
INSERT INTO municipio VALUES (1422, 'URUSSANGA');
INSERT INTO municipio VALUES (1423, 'MAGE');
INSERT INTO municipio VALUES (1424, 'IGUIRA');
INSERT INTO municipio VALUES (1425, 'SANTA CLARA D OESTE');
INSERT INTO municipio VALUES (1426, 'SANTA RITA DO SAPUCAI');
INSERT INTO municipio VALUES (1427, 'CARIUS');
INSERT INTO municipio VALUES (1428, 'ACARI');
INSERT INTO municipio VALUES (1429, 'QUIJINGUE');
INSERT INTO municipio VALUES (1430, 'PIO IX');
INSERT INTO municipio VALUES (1431, 'SANTANA DO LIVRAMENTO');
INSERT INTO municipio VALUES (1432, 'UBIRATA');
INSERT INTO municipio VALUES (1433, 'GUARANI D OESTE');
INSERT INTO municipio VALUES (1434, 'TIMBIRAS');
INSERT INTO municipio VALUES (1435, 'MEDEIROS NETO');
INSERT INTO municipio VALUES (1436, 'CAMBUCI');
INSERT INTO municipio VALUES (1437, 'SALMOURAO');
INSERT INTO municipio VALUES (1438, 'SANTA BARBARA DO SUL');
INSERT INTO municipio VALUES (1439, 'COSTA RICA');
INSERT INTO municipio VALUES (1440, 'PRINCESA ISABEL');
INSERT INTO municipio VALUES (1441, 'MARTINS');
INSERT INTO municipio VALUES (1442, 'NOVA TIMBOTEUA');
INSERT INTO municipio VALUES (1443, 'TIMBAUBA DOS BATISTAS');
INSERT INTO municipio VALUES (1444, 'LAJEDO');
INSERT INTO municipio VALUES (1445, 'SANTA MARIA DO SUACUI');
INSERT INTO municipio VALUES (1446, 'ERECHIM');
INSERT INTO municipio VALUES (1447, 'AIQUARA');
INSERT INTO municipio VALUES (1448, 'SERRANA');
INSERT INTO municipio VALUES (1449, 'SAO GABRIEL');
INSERT INTO municipio VALUES (1450, 'GUAIBA');
INSERT INTO municipio VALUES (1451, 'SAO PEDRO DA UNIAO');
INSERT INTO municipio VALUES (1452, 'SANTO ANTONIO DO AVENTUREIRO');
INSERT INTO municipio VALUES (1453, 'ANISIO DE ABREU');
INSERT INTO municipio VALUES (1454, 'PIRACURUCA');
INSERT INTO municipio VALUES (1455, 'GRANDES RIOS');
INSERT INTO municipio VALUES (1456, 'CAFARNAUM');
INSERT INTO municipio VALUES (1457, 'QUEDAS DO IGUACU');
INSERT INTO municipio VALUES (1458, 'TUPA');
INSERT INTO municipio VALUES (1459, 'MATEUS LEME');
INSERT INTO municipio VALUES (1460, 'SAO JOSE DE CAIANA');
INSERT INTO municipio VALUES (1461, 'RANCHARIA');
INSERT INTO municipio VALUES (1462, 'SILVEIRANIA');
INSERT INTO municipio VALUES (1463, 'UMARIZAL');
INSERT INTO municipio VALUES (1464, 'LUIS GOMES');
INSERT INTO municipio VALUES (1465, 'SANTANA DO CARIRI');
INSERT INTO municipio VALUES (1466, 'MARACAJU');
INSERT INTO municipio VALUES (1467, 'POCRANE');
INSERT INTO municipio VALUES (1468, 'JUREMA');
INSERT INTO municipio VALUES (1469, 'ARAPUTANGA');
INSERT INTO municipio VALUES (1470, 'CASA BRANCA');
INSERT INTO municipio VALUES (1471, 'FEIRA NOVA');
INSERT INTO municipio VALUES (1472, 'INHAMBUPE');
INSERT INTO municipio VALUES (1473, 'CORONEL MURTA');
INSERT INTO municipio VALUES (1474, 'KALORE');
INSERT INTO municipio VALUES (1475, 'SAO LEOPOLDO');
INSERT INTO municipio VALUES (1476, 'BOQUEIRAO');
INSERT INTO municipio VALUES (1477, 'MIRADOR');
INSERT INTO municipio VALUES (1478, 'SOUTO SOARES');
INSERT INTO municipio VALUES (1479, 'AIUABA');
INSERT INTO municipio VALUES (1480, 'SAO JOSE DA SAFIRA');
INSERT INTO municipio VALUES (1481, 'NOVA ALIANCA');
INSERT INTO municipio VALUES (1482, 'ITAPOLIS');
INSERT INTO municipio VALUES (1483, 'MUZAMBINHO');
INSERT INTO municipio VALUES (1484, 'SEARA');
INSERT INTO municipio VALUES (1485, 'GOVERNADOR ARCHER');
INSERT INTO municipio VALUES (1486, 'BELA VISTA');
INSERT INTO municipio VALUES (1487, 'MONTE HOREBE');
INSERT INTO municipio VALUES (1488, 'JOINVILLE');
INSERT INTO municipio VALUES (1489, 'CALCOENE');
INSERT INTO municipio VALUES (1490, 'NOVA ANDRADINA');
INSERT INTO municipio VALUES (1491, 'JITAUNA');
INSERT INTO municipio VALUES (1492, 'SANTO EXPEDITO');
INSERT INTO municipio VALUES (1493, 'RIBEIRA DO POMBAL');
INSERT INTO municipio VALUES (1494, 'COREMAS');
INSERT INTO municipio VALUES (1495, 'BREJO DO CRUZ');
INSERT INTO municipio VALUES (1496, 'IGUARACU');
INSERT INTO municipio VALUES (1497, 'CONDADO');
INSERT INTO municipio VALUES (1498, 'TAIOBEIRAS');
INSERT INTO municipio VALUES (1499, 'CABO FRIO');
INSERT INTO municipio VALUES (1500, 'ALTAMIRA');
INSERT INTO municipio VALUES (1501, 'CHIADOR');
INSERT INTO municipio VALUES (1502, 'CLARO DOS POCOES');
INSERT INTO municipio VALUES (1503, 'ESPINOSA');
INSERT INTO municipio VALUES (1504, 'ACAILANDIA');
INSERT INTO municipio VALUES (1505, 'MATOES');
INSERT INTO municipio VALUES (1506, 'JUNQUEIRO');
INSERT INTO municipio VALUES (1507, 'BONITO DE SANTA FE');
INSERT INTO municipio VALUES (1508, 'RIO GRANDE DO PIAUI');
INSERT INTO municipio VALUES (1509, 'IBIPITANGA');
INSERT INTO municipio VALUES (1510, 'SAPE');
INSERT INTO municipio VALUES (1511, 'SITIO NOVO DO TOCANTINS');
INSERT INTO municipio VALUES (1512, 'SOLEDADE DE MINAS');
INSERT INTO municipio VALUES (1513, 'TIMOTEO');
INSERT INTO municipio VALUES (1514, 'SAO JOSE DO CAMPESTRE');
INSERT INTO municipio VALUES (1515, 'FREI GASPAR');
INSERT INTO municipio VALUES (1516, 'BRASILANDIA');
INSERT INTO municipio VALUES (1517, 'AVAI');
INSERT INTO municipio VALUES (1518, 'VITORINO FREIRE');
INSERT INTO municipio VALUES (1519, 'TABULEIRO DO NORTE');
INSERT INTO municipio VALUES (1520, 'TRES DE MAIO');
INSERT INTO municipio VALUES (1521, 'UNA');
INSERT INTO municipio VALUES (1522, 'PAUDALHO');
INSERT INTO municipio VALUES (1523, 'TAUBATE');
INSERT INTO municipio VALUES (1524, 'MANACAPURU');
INSERT INTO municipio VALUES (1525, 'WANDERLANDIA');
INSERT INTO municipio VALUES (1526, 'BAGE');
INSERT INTO municipio VALUES (1527, 'BARROLANDIA');
INSERT INTO municipio VALUES (1528, 'PELOTAS');
INSERT INTO municipio VALUES (1529, 'CLEMENTINA');
INSERT INTO municipio VALUES (1530, 'MUCURICI');
INSERT INTO municipio VALUES (1531, 'VALDELANDIA');
INSERT INTO municipio VALUES (1532, 'BELEM DO BREJO DO CRUZ');
INSERT INTO municipio VALUES (1533, 'GENTIO DO OURO');
INSERT INTO municipio VALUES (1534, 'GUARANIACU');
INSERT INTO municipio VALUES (1535, 'JABOATAO DOS GUARARAPES');
INSERT INTO municipio VALUES (1536, 'PIRITIBA');
INSERT INTO municipio VALUES (1537, 'CABRALIA PAULISTA');
INSERT INTO municipio VALUES (1538, 'CEARA-MIRIM');
INSERT INTO municipio VALUES (1539, 'PARATINGA');
INSERT INTO municipio VALUES (1540, 'CAPARAO');
INSERT INTO municipio VALUES (1541, 'PAU BRASIL');
INSERT INTO municipio VALUES (1542, 'MORPARA');
INSERT INTO municipio VALUES (1543, 'ITAGI');
INSERT INTO municipio VALUES (1544, 'AREADO');
INSERT INTO municipio VALUES (1545, 'RIO CLARO');
INSERT INTO municipio VALUES (1546, 'PIRATININGA');
INSERT INTO municipio VALUES (1547, 'IBIAPINA');
INSERT INTO municipio VALUES (1548, 'MOREILANDIA');
INSERT INTO municipio VALUES (1549, 'RIO DO SUL');
INSERT INTO municipio VALUES (1550, 'BOA VENTURA');
INSERT INTO municipio VALUES (1551, 'BOM PRINCIPIO');
INSERT INTO municipio VALUES (1552, 'ESPERANTINOPOLIS');
INSERT INTO municipio VALUES (1553, 'CAMPOS');
INSERT INTO municipio VALUES (1554, 'GENERAL CARNEIRO');
INSERT INTO municipio VALUES (1555, 'PIRANGA');
INSERT INTO municipio VALUES (1556, 'AREIAS');
INSERT INTO municipio VALUES (1557, 'SUZANO');
INSERT INTO municipio VALUES (1558, 'TAMBAU');
INSERT INTO municipio VALUES (1559, 'CAMBARA');
INSERT INTO municipio VALUES (1560, 'PRUDENTOPOLIS');
INSERT INTO municipio VALUES (1561, 'RIO CASCA');
INSERT INTO municipio VALUES (1562, 'JAGUAQUARA');
INSERT INTO municipio VALUES (1563, 'ANDRADAS');
INSERT INTO municipio VALUES (1564, 'ITAGUACU DE GOIAS');
INSERT INTO municipio VALUES (1565, 'DOM PEDRO');
INSERT INTO municipio VALUES (1566, 'AFONSO BEZERRA');
INSERT INTO municipio VALUES (1567, 'NOVA LONDRINA');
INSERT INTO municipio VALUES (1568, 'RIO NEGRO');
INSERT INTO municipio VALUES (1569, 'SANTO ESTEVAO');
INSERT INTO municipio VALUES (1570, 'SERRA NEGRA DO NORTE');
INSERT INTO municipio VALUES (1571, 'MATA GRANDE');
INSERT INTO municipio VALUES (1572, 'MIRINZAL');
INSERT INTO municipio VALUES (1573, 'MONTEIRO');
INSERT INTO municipio VALUES (1574, 'CRICIUMA');
INSERT INTO municipio VALUES (1575, 'SANTA RITA DE CASSIA');
INSERT INTO municipio VALUES (1576, 'CAMBIRA');
INSERT INTO municipio VALUES (1577, 'URAI');
INSERT INTO municipio VALUES (1578, 'VILA VELHA');
INSERT INTO municipio VALUES (1579, 'TERRA ROXA');
INSERT INTO municipio VALUES (1580, 'UPANEMA');
INSERT INTO municipio VALUES (1581, 'SANTA TERESA');
INSERT INTO municipio VALUES (1582, 'PORTO MURTINHO');
INSERT INTO municipio VALUES (1583, 'BORBOREMA');
INSERT INTO municipio VALUES (1584, 'SAO JOSE DO EGITO');
INSERT INTO municipio VALUES (1585, 'BARCELONA');
INSERT INTO municipio VALUES (1586, 'SAO FRANCISCO DO PARA');
INSERT INTO municipio VALUES (1587, 'CUNHA PORA');
INSERT INTO municipio VALUES (1588, 'SANTANA DO MATOS');
INSERT INTO municipio VALUES (1589, 'CARANGOLA');
INSERT INTO municipio VALUES (1590, 'JAPERI');
INSERT INTO municipio VALUES (1591, 'PROMISSAO');
INSERT INTO municipio VALUES (1592, 'MONTE SANTO');
INSERT INTO municipio VALUES (1593, 'BONINAL');
INSERT INTO municipio VALUES (1594, 'CAMACAN');
INSERT INTO municipio VALUES (1595, 'DIVINO DAS LARANJEIRAS');
INSERT INTO municipio VALUES (1596, 'AMERICA DOURADA');
INSERT INTO municipio VALUES (1597, 'ANGELIM');
INSERT INTO municipio VALUES (1598, 'INGA');
INSERT INTO municipio VALUES (1599, 'BOQUIRA');
INSERT INTO municipio VALUES (1600, 'WENCESLAU BRAZ');
INSERT INTO municipio VALUES (1601, 'TANGARA DA SERRA');
INSERT INTO municipio VALUES (1602, 'DOUTOR SEVERIANO');
INSERT INTO municipio VALUES (1603, 'NOVA OLIMPIA');
INSERT INTO municipio VALUES (1604, 'PALMITAL');
INSERT INTO municipio VALUES (1605, 'MARACAS');
INSERT INTO municipio VALUES (1606, 'SAO BORJA');
INSERT INTO municipio VALUES (1607, 'RIO DO PRADO');
INSERT INTO municipio VALUES (1608, 'ARROIO GRANDE');
INSERT INTO municipio VALUES (1609, 'ITAIBA');
INSERT INTO municipio VALUES (1610, 'MACHADOS');
INSERT INTO municipio VALUES (1611, 'MOMBACA');
INSERT INTO municipio VALUES (1612, 'TUPIRATINS');
INSERT INTO municipio VALUES (1613, 'LORENA');
INSERT INTO municipio VALUES (1614, 'BOM JESUS DO NORTE');
INSERT INTO municipio VALUES (1615, 'PARAI');
INSERT INTO municipio VALUES (1616, 'SOLEDADE');
INSERT INTO municipio VALUES (1617, 'ERERE');
INSERT INTO municipio VALUES (1618, 'IBICARAI');
INSERT INTO municipio VALUES (1619, 'BRODOSQUI');
INSERT INTO municipio VALUES (1620, 'TUPI PAULISTA');
INSERT INTO municipio VALUES (1621, 'AXIXA DO TOCANTINS');
INSERT INTO municipio VALUES (1622, 'CENTRAL DE MINAS');
INSERT INTO municipio VALUES (1623, 'JOAIMA');
INSERT INTO municipio VALUES (1624, 'ESPERANCA');
INSERT INTO municipio VALUES (1625, 'GRAVATA');
INSERT INTO municipio VALUES (1626, 'SAO JOAO DO ORIENTE');
INSERT INTO municipio VALUES (1627, 'LAGOA DE DENTRO');
INSERT INTO municipio VALUES (1628, 'PARACAMBI');
INSERT INTO municipio VALUES (1629, 'ITAPERUNA');
INSERT INTO municipio VALUES (1630, 'MIRABELA');
INSERT INTO municipio VALUES (1631, 'ITACOATIARA');
INSERT INTO municipio VALUES (1632, 'PEDRO AVELINO');
INSERT INTO municipio VALUES (1633, 'SAO PEDRO DO TURVO');
INSERT INTO municipio VALUES (1634, 'PETROLANDIA');
INSERT INTO municipio VALUES (1635, 'CEILANDIA');
INSERT INTO municipio VALUES (1636, 'JACARAU');
INSERT INTO municipio VALUES (1637, 'DELMIRO GOUVEIA');
INSERT INTO municipio VALUES (1638, 'ITA');
INSERT INTO municipio VALUES (1639, 'ILHA SOLTEIRA');
INSERT INTO municipio VALUES (1640, 'DIVISA NOVA');
INSERT INTO municipio VALUES (1641, 'RUBELITA');
INSERT INTO municipio VALUES (1642, 'SAO LOURENCO DA MATA');
INSERT INTO municipio VALUES (1643, 'NILOPOLIS');
INSERT INTO municipio VALUES (1644, 'PAES LANDIM');
INSERT INTO municipio VALUES (1645, 'ITINGA');
INSERT INTO municipio VALUES (1646, 'ABRE CAMPO');
INSERT INTO municipio VALUES (1647, 'SAO JOAO DO RIO DO PEIXE');
INSERT INTO municipio VALUES (1648, 'IGARAPE GRANDE');
INSERT INTO municipio VALUES (1649, 'GUARAMIRANGA');
INSERT INTO municipio VALUES (1650, 'BORDA DA MATA');
INSERT INTO municipio VALUES (1651, 'INOCENCIA');
INSERT INTO municipio VALUES (1652, 'UBATA');
INSERT INTO municipio VALUES (1653, 'BARRA DO BUGRES');
INSERT INTO municipio VALUES (1654, 'CIPOTANEA');
INSERT INTO municipio VALUES (1655, 'CANA VERDE');
INSERT INTO municipio VALUES (1656, 'CACHOEIRA');
INSERT INTO municipio VALUES (1657, 'CASSUNUNGA');
INSERT INTO municipio VALUES (1658, 'JUNQUEIROPOLIS');
INSERT INTO municipio VALUES (1659, 'PARANATINGA');
INSERT INTO municipio VALUES (1660, 'SAO JOAO DO JAGUARIBE');
INSERT INTO municipio VALUES (1661, 'ARARAS');
INSERT INTO municipio VALUES (1662, 'SAO JOAO DO CAIUA');
INSERT INTO municipio VALUES (1663, 'CONTENDAS DO SINCORA');
INSERT INTO municipio VALUES (1664, 'BRANQUINHA');
INSERT INTO municipio VALUES (1665, 'BARAO DE COCAIS');
INSERT INTO municipio VALUES (1666, 'IBIASSUCE');
INSERT INTO municipio VALUES (1667, 'POCAO');
INSERT INTO municipio VALUES (1668, 'ARATACA');
INSERT INTO municipio VALUES (1669, 'BREJOES');
INSERT INTO municipio VALUES (1670, 'PONTA GROSSA');
INSERT INTO municipio VALUES (1671, 'ELISEU MARTINS');
INSERT INTO municipio VALUES (1672, 'PILOEZINHOS');
INSERT INTO municipio VALUES (1673, 'UMBAUBA');
INSERT INTO municipio VALUES (1674, 'CONCEICAO DO CASTELO');
INSERT INTO municipio VALUES (1675, 'CASTILHO');
INSERT INTO municipio VALUES (1676, 'ANGICAL DO PIAUI');
INSERT INTO municipio VALUES (1677, 'URUBURETAMA');
INSERT INTO municipio VALUES (1678, 'SANTANA DA VARGEM');
INSERT INTO municipio VALUES (1679, 'VARZEA');
INSERT INTO municipio VALUES (1680, 'TANQUE NOVO');
INSERT INTO municipio VALUES (1681, 'ARATUIPE');
INSERT INTO municipio VALUES (1682, 'ORTIGUEIRA');
INSERT INTO municipio VALUES (1683, 'FLORAI');
INSERT INTO municipio VALUES (1684, 'MAIQUINIQUE');
INSERT INTO municipio VALUES (1685, 'AJURICABA');
INSERT INTO municipio VALUES (1686, 'GOIANA');
INSERT INTO municipio VALUES (1687, 'TAPIRAI');
INSERT INTO municipio VALUES (1688, 'SAO GABRIEL DA PALHA');
INSERT INTO municipio VALUES (1689, 'SANTO ANTONIO DA PLATINA');
INSERT INTO municipio VALUES (1690, 'MIRANGABA');
INSERT INTO municipio VALUES (1691, 'HUMBERTO DE CAMPOS');
INSERT INTO municipio VALUES (1692, 'SANTA CRUZ DAS PALMEIRAS');
INSERT INTO municipio VALUES (1693, 'ENCANTADO');
INSERT INTO municipio VALUES (1694, 'RIACHO DAS ALMAS');
INSERT INTO municipio VALUES (1695, 'SAO LOURENCO');
INSERT INTO municipio VALUES (1696, 'AGUDOS');
INSERT INTO municipio VALUES (1697, 'OURO BRANCO');
INSERT INTO municipio VALUES (1698, 'BUIQUE');
INSERT INTO municipio VALUES (1699, 'ITAGUAI');
INSERT INTO municipio VALUES (1700, 'PALESTINA DE GOIAS');
INSERT INTO municipio VALUES (1701, 'TELEMACO BORBA');
INSERT INTO municipio VALUES (1702, 'PATROCINIO PAULISTA');
INSERT INTO municipio VALUES (1703, 'GUAJERU');
INSERT INTO municipio VALUES (1704, 'PETROPOLIS');
INSERT INTO municipio VALUES (1705, 'SAO PEDRO DOS FERROS');
INSERT INTO municipio VALUES (1706, 'TRES PONTAS');
INSERT INTO municipio VALUES (1707, 'SANTO ANTONIO DO GRAMA');
INSERT INTO municipio VALUES (1708, 'SANTA AMELIA');
INSERT INTO municipio VALUES (1709, 'CASSIA');
INSERT INTO municipio VALUES (1710, 'TANABI');
INSERT INTO municipio VALUES (1711, 'PARNAGUA');
INSERT INTO municipio VALUES (1712, 'GUARANESIA');
INSERT INTO municipio VALUES (1713, 'POPULINA');
INSERT INTO municipio VALUES (1714, 'MUCURI');
INSERT INTO municipio VALUES (1715, 'ALTINHO');
INSERT INTO municipio VALUES (1716, 'PACATUBA');
INSERT INTO municipio VALUES (1717, 'ITIRAPUA');
INSERT INTO municipio VALUES (1718, 'ITAPETIM');
INSERT INTO municipio VALUES (1719, 'BOM JARDIM');
INSERT INTO municipio VALUES (1720, 'CHAVANTES');
INSERT INTO municipio VALUES (1721, 'VIADUTOS');
INSERT INTO municipio VALUES (1722, 'LARANJEIRAS DO SUL');
INSERT INTO municipio VALUES (1723, 'ASTORGA');
INSERT INTO municipio VALUES (1724, 'TATUI');
INSERT INTO municipio VALUES (1725, 'AFONSO CLAUDIO');
INSERT INTO municipio VALUES (1726, 'CAMPO NOVO');
INSERT INTO municipio VALUES (1727, 'PADRE MARCOS');
INSERT INTO municipio VALUES (1728, 'IPATINGA');
INSERT INTO municipio VALUES (1729, 'TERRA RICA');
INSERT INTO municipio VALUES (1730, 'COROATA');
INSERT INTO municipio VALUES (1731, 'BARREIROS');
INSERT INTO municipio VALUES (1732, 'RAFAEL GODEIRO');
INSERT INTO municipio VALUES (1733, 'BELEM DE SAO FRANCISCO');
INSERT INTO municipio VALUES (1734, 'BOTELHOS');
INSERT INTO municipio VALUES (1735, 'CONCEICAO DO ALMEIDA');
INSERT INTO municipio VALUES (1736, 'SAO CARLOS');
INSERT INTO municipio VALUES (1737, 'CALDAS');
INSERT INTO municipio VALUES (1738, 'ASSIS BRASIL');
INSERT INTO municipio VALUES (1739, 'MOCOCA');
INSERT INTO municipio VALUES (1740, 'MAIRI');
INSERT INTO municipio VALUES (1741, 'DIOGO DE VASCONCELOS');
INSERT INTO municipio VALUES (1742, 'SANTA TEREZINHA DE ITAIPU');
INSERT INTO municipio VALUES (1743, 'PEDRINHAS');
INSERT INTO municipio VALUES (1744, 'PIQUETE');
INSERT INTO municipio VALUES (1745, 'SANTA FE DO SUL');
INSERT INTO municipio VALUES (1746, 'PEABIRU');
INSERT INTO municipio VALUES (1747, 'CATANDUVAS');
INSERT INTO municipio VALUES (1748, 'BARAUNA');
INSERT INTO municipio VALUES (1749, 'LICINIO DE ALMEIDA');
INSERT INTO municipio VALUES (1750, 'MASSAPE');
INSERT INTO municipio VALUES (1751, 'FAGUNDES');
INSERT INTO municipio VALUES (1752, 'LINHARES');
INSERT INTO municipio VALUES (1753, 'POTENGI');
INSERT INTO municipio VALUES (1754, 'PINHEIRO');
INSERT INTO municipio VALUES (1755, 'TAQUARAL');
INSERT INTO municipio VALUES (1756, 'IRAI');
INSERT INTO municipio VALUES (1757, 'PINDORAMA');
INSERT INTO municipio VALUES (1758, 'PIACATU');
INSERT INTO municipio VALUES (1759, 'POMBAL');
INSERT INTO municipio VALUES (1760, 'RANCHO ALEGRE');
INSERT INTO municipio VALUES (1761, 'BREVES');
INSERT INTO municipio VALUES (1762, 'PALMAS');
INSERT INTO municipio VALUES (1763, 'JEQUITINHONHA');
INSERT INTO municipio VALUES (1764, 'BATURITE');
INSERT INTO municipio VALUES (1765, 'VALENTIM GENTIL');
INSERT INTO municipio VALUES (1766, 'UNIAO');
INSERT INTO municipio VALUES (1767, 'DIAMANTINO');
INSERT INTO municipio VALUES (1768, 'JEQUITAI');
INSERT INTO municipio VALUES (1769, 'COMBINADO');
INSERT INTO municipio VALUES (1770, 'MANDAGUARI');
INSERT INTO municipio VALUES (1771, 'AGUA QUENTE');
INSERT INTO municipio VALUES (1772, 'CANARANA');
INSERT INTO municipio VALUES (1773, 'VERTENTES');
INSERT INTO municipio VALUES (1774, 'INHAPI');
INSERT INTO municipio VALUES (1775, 'BARRA DA ESTIVA');
INSERT INTO municipio VALUES (1776, 'INHUMA');
INSERT INTO municipio VALUES (1777, 'BARAO DE MELGACO');
INSERT INTO municipio VALUES (1778, 'GUIA LOPES DA LAGUNA');
INSERT INTO municipio VALUES (1779, 'CRUZEIRO DO SUL');
INSERT INTO municipio VALUES (1780, 'ARARI');
INSERT INTO municipio VALUES (1781, 'FELIXLANDIA');
INSERT INTO municipio VALUES (1782, 'LAJEADO');
INSERT INTO municipio VALUES (1783, 'BARRA DO MENDES');
INSERT INTO municipio VALUES (1784, 'SERRARIA');
INSERT INTO municipio VALUES (1785, 'FREI PAULO');
INSERT INTO municipio VALUES (1786, 'SIMAO DIAS');
INSERT INTO municipio VALUES (1787, 'SAO JOAO EVANGELISTA');
INSERT INTO municipio VALUES (1788, 'ITATIAIUCU');
INSERT INTO municipio VALUES (1789, 'ESTANCIA VELHA');
INSERT INTO municipio VALUES (1790, 'MONTE AZUL PAULISTA');
INSERT INTO municipio VALUES (1791, 'QUINTINOS');
INSERT INTO municipio VALUES (1792, 'ALTAMIRA DO MARANHAO');
INSERT INTO municipio VALUES (1793, 'PORTO NOVO');
INSERT INTO municipio VALUES (1794, 'SAO LUIZ GONZAGA');
INSERT INTO municipio VALUES (1795, 'IGUAPE');
INSERT INTO municipio VALUES (1796, 'UTINGA');
INSERT INTO municipio VALUES (1797, 'SALGUEIRO');
INSERT INTO municipio VALUES (1798, 'PARIPIRANGA');
INSERT INTO municipio VALUES (1799, 'JAGUARACU');
INSERT INTO municipio VALUES (1800, 'LEOPOLDINA');
INSERT INTO municipio VALUES (1801, 'MILAGRES');
INSERT INTO municipio VALUES (1802, 'PARANAPANEMA');
INSERT INTO municipio VALUES (1803, 'FRANCINOPOLIS');
INSERT INTO municipio VALUES (1804, 'MONTE CASTELO');
INSERT INTO municipio VALUES (1805, 'OURO PRETO DO OESTE');
INSERT INTO municipio VALUES (1806, 'JUSCIMEIRA');
INSERT INTO municipio VALUES (1807, 'PARAPUA');
INSERT INTO municipio VALUES (1808, 'JACAREZINHO');
INSERT INTO municipio VALUES (1809, 'PALMEIRA DO PIAUI');
INSERT INTO municipio VALUES (1810, 'FREI INOCENCIO');
INSERT INTO municipio VALUES (1811, 'TEODORO SAMPAIO');
INSERT INTO municipio VALUES (1812, 'EDEALINA');
INSERT INTO municipio VALUES (1813, 'BRAS PIRES');
INSERT INTO municipio VALUES (1814, 'POCO BRANCO');
INSERT INTO municipio VALUES (1815, 'SANTO ANASTACIO');
INSERT INTO municipio VALUES (1816, 'AMERICO DE CAMPOS');
INSERT INTO municipio VALUES (1817, 'SENTO SE');
INSERT INTO municipio VALUES (1818, 'PORTELANDIA');
INSERT INTO municipio VALUES (1819, 'CAPELA DO ALTO ALEGRE');
INSERT INTO municipio VALUES (1820, 'SERRA BRANCA');
INSERT INTO municipio VALUES (1821, 'RIO LARGO');
INSERT INTO municipio VALUES (1822, 'NAZARENO');
INSERT INTO municipio VALUES (1823, 'TERRA NOVA');
INSERT INTO municipio VALUES (1824, 'ITAGUACU');
INSERT INTO municipio VALUES (1825, 'ATALAIA DO NORTE');
INSERT INTO municipio VALUES (1826, 'CAPIVARI');
INSERT INTO municipio VALUES (1827, 'RIBEIRAO CLARO');
INSERT INTO municipio VALUES (1828, 'COSMORAMA');
INSERT INTO municipio VALUES (1829, 'EMAS');
INSERT INTO municipio VALUES (1830, 'CONGONHAS');
INSERT INTO municipio VALUES (1831, 'IBIMIRIM');
INSERT INTO municipio VALUES (1832, 'SANTANA DO ACARAU');
INSERT INTO municipio VALUES (1833, 'ITUBERA');
INSERT INTO municipio VALUES (1834, 'ARIQUEMES');
INSERT INTO municipio VALUES (1835, 'JEQUERI');
INSERT INTO municipio VALUES (1836, 'POCO DAS TRINCHEIRAS');
INSERT INTO municipio VALUES (1837, 'ITAUEIRA');
INSERT INTO municipio VALUES (1838, 'ESPIRITO SANTO DO PINHAL');
INSERT INTO municipio VALUES (1839, 'PARAGOMINAS');
INSERT INTO municipio VALUES (1840, 'OROBO');
INSERT INTO municipio VALUES (1841, 'SANTA ADELIA');
INSERT INTO municipio VALUES (1842, 'ITAPE');
INSERT INTO municipio VALUES (1843, 'CHA DE ALEGRIA');
INSERT INTO municipio VALUES (1844, 'LINDOIA');
INSERT INTO municipio VALUES (1845, 'SANTA MARIA DO PARA');
INSERT INTO municipio VALUES (1846, 'SANTA MARIA DO SALTO');
INSERT INTO municipio VALUES (1847, 'PENTECOSTE');
INSERT INTO municipio VALUES (1848, 'PEROLA');
INSERT INTO municipio VALUES (1849, 'FRANCISCO BADARO');
INSERT INTO municipio VALUES (1850, 'NOVA IORQUE');
INSERT INTO municipio VALUES (1851, 'SERRITA');
INSERT INTO municipio VALUES (1852, 'ANGRA DOS REIS');
INSERT INTO municipio VALUES (1853, 'CAJAPIO');
INSERT INTO municipio VALUES (1854, 'IBAITI');
INSERT INTO municipio VALUES (1855, 'BURITI');
INSERT INTO municipio VALUES (1856, 'MORTUGABA');
INSERT INTO municipio VALUES (1857, 'PARINTINS');
INSERT INTO municipio VALUES (1858, 'CANANEIA');
INSERT INTO municipio VALUES (1859, 'SAO FRANCISCO DO GLORIA');
INSERT INTO municipio VALUES (1860, 'TEFE');
INSERT INTO municipio VALUES (1861, 'OLHO D AGUA');
INSERT INTO municipio VALUES (1862, 'PRESIDENTE VARGAS');
INSERT INTO municipio VALUES (1863, 'CAPANEMA');
INSERT INTO municipio VALUES (1864, 'PARIQUERA-ACU');
INSERT INTO municipio VALUES (1865, 'POTIRAGUA');
INSERT INTO municipio VALUES (1866, 'CONCORDIA');
INSERT INTO municipio VALUES (1867, 'ARACRUZ');
INSERT INTO municipio VALUES (1868, 'MONTE BELO');
INSERT INTO municipio VALUES (1869, 'CARLOPOLIS');
INSERT INTO municipio VALUES (1870, 'EUCLIDES DA CUNHA');
INSERT INTO municipio VALUES (1871, 'PIRAPEMAS');
INSERT INTO municipio VALUES (1872, 'TARRAFAS');
INSERT INTO municipio VALUES (1873, 'BAIXO GUANDU');
INSERT INTO municipio VALUES (1874, 'UBAJARA');
INSERT INTO municipio VALUES (1875, 'URUPES');
INSERT INTO municipio VALUES (1876, 'PRIMEIRO DE MAIO');
INSERT INTO municipio VALUES (1877, 'SAO JOSE DA LAGOA TAPADA');
INSERT INTO municipio VALUES (1878, 'ELOI MENDES');
INSERT INTO municipio VALUES (1879, 'PATU');
INSERT INTO municipio VALUES (1880, 'SERTANIA');
INSERT INTO municipio VALUES (1881, 'BUENO BRANDAO');
INSERT INTO municipio VALUES (1882, 'SAO FRANCISCO DO PIAUI');
INSERT INTO municipio VALUES (1883, 'SERTANEJA');
INSERT INTO municipio VALUES (1884, 'IBATEGUARA');
INSERT INTO municipio VALUES (1885, 'BARRA DE SANTA ROSA');
INSERT INTO municipio VALUES (1886, 'IBITITA');
INSERT INTO municipio VALUES (1887, 'NOVA MODICA');
INSERT INTO municipio VALUES (1888, 'BOCA DO ACRE');
INSERT INTO municipio VALUES (1889, 'ITAPECURU MIRIM');
INSERT INTO municipio VALUES (1890, 'FRANCISCO SA');
INSERT INTO municipio VALUES (1891, 'CARAPICUIBA');
INSERT INTO municipio VALUES (1892, 'JANUARIO CICCO');
INSERT INTO municipio VALUES (1893, 'LOBATO');
INSERT INTO municipio VALUES (1894, 'PALMARES');
INSERT INTO municipio VALUES (1895, 'GUIRICEMA');
INSERT INTO municipio VALUES (1896, 'SERTAOZINHO');
INSERT INTO municipio VALUES (1897, 'PORTO UNIAO');
INSERT INTO municipio VALUES (1898, 'CRUZILIA');
INSERT INTO municipio VALUES (1899, 'IGUATEMI');
INSERT INTO municipio VALUES (1900, 'AGUIARNOPOLIS');
INSERT INTO municipio VALUES (1901, 'CACHOEIRO DE ITAPEMIRIM');
INSERT INTO municipio VALUES (1902, 'JATI');
INSERT INTO municipio VALUES (1903, 'SAO JOAO DA PARAUNA');
INSERT INTO municipio VALUES (1904, 'PEDERNEIRAS');
INSERT INTO municipio VALUES (1905, 'TABULEIRO');
INSERT INTO municipio VALUES (1906, 'ARACOIABA');
INSERT INTO municipio VALUES (1907, 'BAYEUX');
INSERT INTO municipio VALUES (1908, 'AMAPA');
INSERT INTO municipio VALUES (1909, 'HONOROPOLIS');
INSERT INTO municipio VALUES (1910, 'REGENTE FEIJO');
INSERT INTO municipio VALUES (1911, 'BARROSO');
INSERT INTO municipio VALUES (1912, 'SAO GONCALO DO RIO ABAIXO');
INSERT INTO municipio VALUES (1913, 'ITAJOBI');
INSERT INTO municipio VALUES (1914, 'IGARAPE-ACU');
INSERT INTO municipio VALUES (1915, 'RUBINEIA');
INSERT INTO municipio VALUES (1916, 'RIBEIRAO DO PINHAL');
INSERT INTO municipio VALUES (1917, 'JANAUBA');
INSERT INTO municipio VALUES (1918, 'BENEDITINOS');
INSERT INTO municipio VALUES (1919, 'BUERAREMA');
INSERT INTO municipio VALUES (1920, 'SANTA TEREZA DO TOCANTINS');
INSERT INTO municipio VALUES (1921, 'SAO JOSE DO JACURI');
INSERT INTO municipio VALUES (1922, 'JAGUARIPE');
INSERT INTO municipio VALUES (1923, 'TACIMA');
INSERT INTO municipio VALUES (1924, 'TOLEDO');
INSERT INTO municipio VALUES (1925, 'IBIRITE');
INSERT INTO municipio VALUES (1926, 'MARIA DA FE');
INSERT INTO municipio VALUES (1927, 'IBIPEBA');
INSERT INTO municipio VALUES (1928, 'ITAPIUNA');
INSERT INTO municipio VALUES (1929, 'PENDENCIAS');
INSERT INTO municipio VALUES (1930, 'PALMEIRA DAS MISSOES');
INSERT INTO municipio VALUES (1931, 'URUITA');
INSERT INTO municipio VALUES (1932, 'INGAI');
INSERT INTO municipio VALUES (1933, 'MIGUEL LEAO');
INSERT INTO municipio VALUES (1934, 'ITATIBA');
INSERT INTO municipio VALUES (1935, 'MULUNGU');
INSERT INTO municipio VALUES (1936, 'POTE');
INSERT INTO municipio VALUES (1937, 'MOGI DAS CRUZES');
INSERT INTO municipio VALUES (1938, 'CORGUINHO');
INSERT INTO municipio VALUES (1939, 'ALTO PIQUIRI');
INSERT INTO municipio VALUES (1940, 'ACUCENA');
INSERT INTO municipio VALUES (1941, 'ANTONIO PRADO');
INSERT INTO municipio VALUES (1942, 'JERIQUARA');
INSERT INTO municipio VALUES (1943, 'SAO SEBASTIAO DO OESTE');
INSERT INTO municipio VALUES (1944, 'TRAJANO DE MORAIS');
INSERT INTO municipio VALUES (1945, 'BARBALHA');
INSERT INTO municipio VALUES (1946, 'TUBARAO');
INSERT INTO municipio VALUES (1947, 'ENEAS MARQUES');
INSERT INTO municipio VALUES (1948, 'EMBU');
INSERT INTO municipio VALUES (1949, 'INTERLANDIA');
INSERT INTO municipio VALUES (1950, 'AVARE');
INSERT INTO municipio VALUES (1951, 'SAO JOAO DO SABUGI');
INSERT INTO municipio VALUES (1952, 'AXIXA');
INSERT INTO municipio VALUES (1953, 'ITAGUAJE');
INSERT INTO municipio VALUES (1954, 'PIRACAIBA');
INSERT INTO municipio VALUES (1955, 'VOLTA GRANDE');
INSERT INTO municipio VALUES (1956, 'ANDRADINA');
INSERT INTO municipio VALUES (1957, 'ANASTACIO');
INSERT INTO municipio VALUES (1958, 'ALDEIAS ALTAS');
INSERT INTO municipio VALUES (1959, 'MARACANA');
INSERT INTO municipio VALUES (1960, 'GIRAU DO PONCIANO');
INSERT INTO municipio VALUES (1961, 'JURU');
INSERT INTO municipio VALUES (1962, 'PEDRA AZUL');
INSERT INTO municipio VALUES (1963, 'VOTORANTIM');
INSERT INTO municipio VALUES (1964, 'ALTO ALEGRE');
INSERT INTO municipio VALUES (1965, 'DOURADO');
INSERT INTO municipio VALUES (1966, 'APIAI');
INSERT INTO municipio VALUES (1967, 'PRIMEIRA CRUZ');
INSERT INTO municipio VALUES (1968, 'MANOEL RIBAS');
INSERT INTO municipio VALUES (1969, 'ICARAIMA');
INSERT INTO municipio VALUES (1970, 'MATIPO');
INSERT INTO municipio VALUES (1971, 'LAJES PINTADAS');
INSERT INTO municipio VALUES (1972, 'TIRADENTES');
INSERT INTO municipio VALUES (1973, 'PIEDADE DO RIO GRANDE');
INSERT INTO municipio VALUES (1974, 'LAJEDINHO');
INSERT INTO municipio VALUES (1975, 'JUSSARI');
INSERT INTO municipio VALUES (1976, 'GUARDA-MOR');
INSERT INTO municipio VALUES (1977, 'BRUSQUE');
INSERT INTO municipio VALUES (1978, 'NOVA SERRANA');
INSERT INTO municipio VALUES (1979, 'BICAS');
INSERT INTO municipio VALUES (1980, 'TIETE');
INSERT INTO municipio VALUES (1981, 'ALVINOPOLIS');
INSERT INTO municipio VALUES (1982, 'SANTA BARBARA');
INSERT INTO municipio VALUES (1983, 'DOM VICOSO');
INSERT INTO municipio VALUES (1984, 'FREI JORGE');
INSERT INTO municipio VALUES (1985, 'PINDAI');
INSERT INTO municipio VALUES (1986, 'JOSE DE FREITAS');
INSERT INTO municipio VALUES (1987, 'CUNHA');
INSERT INTO municipio VALUES (1988, 'SAPIRANGA');
INSERT INTO municipio VALUES (1989, 'AGUAS BELAS');
INSERT INTO municipio VALUES (1990, 'CARMOPOLIS DE MINAS');
INSERT INTO municipio VALUES (1991, 'UBAITABA');
INSERT INTO municipio VALUES (1992, 'FRANCISCO DANTAS');
INSERT INTO municipio VALUES (1993, 'UVA');
INSERT INTO municipio VALUES (1994, 'CAMPO LIMPO DE GOIAS');
INSERT INTO municipio VALUES (1995, 'CARNAIBA');
INSERT INTO municipio VALUES (1996, 'IRACEMA');
INSERT INTO municipio VALUES (1997, 'CARMO DA CACHOEIRA');
INSERT INTO municipio VALUES (1998, 'UMARI');
INSERT INTO municipio VALUES (1999, 'MORENO');
INSERT INTO municipio VALUES (2000, 'PIRAJUBA');
INSERT INTO municipio VALUES (2001, 'PORTO RICO');
INSERT INTO municipio VALUES (2002, 'POCO FUNDO');
INSERT INTO municipio VALUES (2003, 'LUMINARIAS');
INSERT INTO municipio VALUES (2004, 'PE DE SERRA');
INSERT INTO municipio VALUES (2005, 'ITANHAEM');
INSERT INTO municipio VALUES (2006, 'MONTE SANTO DE MINAS');
INSERT INTO municipio VALUES (2007, 'ITAGIMIRIM');
INSERT INTO municipio VALUES (2008, 'ATIBAIA');
INSERT INTO municipio VALUES (2009, 'CACHOEIRA DA PRATA');
INSERT INTO municipio VALUES (2010, 'DESTERRO');
INSERT INTO municipio VALUES (2011, 'RUBIACEA');
INSERT INTO municipio VALUES (2012, 'DIVINO DE SAO LOURENCO');
INSERT INTO municipio VALUES (2013, 'ARCOVERDE');
INSERT INTO municipio VALUES (2014, 'FARIA LEMOS');
INSERT INTO municipio VALUES (2015, 'BATALHA');
INSERT INTO municipio VALUES (2016, 'ALTO DO RODRIGUES');
INSERT INTO municipio VALUES (2017, 'CAPUTIRA');
INSERT INTO municipio VALUES (2018, 'TIMBAUBA');
INSERT INTO municipio VALUES (2019, 'BOTUPORA');
INSERT INTO municipio VALUES (2020, 'ITAPIRANGA');
INSERT INTO municipio VALUES (2021, 'GLORIA DE DOURADOS');
INSERT INTO municipio VALUES (2022, 'JULIO DE CASTILHOS');
INSERT INTO municipio VALUES (2023, 'GARCA');
INSERT INTO municipio VALUES (2024, 'SAO DOMINGOS DO PRATA');
INSERT INTO municipio VALUES (2025, 'DRACENA');
INSERT INTO municipio VALUES (2026, 'CONGONHINHAS');
INSERT INTO municipio VALUES (2027, 'CONCEICAO DE IPANEMA');
INSERT INTO municipio VALUES (2028, 'NONOAI');
INSERT INTO municipio VALUES (2029, 'ITABIRINHA');
INSERT INTO municipio VALUES (2030, 'LAGO DO JUNCO');
INSERT INTO municipio VALUES (2031, 'TUCUMA');
INSERT INTO municipio VALUES (2032, 'IBIPORA');
INSERT INTO municipio VALUES (2033, 'AGUANIL');
INSERT INTO municipio VALUES (2034, 'SAO JOSE DA LAJE');
INSERT INTO municipio VALUES (2035, 'RIO POMBA');
INSERT INTO municipio VALUES (2036, 'IJUI');
INSERT INTO municipio VALUES (2037, 'AUTAZES');
INSERT INTO municipio VALUES (2038, 'MAJOR VIEIRA');
INSERT INTO municipio VALUES (2039, 'JACUPIRANGA');
INSERT INTO municipio VALUES (2040, 'RIOLANDIA');
INSERT INTO municipio VALUES (2041, 'CAMOCIM');
INSERT INTO municipio VALUES (2042, 'CAJURI');
INSERT INTO municipio VALUES (2043, 'MANDAGUACU');
INSERT INTO municipio VALUES (2044, 'PORTO REAL DO COLEGIO');
INSERT INTO municipio VALUES (2045, 'CABO VERDE');
INSERT INTO municipio VALUES (2046, 'BANDEIRANTES');
INSERT INTO municipio VALUES (2047, 'CACAPAVA');
INSERT INTO municipio VALUES (2048, 'MACAUBAL');
INSERT INTO municipio VALUES (2049, 'ARACUAI');
INSERT INTO municipio VALUES (2050, 'GALIA');
INSERT INTO municipio VALUES (2051, 'EXTREMOZ');
INSERT INTO municipio VALUES (2052, 'CAMPOLANDIA');
INSERT INTO municipio VALUES (2053, 'PEREIRO');
INSERT INTO municipio VALUES (2054, 'TOME-ACU');
INSERT INTO municipio VALUES (2055, 'SAO JORGE DO IVAI');
INSERT INTO municipio VALUES (2056, 'SANTO ANTONIO DE POSSE');
INSERT INTO municipio VALUES (2057, 'JAGUARIAIVA');
INSERT INTO municipio VALUES (2058, 'SANTO ANTONIO DE PADUA');
INSERT INTO municipio VALUES (2059, 'ITAMARANDIBA');
INSERT INTO municipio VALUES (2060, 'MANGARATIBA');
INSERT INTO municipio VALUES (2061, 'PINHALZINHO');
INSERT INTO municipio VALUES (2062, 'TUPANCIRETA');
INSERT INTO municipio VALUES (2063, 'SERRA CAIADA');
INSERT INTO municipio VALUES (2064, 'CATU');
INSERT INTO municipio VALUES (2065, 'SILVIANOPOLIS');
INSERT INTO municipio VALUES (2066, 'RIVERLANDIA');
INSERT INTO municipio VALUES (2067, 'MANHUMIRIM');
INSERT INTO municipio VALUES (2068, 'ILICINEA');
INSERT INTO municipio VALUES (2069, 'SANTA ALBERTINA');
INSERT INTO municipio VALUES (2070, 'PEQUI');
INSERT INTO municipio VALUES (2071, 'SUD MENUCCI');
INSERT INTO municipio VALUES (2072, 'ARACAGI');
INSERT INTO municipio VALUES (2073, 'BARRAS');
INSERT INTO municipio VALUES (2074, 'SAO JOSE DOS PINHAIS');
INSERT INTO municipio VALUES (2075, 'BOM CONSELHO');
INSERT INTO municipio VALUES (2076, 'BRAUNAS');
INSERT INTO municipio VALUES (2077, 'CONDEUBA');
INSERT INTO municipio VALUES (2078, 'BREJAO');
INSERT INTO municipio VALUES (2079, 'PORECATU');
INSERT INTO municipio VALUES (2080, 'MACHADO');
INSERT INTO municipio VALUES (2081, 'NORTELANDIA');
INSERT INTO municipio VALUES (2082, 'ITARANTIM');
INSERT INTO municipio VALUES (2083, 'DEMERVAL LOBAO');
INSERT INTO municipio VALUES (2084, 'BATAGUASSU');
INSERT INTO municipio VALUES (2085, 'MARUIM');
INSERT INTO municipio VALUES (2086, 'MUNHOZ DE MELO');
INSERT INTO municipio VALUES (2087, 'JAPIRA');
INSERT INTO municipio VALUES (2088, 'IEPE');
INSERT INTO municipio VALUES (2089, 'NILO PECANHA');
INSERT INTO municipio VALUES (2090, 'WAGNER');
INSERT INTO municipio VALUES (2091, 'PORTO ESPERIDIAO');
INSERT INTO municipio VALUES (2092, 'ORLEANS');
INSERT INTO municipio VALUES (2093, 'SARANDI');
INSERT INTO municipio VALUES (2094, 'NEVES PAULISTA');
INSERT INTO municipio VALUES (2095, 'PIRAUBA');
INSERT INTO municipio VALUES (2096, 'MARCELINO VIEIRA');
INSERT INTO municipio VALUES (2097, 'JERONIMO MONTEIRO');
INSERT INTO municipio VALUES (2098, 'AREIAL');
INSERT INTO municipio VALUES (2099, 'MACARANI');
INSERT INTO municipio VALUES (2100, 'CORONEL VIVIDA');
INSERT INTO municipio VALUES (2101, 'MARCIONILIO SOUZA');
INSERT INTO municipio VALUES (2102, 'ITAPITANGA');
INSERT INTO municipio VALUES (2103, 'VALPARAISO DE GOIAS');
INSERT INTO municipio VALUES (2104, 'BALSAMO');
INSERT INTO municipio VALUES (2105, 'ANTAS');
INSERT INTO municipio VALUES (2106, 'MATIAS OLIMPIO');
INSERT INTO municipio VALUES (2107, 'DIVINOPOLIS DO TOCANTINS');
INSERT INTO municipio VALUES (2108, 'ALFREDO CHAVES');
INSERT INTO municipio VALUES (2109, 'SANTO AUGUSTO');
INSERT INTO municipio VALUES (2110, 'UBAIRA');
INSERT INTO municipio VALUES (2111, 'SABARA');
INSERT INTO municipio VALUES (2112, 'TERESOPOLIS');
INSERT INTO municipio VALUES (2113, 'BUENOPOLIS');
INSERT INTO municipio VALUES (2114, 'INDIAPORA');
INSERT INTO municipio VALUES (2115, 'PONTES GESTAL');
INSERT INTO municipio VALUES (2116, 'MONDAI');
INSERT INTO municipio VALUES (2117, 'ALEXANDRIA');
INSERT INTO municipio VALUES (2118, 'MATO VERDE');
INSERT INTO municipio VALUES (2119, 'ANTONIO CARLOS');
INSERT INTO municipio VALUES (2120, 'ACU');
INSERT INTO municipio VALUES (2121, 'ITAMOGI');
INSERT INTO municipio VALUES (2122, 'BACURI');
INSERT INTO municipio VALUES (2123, 'ARACATU');
INSERT INTO municipio VALUES (2124, 'SAO SEBASTIAO');
INSERT INTO municipio VALUES (2125, 'BETANIA');
INSERT INTO municipio VALUES (2126, 'SALINOPOLIS');
INSERT INTO municipio VALUES (2127, 'ROSARIO OESTE');
INSERT INTO municipio VALUES (2128, 'CANASTRAO');
INSERT INTO municipio VALUES (2129, 'LIMA CAMPOS');
INSERT INTO municipio VALUES (2130, 'SANTO HIPOLITO');
INSERT INTO municipio VALUES (2131, 'NOVO ORIENTE');
INSERT INTO municipio VALUES (2132, 'RIO BONITO');
INSERT INTO municipio VALUES (2133, 'BASTOS');
INSERT INTO municipio VALUES (2134, 'TABATINGA');
INSERT INTO municipio VALUES (2135, 'JOAQUIM GOMES');
INSERT INTO municipio VALUES (2136, 'MAXARANGUAPE');
INSERT INTO municipio VALUES (2137, 'ENGENHEIRO NAVARRO');
INSERT INTO municipio VALUES (2138, 'CAMANDUCAIA');
INSERT INTO municipio VALUES (2139, 'CONCEICAO DO PARA');
INSERT INTO municipio VALUES (2140, 'CATAGUASES');
INSERT INTO municipio VALUES (2141, 'QUIXABA');
INSERT INTO municipio VALUES (2142, 'GOIATABA');
INSERT INTO municipio VALUES (2143, 'BLUMENAU');
INSERT INTO municipio VALUES (2144, 'CAJOBI');
INSERT INTO municipio VALUES (2145, 'APARECIDA D OESTE');
INSERT INTO municipio VALUES (2146, 'FORTUNA');
INSERT INTO municipio VALUES (2147, 'MURIBECA');
INSERT INTO municipio VALUES (2148, 'GUAIRACA');
INSERT INTO municipio VALUES (2149, 'CACADOR');
INSERT INTO municipio VALUES (2150, 'IBIRAPUA');
INSERT INTO municipio VALUES (2151, 'DIVINOLANDIA DE MINAS');
INSERT INTO municipio VALUES (2152, 'MOREIRA SALES');
INSERT INTO municipio VALUES (2153, 'CLEVELANDIA');
INSERT INTO municipio VALUES (2154, 'GLICERIO');
INSERT INTO municipio VALUES (2155, 'FEIJO');
INSERT INTO municipio VALUES (2156, 'NOVA EUROPA');
INSERT INTO municipio VALUES (2157, 'SAO VICENTE DO SERIDO');
INSERT INTO municipio VALUES (2158, 'UBATUBA');
INSERT INTO municipio VALUES (2159, 'JARDIM DE ANGICOS');
INSERT INTO municipio VALUES (2160, 'SAO JOSE DO RIO GRANDE');
INSERT INTO municipio VALUES (2161, 'PLANALTINO');
INSERT INTO municipio VALUES (2162, 'TUPARETAMA');
INSERT INTO municipio VALUES (2163, 'LAGOA DOS GATOS');
INSERT INTO municipio VALUES (2164, 'BOM JARDIM DE MINAS');
INSERT INTO municipio VALUES (2165, 'CARLOS BARBOSA');
INSERT INTO municipio VALUES (2166, 'SAO LUIZ DO NORTE');
INSERT INTO municipio VALUES (2167, 'MARIOPOLIS');
INSERT INTO municipio VALUES (2168, 'ESPERA FELIZ');
INSERT INTO municipio VALUES (2169, 'XAPURI');
INSERT INTO municipio VALUES (2170, 'TABOLEIRO GRANDE');
INSERT INTO municipio VALUES (2171, 'LAVINIA');
INSERT INTO municipio VALUES (2172, 'ARCEBURGO');
INSERT INTO municipio VALUES (2173, 'SAO PAULO DO POTENGI');
INSERT INTO municipio VALUES (2174, 'TIMBO');
INSERT INTO municipio VALUES (2175, 'GUANHAES');
INSERT INTO municipio VALUES (2176, 'MACAJUBA');
INSERT INTO municipio VALUES (2177, 'PALMEIRA D OESTE');
INSERT INTO municipio VALUES (2178, 'GONZAGA');
INSERT INTO municipio VALUES (2179, 'JACANA');
INSERT INTO municipio VALUES (2180, 'ARACITABA');
INSERT INTO municipio VALUES (2181, 'AIURUOCA');
INSERT INTO municipio VALUES (2182, 'IRAPURU');
INSERT INTO municipio VALUES (2183, 'COLINAS DO SUL');
INSERT INTO municipio VALUES (2184, 'IBIRAMA');
INSERT INTO municipio VALUES (2185, 'MARAPANIM');
INSERT INTO municipio VALUES (2186, 'PONTE FIRME');
INSERT INTO municipio VALUES (2187, 'LAGARTO');
INSERT INTO municipio VALUES (2188, 'SIMOLANDIA');
INSERT INTO municipio VALUES (2189, 'JAGUARUANA');
INSERT INTO municipio VALUES (2190, 'SANTO ANTONIO DO JACINTO');
INSERT INTO municipio VALUES (2191, 'MATELANDIA');
INSERT INTO municipio VALUES (2192, 'ESCADA');
INSERT INTO municipio VALUES (2193, 'SAO MIGUEL DO ANTA');
INSERT INTO municipio VALUES (2194, 'PIRACICABA');
INSERT INTO municipio VALUES (2195, 'PILAO ARCADO');
INSERT INTO municipio VALUES (2196, 'GUARANTA');
INSERT INTO municipio VALUES (2197, 'RAFAEL JAMBEIRO');
INSERT INTO municipio VALUES (2198, 'SAO JOAO DE IRACEMA');
INSERT INTO municipio VALUES (2199, 'SAO PEDRO DA CIPA');
INSERT INTO municipio VALUES (2200, 'DESCALVADO');
INSERT INTO municipio VALUES (2201, 'UBA');
INSERT INTO municipio VALUES (2202, 'DORES DO TURVO');
INSERT INTO municipio VALUES (2203, 'NAZARE DO PIAUI');
INSERT INTO municipio VALUES (2204, 'GARARU');
INSERT INTO municipio VALUES (2205, 'LAVRINHAS');
INSERT INTO municipio VALUES (2206, 'JARDIM DE PIRANHAS');
INSERT INTO municipio VALUES (2207, 'IPOJUCA');
INSERT INTO municipio VALUES (2208, 'QUEBRANGULO');
INSERT INTO municipio VALUES (2209, 'SAUDADES');
INSERT INTO municipio VALUES (2210, 'SAQUAREMA');
INSERT INTO municipio VALUES (2211, 'ITABIRA');
INSERT INTO municipio VALUES (2212, 'BOM JESUS DA SERRA');
INSERT INTO municipio VALUES (2213, 'GUARATINGA');
INSERT INTO municipio VALUES (2214, 'CASTRO ALVES');
INSERT INTO municipio VALUES (2215, 'CAMPANHA');
INSERT INTO municipio VALUES (2216, 'MINADOR DO NEGRAO');
INSERT INTO municipio VALUES (2217, 'TAIPU');
INSERT INTO municipio VALUES (2218, 'SANTA BRANCA');
INSERT INTO municipio VALUES (2219, 'TEJUCUOCA');
INSERT INTO municipio VALUES (2220, 'BACILANDIA');
INSERT INTO municipio VALUES (2221, 'ALTO RIO NOVO');
INSERT INTO municipio VALUES (2222, 'SAO CRISTOVAO');
INSERT INTO municipio VALUES (2223, 'PRESIDENTE EPITACIO');
INSERT INTO municipio VALUES (2224, 'TRES PASSOS');
INSERT INTO municipio VALUES (2225, 'CRISSIUMAL');
INSERT INTO municipio VALUES (2226, 'CAMPOS NOVOS PAULISTA');
INSERT INTO municipio VALUES (2227, 'HUMAITA');
INSERT INTO municipio VALUES (2228, 'CAICARA');
INSERT INTO municipio VALUES (2229, 'QUEIMADOS');
INSERT INTO municipio VALUES (2230, 'CACHOEIRA DOS INDIOS');
INSERT INTO municipio VALUES (2231, 'RIO REAL');
INSERT INTO municipio VALUES (2232, 'NUPORANGA');
INSERT INTO municipio VALUES (2233, 'PEDRALVA');
INSERT INTO municipio VALUES (2234, 'ITANHEM');
INSERT INTO municipio VALUES (2235, 'PLANO PILOTO');
INSERT INTO municipio VALUES (2236, 'CEDRAL');
INSERT INTO municipio VALUES (2237, 'SAO MARTINHO');
INSERT INTO municipio VALUES (2238, 'SAO JERONIMO DA SERRA');
INSERT INTO municipio VALUES (2239, 'AMPERE');
INSERT INTO municipio VALUES (2240, 'AGRESTINA');
INSERT INTO municipio VALUES (2241, 'LAGOA DE VELHOS');
INSERT INTO municipio VALUES (2242, 'ARACOIABA DA SERRA');
INSERT INTO municipio VALUES (2243, 'COSMOPOLIS');
INSERT INTO municipio VALUES (2244, 'MONCAO');
INSERT INTO municipio VALUES (2245, 'SURUBIM');
INSERT INTO municipio VALUES (2246, 'OLIVENCA');
INSERT INTO municipio VALUES (2247, 'JI-PARANA');
INSERT INTO municipio VALUES (2248, 'GONCALVES DIAS');
INSERT INTO municipio VALUES (2249, 'BARRA DO JACARE');
INSERT INTO municipio VALUES (2250, 'IMARUI');
INSERT INTO municipio VALUES (2251, 'VARZEA NOVA');
INSERT INTO municipio VALUES (2252, 'RIO SONO');
INSERT INTO municipio VALUES (2253, 'PRUDENTE DE MORAIS');
INSERT INTO municipio VALUES (2254, 'SAO VICENTE FERRER');
INSERT INTO municipio VALUES (2255, 'CAIBATE');
INSERT INTO municipio VALUES (2256, 'MARECHAL DEODORO');
INSERT INTO municipio VALUES (2257, 'ITATIAIA');
INSERT INTO municipio VALUES (2258, 'TAQUARANA');
INSERT INTO municipio VALUES (2259, 'RONDA ALTA');
INSERT INTO municipio VALUES (2260, 'CASTANHAL');
INSERT INTO municipio VALUES (2261, 'TABIRA');
INSERT INTO municipio VALUES (2262, 'ENGENHEIRO BELTRAO');
INSERT INTO municipio VALUES (2263, 'PARAIPABA');
INSERT INTO municipio VALUES (2264, 'ESTRELA D OESTE');
INSERT INTO municipio VALUES (2265, 'ITACARAMBI');
INSERT INTO municipio VALUES (2266, 'NOVA CANTU');
INSERT INTO municipio VALUES (2267, 'ABATIA');
INSERT INTO municipio VALUES (2268, 'PRAINHA');
INSERT INTO municipio VALUES (2269, 'TAPEROA');
INSERT INTO municipio VALUES (2270, 'PARAISO DO NORTE');
INSERT INTO municipio VALUES (2271, 'DIONISIO');
INSERT INTO municipio VALUES (2272, 'SIRIRI');
INSERT INTO municipio VALUES (2273, 'ITAU DE MINAS');
INSERT INTO municipio VALUES (2274, 'RIO NOVO');
INSERT INTO municipio VALUES (2275, 'BRAGANCA PAULISTA');
INSERT INTO municipio VALUES (2276, 'DOM SILVERIO');
INSERT INTO municipio VALUES (2277, 'PRAIA NORTE');
INSERT INTO municipio VALUES (2278, 'JACINTO');
INSERT INTO municipio VALUES (2279, 'MUCAMBO');
INSERT INTO municipio VALUES (2280, 'BEBERIBE');
INSERT INTO municipio VALUES (2281, 'IBIRATAIA');
INSERT INTO municipio VALUES (2282, 'RIO DOCE');
INSERT INTO municipio VALUES (2283, 'BURITINOPOLIS');
INSERT INTO municipio VALUES (2284, 'URUBICI');
INSERT INTO municipio VALUES (2285, 'LIMOEIRO DE ANADIA');
INSERT INTO municipio VALUES (2286, 'CAMBE');
INSERT INTO municipio VALUES (2287, 'MUNIZ FREIRE');
INSERT INTO municipio VALUES (2288, 'RESENDE');
INSERT INTO municipio VALUES (2289, 'ITUETA');
INSERT INTO municipio VALUES (2290, 'MATOZINHOS');
INSERT INTO municipio VALUES (2291, 'SANTO ANTONIO DO SUDOESTE');
INSERT INTO municipio VALUES (2292, 'OIAPOQUE');
INSERT INTO municipio VALUES (2293, 'ITAJUIPE');
INSERT INTO municipio VALUES (2294, 'SANTA MARIANA');
INSERT INTO municipio VALUES (2295, 'DOIS CORREGOS');
INSERT INTO municipio VALUES (2296, 'TAVARES');
INSERT INTO municipio VALUES (2297, 'PEDRO DE TOLEDO');
INSERT INTO municipio VALUES (2298, 'FIRMINO ALVES');
INSERT INTO municipio VALUES (2299, 'IPORANGA');
INSERT INTO municipio VALUES (2300, 'PORCIUNCULA');
INSERT INTO municipio VALUES (2301, 'SANTA ROSA DE VITERBO');
INSERT INTO municipio VALUES (2302, 'CATENDE');
INSERT INTO municipio VALUES (2303, 'NAZAREZINHO');
INSERT INTO municipio VALUES (2304, 'CAETE');
INSERT INTO municipio VALUES (2305, 'CALUMBI');
INSERT INTO municipio VALUES (2306, 'TENENTE ANANIAS');
INSERT INTO municipio VALUES (2307, 'CAPITAO POCO');
INSERT INTO municipio VALUES (2308, 'CHAVAL');
INSERT INTO municipio VALUES (2309, 'BARRA DO ROCHA');
INSERT INTO municipio VALUES (2310, 'SAO SEBASTIAO DO MARANHAO');
INSERT INTO municipio VALUES (2311, 'ROSARIO DO SUL');
INSERT INTO municipio VALUES (2312, 'APIACA');
INSERT INTO municipio VALUES (2313, 'BELEM DE MARIA');
INSERT INTO municipio VALUES (2314, 'BARRACAO');
INSERT INTO municipio VALUES (2315, 'RIO PARDO');
INSERT INTO municipio VALUES (2316, 'RUBIM');
INSERT INTO municipio VALUES (2317, 'SAO MIGUEL DO GUAMA');
INSERT INTO municipio VALUES (2318, 'PALMEIRINA');
INSERT INTO municipio VALUES (2319, 'SAO MATEUS DO SUL');
INSERT INTO municipio VALUES (2320, 'JAGUAPITA');
INSERT INTO municipio VALUES (2321, 'GUAICARA');
INSERT INTO municipio VALUES (2322, 'PEDRA');
INSERT INTO municipio VALUES (2323, 'NEOPOLIS');
INSERT INTO municipio VALUES (2324, 'CAMBUI');
INSERT INTO municipio VALUES (2325, 'JERICO');
INSERT INTO municipio VALUES (2326, 'JANDAIA DO SUL');
INSERT INTO municipio VALUES (2327, 'BREJO DOS SANTOS');
INSERT INTO municipio VALUES (2328, 'INHAUMA');
INSERT INTO municipio VALUES (2329, 'BAIXA GRANDE');
INSERT INTO municipio VALUES (2330, 'CRUZEIRO');
INSERT INTO municipio VALUES (2331, 'ALMEIRIM');
INSERT INTO municipio VALUES (2332, 'ITAIPE');
INSERT INTO municipio VALUES (2333, 'PRESIDENTE CASTELO BRANCO');
INSERT INTO municipio VALUES (2334, 'ITAPEVA');
INSERT INTO municipio VALUES (2335, 'MARABA PAULISTA');
INSERT INTO municipio VALUES (2336, 'SANTANA DE PIRAPAMA');
INSERT INTO municipio VALUES (2337, 'ALVARES FLORENCE');
INSERT INTO municipio VALUES (2338, 'CUBATI');
INSERT INTO municipio VALUES (2339, 'MONTE ALTO');
INSERT INTO municipio VALUES (2340, 'ITUTINGA');
INSERT INTO municipio VALUES (2341, 'SAO MATEUS DO MARANHAO');
INSERT INTO municipio VALUES (2342, 'SOLIDAO');
INSERT INTO municipio VALUES (2343, 'DOIS VIZINHOS');
INSERT INTO municipio VALUES (2344, 'CODAJAS');
INSERT INTO municipio VALUES (2345, 'PALOTINA');
INSERT INTO municipio VALUES (2346, 'SABAUDIA');
INSERT INTO municipio VALUES (2347, 'JAGUARETAMA');
INSERT INTO municipio VALUES (2348, 'RIACHO DOS CAVALOS');
INSERT INTO municipio VALUES (2349, 'LIVRAMENTO');
INSERT INTO municipio VALUES (2350, 'FUNDAO');
INSERT INTO municipio VALUES (2351, 'IBATE');
INSERT INTO municipio VALUES (2352, 'MAMBORE');
INSERT INTO municipio VALUES (2353, 'BREJO GRANDE DO ARAGUAIA');
INSERT INTO municipio VALUES (2354, 'RIO DAS PEDRAS');
INSERT INTO municipio VALUES (2355, 'LAJE');
INSERT INTO municipio VALUES (2356, 'JEROAQUARA');
INSERT INTO municipio VALUES (2357, 'ALTEROSA');
INSERT INTO municipio VALUES (2358, 'ITAICABA');
INSERT INTO municipio VALUES (2359, 'TACARATU');


--
-- Name: municipio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('municipio_id_seq', 1, false);


--
-- Data for Name: orgao; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orgao VALUES (1, 'Secretaria da Fazenda', 1);
INSERT INTO orgao VALUES (3, 'Detran', 148);
INSERT INTO orgao VALUES (4, 'Universidade Estadual de Goiás', 14);
INSERT INTO orgao VALUES (5, 'Secretaria da Saúde', 222);
INSERT INTO orgao VALUES (6, 'Secretaria da Educação', 369);
INSERT INTO orgao VALUES (7, 'Câmera Legislativa', 666);
INSERT INTO orgao VALUES (8, 'Secretaria do Meio Ambiente', 968);
INSERT INTO orgao VALUES (10, 'Agência de Transportes', 444);
INSERT INTO orgao VALUES (2, 'Procuradoria Geral', 222);
INSERT INTO orgao VALUES (9, 'Agência de Inteligência', 222);
INSERT INTO orgao VALUES (11, 'Secretaria da Cultura', 148);
INSERT INTO orgao VALUES (12, 'Corpo de Bombeiros', 768);
INSERT INTO orgao VALUES (13, 'Polícia Civil', 369);
INSERT INTO orgao VALUES (14, 'Polícia Militar', 222);
INSERT INTO orgao VALUES (15, 'Polícia Federal', 1);
INSERT INTO orgao VALUES (16, 'Polícia Rodovioária', 74);
INSERT INTO orgao VALUES (17, 'Guarda Municipal', 676);


--
-- Name: orgao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('orgao_id_seq', 1, false);


--
-- Data for Name: pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pessoa VALUES (85024963638, 98165, 'ALESSANDRA FONSECA APARECIDA', '1974-06-07', 31);
INSERT INTO pessoa VALUES (45315873582, 70380, 'CRISTIANE OLIVEIRA BOTELHO', '1948-05-15', 42);
INSERT INTO pessoa VALUES (99943877375, 3626, 'MILENA BARROS MATIAS', '1971-12-19', 32);
INSERT INTO pessoa VALUES (42565273394, 30829, 'ARMINDO ALVES NASARE', '1963-05-28', 123);
INSERT INTO pessoa VALUES (76020034645, 44472, 'RAIMUNDO CIRNE ANTONIO', '1960-10-05', 155);
INSERT INTO pessoa VALUES (70670748486, 27326, 'ROSA SILVA CANDIDA', '1968-10-24', 134);
INSERT INTO pessoa VALUES (11493425289, 72871, 'SEBASTIAO GONTIJO COELHO', '1967-09-07', 6);
INSERT INTO pessoa VALUES (19251615012, 5501, 'EMILIO PEIXOTO ANANIAS', '1972-07-15', 17);
INSERT INTO pessoa VALUES (99946580800, 92571, 'JULIANA CARDOSO MARTINS', '1939-10-06', 283);
INSERT INTO pessoa VALUES (54948334673, 56830, 'NEILA JESUS LEMOS', '1974-06-15', 194);
INSERT INTO pessoa VALUES (44109533037, 67622, 'VILDON MENDES GONCALVES', '1947-06-02', 75);
INSERT INTO pessoa VALUES (99988046873, 3578, 'LAZARO SOUSA FERREIRA', '1964-06-02', 302);
INSERT INTO pessoa VALUES (21302324648, 78839, 'EDI OLIVEIRA LUCIA', '1976-08-01', 44);
INSERT INTO pessoa VALUES (83601630114, 745, 'LUCIMAR GOMES NASCENTE', '1946-02-19', 162);
INSERT INTO pessoa VALUES (13615488294, 76647, 'ANTONIA VIANA MARIO', '1973-12-11', 60);
INSERT INTO pessoa VALUES (93683391241, 6049, 'DELZUITA CARMO ROSA', '1972-04-18', 133);
INSERT INTO pessoa VALUES (99998822933, 48588, 'WALQUIRIA FERREIRA ROSA', '1949-06-05', 17);
INSERT INTO pessoa VALUES (99989856277, 41021, 'MARTHA FALCAO ALVES', '1974-03-29', 135);
INSERT INTO pessoa VALUES (40733765838, 6023, 'SADY VISCONDE BORGES', '1943-08-24', 17);
INSERT INTO pessoa VALUES (99944233342, 9521, 'ITAMAR ALMEIDA GISLENE', '1955-12-15', 20);
INSERT INTO pessoa VALUES (65517466925, 58519, 'MARCELO ALVES PEREIRA', '1975-08-19', 461);
INSERT INTO pessoa VALUES (34804983237, 58559, 'VERA SILVA BARBARA', '1933-12-22', 17);
INSERT INTO pessoa VALUES (99972983829, 78315, 'ISABEL ROSA ROSA', '1975-10-05', 31);
INSERT INTO pessoa VALUES (73306264313, 74269, 'WILLIAN PINTO SOUZA', '1950-01-27', 626);
INSERT INTO pessoa VALUES (99954159808, 64338, 'JEFFERSON SANTOS LOURDE', '1941-03-29', 17);
INSERT INTO pessoa VALUES (8948394174, 49981, 'VALMIR SILVA COUTINHO', '1930-05-30', 17);
INSERT INTO pessoa VALUES (99964410546, 85524, 'ANA ALMEIDA MARIA', '1941-10-25', 15);
INSERT INTO pessoa VALUES (99976291717, 3180, 'RAIMUNDO PEREIRA MORAIS', '1968-12-16', 10);
INSERT INTO pessoa VALUES (53350250165, 20777, 'ANADI SABLAG FERREIRA', '1952-04-30', 24);
INSERT INTO pessoa VALUES (15485520230, 1064, 'ADAILTON BORGES EUGENIO', '1947-08-18', 488);
INSERT INTO pessoa VALUES (32345427113, 37460, 'RAULINO CRUZ SERAFIM', '1964-08-15', 17);
INSERT INTO pessoa VALUES (21845201213, 92329, 'EVACI RAMOS EVANGELINA', '1950-03-01', 24);
INSERT INTO pessoa VALUES (29644432324, 23398, 'JOSENICE LOPES PEREIRA', '1971-06-24', 844);
INSERT INTO pessoa VALUES (79784679460, 62204, 'DJAMAL RODRIGUES SOUSA', '1974-03-10', 47);
INSERT INTO pessoa VALUES (4697450721, 32744, 'MARIA RESENDE MOREIRA', '1960-05-15', 6);
INSERT INTO pessoa VALUES (99941429739, 70353, 'CASSIMIRA SILVA ALENCAR', '1974-01-04', 675);
INSERT INTO pessoa VALUES (99995805457, 46931, 'FRANCKIOMAR ALMEIDA ROSA', '1942-08-27', 93);
INSERT INTO pessoa VALUES (99981766528, 42130, 'GILVA BERNALDO RIBEIRO', '1962-07-06', 20);
INSERT INTO pessoa VALUES (72470822293, 70208, 'TEREZINHA SOUZA ALVES', '1912-12-12', 17);
INSERT INTO pessoa VALUES (55751318402, 89850, 'MARIA TEIXEIRA CARLOS', '1971-05-19', 182);
INSERT INTO pessoa VALUES (99951756968, 41567, 'ANDREIA SILVA BRAL', '1934-08-10', 17);
INSERT INTO pessoa VALUES (32443874608, 30303, 'ANTONIA PERES CAXETA', '1972-11-13', 17);
INSERT INTO pessoa VALUES (95566871284, 41290, 'NEUSA FERREIRA BORGES', '1971-11-14', 123);
INSERT INTO pessoa VALUES (99972175110, 59762, 'SERGIO NASCIMENTO FURTADO', '1959-04-23', 107);
INSERT INTO pessoa VALUES (59220986159, 76261, 'WEDER PEREIRA DARCI', '1972-07-25', 17);
INSERT INTO pessoa VALUES (99990448853, 96143, 'ASLEY ANDRADE NUNES', '1976-07-21', 116);
INSERT INTO pessoa VALUES (2203673380, 30770, 'MARA GUIMARAES JORGE', '1971-03-24', 10);
INSERT INTO pessoa VALUES (99941692217, 12489, 'SERGIO CHAVES NATAL', '1943-09-20', 10);
INSERT INTO pessoa VALUES (66734840758, 74312, 'SUELE NUNES BOSCO', '1957-12-27', 88);
INSERT INTO pessoa VALUES (99947546325, 20728, 'THALES AMORIM NOBREGA', '1970-01-29', 696);
INSERT INTO pessoa VALUES (99941334158, 95732, 'APARECIDA LEAL GOMES', '1967-07-06', 62);
INSERT INTO pessoa VALUES (57222018508, 59755, 'EURICO CHAVEIRO AMARAL', '1976-01-11', 229);
INSERT INTO pessoa VALUES (35104861845, 18277, 'SILVANETE SANTOS DIVINO', '1951-11-20', 17);
INSERT INTO pessoa VALUES (52413727638, 29705, 'HELIO PAULINO NERI', '1970-06-08', 387);
INSERT INTO pessoa VALUES (46093830048, 33537, 'DULCIMAR OLIVEIRA PEREIRA', '1964-04-25', 115);
INSERT INTO pessoa VALUES (70577773702, 94863, 'MARIA SANTOS TEODOSIO', '1982-03-05', 47);
INSERT INTO pessoa VALUES (8391505720, 50638, 'IVANEIDE SANTOS RANGEL', '1941-10-24', 16);
INSERT INTO pessoa VALUES (71572836753, 2278, 'EVANDRO SANTOS OLIVEIRA', '1972-07-16', 17);
INSERT INTO pessoa VALUES (46565464995, 6921, 'JOSE OLIVEIRA APARECIDA', '1973-04-17', 17);
INSERT INTO pessoa VALUES (91730489504, 39422, 'WANDERLUCIA SANTOS SILVA', '1928-02-23', 17);
INSERT INTO pessoa VALUES (6694277965, 47081, 'LUZENIR GONCALVES VIEIRA', '1974-04-02', 17);
INSERT INTO pessoa VALUES (71318287280, 3921, 'GERALDA MONTENEGRO NETA', '1956-03-13', 17);
INSERT INTO pessoa VALUES (9932188733, 2870, 'EDUARDO EVANGELISTA FELIX', '1938-01-03', 272);
INSERT INTO pessoa VALUES (19294345588, 84362, 'ELMIM SOARES RODRIGUES', '1940-10-24', 110);
INSERT INTO pessoa VALUES (69769796456, 8658, 'GILBERTO SILVA PIRES', '1962-08-13', 331);
INSERT INTO pessoa VALUES (10145444354, 20429, 'ALEXANDRE SOUSA BARBOSA', '1973-01-22', 72);
INSERT INTO pessoa VALUES (14009857270, 33296, 'MARCILENE LOPES FERREIRA', '1952-06-12', 17);
INSERT INTO pessoa VALUES (65958274658, 19107, 'BARBARA NUNES OLIVEIRA', '1969-02-18', 17);
INSERT INTO pessoa VALUES (99975439179, 96479, 'MARIA MACEDO LOPES', '1962-12-24', 10);
INSERT INTO pessoa VALUES (78933601238, 87837, 'ERNESTO LOURENCO MONTEIRO', '1971-12-09', 110);
INSERT INTO pessoa VALUES (40915349740, 4891, 'LEIDA SOUZA PEIXOTO', '1958-07-18', 116);
INSERT INTO pessoa VALUES (4328537580, 82512, 'MARLON PAIVA FRANCISCO', '1966-10-11', 10);
INSERT INTO pessoa VALUES (59690243741, 51396, 'WILLIAM SILVA CALASSA', '1956-02-05', 17);
INSERT INTO pessoa VALUES (4970999186, 93525, 'JOAO LIMA FERREIRA', '1961-11-08', 17);
INSERT INTO pessoa VALUES (65822153089, 22864, 'EUGENIA SILVA BATISTA', '1971-09-16', 277);
INSERT INTO pessoa VALUES (93980743880, 86799, 'CESAR SIMMONDS IVONE', '1974-07-21', 17);
INSERT INTO pessoa VALUES (87468044065, 46464, 'DELSON LIMAS KARDEC', '1972-09-30', 17);
INSERT INTO pessoa VALUES (50449391734, 635, 'EDNA COSTA FATIMA', '1972-09-30', 17);
INSERT INTO pessoa VALUES (99989701457, 18555, 'EDISON BORGES MARTA', '1965-09-04', 10);
INSERT INTO pessoa VALUES (71523816197, 66020, 'EDSON ANDRADE SOCORRO', '1925-05-04', 29);
INSERT INTO pessoa VALUES (15902663077, 35614, 'ANTONIO TREVENSOL SILVA', '1955-12-07', 748);
INSERT INTO pessoa VALUES (38116582903, 20810, 'LEIA MACEDO SANTOS', '1972-09-03', 169);
INSERT INTO pessoa VALUES (68808914807, 75004, 'ANGELA SANTOS FLAVIO', '1951-08-22', 162);
INSERT INTO pessoa VALUES (87053852893, 70017, 'MARIA SILVA AMBROSIO', '1959-02-17', 35);
INSERT INTO pessoa VALUES (89248287530, 29003, 'MARCELO LIMA DIVINO', '1985-03-02', 10);
INSERT INTO pessoa VALUES (99977676515, 15845, 'AUGUSTINHA SANTOS RAMOS', '1969-11-07', 17);
INSERT INTO pessoa VALUES (95548768156, 77358, 'MARIA FREITAS ARAUJO', '1950-03-08', 10);
INSERT INTO pessoa VALUES (33242390571, 32416, 'ANTONIO PINHEIRO PIRES', '1951-06-22', 27);
INSERT INTO pessoa VALUES (88469580056, 93060, 'ROMULO PINHEIRO PEREIRA', '1971-12-16', 10);
INSERT INTO pessoa VALUES (76380017067, 51570, 'GILMAR GOMES FERNANDES', '1984-12-14', 37);
INSERT INTO pessoa VALUES (99976461175, 52105, 'VANESSA SILVA CARLOS', '1980-10-26', 49);
INSERT INTO pessoa VALUES (99948989841, 75702, 'SILVEIRA SANTOS ALVES', '1972-06-02', 17);
INSERT INTO pessoa VALUES (29454393939, 2073, 'MATEUS VELOSO MARCIA', '1964-10-15', 17);
INSERT INTO pessoa VALUES (6237179943, 58558, 'VALDEIR MACEDO CARVALHO', '1936-09-18', 941);
INSERT INTO pessoa VALUES (99982518635, 5931, 'MARIA ALVES MIRANDA', '1973-09-05', 19);
INSERT INTO pessoa VALUES (59675096117, 1579, 'ADRIANE BARBOSA BARROZO', '1974-03-24', 10);
INSERT INTO pessoa VALUES (28544622752, 48513, 'ESTER DIAS COSTA', '1974-07-24', 17);
INSERT INTO pessoa VALUES (49379616666, 94614, 'IDAIR OLIVEIRA IRENE', '1937-04-13', 17);
INSERT INTO pessoa VALUES (72906762643, 81804, 'JOAO SILVA SOUZA', '1968-10-17', 6);
INSERT INTO pessoa VALUES (64942609961, 27800, 'AMERICO MIRALHA CELESTINO', '1964-08-24', 19);
INSERT INTO pessoa VALUES (99980680460, 61219, 'JOSE SILVA RABELO', '1971-04-12', 78);
INSERT INTO pessoa VALUES (99974799908, 66116, 'DELCINEI SILVA RODRIGUES', '1958-04-08', 600);
INSERT INTO pessoa VALUES (84419558125, 44698, 'DIVINO FILHO LEITE', '1952-01-10', 17);
INSERT INTO pessoa VALUES (99957496901, 73106, 'DIVINA PACHECO ALMEIDA', '1947-12-31', 17);
INSERT INTO pessoa VALUES (56211937954, 40125, 'ANDERSON REIS ALVES', '1970-08-06', 490);
INSERT INTO pessoa VALUES (4116235183, 33018, 'ALBANI TORRES SOARES', '1949-06-19', 219);
INSERT INTO pessoa VALUES (99979070587, 2537, 'ISAURINA REIS SANTOS', '1964-12-25', 274);
INSERT INTO pessoa VALUES (63621780019, 51625, 'ALESSANDRA LEAL MENDES', '1973-01-23', 47);
INSERT INTO pessoa VALUES (59246869246, 58224, 'NILZENE RASMUSSEN ARAUJO', '1974-06-01', 10);
INSERT INTO pessoa VALUES (99975466961, 71851, 'BENEDITO SILVA CASTRO', '1968-07-14', 17);
INSERT INTO pessoa VALUES (81218146322, 58289, 'MARLENE SILVA TEODORO', '1974-05-10', 68);
INSERT INTO pessoa VALUES (60736342690, 36595, 'GILZE SILVA NEVES', '1966-06-24', 17);
INSERT INTO pessoa VALUES (99953893938, 88542, 'MARIA SOARES PEREIRA', '1967-03-20', 12);
INSERT INTO pessoa VALUES (58900728159, 41073, 'MARCILENE CRUZ RODRIGUES', '1981-11-12', 35);
INSERT INTO pessoa VALUES (54459479953, 22580, 'BRASIL CONCEICAO BORGES', '1965-02-04', 202);
INSERT INTO pessoa VALUES (99948065459, 34084, 'MARCELO PEREIRA MATA', '1973-05-19', 17);
INSERT INTO pessoa VALUES (99972430947, 31199, 'MARIA COSTA BORGES', '1974-08-07', 1);
INSERT INTO pessoa VALUES (55371473144, 42339, 'CINTHIA MELO PACHECO', '1967-05-11', 1207);
INSERT INTO pessoa VALUES (99948852054, 85658, 'IOLANDA AZEVEDO SILVA', '1966-12-04', 488);
INSERT INTO pessoa VALUES (6065222433, 65912, 'FABIO OLIVEIRA JOSE', '1949-03-29', 17);
INSERT INTO pessoa VALUES (46434529106, 48998, 'LAZO SILVA BASSO', '1972-09-28', 35);
INSERT INTO pessoa VALUES (99972677000, 77237, 'MARCILENE GALINDO RIBEIRO', '1974-07-28', 17);
INSERT INTO pessoa VALUES (75262372636, 93659, 'RAIMUNDO RIBEIRO ANTONIO', '1957-11-09', 1536);
INSERT INTO pessoa VALUES (99981402869, 53491, 'DIVINO SILVA NUNES', '1966-05-21', 1);
INSERT INTO pessoa VALUES (53010607655, 72803, 'GILCELIA MACHADO MARCOLINO', '1969-04-23', 43);
INSERT INTO pessoa VALUES (99988060294, 98435, 'JOAO ROLIM SOARES', '1932-09-04', 588);
INSERT INTO pessoa VALUES (51589611568, 23014, 'MARIA ARAUJO GONCALVES', '1954-02-21', 280);
INSERT INTO pessoa VALUES (98064717597, 24873, 'ANA PESSONE CARDOSO', '1931-10-16', 85);
INSERT INTO pessoa VALUES (33212575126, 48990, 'VALDIVINO VIEIRA FERREIRA', '1968-11-02', 576);
INSERT INTO pessoa VALUES (43169889122, 12040, 'JARDECI BARBOSA MARQUES', '1969-06-26', 1554);
INSERT INTO pessoa VALUES (24365596848, 98104, 'ADAILTON SOUZA SANTOS', '1934-06-30', 49);
INSERT INTO pessoa VALUES (1903921812, 78781, 'JERONIMO SANTOS CANDIDA', '1971-08-05', 4);
INSERT INTO pessoa VALUES (8336775141, 2683, 'MARIA SANTOS MARIA', '1987-01-13', 123);
INSERT INTO pessoa VALUES (11604830179, 15267, 'MARIA FIGUEREDO FIRMIANO', '1939-04-14', 125);
INSERT INTO pessoa VALUES (82515673893, 35981, 'ADEMAR CAMARGOS PINHEIRO', '1970-04-13', 1891);
INSERT INTO pessoa VALUES (4915867442, 77949, 'JEOVA PEREIRA MARTINS', '1960-02-06', 17);
INSERT INTO pessoa VALUES (80050121626, 65877, 'ITAMAR BRITO ALMEIDA', '1948-10-31', 707);
INSERT INTO pessoa VALUES (95805403879, 2640, 'FLAVIA SILVA SOUSA', '1935-08-15', 17);
INSERT INTO pessoa VALUES (99966703775, 85767, 'UVALISTELES ALMEIDA FRANCO', '1969-02-18', 12);
INSERT INTO pessoa VALUES (1683729219, 87131, 'MARIUZA SILVA LUCIA', '1969-10-02', 17);
INSERT INTO pessoa VALUES (5951737809, 95422, 'JOAO CARVALHO APARECIDA', '1971-12-02', 1464);
INSERT INTO pessoa VALUES (89258654834, 52517, 'EDELTRUDES ALMEIDA OLIVEIRA', '1945-07-02', 188);
INSERT INTO pessoa VALUES (33320303881, 78854, 'AILTON SOUSA FRANCA', '1975-11-29', 1995);
INSERT INTO pessoa VALUES (74651565238, 24419, 'LUCIOMAR SILVA CANDIDO', '1971-05-28', 1);
INSERT INTO pessoa VALUES (98005411946, 52881, 'MARCOS ROZALINO VIANA', '1974-03-31', 381);
INSERT INTO pessoa VALUES (21235352001, 72142, 'FELISBERTO CAETANO DEUSDETE', '1930-08-16', 8);
INSERT INTO pessoa VALUES (80008607684, 85744, 'LUIZ SANTOS ELIAS', '1970-08-15', 277);
INSERT INTO pessoa VALUES (99949569118, 90222, 'VINICIUS COELHO OLIVEIRA', '1996-03-15', 26);
INSERT INTO pessoa VALUES (1652053251, 74516, 'ADELINA SILVA MARIA', '1975-03-10', 17);
INSERT INTO pessoa VALUES (99981534179, 62045, 'PAULO DELFINO MAGALHAES', '1969-11-06', 277);
INSERT INTO pessoa VALUES (99977782624, 72303, 'TIAGO VIEIRA GOMES', '1966-06-10', 289);
INSERT INTO pessoa VALUES (86095790075, 63785, 'LEANDRO SILVA LISBOA', '1972-10-29', 17);
INSERT INTO pessoa VALUES (84596631407, 85662, 'GIRLENY VIEIRA CARDOSO', '1924-09-20', 93);
INSERT INTO pessoa VALUES (38188681084, 98653, 'CARMELIA OLIVEIRA RODRIGUES', '1963-06-13', 8);
INSERT INTO pessoa VALUES (4975487531, 31105, 'MARIA CEDRO SEBASTIAO', '1954-01-12', 145);
INSERT INTO pessoa VALUES (77175850393, 86631, 'GLEDESTON VIEIRA SANTOS', '1970-05-01', 88);
INSERT INTO pessoa VALUES (35938495284, 12200, 'DIVINO CARVALHO ANJOS', '1960-06-29', 1327);
INSERT INTO pessoa VALUES (99979138519, 33897, 'JACQUELINE CALDEIRA DIVINA', '1968-03-08', 20);
INSERT INTO pessoa VALUES (29919660295, 59844, 'CARLOS COSTA COSME', '1924-11-04', 107);
INSERT INTO pessoa VALUES (99946882290, 52920, 'WALTER NEVES MENDONCA', '1944-07-10', 84);
INSERT INTO pessoa VALUES (50772117645, 67585, 'MARIA SANTOS REGIS', '1979-07-12', 97);
INSERT INTO pessoa VALUES (73242013672, 48143, 'ANA FARIA LUCIA', '1966-05-24', 17);
INSERT INTO pessoa VALUES (99950144524, 93058, 'MARCIO SANT ANNA FATIMA', '1964-10-19', 6);
INSERT INTO pessoa VALUES (37506635099, 2359, 'IVANI SILVA LINO', '1963-10-14', 45);
INSERT INTO pessoa VALUES (99945851395, 16941, 'WALDEMAR GUERREIRO BAIA', '1974-09-01', 338);
INSERT INTO pessoa VALUES (12062788246, 68029, 'EDVALDO NEVES ALVES', '1972-02-23', 436);
INSERT INTO pessoa VALUES (99986306752, 45377, 'EDSON OLIVEIRA RAMOS', '1974-04-08', 17);
INSERT INTO pessoa VALUES (767751556, 10572, 'GILMAR TEIXEIRA MATOS', '1948-03-24', 17);
INSERT INTO pessoa VALUES (57160629574, 46438, 'METHUSAEL SANTOS DIAS', '1965-06-16', 394);
INSERT INTO pessoa VALUES (5402647067, 19031, 'ELAINE GARCIA SOUZA', '1966-06-10', 191);
INSERT INTO pessoa VALUES (97971190178, 6687, 'PRISCILLA ALVES SOUSA', '1938-04-19', 13);
INSERT INTO pessoa VALUES (6854285955, 13998, 'JOAQUIM RODRIGUES CESAR', '1944-05-12', 17);
INSERT INTO pessoa VALUES (55165410444, 70066, 'CARLOS SOUZA LOPES', '1971-07-28', 914);
INSERT INTO pessoa VALUES (95084756868, 31122, 'RAILDA MOURA LEAL', '1972-04-25', 167);
INSERT INTO pessoa VALUES (99961254090, 18727, 'ALEXANDRE VIANA ALVES', '1971-10-08', 1298);
INSERT INTO pessoa VALUES (30565506462, 51767, 'VANDEIR OLIVEIRA ADRIANO', '1970-05-04', 148);
INSERT INTO pessoa VALUES (96887677708, 78879, 'WILLIAN OLIVEIRA SEBASTIAO', '1974-09-16', 17);
INSERT INTO pessoa VALUES (5360882851, 94038, 'SERGIO SANTOS CALIXTO', '1969-08-26', 170);
INSERT INTO pessoa VALUES (94199108120, 13440, 'JOSE VIDAL MADALENA', '1976-03-09', 4);
INSERT INTO pessoa VALUES (21276398036, 7056, 'WILMA SOUZA CORREA', '1964-12-25', 317);
INSERT INTO pessoa VALUES (99956139569, 50589, 'DEUSMAIR SILVA MENDES', '1972-02-19', 12);
INSERT INTO pessoa VALUES (99971583088, 12515, 'MAURO FONSECA HELENA', '1952-11-14', 10);
INSERT INTO pessoa VALUES (36068292175, 20962, 'RAIMUNDO ROSA SILVA', '1947-06-18', 17);
INSERT INTO pessoa VALUES (59409901226, 27523, 'LUCIOLA VIEIRA LUIZ', '1964-06-17', 2297);
INSERT INTO pessoa VALUES (43986664042, 53074, 'TEREZINHA NASCIMENTO BANDEIRA', '1971-01-20', 123);
INSERT INTO pessoa VALUES (28550265529, 68008, 'ADRIANO SILVA ROSSI', '1975-08-13', 242);
INSERT INTO pessoa VALUES (85380703772, 84393, 'JOSE GONCALVES VIEIRA', '1973-10-10', 17);
INSERT INTO pessoa VALUES (65485525863, 96339, 'ARCENIA SOUSA SILVA', '1972-07-01', 1780);
INSERT INTO pessoa VALUES (47415512495, 87817, 'MIRACI COSTA CESAR', '1972-09-10', 310);
INSERT INTO pessoa VALUES (71446448178, 75689, 'FRANCISCA LOPES JESUS', '1973-12-17', 17);
INSERT INTO pessoa VALUES (80991221311, 13261, 'JAQUES SANTOS ODORICO', '1966-04-08', 1125);
INSERT INTO pessoa VALUES (90170592985, 14770, 'RAIMUNDO SANTOS TOLEDO', '1970-11-08', 1303);
INSERT INTO pessoa VALUES (99993010251, 34822, 'HANDREY JESUS OVIDIO', '1973-09-02', 4);
INSERT INTO pessoa VALUES (13801022447, 55025, 'LUCIANA OTONI APARECIDA', '1960-08-14', 110);
INSERT INTO pessoa VALUES (74054545141, 24602, 'ANNIHANDERSON PAULA LOPES', '1953-01-16', 48);
INSERT INTO pessoa VALUES (88739458626, 68422, 'WALNOISA SILVA GOMES', '1965-09-28', 42);
INSERT INTO pessoa VALUES (76040886753, 79513, 'GERALDO CAETANO SILVINO', '1948-05-24', 51);
INSERT INTO pessoa VALUES (99042385982, 18055, 'OCOZIAS RIBEIRO CARLOS', '1955-06-10', 193);
INSERT INTO pessoa VALUES (52368530201, 51036, 'JOSE OLIVEIRA CECILIA', '1967-07-18', 75);
INSERT INTO pessoa VALUES (21273455861, 26560, 'ILDEMAR SANTOS JOSE', '1971-05-26', 522);


--
-- Data for Name: projeto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO projeto VALUES (23, 'Sistema de Eleição', 3, 48439582);
INSERT INTO projeto VALUES (5, 'Sistema de Votação', 15, 5478337);
INSERT INTO projeto VALUES (24, 'Sistema de Posse', 3, 7513374);
INSERT INTO projeto VALUES (13, 'Sistema de Fiscalização Fiscal', 12, 67067121);
INSERT INTO projeto VALUES (30, 'Sistema de Controle Patrimonial', 4, 62844908);
INSERT INTO projeto VALUES (18, 'Sistema de Vigilância', 2, 42570779);
INSERT INTO projeto VALUES (29, 'Sistema de Doaçoes', 7, 55649930);
INSERT INTO projeto VALUES (15, 'Sistema de Licenças', 8, 22703018);
INSERT INTO projeto VALUES (25, 'Sistema de Concursos', 15, 92837515);
INSERT INTO projeto VALUES (21, 'Sistema de Atendimento Médico', 1, 80348020);
INSERT INTO projeto VALUES (27, 'Sistema Gerenciador de Documentos', 8, 81639632);
INSERT INTO projeto VALUES (22, 'Sistema de Acessos', 7, 49080166);
INSERT INTO projeto VALUES (8, 'Sistema de Transportes', 1, 28702302);
INSERT INTO projeto VALUES (19, 'Sistema de Monitoramento de Containers', 16, 55076702);
INSERT INTO projeto VALUES (14, 'Sistema de Declaração de Imposto de Renda', 15, 25602225);
INSERT INTO projeto VALUES (28, 'Sistema de Bibliotecas', 4, 19932355);
INSERT INTO projeto VALUES (12, 'Sistema de Fiscalização de Trânsito', 13, 3579992);
INSERT INTO projeto VALUES (3, 'Sistema de Ponto', 17, 79410345);
INSERT INTO projeto VALUES (20, 'Sistema de Promoções', 4, 74047391);
INSERT INTO projeto VALUES (2, 'Sistema de Compras', 2, 45980089);
INSERT INTO projeto VALUES (10, 'Sistema de Ensino e Capacitação', 11, 48790473);
INSERT INTO projeto VALUES (6, 'Sistema de Programação de Férias', 6, 50749150);
INSERT INTO projeto VALUES (11, 'Sistema de Análise de Dados', 7, 33328105);
INSERT INTO projeto VALUES (16, 'Sistema de Processos', 5, 43838330);
INSERT INTO projeto VALUES (7, 'Sistema de Talentos', 8, 66220812);
INSERT INTO projeto VALUES (4, 'Sistema de Licitação', 14, 21523297);
INSERT INTO projeto VALUES (9, 'Sistema de Folha de Pagamento', 12, 28995478);
INSERT INTO projeto VALUES (1, 'Sistema de RH', 8, 98852929);
INSERT INTO projeto VALUES (17, 'Sistema de Almoxerifado', 2, 52205882);
INSERT INTO projeto VALUES (26, 'Sistema de Publicação de Diários', 6, 63942996);


--
-- Name: projeto_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('projeto_codigo_seq', 1, false);


--
-- Data for Name: telefone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO telefone VALUES (54948334673, '1518-9125');
INSERT INTO telefone VALUES (13615488294, '9253-1094');
INSERT INTO telefone VALUES (85024963638, '0059-7029');
INSERT INTO telefone VALUES (76020034645, '4271-8039');
INSERT INTO telefone VALUES (40733765838, '9801-9161');
INSERT INTO telefone VALUES (40733765838, '9590-2922');
INSERT INTO telefone VALUES (21302324648, '2318-1277');
INSERT INTO telefone VALUES (40733765838, '7138-6691');
INSERT INTO telefone VALUES (99943877375, '0173-0704');
INSERT INTO telefone VALUES (99943877375, '4862-6386');
INSERT INTO telefone VALUES (76020034645, '7892-9463');
INSERT INTO telefone VALUES (99946580800, '6180-4822');
INSERT INTO telefone VALUES (99989856277, '8548-9709');
INSERT INTO telefone VALUES (85024963638, '8502-0648');
INSERT INTO telefone VALUES (83601630114, '3337-6605');
INSERT INTO telefone VALUES (85024963638, '1281-5986');
INSERT INTO telefone VALUES (54948334673, '3846-1106');
INSERT INTO telefone VALUES (40733765838, '6470-0803');
INSERT INTO telefone VALUES (76020034645, '1820-4556');
INSERT INTO telefone VALUES (83601630114, '5490-5979');
INSERT INTO telefone VALUES (40733765838, '4300-3279');
INSERT INTO telefone VALUES (76020034645, '7579-4065');
INSERT INTO telefone VALUES (93683391241, '8550-6986');
INSERT INTO telefone VALUES (44109533037, '8467-1030');
INSERT INTO telefone VALUES (44109533037, '6889-0823');
INSERT INTO telefone VALUES (99943877375, '4176-2959');
INSERT INTO telefone VALUES (83601630114, '5065-6089');
INSERT INTO telefone VALUES (99946580800, '4189-3185');
INSERT INTO telefone VALUES (21302324648, '9546-5904');
INSERT INTO telefone VALUES (99946580800, '1336-6881');
INSERT INTO telefone VALUES (76020034645, '0120-7076');
INSERT INTO telefone VALUES (85024963638, '5604-0419');
INSERT INTO telefone VALUES (93683391241, '8534-3840');
INSERT INTO telefone VALUES (93683391241, '4017-6277');
INSERT INTO telefone VALUES (99988046873, '0183-0096');
INSERT INTO telefone VALUES (76020034645, '4880-3290');
INSERT INTO telefone VALUES (83601630114, '8997-7075');
INSERT INTO telefone VALUES (19251615012, '6868-7683');
INSERT INTO telefone VALUES (13615488294, '4486-6756');
INSERT INTO telefone VALUES (99988046873, '2147-9000');
INSERT INTO telefone VALUES (40733765838, '5860-9693');
INSERT INTO telefone VALUES (54948334673, '5430-0010');
INSERT INTO telefone VALUES (44109533037, '6209-4794');
INSERT INTO telefone VALUES (767751556, ' 5457-2540');
INSERT INTO telefone VALUES (2203673380, ' 3363-0809');
INSERT INTO telefone VALUES (4697450721, ' 2112-8276');
INSERT INTO telefone VALUES (11493425289, ' 2859-0000');
INSERT INTO telefone VALUES (19294345588, ' 9590-5468');
INSERT INTO telefone VALUES (29919660295, ' 4047-7799');
INSERT INTO telefone VALUES (30565506462, ' 9605-9662');
INSERT INTO telefone VALUES (32345427113, ' 8833-3997');
INSERT INTO telefone VALUES (42565273394, ' 3086-2350');
INSERT INTO telefone VALUES (45315873582, ' 5369-6601');
INSERT INTO telefone VALUES (57160629574, ' 1396-5556');
INSERT INTO telefone VALUES (59220986159, ' 4864-6861');
INSERT INTO telefone VALUES (59675096117, ' 6816-8962');
INSERT INTO telefone VALUES (69769796456, ' 2193-5661');
INSERT INTO telefone VALUES (71318287280, ' 6488-1267');
INSERT INTO telefone VALUES (71446448178, ' 4110-6059');
INSERT INTO telefone VALUES (71523816197, ' 1369-5659');
INSERT INTO telefone VALUES (74054545141, ' 6700-9668');
INSERT INTO telefone VALUES (75262372636, ' 2315-4597');
INSERT INTO telefone VALUES (76040886753, ' 1607-9931');
INSERT INTO telefone VALUES (80008607684, ' 0791-4552');
INSERT INTO telefone VALUES (80050121626, ' 9776-5329');
INSERT INTO telefone VALUES (87053852893, ' 9858-1701');
INSERT INTO telefone VALUES (91730489504, ' 1954-7933');
INSERT INTO telefone VALUES (95805403879, ' 2979-2193');
INSERT INTO telefone VALUES (98005411946, ' 1016-4366');
INSERT INTO telefone VALUES (70670748486, ' 8913-1410');
INSERT INTO telefone VALUES (72470822293, ' 4750-8046');
INSERT INTO telefone VALUES (80991221311, ' 9307-0991');
INSERT INTO telefone VALUES (87468044065, ' 3105-0786');
INSERT INTO telefone VALUES (87468044065, ' 9561-0781');
INSERT INTO telefone VALUES (87468044065, ' 7623-3533');
INSERT INTO telefone VALUES (87468044065, ' 6058-7064');
INSERT INTO telefone VALUES (87468044065, ' 3608-8580');
INSERT INTO telefone VALUES (87468044065, ' 7229-3195');
INSERT INTO telefone VALUES (87468044065, ' 4892-1061');
INSERT INTO telefone VALUES (87468044065, ' 6695-0931');
INSERT INTO telefone VALUES (87468044065, ' 2598-9797');
INSERT INTO telefone VALUES (87468044065, ' 6288-6617');
INSERT INTO telefone VALUES (87468044065, ' 1559-7792');
INSERT INTO telefone VALUES (87468044065, ' 9415-8759');
INSERT INTO telefone VALUES (87468044065, ' 8482-2278');
INSERT INTO telefone VALUES (87468044065, ' 8047-9060');
INSERT INTO telefone VALUES (87468044065, ' 3526-4818');
INSERT INTO telefone VALUES (87468044065, ' 9851-7938');
INSERT INTO telefone VALUES (87468044065, ' 4748-8730');
INSERT INTO telefone VALUES (87468044065, ' 5841-9417');
INSERT INTO telefone VALUES (87468044065, ' 1459-7870');
INSERT INTO telefone VALUES (87468044065, ' 5540-3282');
INSERT INTO telefone VALUES (87468044065, ' 5618-4746');
INSERT INTO telefone VALUES (87468044065, ' 1317-9571');
INSERT INTO telefone VALUES (87468044065, ' 7495-1216');
INSERT INTO telefone VALUES (87468044065, ' 8597-6940');
INSERT INTO telefone VALUES (87468044065, ' 2334-3938');
INSERT INTO telefone VALUES (87468044065, ' 6408-2627');
INSERT INTO telefone VALUES (87468044065, ' 3348-4986');
INSERT INTO telefone VALUES (87468044065, ' 1641-4930');


--
-- Name: cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE cargo
    ADD CONSTRAINT cargo_pkey PRIMARY KEY (id);


--
-- Name: funcionario_fk_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_fk_cpf_key UNIQUE (fk_pessoa);


--
-- Name: funcionario_matricula_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_matricula_key UNIQUE (matricula);


--
-- Name: funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (matricula);


--
-- Name: funcionario_projeto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE funcionario_projeto
    ADD CONSTRAINT funcionario_projeto_pkey PRIMARY KEY (fk_funcionario, fk_projeto);


--
-- Name: municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- Name: orgao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE orgao
    ADD CONSTRAINT orgao_pkey PRIMARY KEY (id);


--
-- Name: pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (cpf);


--
-- Name: projeto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE projeto
    ADD CONSTRAINT projeto_pkey PRIMARY KEY (codigo);


--
-- Name: telefone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE telefone
    ADD CONSTRAINT telefone_pkey PRIMARY KEY (fk_pessoa, numero);


--
-- Name: pessoa_cpf_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX pessoa_cpf_idx ON pessoa USING btree (cpf);


--
-- Name: projeto_codigo_idx; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX projeto_codigo_idx ON projeto USING btree (codigo);


--
-- Name: funcionario_fk_cargo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_fk_cargo_fkey FOREIGN KEY (fk_cargo) REFERENCES cargo(id);


--
-- Name: funcionario_fk_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_fk_cpf_fkey FOREIGN KEY (fk_pessoa) REFERENCES pessoa(cpf);


--
-- Name: funcionario_fk_orgao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE funcionario
    ADD CONSTRAINT funcionario_fk_orgao_fkey FOREIGN KEY (fk_orgao) REFERENCES orgao(id);


--
-- Name: funcionario_projeto_fk_funcionario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE funcionario_projeto
    ADD CONSTRAINT funcionario_projeto_fk_funcionario_fkey FOREIGN KEY (fk_funcionario) REFERENCES funcionario(matricula);


--
-- Name: funcionario_projeto_fk_projeto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE funcionario_projeto
    ADD CONSTRAINT funcionario_projeto_fk_projeto_fkey FOREIGN KEY (fk_projeto) REFERENCES projeto(codigo);


--
-- Name: orgao_fk_municipio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE orgao
    ADD CONSTRAINT orgao_fk_municipio_fkey FOREIGN KEY (fk_municipio) REFERENCES municipio(id);


--
-- Name: pessoa_municipio_nascimento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE pessoa
    ADD CONSTRAINT pessoa_municipio_nascimento_fkey FOREIGN KEY (fk_municipio_nascimento) REFERENCES municipio(id);


--
-- Name: projeto_fk_funcionario_coordenador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE projeto
    ADD CONSTRAINT projeto_fk_funcionario_coordenador_fkey FOREIGN KEY (fk_funcionario_coordenador) REFERENCES funcionario(matricula);


--
-- Name: projeto_fk_orgao_responsavel_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE projeto
    ADD CONSTRAINT projeto_fk_orgao_responsavel_fkey FOREIGN KEY (fk_orgao_responsavel) REFERENCES orgao(id);


--
-- Name: telefone_fk_cpf_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE telefone
    ADD CONSTRAINT telefone_fk_cpf_fkey FOREIGN KEY (fk_pessoa) REFERENCES pessoa(cpf);

