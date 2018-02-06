--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.5.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ntp_table; Type: TABLE; Schema: ccdd; Owner: postgres
--

-- CREATE TABLE ccdd.ntp_table (
--     ntp_formal_name text,
--     ccdd boolean,
--     n_mp integer,
--     "greater_than_5_AIs" boolean,
--     ntp_status_effective_time date,
--     ntp_code integer NOT NULL,
--     en_display boolean,
--     fr_display boolean,
--     audit_id bigint NOT NULL
-- );


-- ALTER TABLE ccdd.ntp_table OWNER TO postgres;

--
-- Data for Name: ntp_table; Type: TABLE DATA; Schema: ccdd; Owner: postgres
--

COPY ccdd.ntp_table (ntp_formal_name, ccdd, n_mp, "greater_than_5_AIs", ntp_status_effective_time, ntp_code, en_display, fr_display, audit_id) FROM stdin;
meperidine hydrochloride 50 mg oral tablet	t	1	f	1944-12-31	9000001	\N	\N	14161
levothyroxine sodium 50 mcg oral tablet	t	2	f	1951-12-30	9000002	\N	\N	14162
epinephrine (epinephrine hydrochloride) 1 mg per 1 mL solution for injection ampoule	t	1	f	1951-12-31	9000003	\N	\N	14163
epinephrine (epinephrine hydrochloride) 1 mg per mL nasal spray	t	1	f	1951-12-31	9000004	\N	\N	14164
epinephrine (epinephrine hydrochloride) 30 mg per 30 mL solution for injection ampoule	t	1	f	1951-12-31	9000005	\N	\N	14165
phenytoin sodium 100 mg oral capsule	t	2	f	1951-12-31	9000006	\N	\N	14166
phenytoin sodium 30 mg oral capsule	t	1	f	1951-12-31	9000007	\N	\N	14167
phenytoin 50 mg oral tablet	t	1	f	1952-12-31	9000008	\N	\N	14168
phenytoin 125 mg per 5 mL oral suspension	t	2	f	1953-12-31	9000009	\N	\N	14169
testosterone cypionate 1000 mg per 10 mL solution for injection vial	t	2	f	1953-12-31	9000010	\N	\N	14170
hydrocortisone 10 mg oral tablet	t	1	f	1954-12-31	9000011	\N	\N	14171
hydrocortisone 20 mg oral tablet	t	1	f	1954-12-31	9000012	\N	\N	14172
testosterone enanthate 1000 mg per 5 mL solution for injection ampoule	t	1	f	1955-12-31	9000013	\N	\N	14173
hydroxyzine hydrochloride 10 mg per 5 mL syrup	t	2	f	1956-12-31	9000014	\N	\N	14174
methylphenidate hydrochloride 10 mg oral tablet	t	6	f	1956-12-31	9000015	\N	\N	14175
hydrocodone 5 mg and phenyltoloxamine 10 mg prolonged-release oral tablet	t	1	f	1957-12-31	9000016	\N	\N	14176
hydrocodone 5 mg per 5 mL and phenyltoloxamine 10 mg per 5 mL oral suspension	t	1	f	1957-12-31	9000017	\N	\N	14177
hydroxychloroquine sulfate 200 mg oral tablet	t	5	f	1957-12-31	9000018	\N	\N	14178
warfarin sodium 10 mg oral tablet	t	3	f	1957-12-31	9000019	\N	\N	14179
warfarin sodium 1 mg oral tablet	t	3	f	1957-12-31	9000020	\N	\N	14180
warfarin sodium 5 mg oral tablet	t	3	f	1957-12-31	9000021	\N	\N	14181
hydrocortisone (hydrocortisone sodium succinate) 100 mg per vial powder for solution for injection	t	2	f	1958-12-31	9000022	\N	\N	14182
methylphenidate hydrochloride 20 mg oral tablet	t	6	f	1958-12-31	9000023	\N	\N	14183
prednisone 5 mg oral tablet	t	4	f	1959-12-31	9000024	\N	\N	14184
spironolactone 25 mg oral tablet	t	2	f	1959-12-31	9000025	\N	\N	14185
medroxyprogesterone acetate 250 mg per 5 mL suspension for injection vial	t	1	f	1960-12-31	9000026	\N	\N	14186
medroxyprogesterone acetate 5 mg oral tablet	t	4	f	1961-12-31	9000027	\N	\N	14187
norethindrone acetate 5 mg oral tablet	t	1	f	1961-12-31	9000028	\N	\N	14188
hydrocortisone (hydrocortisone sodium succinate) 250 mg per vial powder for solution for injection	t	2	f	1962-12-31	9000029	\N	\N	14189
conjugated estrogens 0.625 mg oral tablet	t	4	f	1963-12-31	9000030	\N	\N	14190
acetaminophen 300 mg and caffeine 15 mg and codeine phosphate 15 mg oral tablet	t	2	f	1964-12-31	9000031	\N	\N	14191
acetaminophen 300 mg and caffeine 15 mg and codeine phosphate 30 mg oral tablet	t	2	f	1964-12-31	9000032	\N	\N	14192
amitriptyline hydrochloride 10 mg oral tablet	t	11	f	1965-12-31	9000033	\N	\N	14193
nortriptyline (nortriptyline hydrochloride) 10 mg oral capsule	t	4	f	1965-12-31	9000034	\N	\N	14194
nortriptyline (nortriptyline hydrochloride) 25 mg oral capsule	t	4	f	1965-12-31	9000035	\N	\N	14195
azathioprine 50 mg oral tablet	t	6	f	1966-12-31	9000036	\N	\N	14196
dexamethasone 0.1 % ophthalmic ointment	t	1	f	1966-12-31	9000037	\N	\N	14197
hydrocortisone (hydrocortisone sodium succinate) 500 mg per vial powder for solution for injection	t	2	f	1966-12-31	9000038	\N	\N	14198
quinine sulfate 200 mg oral capsule	t	5	f	1966-12-31	9000039	\N	\N	14199
quinine sulfate 300 mg oral capsule	t	5	f	1966-12-31	9000040	\N	\N	14200
triamcinolone acetonide 50 mg per 5 mL suspension for injection vial	t	2	f	1966-12-31	9000041	\N	\N	14201
hydrocortisone (hydrocortisone sodium succinate) 1 g per vial powder for solution for injection	t	2	f	1967-12-31	9000042	\N	\N	14202
hydrochlorothiazide 25 mg oral tablet	t	8	f	1968-12-31	9000043	\N	\N	14203
hydrochlorothiazide 50 mg oral tablet	t	7	f	1968-12-31	9000044	\N	\N	14204
phenytoin 30 mg per 5 mL oral suspension	t	1	f	1968-12-31	9000045	\N	\N	14205
amitriptyline hydrochloride 50 mg oral tablet	t	11	f	1969-12-31	9000046	\N	\N	14206
carbamazepine 200 mg oral tablet	t	6	f	1969-12-31	9000047	\N	\N	14207
clindamycin (clindamycin hydrochloride) 150 mg oral capsule	t	6	f	1970-12-31	9000048	\N	\N	14208
erythromycin (erythromycin estolate) 125 mg per 5 mL oral suspension	t	1	f	1970-12-31	9000049	\N	\N	14209
metronidazole 10 % vaginal cream	t	1	f	1970-12-31	9000050	\N	\N	14210
pentazocine (pentazocine hydrochloride) 50 mg oral tablet	t	1	f	1970-12-31	9000051	\N	\N	14211
cephalexin 125 mg per 5 mL powder for oral suspension	t	2	f	1971-12-31	9000052	\N	\N	14212
cephalexin 250 mg per 5 mL powder for oral suspension	t	2	f	1971-12-31	9000053	\N	\N	14213
lithium carbonate 300 mg oral capsule	t	4	f	1971-12-31	9000054	\N	\N	14214
metronidazole 250 mg oral tablet	t	3	f	1971-12-31	9000055	\N	\N	14215
amitriptyline hydrochloride 25 mg oral tablet	t	11	f	1972-12-31	9000056	\N	\N	14216
cephalexin 500 mg oral tablet	t	6	f	1972-12-31	9000057	\N	\N	14217
clindamycin (clindamycin palmitate hydrochloride) 75 mg per 5 mL powder for oral solution	t	1	f	1972-12-31	9000058	\N	\N	14218
ibuprofen 200 mg oral tablet	t	16	f	1972-12-31	9000059	\N	\N	14219
nitroglycerin 0.3 mg sublingual tablet	t	1	f	1972-12-31	9000060	\N	\N	14220
nitroglycerin 0.6 mg sublingual tablet	t	1	f	1972-12-31	9000061	\N	\N	14221
norethindrone 0.35 mg oral tablet	t	3	f	1972-12-31	9000062	\N	\N	14222
prednisone 50 mg oral tablet	t	3	f	1972-12-31	9000063	\N	\N	14223
clindamycin (clindamycin phosphate) 300 mg per 2 mL solution for injection vial	t	3	f	1973-12-31	9000064	\N	\N	14224
clindamycin (clindamycin phosphate) 600 mg per 4 mL solution for injection vial	t	3	f	1973-12-31	9000065	\N	\N	14225
clindamycin (clindamycin phosphate) 9000 mg per 60 mL solution for injection vial	t	2	f	1973-12-31	9000066	\N	\N	14226
clindamycin (clindamycin phosphate) 900 mg per 6 mL solution for injection vial	t	3	f	1973-12-31	9000067	\N	\N	14227
erythromycin (erythromycin estolate) 250 mg per 5 mL oral suspension	t	1	f	1973-12-31	9000068	\N	\N	14228
oxycodone hydrochloride 10 mg suppository	t	1	f	1973-12-31	9000069	\N	\N	14229
oxycodone hydrochloride 20 mg suppository	t	1	f	1973-12-31	9000070	\N	\N	14230
triamcinolone acetonide 200 mg per 5 mL suspension for injection vial	t	3	f	1973-12-31	9000071	\N	\N	14231
triamcinolone acetonide 40 mg per 1 mL suspension for injection vial	t	2	f	1973-12-31	9000072	\N	\N	14232
allopurinol 300 mg oral tablet	t	6	f	1974-12-31	9000073	\N	\N	14233
colchicine 0.6 mg oral tablet	t	4	f	1974-12-31	9000074	\N	\N	14234
diazepam 5 mg oral tablet	t	5	f	1974-12-31	9000075	\N	\N	14235
ethinyl estradiol 0.035 mg and norethindrone 0.5 mg oral tablet	t	4	f	1974-12-31	9000076	\N	\N	14236
ethinyl estradiol 30 mcg and norethindrone acetate 1.5 mg oral tablet	t	2	f	1974-12-31	9000077	\N	\N	14237
levothyroxine sodium 150 mcg oral tablet	t	2	f	1974-12-31	9000078	\N	\N	14238
nitrofurantoin 100 mg oral tablet	t	1	f	1974-12-31	9000079	\N	\N	14239
nitrofurantoin 50 mg oral tablet	t	1	f	1974-12-31	9000080	\N	\N	14240
prednisolone acetate 0.12 % ophthalmic drops	t	2	f	1974-12-31	9000081	\N	\N	14241
prednisolone acetate 1 % ophthalmic drops	t	4	f	1974-12-31	9000082	\N	\N	14242
acetaminophen 325 mg and caffeine citrate 30 mg and codeine phosphate 15 mg oral tablet	t	1	f	1975-12-31	9000083	\N	\N	14243
acetaminophen 325 mg and caffeine citrate 30 mg and codeine phosphate 30 mg oral tablet	t	1	f	1975-12-31	9000084	\N	\N	14244
acetaminophen 325 mg and caffeine citrate 30 mg and codeine phosphate 8 mg oral tablet	t	2	f	1975-12-31	9000085	\N	\N	14245
betamethasone (betamethasone dipropionate) 0.05 % cutaneous cream	t	6	f	1975-12-31	9000086	\N	\N	14246
carbidopa 25 mg and levodopa 250 mg oral tablet	t	4	f	1975-12-31	9000087	\N	\N	14247
ethinyl estradiol 20 mcg and norethindrone acetate 1 mg oral tablet	t	2	f	1975-12-31	9000088	\N	\N	14248
folic acid 25 mg oral tablet	t	1	f	1975-12-31	9000089	\N	\N	14249
spironolactone 100 mg oral tablet	t	2	f	1975-12-31	9000090	\N	\N	14250
betamethasone (betamethasone dipropionate) 0.05 % cutaneous ointment	t	6	f	1976-12-31	9000091	\N	\N	14251
furosemide 20 mg oral tablet	t	6	f	1976-12-31	9000092	\N	\N	14252
furosemide 40 mg oral tablet	t	6	f	1976-12-31	9000093	\N	\N	14253
acetaminophen 325 mg and oxycodone hydrochloride 5 mg oral tablet	t	9	f	1977-12-31	9000094	\N	\N	14254
betamethasone (betamethasone dipropionate) 0.05 % lotion	t	7	f	1977-12-31	9000095	\N	\N	14255
cephalexin 250 mg oral tablet	t	5	f	1977-12-31	9000096	\N	\N	14256
clonazepam 0.5 mg oral tablet	t	16	f	1977-12-31	9000097	\N	\N	14257
clonazepam 2 mg oral tablet	t	13	f	1977-12-31	9000098	\N	\N	14258
dexamethasone 0.1 % ophthalmic drops	t	1	f	1977-12-31	9000099	\N	\N	14259
metoprolol tartrate 100 mg oral tablet	t	15	f	1977-12-31	9000100	\N	\N	14260
metoprolol tartrate 50 mg oral tablet	t	15	f	1977-12-31	9000101	\N	\N	14261
penicillin v potassium 500000 unit per 5 mL powder for oral solution	t	1	f	1977-12-31	9000102	\N	\N	14262
acetaminophen 300 mg and codeine phosphate 60 mg oral tablet	t	4	f	1978-12-31	9000103	\N	\N	14263
baclofen 10 mg oral tablet	t	10	f	1978-12-31	9000104	\N	\N	14264
benztropine mesylate 2 mg oral tablet	t	2	f	1978-12-31	9000105	\N	\N	14265
codeine phosphate 0.2 % oral liquid	t	1	f	1978-12-31	9000106	\N	\N	14266
codeine phosphate 30 mg per 1 mL solution for injection ampoule	t	2	f	1978-12-31	9000107	\N	\N	14267
diazepam 10 mg oral tablet	t	4	f	1978-12-31	9000108	\N	\N	14268
folic acid 5 mg oral tablet	t	4	f	1978-12-31	9000109	\N	\N	14269
morphine sulfate 10 mg per mL solution for injection	t	1	f	1978-12-31	9000110	\N	\N	14270
morphine sulfate 15 mg per 1 mL solution for injection ampoule	t	2	f	1978-12-31	9000111	\N	\N	14271
prednisone 1 mg oral tablet	t	3	f	1978-12-31	9000112	\N	\N	14272
valproic acid (sodium valproate) 50 mg per mL oral solution	t	1	f	1978-12-31	9000113	\N	\N	14273
amitriptyline hydrochloride 75 mg oral tablet	t	5	f	1979-12-31	9000114	\N	\N	14274
amoxicillin 125 mg per 5 mL granules for oral suspension	t	3	f	1979-12-31	9000115	\N	\N	14275
amoxicillin 250 mg oral capsule	t	10	f	1979-12-31	9000116	\N	\N	14276
amoxicillin 250 mg per 5 mL granules for oral suspension	t	4	f	1979-12-31	9000117	\N	\N	14277
amoxicillin 500 mg oral capsule	t	11	f	1979-12-31	9000118	\N	\N	14278
betamethasone (betamethasone valerate) 0.05 % cutaneous cream	t	3	f	1979-12-31	9000119	\N	\N	14279
betamethasone (betamethasone valerate) 0.05 % cutaneous ointment	t	2	f	1979-12-31	9000120	\N	\N	14280
betamethasone (betamethasone valerate) 0.1 % lotion	t	5	f	1979-12-31	9000121	\N	\N	14281
betamethasone valerate 0.1 % cutaneous cream	t	1	f	1979-12-31	9000122	\N	\N	14282
calcitriol 0.25 mcg oral capsule	t	2	f	1979-12-31	9000123	\N	\N	14283
calcitriol 0.5 mcg oral capsule	t	2	f	1979-12-31	9000124	\N	\N	14284
carbidopa 10 mg and levodopa 100 mg oral tablet	t	4	f	1979-12-31	9000125	\N	\N	14285
cephalexin 250 mg oral capsule	t	1	f	1979-12-31	9000126	\N	\N	14286
cephalexin 500 mg oral capsule	t	1	f	1979-12-31	9000127	\N	\N	14287
diazepam 2 mg oral tablet	t	3	f	1979-12-31	9000128	\N	\N	14288
hydrochlorothiazide 100 mg oral tablet	t	2	f	1979-12-31	9000129	\N	\N	14289
lithium carbonate 150 mg oral capsule	t	4	f	1979-12-31	9000130	\N	\N	14290
metronidazole 500 mg oral capsule	t	3	f	1979-12-31	9000131	\N	\N	14291
nystatin 100000 unit per g cutaneous cream	t	2	f	1979-12-31	9000132	\N	\N	14292
nystatin 100000 unit per g cutaneous ointment	t	2	f	1979-12-31	9000133	\N	\N	14293
nystatin 25000 unit per g vaginal cream	t	1	f	1979-12-31	9000134	\N	\N	14294
oxazepam 10 mg oral tablet	t	6	f	1979-12-31	9000135	\N	\N	14295
oxazepam 15 mg oral tablet	t	6	f	1979-12-31	9000136	\N	\N	14296
oxazepam 30 mg oral tablet	t	6	f	1979-12-31	9000137	\N	\N	14297
sulfamethoxazole 100 mg and trimethoprim 20 mg oral tablet	t	1	f	1979-12-31	9000138	\N	\N	14298
sulfamethoxazole 400 mg and trimethoprim 80 mg oral tablet	t	2	f	1979-12-31	9000139	\N	\N	14299
sulfamethoxazole 800 mg and trimethoprim 160 mg oral tablet	t	3	f	1979-12-31	9000140	\N	\N	14300
timolol (timolol maleate) 0.5 % ophthalmic drops	t	8	f	1979-12-31	9000141	\N	\N	14301
triamcinolone acetonide 0.025 % cutaneous cream	t	1	f	1979-12-31	9000142	\N	\N	14302
atenolol 50 mg oral tablet	t	16	f	1988-12-31	9000286	\N	\N	14446
triamcinolone acetonide 0.1 % cutaneous cream	t	2	f	1979-12-31	9000143	\N	\N	14303
carbidopa 25 mg and levodopa 100 mg oral tablet	t	6	f	1980-12-31	9000144	\N	\N	14304
diazepam 20 mg per 2 mL solution for injection ampoule	t	3	f	1980-12-31	9000145	\N	\N	14305
diclofenac sodium 50 mg gastro-resistant tablet	t	7	f	1980-12-31	9000146	\N	\N	14306
epinephrine 0.3 mg per 0.3 mL solution for injection syringe	t	2	f	1980-12-31	9000147	\N	\N	14307
ethinyl estradiol 0.035 mg and norethindrone 1 mg oral tablet	t	6	f	1980-12-31	9000148	\N	\N	14308
haloperidol 0.5 mg oral tablet	t	2	f	1980-12-31	9000149	\N	\N	14309
haloperidol 1 mg oral tablet	t	2	f	1980-12-31	9000150	\N	\N	14310
indomethacin 25 mg oral capsule	t	3	f	1980-12-31	9000151	\N	\N	14311
indomethacin 50 mg oral capsule	t	3	f	1980-12-31	9000152	\N	\N	14312
oxycodone hydrochloride 10 mg oral tablet	t	4	f	1980-12-31	9000153	\N	\N	14313
propranolol hydrochloride 10 mg oral tablet	t	3	f	1980-12-31	9000154	\N	\N	14314
propranolol hydrochloride 40 mg oral tablet	t	3	f	1980-12-31	9000155	\N	\N	14315
propranolol hydrochloride 80 mg oral tablet	t	3	f	1980-12-31	9000156	\N	\N	14316
temazepam 15 mg oral capsule	t	5	f	1980-12-31	9000157	\N	\N	14317
temazepam 30 mg oral capsule	t	5	f	1980-12-31	9000158	\N	\N	14318
allopurinol 100 mg oral tablet	t	5	f	1981-12-31	9000159	\N	\N	14319
allopurinol 200 mg oral tablet	t	5	f	1981-12-31	9000160	\N	\N	14320
alprazolam 0.25 mg oral tablet	t	9	f	1981-12-31	9000161	\N	\N	14321
alprazolam 0.5 mg oral tablet	t	9	f	1981-12-31	9000162	\N	\N	14322
betamethasone (betamethasone valerate) 0.1 % cutaneous cream	t	3	f	1981-12-31	9000163	\N	\N	14323
bromazepam 3 mg oral tablet	t	4	f	1981-12-31	9000164	\N	\N	14324
bromazepam 6 mg oral tablet	t	4	f	1981-12-31	9000165	\N	\N	14325
codeine phosphate 60 mg per 1 mL solution for injection ampoule	t	1	f	1981-12-31	9000166	\N	\N	14326
erythromycin (erythromycin stearate) 250 mg oral tablet	t	1	f	1981-12-31	9000167	\N	\N	14327
flurazepam hydrochloride 15 mg oral capsule	t	5	f	1981-12-31	9000168	\N	\N	14328
flurazepam hydrochloride 30 mg oral capsule	t	4	f	1981-12-31	9000169	\N	\N	14329
furosemide 20 mg per 2 mL solution for injection ampoule	t	4	f	1981-12-31	9000170	\N	\N	14330
furosemide 40 mg per 4 mL solution for injection ampoule	t	3	f	1981-12-31	9000171	\N	\N	14331
hydrochlorothiazide 25 mg and triamterene 50 mg oral tablet	t	3	f	1981-12-31	9000172	\N	\N	14332
propranolol hydrochloride 120 mg oral tablet	t	2	f	1981-12-31	9000173	\N	\N	14333
acyclovir 5 % cutaneous ointment	t	1	f	1982-12-31	9000174	\N	\N	14334
furosemide 20 mg per 2 mL solution for injection syringe	t	1	f	1982-12-31	9000175	\N	\N	14335
furosemide 40 mg per 4 mL solution for injection syringe	t	1	f	1982-12-31	9000176	\N	\N	14336
indapamide 2.5 mg oral tablet	t	11	f	1982-12-31	9000177	\N	\N	14337
naproxen 125 mg oral tablet	t	1	f	1982-12-31	9000178	\N	\N	14338
naproxen 250 mg oral tablet	t	4	f	1982-12-31	9000179	\N	\N	14339
sulfamethoxazole 400 mg per 5 mL and trimethoprim 80 mg per 5 mL solution for injection ampoule	t	1	f	1982-12-31	9000180	\N	\N	14340
codeine phosphate 15 mg oral tablet	t	3	f	1983-12-31	9000181	\N	\N	14341
codeine phosphate 30 mg oral tablet	t	3	f	1983-12-31	9000182	\N	\N	14342
conjugated estrogens 1.25 mg oral tablet	t	3	f	1983-12-31	9000183	\N	\N	14343
erythromycin 250 mg gastro-resistant capsule	t	1	f	1983-12-31	9000184	\N	\N	14344
ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and norethindrone 0.5 mg and norethindrone 0.75 mg and norethindrone 1 mg oral tablet	t	2	t	1983-12-31	9000185	\N	\N	14345
haloperidol 2 mg per mL oral solution	t	2	f	1983-12-31	9000186	\N	\N	14346
hydrocortisone 2.5 % cutaneous cream	t	1	f	1983-12-31	9000187	\N	\N	14347
hydrocortisone acetate 10 % rectal foam	t	1	f	1983-12-31	9000188	\N	\N	14348
ibuprofen 300 mg oral tablet	t	3	f	1983-12-31	9000189	\N	\N	14349
ibuprofen 400 mg oral tablet	t	16	f	1983-12-31	9000190	\N	\N	14350
metoprolol tartrate 200 mg prolonged-release oral tablet	t	4	f	1983-12-31	9000191	\N	\N	14351
naproxen 375 mg oral tablet	t	4	f	1983-12-31	9000192	\N	\N	14352
naproxen 500 mg oral tablet	t	4	f	1983-12-31	9000193	\N	\N	14353
acetaminophen 300 mg and codeine phosphate 30 mg oral tablet	t	5	f	1984-12-31	9000194	\N	\N	14354
acetylsalicylic acid 325 mg and oxycodone hydrochloride 5 mg oral tablet	t	1	f	1984-12-31	9000195	\N	\N	14355
amoxicillin 125 mg per 5 mL powder for oral suspension	t	4	f	1984-12-31	9000196	\N	\N	14356
amoxicillin 250 mg per 5 mL powder for oral suspension	t	4	f	1984-12-31	9000197	\N	\N	14357
epinephrine 0.15 mg per 0.3 mL solution for injection syringe	t	2	f	1984-12-31	9000198	\N	\N	14358
fusidic acid 2 % cutaneous cream	t	1	f	1984-12-31	9000199	\N	\N	14359
haloperidol 5 mg oral tablet	t	2	f	1984-12-31	9000200	\N	\N	14360
hydromorphone hydrochloride 10 mg per 1 mL solution for injection vial	t	3	f	1984-12-31	9000201	\N	\N	14361
hydromorphone hydrochloride 2 mg oral tablet	t	4	f	1984-12-31	9000202	\N	\N	14362
hydromorphone hydrochloride 2 mg per 1 mL solution for injection ampoule	t	3	f	1984-12-31	9000203	\N	\N	14363
hydromorphone hydrochloride 4 mg oral tablet	t	4	f	1984-12-31	9000204	\N	\N	14364
hydromorphone hydrochloride 500 mg per 50 mL solution for injection vial	t	3	f	1984-12-31	9000205	\N	\N	14365
hydromorphone hydrochloride 50 mg per 5 mL solution for injection vial	t	3	f	1984-12-31	9000206	\N	\N	14366
ibuprofen 600 mg oral tablet	t	3	f	1984-12-31	9000207	\N	\N	14367
methylphenidate hydrochloride 20 mg prolonged-release oral tablet	t	3	f	1984-12-31	9000208	\N	\N	14368
morphine hydrochloride 1 mg per mL syrup	t	2	f	1984-12-31	9000209	\N	\N	14369
morphine sulfate 1 mg per mL syrup	t	1	f	1984-12-31	9000210	\N	\N	14370
morphine sulfate 20 mg per mL oral drops	t	1	f	1984-12-31	9000211	\N	\N	14371
morphine sulfate 5 mg per mL syrup	t	1	f	1984-12-31	9000212	\N	\N	14372
procyclidine hydrochloride 2.5 mg per 5 mL oral solution	t	1	f	1984-12-31	9000213	\N	\N	14373
valproic acid (divalproex sodium) 125 mg gastro-resistant tablet	t	8	f	1984-12-31	9000214	\N	\N	14374
clotrimazole 200 mg vaginal tablet	t	1	f	1995-12-31	9000564	\N	\N	14727
valproic acid (divalproex sodium) 250 mg gastro-resistant tablet	t	8	f	1984-12-31	9000215	\N	\N	14375
valproic acid (divalproex sodium) 500 mg gastro-resistant tablet	t	8	f	1984-12-31	9000216	\N	\N	14376
amoxicillin 250 mg per 5 mL powder for oral solution	t	1	f	1985-12-31	9000217	\N	\N	14377
baclofen 20 mg oral tablet	t	10	f	1985-12-31	9000218	\N	\N	14378
carbamazepine 100 mg chewable tablet	t	4	f	1985-12-31	9000219	\N	\N	14379
carbamazepine 200 mg chewable tablet	t	4	f	1985-12-31	9000220	\N	\N	14380
diclofenac sodium 100 mg prolonged-release oral tablet	t	6	f	1985-12-31	9000221	\N	\N	14381
diclofenac sodium 100 mg suppository	t	4	f	1985-12-31	9000222	\N	\N	14382
diclofenac sodium 50 mg suppository	t	4	f	1985-12-31	9000223	\N	\N	14383
lorazepam 0.5 mg oral tablet	t	8	f	1985-12-31	9000224	\N	\N	14384
lorazepam 1 mg oral tablet	t	8	f	1985-12-31	9000225	\N	\N	14385
lorazepam 2 mg oral tablet	t	8	f	1985-12-31	9000226	\N	\N	14386
metoprolol tartrate 100 mg prolonged-release oral tablet	t	4	f	1985-12-31	9000227	\N	\N	14387
morphine hydrochloride 5 mg per mL syrup	t	2	f	1985-12-31	9000228	\N	\N	14388
morphine sulfate 10 mg oral tablet	t	2	f	1985-12-31	9000229	\N	\N	14389
morphine sulfate 10 mg suppository	t	1	f	1985-12-31	9000230	\N	\N	14390
morphine sulfate 20 mg suppository	t	1	f	1985-12-31	9000231	\N	\N	14391
morphine sulfate 25 mg oral tablet	t	1	f	1985-12-31	9000232	\N	\N	14392
morphine sulfate 5 mg oral tablet	t	2	f	1985-12-31	9000233	\N	\N	14393
nitroglycerin 2 % cutaneous ointment	t	1	f	1985-12-31	9000234	\N	\N	14394
penicillin v potassium 200000 unit per 5 mL powder for oral solution	t	1	f	1985-12-31	9000235	\N	\N	14395
penicillin v potassium 480000 unit oral tablet	t	1	f	1985-12-31	9000236	\N	\N	14396
penicillin v potassium 480000 unit per 5 mL powder for oral solution	t	1	f	1985-12-31	9000237	\N	\N	14397
procyclidine hydrochloride 2.5 mg oral tablet	t	1	f	1985-12-31	9000238	\N	\N	14398
procyclidine hydrochloride 5 mg oral tablet	t	1	f	1985-12-31	9000239	\N	\N	14399
codeine phosphate 5 mg per mL syrup	t	1	f	1986-12-18	9000240	\N	\N	14400
acebutolol (acebutolol hydrochloride) 100 mg oral tablet	t	7	f	1986-12-31	9000241	\N	\N	14401
acebutolol (acebutolol hydrochloride) 200 mg oral tablet	t	7	f	1986-12-31	9000242	\N	\N	14402
acetaminophen 300 mg and caffeine 15 mg and codeine phosphate 8 mg oral tablet	t	9	f	1986-12-31	9000243	\N	\N	14403
betamethasone (betamethasone valerate) 0.05 % lotion	t	1	f	1986-12-31	9000244	\N	\N	14404
dexamethasone phosphate (dexamethasone sodium phosphate) 4 mg per mL solution for injection	t	3	f	1986-12-31	9000245	\N	\N	14405
erythromycin 250 mg oral tablet	t	1	f	1986-12-31	9000246	\N	\N	14406
erythromycin (erythromycin ethylsuccinate) 600 mg oral tablet	t	1	f	1986-12-31	9000247	\N	\N	14407
erythromycin (erythromycin stearate) 500 mg oral tablet	t	1	f	1986-12-31	9000248	\N	\N	14408
furosemide 80 mg oral tablet	t	4	f	1986-12-31	9000249	\N	\N	14409
glyburide 5 mg oral tablet	t	11	f	1986-12-31	9000250	\N	\N	14410
haloperidol 10 mg oral tablet	t	2	f	1986-12-31	9000251	\N	\N	14411
haloperidol 2 mg oral tablet	t	2	f	1986-12-31	9000252	\N	\N	14412
hydromorphone hydrochloride 1 mg oral tablet	t	4	f	1986-12-31	9000253	\N	\N	14413
hydroxyzine hydrochloride 10 mg oral capsule	t	3	f	1986-12-31	9000254	\N	\N	14414
hydroxyzine hydrochloride 25 mg oral capsule	t	3	f	1986-12-31	9000255	\N	\N	14415
hydroxyzine hydrochloride 50 mg oral capsule	t	3	f	1986-12-31	9000256	\N	\N	14416
meperidine hydrochloride 10 mg per mL solution for injection	t	1	f	1986-12-31	9000257	\N	\N	14417
morphine hydrochloride 10 mg per mL syrup	t	1	f	1986-12-31	9000258	\N	\N	14418
morphine hydrochloride 20 mg per mL syrup	t	1	f	1986-12-31	9000259	\N	\N	14419
morphine sulfate 150 mg per 30 mL solution for injection vial	t	1	f	1986-12-31	9000260	\N	\N	14420
morphine sulfate 25 mg per mL solution for injection	t	1	f	1986-12-31	9000261	\N	\N	14421
morphine sulfate 30 mg per 30 mL solution for injection vial	t	1	f	1986-12-31	9000262	\N	\N	14422
morphine sulfate 50 mg oral tablet	t	1	f	1986-12-31	9000263	\N	\N	14423
morphine sulfate 50 mg per mL oral drops	t	1	f	1986-12-31	9000264	\N	\N	14424
propranolol hydrochloride 20 mg oral tablet	t	2	f	1986-12-31	9000265	\N	\N	14425
acetaminophen 325 mg and caffeine 15 mg and codeine phosphate 8 mg oral tablet	t	3	f	1987-12-31	9000266	\N	\N	14426
benztropine mesylate 1 mg oral tablet	t	1	f	1987-12-31	9000267	\N	\N	14427
doxycycline (doxycycline hyclate) 100 mg oral capsule	t	5	f	1987-12-31	9000268	\N	\N	14428
enalapril sodium 16 mg oral tablet	t	9	f	1987-12-31	9000269	\N	\N	14429
enalapril sodium 4 mg oral tablet	t	9	f	1987-12-31	9000270	\N	\N	14430
enalapril sodium 8 mg oral tablet	t	9	f	1987-12-31	9000271	\N	\N	14431
epinephrine 1 mg per 10 mL solution for injection syringe	t	1	f	1987-12-31	9000272	\N	\N	14432
ethinyl estradiol 30 mcg and ethinyl estradiol 30 mcg and ethinyl estradiol 40 mcg and levonorgestrel 125 mcg and levonorgestrel 50 mcg and levonorgestrel 75 mcg oral tablet	t	2	t	1987-12-31	9000273	\N	\N	14433
hydroxyzine hydrochloride 50 mg per 1 mL solution for injection vial	t	1	f	1987-12-31	9000274	\N	\N	14434
medroxyprogesterone acetate 10 mg oral tablet	t	3	f	1987-12-31	9000275	\N	\N	14435
meperidine (meperidine hydrochloride) 50 mg per mL solution for injection	t	1	f	1987-12-31	9000276	\N	\N	14436
meperidine (meperidine hydrochloride) 75 mg per mL solution for injection	t	1	f	1987-12-31	9000277	\N	\N	14437
metoprolol tartrate 5 mg per 5 mL solution for injection ampoule	t	1	f	1987-12-31	9000278	\N	\N	14438
metronidazole 500 mg per 100 mL solution for injection bag	t	2	f	1987-12-31	9000279	\N	\N	14439
morphine sulfate 10 mg per mL syrup	t	1	f	1987-12-31	9000280	\N	\N	14440
morphine sulfate 50 mg per mL solution for injection	t	2	f	1987-12-31	9000281	\N	\N	14441
ranitidine (ranitidine hydrochloride) 150 mg oral tablet	t	19	f	1987-12-31	9000282	\N	\N	14442
ranitidine (ranitidine hydrochloride) 300 mg oral tablet	t	13	f	1987-12-31	9000283	\N	\N	14443
sulfamethoxazole 40 mg per mL and trimethoprim 8 mg per mL oral suspension	t	1	f	1987-12-31	9000284	\N	\N	14444
atenolol 100 mg oral tablet	t	16	f	1988-12-31	9000285	\N	\N	14445
betamethasone valerate 0.1 % cutaneous ointment	t	1	f	1988-12-31	9000287	\N	\N	14447
carbamazepine 200 mg prolonged-release oral tablet	t	6	f	1988-12-31	9000288	\N	\N	14448
carbamazepine 400 mg prolonged-release oral tablet	t	6	f	1988-12-31	9000289	\N	\N	14449
clotrimazole 1 % cutaneous cream	t	5	f	1988-12-31	9000290	\N	\N	14450
diltiazem hydrochloride 30 mg oral tablet	t	2	f	1988-12-31	9000291	\N	\N	14451
diltiazem hydrochloride 60 mg oral tablet	t	2	f	1988-12-31	9000292	\N	\N	14452
epinephrine 1 mg per 1 mL endotracheopulmonary instillation ampoule	t	2	f	1988-12-31	9000293	\N	\N	14453
epinephrine 1 mg per 1 mL solution for injection ampoule	t	3	f	1988-12-31	9000294	\N	\N	14454
erythromycin (erythromycin lactobionate) 1 g per vial powder for solution for injection	t	1	f	1988-12-31	9000295	\N	\N	14455
erythromycin (erythromycin lactobionate) 500 mg per vial powder for solution for injection	t	1	f	1988-12-31	9000296	\N	\N	14456
haloperidol 20 mg oral tablet	t	1	f	1988-12-31	9000297	\N	\N	14457
meperidine (meperidine hydrochloride) 100 mg per mL solution for injection	t	1	f	1988-12-31	9000298	\N	\N	14458
morphine sulfate 10 mg per 1 mL solution for injection ampoule	t	2	f	1988-12-31	9000299	\N	\N	14459
naproxen sodium 275 mg oral tablet	t	5	f	1988-12-31	9000300	\N	\N	14460
nifedipine 10 mg oral capsule	t	2	f	1988-12-31	9000301	\N	\N	14461
nitroglycerin 50 mg per 10 mL solution for injection vial	t	2	f	1988-12-31	9000302	\N	\N	14462
phenytoin sodium 100 mg per 2 mL solution for injection ampoule	t	2	f	1988-12-31	9000303	\N	\N	14463
phenytoin sodium 250 mg per 5 mL solution for injection ampoule	t	2	f	1988-12-31	9000304	\N	\N	14464
timolol maleate 10 mg oral tablet	t	2	f	1988-12-31	9000305	\N	\N	14465
timolol maleate 20 mg oral tablet	t	2	f	1988-12-31	9000306	\N	\N	14466
timolol maleate 5 mg oral tablet	t	2	f	1988-12-31	9000307	\N	\N	14467
timolol (timolol maleate) 0.25 % ophthalmic drops	t	5	f	1988-12-31	9000308	\N	\N	14468
triamcinolone acetonide 0.1 % cutaneous ointment	t	2	f	1988-12-31	9000309	\N	\N	14469
verapamil hydrochloride 240 mg prolonged-release oral tablet	t	9	f	1988-12-31	9000310	\N	\N	14470
clotrimazole 1 % vaginal cream	t	4	f	1989-12-31	9000311	\N	\N	14471
clotrimazole 2 % vaginal cream	t	3	f	1989-12-31	9000312	\N	\N	14472
dexamethasone phosphate (dexamethasone sodium phosphate) 1 mg per mL ophthalmic drops	t	1	f	1989-12-31	9000313	\N	\N	14473
dexamethasone phosphate (dexamethasone sodium phosphate) 1 mg per mL otic drops	t	1	f	1989-12-31	9000314	\N	\N	14474
dexamethasone phosphate (dexamethasone sodium phosphate) 20 mg per 5 mL solution for injection vial	t	1	f	1989-12-31	9000315	\N	\N	14475
diclofenac sodium 25 mg gastro-resistant tablet	t	3	f	1989-12-31	9000316	\N	\N	14476
diclofenac sodium 75 mg prolonged-release oral tablet	t	7	f	1989-12-31	9000317	\N	\N	14477
doxycycline (doxycycline hyclate) 100 mg oral tablet	t	6	f	1989-12-31	9000318	\N	\N	14478
cetirizine hydrochloride 10 mg oral tablet	t	8	f	1997-03-06	9000707	\N	\N	14479
fentanyl (fentanyl citrate) 1000 mcg per 20 mL solution for injection ampoule	t	1	f	1989-12-31	9000319	\N	\N	14480
fentanyl (fentanyl citrate) 1000 mcg per 20 mL solution for injection vial	t	2	f	1989-12-31	9000320	\N	\N	14481
fentanyl (fentanyl citrate) 100 mcg per 2 mL solution for injection ampoule	t	4	f	1989-12-31	9000321	\N	\N	14482
fentanyl (fentanyl citrate) 250 mcg per 5 mL solution for injection ampoule	t	1	f	1989-12-31	9000322	\N	\N	14483
fentanyl (fentanyl citrate) 500 mcg per 10 mL solution for injection ampoule	t	3	f	1989-12-31	9000323	\N	\N	14484
fentanyl (fentanyl citrate) 500 mcg per 10 mL solution for injection vial	t	2	f	1989-12-31	9000324	\N	\N	14485
fluoxetine (fluoxetine hydrochloride) 20 mg oral capsule	t	23	f	1989-12-31	9000325	\N	\N	14486
haloperidol 5 mg per 1 mL solution for injection ampoule	t	1	f	1989-12-31	9000326	\N	\N	14487
hydromorphone hydrochloride 1 mg per mL oral liquid	t	1	f	1989-12-31	9000327	\N	\N	14488
hydromorphone hydrochloride 8 mg oral tablet	t	4	f	1989-12-31	9000328	\N	\N	14489
metoclopramide hydrochloride 10 mg oral tablet	t	2	f	1989-12-31	9000329	\N	\N	14490
metoclopramide hydrochloride 5 mg oral tablet	t	2	f	1989-12-31	9000330	\N	\N	14491
morphine sulfate 2 mg per 1 mL solution for injection ampoule	t	1	f	1989-12-31	9000331	\N	\N	14492
nifedipine 5 mg oral capsule	t	2	f	1989-12-31	9000332	\N	\N	14493
nitroglycerin 25 mg per 10 sq cm transdermal patch	t	1	f	1989-12-31	9000333	\N	\N	14494
nitroglycerin 50 mg per 20 sq cm transdermal patch	t	1	f	1989-12-31	9000334	\N	\N	14495
nystatin 100000 unit per mL oral suspension	t	4	f	1989-12-31	9000335	\N	\N	14496
omeprazole 20 mg gastro-resistant capsule	t	13	f	1989-12-31	9000336	\N	\N	14497
salbutamol 100 mcg per actuation pressurised inhalation	t	1	f	1989-12-31	9000337	\N	\N	14498
salbutamol (salbutamol sulfate) 5 mg per mL inhalation solution 10 mL bottle	t	4	f	1989-12-31	9000338	\N	\N	14499
sulfamethoxazole 40 mg per 5 mL and trimethoprim 8 mg per 5 mL oral suspension	t	1	f	1989-12-31	9000339	\N	\N	14500
verapamil hydrochloride 120 mg oral tablet	t	3	f	1989-12-31	9000340	\N	\N	14501
verapamil hydrochloride 80 mg oral tablet	t	3	f	1989-12-31	9000341	\N	\N	14502
budesonide 100 mcg per actuation inhalation powder	t	2	f	1990-12-31	9000342	\N	\N	14503
budesonide 100 mcg per actuation pressurised inhalation	t	1	f	1990-12-31	9000343	\N	\N	14504
budesonide 200 mcg per actuation inhalation powder	t	1	f	1990-12-31	9000344	\N	\N	14505
budesonide 200 mcg per actuation pressurised inhalation	t	1	f	1990-12-31	9000345	\N	\N	14506
clonidine hydrochloride 0.1 mg oral tablet	t	4	f	1990-12-31	9000346	\N	\N	14507
clonidine hydrochloride 0.2 mg oral tablet	t	4	f	1990-12-31	9000347	\N	\N	14508
conjugated estrogens 0.3 mg oral tablet	t	3	f	1990-12-31	9000348	\N	\N	14509
conjugated estrogens 0.9 mg oral tablet	t	2	f	1990-12-31	9000349	\N	\N	14510
conjugated estrogens 2.5 mg oral tablet	t	1	f	1990-12-31	9000350	\N	\N	14511
dexamethasone (dexamethasone sodium phosphate) 10 mg per mL solution for injection	t	1	f	1990-12-31	9000351	\N	\N	14512
dexamethasone phosphate (dexamethasone sodium phosphate) 100 mg per 10 mL solution for injection vial	t	2	f	1990-12-31	9000352	\N	\N	14513
clotrimazole 500 mg vaginal tablet	t	1	f	1995-12-31	9000565	\N	\N	14728
dexamethasone sodium phosphate 1 mg per mL ophthalmic drops	t	1	f	1990-12-31	9000353	\N	\N	14514
dexamethasone sodium phosphate 1 mg per mL otic drops	t	1	f	1990-12-31	9000354	\N	\N	14515
erythromycin 333 mg gastro-resistant capsule	t	1	f	1990-12-31	9000355	\N	\N	14516
folic acid 50 mg per 10 mL solution for injection vial	t	1	f	1990-12-31	9000356	\N	\N	14517
gliclazide 80 mg oral tablet	t	7	f	1990-12-31	9000357	\N	\N	14518
lisinopril 10 mg oral tablet	t	16	f	1990-12-31	9000358	\N	\N	14519
lisinopril 20 mg oral tablet	t	16	f	1990-12-31	9000359	\N	\N	14520
metronidazole 1500 mg per 300 mL solution for injection bag	t	1	f	1990-12-31	9000360	\N	\N	14521
morphine sulfate 1000 mg per 20 mL solution for injection vial	t	1	f	1990-12-31	9000361	\N	\N	14522
morphine sulfate 100 mg per 4 mL solution for injection ampoule	t	1	f	1990-12-31	9000362	\N	\N	14523
morphine sulfate 2500 mg per 50 mL solution for injection vial	t	1	f	1990-12-31	9000363	\N	\N	14524
morphine sulfate 25 mg per 1 mL solution for injection ampoule	t	1	f	1990-12-31	9000364	\N	\N	14525
morphine sulfate 50 mg per 1 mL solution for injection ampoule	t	1	f	1990-12-31	9000365	\N	\N	14526
nitroglycerin 10 mg per 10 mL solution for injection vial	t	1	f	1990-12-31	9000366	\N	\N	14527
oxycodone hydrochloride 5 mg oral tablet	t	4	f	1990-12-31	9000367	\N	\N	14528
pravastatin sodium 20 mg oral tablet	t	15	f	1990-12-31	9000368	\N	\N	14529
simvastatin 10 mg oral tablet	t	21	f	1990-12-31	9000369	\N	\N	14530
zopiclone 7.5 mg oral tablet	t	20	f	1990-12-31	9000370	\N	\N	14531
acetaminophen 160 mg per 5 mL and codeine phosphate 8 mg per 5 mL oral solution	t	1	f	1991-12-31	9000371	\N	\N	14532
acyclovir 200 mg per 5 mL oral suspension	t	1	f	1991-12-31	9000372	\N	\N	14533
amoxicillin 125 mg per 5 mL oral suspension	t	1	f	1991-12-31	9000373	\N	\N	14534
amoxicillin 250 mg per 5 mL oral suspension	t	1	f	1991-12-31	9000374	\N	\N	14535
belladonna 15 mg and opium 65 mg suppository	t	1	f	1991-12-31	9000375	\N	\N	14536
carbidopa 50 mg and levodopa 200 mg prolonged-release oral tablet	t	3	f	1991-12-31	9000376	\N	\N	14537
clindamycin (clindamycin phosphate) 1 % cutaneous solution	t	3	f	1991-12-31	9000377	\N	\N	14538
clozapine 100 mg oral tablet	t	3	f	1991-12-31	9000378	\N	\N	14539
clozapine 25 mg oral tablet	t	3	f	1991-12-31	9000379	\N	\N	14540
diclofenac sodium 0.1 % ophthalmic drops	t	3	f	1991-12-31	9000380	\N	\N	14541
erythromycin 5 mg per g ophthalmic ointment	t	4	f	1991-12-31	9000381	\N	\N	14542
furosemide 250 mg per 25 mL solution for injection vial	t	2	f	1991-12-31	9000382	\N	\N	14543
glyburide 2.5 mg oral tablet	t	6	f	1991-12-31	9000383	\N	\N	14544
hydromorphone hydrochloride 1 mg per mL syrup	t	1	f	1991-12-31	9000384	\N	\N	14545
hydromorphone hydrochloride 3 mg suppository	t	1	f	1991-12-31	9000385	\N	\N	14546
mometasone furoate 0.1 % cutaneous cream	t	2	f	1991-12-31	9000386	\N	\N	14547
mometasone furoate 0.1 % cutaneous ointment	t	5	f	1991-12-31	9000387	\N	\N	14548
mometasone furoate 1 mg per g lotion	t	1	f	1991-12-31	9000388	\N	\N	14549
morphine sulfate 20 mg oral tablet	t	1	f	1991-12-31	9000389	\N	\N	14550
morphine sulfate 30 mg oral tablet	t	1	f	1991-12-31	9000390	\N	\N	14551
nitroglycerin 120 mg per 30 sq cm transdermal patch	t	1	f	1991-12-31	9000391	\N	\N	14552
nitroglycerin 40 mg per 10 sq cm transdermal patch	t	1	f	1991-12-31	9000392	\N	\N	14553
nitroglycerin 80 mg per 20 sq cm transdermal patch	t	1	f	1991-12-31	9000393	\N	\N	14554
testosterone enanthate 2000 mg per 10 mL solution for injection vial	t	1	f	1991-12-31	9000394	\N	\N	14555
verapamil hydrochloride 120 mg prolonged-release oral tablet	t	4	f	1991-12-31	9000395	\N	\N	14556
cetirizine hydrochloride 5 mg oral tablet	t	3	f	1997-03-06	9000708	\N	\N	14557
acetaminophen 325 mg and oxycodone hydrochloride 2.5 mg oral tablet	t	1	f	1992-12-31	9000396	\N	\N	14558
acetaminophen 500 mg and caffeine citrate 30 mg and codeine phosphate 8 mg oral tablet	t	2	f	1992-12-31	9000397	\N	\N	14559
amlodipine (amlodipine besylate) 10 mg oral tablet	t	24	f	1992-12-31	9000398	\N	\N	14560
amlodipine (amlodipine besylate) 5 mg oral tablet	t	24	f	1992-12-31	9000399	\N	\N	14561
amoxicillin 125 mg per 5 mL and clavulanic acid (potassium clavulanate) 31.25 mg per 5 mL powder for oral suspension	t	2	f	1992-12-31	9000400	\N	\N	14562
amoxicillin 250 mg per 5 mL and clavulanic acid (potassium clavulanate) 62.5 mg per 5 mL powder for oral suspension	t	2	f	1992-12-31	9000401	\N	\N	14563
amoxicillin 500 mg and clavulanic acid (potassium clavulanate) 125 mg oral tablet	t	4	f	1992-12-31	9000402	\N	\N	14564
betamethasone dipropionate 0.5 mg per g cutaneous cream	t	1	f	1992-12-31	9000403	\N	\N	14565
budesonide 0.5 mg per 2 mL nebuliser suspension unit dose vial	t	1	f	1992-12-31	9000404	\N	\N	14566
budesonide 1 mg per 2 mL nebuliser suspension unit dose vial	t	1	f	1992-12-31	9000405	\N	\N	14567
budesonide 400 mcg per actuation inhalation powder	t	1	f	1992-12-31	9000406	\N	\N	14568
budesonide 400 mcg per actuation pressurised inhalation	t	1	f	1992-12-31	9000407	\N	\N	14569
ciprofloxacin (ciprofloxacin hydrochloride) 0.3 % ophthalmic drops	t	3	f	1992-12-31	9000408	\N	\N	14570
clarithromycin 250 mg oral tablet	t	9	f	1992-12-31	9000409	\N	\N	14571
clobetasol propionate 0.05 % cutaneous cream	t	7	f	1992-12-31	9000410	\N	\N	14572
clobetasol propionate 0.05 % cutaneous ointment	t	7	f	1992-12-31	9000411	\N	\N	14573
clobetasol propionate 0.05 % lotion	t	2	f	1992-12-31	9000412	\N	\N	14574
dexamethasone 0.5 mg per 5 mL oral liquid	t	1	f	1992-12-31	9000413	\N	\N	14575
dextroamphetamine sulfate 10 mg prolonged-release oral capsule	t	1	f	1992-12-31	9000414	\N	\N	14576
dextroamphetamine sulfate 15 mg prolonged-release oral capsule	t	1	f	1992-12-31	9000415	\N	\N	14577
dextroamphetamine sulfate 5 mg oral tablet	t	2	f	1992-12-31	9000416	\N	\N	14578
diazepam 1 mg per mL oral solution	t	1	f	1992-12-31	9000417	\N	\N	14579
doxazosin (doxazosin mesylate) 1 mg oral tablet	t	6	f	1992-12-31	9000418	\N	\N	14580
doxazosin (doxazosin mesylate) 2 mg oral tablet	t	6	f	1992-12-31	9000419	\N	\N	14581
doxazosin (doxazosin mesylate) 4 mg oral tablet	t	6	f	1992-12-31	9000420	\N	\N	14582
ethinyl estradiol 0.035 mg and norgestimate 0.25 mg oral tablet	t	2	f	1992-12-31	9000421	\N	\N	14583
felodipine 10 mg prolonged-release oral tablet	t	3	f	1992-12-31	9000422	\N	\N	14584
felodipine 5 mg prolonged-release oral tablet	t	3	f	1992-12-31	9000423	\N	\N	14585
finasteride 5 mg oral tablet	t	18	f	1992-12-31	9000424	\N	\N	14586
hydrocortisone acetate 25 mg per g ophthalmic ointment	t	1	f	1992-12-31	9000425	\N	\N	14587
insulin isophane human 100 unit per mL suspension for injection 3 mL cartridge	t	2	f	1992-12-31	9000426	\N	\N	14588
ketorolac tromethamine 0.5 % ophthalmic drops	t	2	f	1992-12-31	9000427	\N	\N	14589
lithium carbonate 600 mg oral capsule	t	2	f	1992-12-31	9000428	\N	\N	14590
medroxyprogesterone acetate 2.5 mg oral tablet	t	4	f	1992-12-31	9000429	\N	\N	14591
morphine sulfate 1 mg per mL solution for injection	t	2	f	1992-12-31	9000430	\N	\N	14592
morphine sulfate 2 mg per mL solution for injection	t	3	f	1992-12-31	9000431	\N	\N	14593
morphine sulfate 5 mg per 10 mL solution for injection ampoule	t	2	f	1992-12-31	9000432	\N	\N	14594
morphine sulfate 5 mg per 5 mL solution for injection ampoule	t	2	f	1992-12-31	9000433	\N	\N	14595
morphine sulfate 5 mg per mL solution for injection	t	1	f	1992-12-31	9000434	\N	\N	14596
nifedipine 30 mg prolonged-release oral tablet	t	5	f	1992-12-31	9000435	\N	\N	14597
nifedipine 60 mg prolonged-release oral tablet	t	5	f	1992-12-31	9000436	\N	\N	14598
phenytoin sodium 100 mg per 2 mL solution for injection vial	t	2	f	1992-12-31	9000437	\N	\N	14599
phenytoin sodium 250 mg per 5 mL solution for injection vial	t	2	f	1992-12-31	9000438	\N	\N	14600
prednisolone sodium phosphate 1 % ophthalmic drops	t	1	f	1992-12-31	9000439	\N	\N	14601
quinapril (quinapril hydrochloride) 10 mg oral tablet	t	5	f	1992-12-31	9000440	\N	\N	14602
quinapril (quinapril hydrochloride) 20 mg oral tablet	t	5	f	1992-12-31	9000441	\N	\N	14603
quinapril (quinapril hydrochloride) 40 mg oral tablet	t	5	f	1992-12-31	9000442	\N	\N	14604
quinapril (quinapril hydrochloride) 5 mg oral tablet	t	5	f	1992-12-31	9000443	\N	\N	14605
salbutamol (salbutamol sulfate) 2.5 mg per 2.5 mL inhalation solution unit dose vial	t	4	f	1992-12-31	9000444	\N	\N	14606
sertraline (sertraline hydrochloride) 100 mg oral capsule	t	21	f	1992-12-31	9000445	\N	\N	14607
sertraline (sertraline hydrochloride) 50 mg oral capsule	t	21	f	1992-12-31	9000446	\N	\N	14608
testosterone cypionate 200 mg per 2 mL solution for injection ampoule	t	1	f	1992-12-31	9000447	\N	\N	14609
testosterone propionate 1000 mg per 10 mL solution for injection vial	t	1	f	1992-12-31	9000448	\N	\N	14610
triamcinolone acetonide 0.1 % oromucosal paste	t	1	f	1992-12-31	9000449	\N	\N	14611
warfarin sodium 2.5 mg oral tablet	t	3	f	1992-12-31	9000450	\N	\N	14612
warfarin sodium 4 mg oral tablet	t	3	f	1992-12-31	9000451	\N	\N	14613
fluticasone propionate 50 mcg per actuation nasal spray	t	4	f	1993-03-12	9000452	\N	\N	14614
acyclovir 5 % cutaneous cream	t	1	f	1993-12-31	9000453	\N	\N	14615
alprazolam 1 mg oral tablet	t	7	f	1993-12-31	9000454	\N	\N	14616
alprazolam 2 mg oral tablet	t	6	f	1993-12-31	9000455	\N	\N	14617
amoxicillin 250 mg chewable tablet	t	1	f	1993-12-31	9000456	\N	\N	14618
budesonide 100 mcg per actuation nasal powder	t	1	f	1993-12-31	9000457	\N	\N	14619
carbidopa 25 mg and levodopa 100 mg prolonged-release oral tablet	t	3	f	1993-12-31	9000458	\N	\N	14620
clonazepam 1 mg oral tablet	t	7	f	1993-12-31	9000459	\N	\N	14621
desogestrel 0.15 mg and ethinyl estradiol 0.03 mg oral tablet	t	10	f	1993-12-31	9000460	\N	\N	14622
diclofenac potassium 50 mg oral tablet	t	7	f	1993-12-31	9000461	\N	\N	14623
diclofenac sodium 50 mg and misoprostol 200 mcg oral tablet	t	2	f	1993-12-31	9000462	\N	\N	14624
domperidone (domperidone maleate) 10 mg oral tablet	t	13	f	1993-12-31	9000463	\N	\N	14625
enalapril maleate 10 mg oral tablet	t	2	f	1993-12-31	9000464	\N	\N	14626
enalapril maleate 20 mg oral tablet	t	2	f	1993-12-31	9000465	\N	\N	14627
enalapril maleate 2.5 mg oral tablet	t	2	f	1993-12-31	9000466	\N	\N	14628
enalapril maleate 5 mg oral tablet	t	2	f	1993-12-31	9000467	\N	\N	14629
ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and norgestimate 0.18 mg and norgestimate 0.215 mg and norgestimate 0.25 mg oral tablet	t	2	t	1993-12-31	9000468	\N	\N	14630
fluoxetine (fluoxetine hydrochloride) 10 mg oral capsule	t	23	f	1993-12-31	9000469	\N	\N	14631
indomethacin 100 mg suppository	t	2	f	1993-12-31	9000470	\N	\N	14632
mirtazapine 30 mg oral tablet	t	12	f	2001-05-24	9000940	\N	\N	14633
insulin isophane human 100 unit per mL suspension for injection 10 mL vial	t	1	f	1993-12-31	9000471	\N	\N	14634
mesalazine 400 mg gastro-resistant tablet	t	2	f	1993-12-31	9000472	\N	\N	14635
metformin hydrochloride 500 mg oral tablet	t	22	f	1993-12-31	9000473	\N	\N	14636
morphine sulfate 100 mg prolonged-release oral capsule	t	2	f	1993-12-31	9000474	\N	\N	14637
morphine sulfate 100 mg prolonged-release oral tablet	t	2	f	1993-12-31	9000475	\N	\N	14638
morphine sulfate 10 mg prolonged-release oral capsule	t	2	f	1993-12-31	9000476	\N	\N	14639
morphine sulfate 15 mg prolonged-release oral tablet	t	4	f	1993-12-31	9000477	\N	\N	14640
morphine sulfate 200 mg prolonged-release oral tablet	t	2	f	1993-12-31	9000478	\N	\N	14641
morphine sulfate 30 mg prolonged-release oral capsule	t	1	f	1993-12-31	9000479	\N	\N	14642
morphine sulfate 30 mg prolonged-release oral tablet	t	4	f	1993-12-31	9000480	\N	\N	14643
morphine sulfate 60 mg prolonged-release oral capsule	t	1	f	1993-12-31	9000481	\N	\N	14644
morphine sulfate 60 mg prolonged-release oral tablet	t	4	f	1993-12-31	9000482	\N	\N	14645
naproxen 500 mg suppository	t	1	f	1993-12-31	9000483	\N	\N	14646
naproxen sodium 550 mg oral tablet	t	5	f	1993-12-31	9000484	\N	\N	14647
nitrofurantoin 100 mg oral capsule	t	2	f	1993-12-31	9000485	\N	\N	14648
nitroglycerin 160 mg per 40 sq cm transdermal patch	t	1	f	1993-12-31	9000486	\N	\N	14649
paroxetine (paroxetine hydrochloride) 20 mg oral tablet	t	19	f	1993-12-31	9000487	\N	\N	14650
paroxetine (paroxetine hydrochloride) 30 mg oral tablet	t	19	f	1993-12-31	9000488	\N	\N	14651
risperidone 1 mg oral tablet	t	16	f	1993-12-31	9000489	\N	\N	14652
risperidone 2 mg oral tablet	t	16	f	1993-12-31	9000490	\N	\N	14653
risperidone 3 mg oral tablet	t	16	f	1993-12-31	9000491	\N	\N	14654
risperidone 4 mg oral tablet	t	16	f	1993-12-31	9000492	\N	\N	14655
salbutamol (salbutamol sulfate) 1 mg per mL inhalation solution 10 mL bottle	t	1	f	1993-12-31	9000493	\N	\N	14656
terbinafine hydrochloride 1 % cutaneous cream	t	1	f	1993-12-31	9000494	\N	\N	14657
terbinafine (terbinafine hydrochloride) 250 mg oral tablet	t	13	f	1993-12-31	9000495	\N	\N	14658
trazodone hydrochloride 100 mg oral tablet	t	8	f	1993-12-31	9000496	\N	\N	14659
trazodone hydrochloride 50 mg oral tablet	t	8	f	1993-12-31	9000497	\N	\N	14660
warfarin sodium 2 mg oral tablet	t	3	f	1993-12-31	9000498	\N	\N	14661
verapamil hydrochloride 180 mg prolonged-release oral tablet	t	4	f	1994-04-21	9000499	\N	\N	14662
acyclovir 200 mg oral tablet	t	4	f	1994-12-31	9000500	\N	\N	14663
acyclovir 400 mg oral tablet	t	5	f	1994-12-31	9000501	\N	\N	14664
acyclovir 800 mg oral tablet	t	4	f	1994-12-31	9000502	\N	\N	14665
amoxicillin 125 mg chewable tablet	t	1	f	1994-12-31	9000503	\N	\N	14666
amoxicillin 25 mg per mL granules for oral suspension	t	1	f	1994-12-31	9000504	\N	\N	14667
amoxicillin 50 mg per mL granules for oral suspension	t	1	f	1994-12-31	9000505	\N	\N	14668
baclofen 0.05 mg per 1 mL solution for injection ampoule	t	2	f	1994-12-31	9000506	\N	\N	14669
baclofen 10 mg per 20 mL solution for injection ampoule	t	2	f	1994-12-31	9000507	\N	\N	14670
baclofen 10 mg per 5 mL solution for injection ampoule	t	2	f	1994-12-31	9000508	\N	\N	14671
clarithromycin 500 mg oral tablet	t	11	f	1994-12-31	9000509	\N	\N	14672
clindamycin (clindamycin phosphate) 20 mg per g vaginal cream	t	1	f	1994-12-31	9000510	\N	\N	14673
conjugated estrogens 0.625 mg per g vaginal cream	t	1	f	1994-12-31	9000511	\N	\N	14674
conjugated estrogens 25 mg per vial powder for solution for injection	t	1	f	1994-12-31	9000512	\N	\N	14675
cyclobenzaprine hydrochloride 10 mg oral tablet	t	12	f	1994-12-31	9000513	\N	\N	14676
dexamethasone sodium phosphate 0.1 % ophthalmic drops	t	1	f	1994-12-31	9000514	\N	\N	14677
dexamethasone sodium phosphate 0.1 % otic drops	t	1	f	1994-12-31	9000515	\N	\N	14678
digoxin 0.05 mg per 1 mL solution for injection ampoule	t	1	f	1994-12-31	9000516	\N	\N	14679
digoxin 0.5 mg per 2 mL solution for injection ampoule	t	1	f	1994-12-31	9000517	\N	\N	14680
felodipine 2.5 mg prolonged-release oral tablet	t	2	f	1994-12-31	9000518	\N	\N	14681
gabapentin 100 mg oral capsule	t	19	f	1994-12-31	9000519	\N	\N	14682
gabapentin 300 mg oral capsule	t	20	f	1994-12-31	9000520	\N	\N	14683
gabapentin 400 mg oral capsule	t	20	f	1994-12-31	9000521	\N	\N	14684
haloperidol (haloperidol decanoate) 100 mg per 1 mL solution for injection ampoule	t	1	f	1994-12-31	9000522	\N	\N	14685
haloperidol (haloperidol decanoate) 250 mg per 5 mL solution for injection vial	t	2	f	1994-12-31	9000523	\N	\N	14686
haloperidol (haloperidol decanoate) 500 mg per 5 mL solution for injection vial	t	2	f	1994-12-31	9000524	\N	\N	14687
hydrochlorothiazide 12.5 mg and lisinopril 10 mg oral tablet	t	6	f	1994-12-31	9000525	\N	\N	14688
hydrochlorothiazide 12.5 mg and lisinopril 20 mg oral tablet	t	6	f	1994-12-31	9000526	\N	\N	14689
ipratropium bromide 250 mcg per mL inhalation solution 20 mL bottle	t	2	f	1994-12-31	9000527	\N	\N	14690
isosorbide mononitrate 60 mg prolonged-release oral tablet	t	5	f	1994-12-31	9000528	\N	\N	14691
lisinopril 5 mg oral tablet	t	15	f	1994-12-31	9000529	\N	\N	14692
lithium (lithium citrate) 8 mmol per 5 mL syrup	t	1	f	1994-12-31	9000530	\N	\N	14693
lorazepam 1 mg sublingual tablet	t	2	f	1994-12-31	9000531	\N	\N	14694
lorazepam 2 mg sublingual tablet	t	2	f	1994-12-31	9000532	\N	\N	14695
mesalazine 500 mg prolonged-release oral tablet	t	1	f	1994-12-31	9000533	\N	\N	14696
metronidazole 0.75 % cutaneous gel	t	1	f	1994-12-31	9000534	\N	\N	14697
metronidazole 0.75 % vaginal gel	t	1	f	1994-12-31	9000535	\N	\N	14698
minocycline (minocycline hydrochloride) 100 mg oral capsule	t	10	f	1994-12-31	9000536	\N	\N	14699
minocycline (minocycline hydrochloride) 50 mg oral capsule	t	9	f	1994-12-31	9000537	\N	\N	14700
nitroglycerin 75 mg transdermal patch	t	1	f	1994-12-31	9000538	\N	\N	14701
perindopril erbumine 2 mg oral tablet	t	1	f	1994-12-31	9000539	\N	\N	14702
perindopril erbumine 4 mg oral tablet	t	1	f	1994-12-31	9000540	\N	\N	14703
propranolol hydrochloride 120 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000541	\N	\N	14704
propranolol hydrochloride 160 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000542	\N	\N	14705
propranolol hydrochloride 80 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000543	\N	\N	14706
salbutamol (salbutamol sulfate) 5 mg per mL oral solution 10 mL bottle	t	2	f	1994-12-31	9000544	\N	\N	14707
simvastatin 20 mg oral tablet	t	21	f	1994-12-31	9000545	\N	\N	14708
verapamil hydrochloride 10 mg per 4 mL solution for injection ampoule	t	1	f	1994-12-31	9000546	\N	\N	14709
verapamil hydrochloride 10 mg per 4 mL solution for injection vial	t	1	f	1994-12-31	9000547	\N	\N	14710
verapamil hydrochloride 120 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000548	\N	\N	14711
verapamil hydrochloride 180 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000549	\N	\N	14712
verapamil hydrochloride 240 mg prolonged-release oral capsule	t	1	f	1994-12-31	9000550	\N	\N	14713
verapamil hydrochloride 5 mg per 2 mL solution for injection vial	t	2	f	1994-12-31	9000551	\N	\N	14714
acebutolol (acebutolol hydrochloride) 400 mg oral tablet	t	6	f	1995-12-31	9000552	\N	\N	14715
beclomethasone dipropionate 50 mcg per actuation nasal spray	t	3	f	1995-12-31	9000553	\N	\N	14716
bromazepam 1.5 mg oral tablet	t	1	f	1995-12-31	9000554	\N	\N	14717
cefprozil 125 mg per 5 mL powder for oral suspension	t	4	f	1995-12-31	9000555	\N	\N	14718
cefprozil 250 mg oral tablet	t	5	f	1995-12-31	9000556	\N	\N	14719
cefprozil 250 mg per 5 mL powder for oral suspension	t	4	f	1995-12-31	9000557	\N	\N	14720
cefprozil 500 mg oral tablet	t	5	f	1995-12-31	9000558	\N	\N	14721
cephalexin 125 mg per 5 mL oral suspension	t	2	f	1995-12-31	9000559	\N	\N	14722
cephalexin 250 mg per 5 mL oral suspension	t	2	f	1995-12-31	9000560	\N	\N	14723
clarithromycin 125 mg per 5 mL granules for oral suspension	t	3	f	1995-12-31	9000561	\N	\N	14724
clindamycin (clindamycin hydrochloride) 300 mg oral capsule	t	6	f	1995-12-31	9000562	\N	\N	14725
clonazepam 0.25 mg oral tablet	t	2	f	1995-12-31	9000563	\N	\N	14726
codeine (codeine, codeine sulfate) 100 mg prolonged-release oral tablet	t	1	f	1995-12-31	9000566	\N	\N	14729
codeine (codeine, codeine sulfate) 150 mg prolonged-release oral tablet	t	1	f	1995-12-31	9000567	\N	\N	14730
codeine (codeine, codeine sulfate) 200 mg prolonged-release oral tablet	t	1	f	1995-12-31	9000568	\N	\N	14731
diltiazem hydrochloride 120 mg prolonged-release oral capsule	t	12	f	1995-12-31	9000569	\N	\N	14732
diltiazem hydrochloride 180 mg prolonged-release oral capsule	t	11	f	1995-12-31	9000570	\N	\N	14733
diltiazem hydrochloride 240 mg prolonged-release oral capsule	t	11	f	1995-12-31	9000571	\N	\N	14734
diltiazem hydrochloride 300 mg prolonged-release oral capsule	t	11	f	1995-12-31	9000572	\N	\N	14735
estradiol 1 mg oral tablet	t	2	f	1995-12-31	9000573	\N	\N	14736
estradiol 2 mg oral tablet	t	2	f	1995-12-31	9000574	\N	\N	14737
estradiol 2 mg ring (slow release)	t	1	f	1995-12-31	9000575	\N	\N	14738
ethinyl estradiol 30 mcg and levonorgestrel 150 mcg oral tablet	t	4	f	1995-12-31	9000576	\N	\N	14739
hydrochlorothiazide 25 mg and lisinopril 20 mg oral tablet	t	6	f	1995-12-31	9000577	\N	\N	14740
hydrocortisone 100 mg per 60 mL rectal liquid	t	1	f	1995-12-31	9000578	\N	\N	14741
hydromorphone hydrochloride 100 mg per 10 mL solution for injection vial	t	1	f	1995-12-31	9000579	\N	\N	14742
hydromorphone hydrochloride 20 mg per mL solution for injection	t	1	f	1995-12-31	9000580	\N	\N	14743
hydromorphone hydrochloride 2500 mg per 50 mL solution for injection vial	t	1	f	1995-12-31	9000581	\N	\N	14744
hydromorphone hydrochloride 250 mg per 5 mL solution for injection vial	t	1	f	1995-12-31	9000582	\N	\N	14745
hydromorphone hydrochloride 3 mg prolonged-release oral capsule	t	1	f	1995-12-31	9000583	\N	\N	14746
hydromorphone hydrochloride 500 mg per 10 mL solution for injection vial	t	1	f	1995-12-31	9000584	\N	\N	14747
hydromorphone hydrochloride 50 mg per 1 mL solution for injection vial	t	1	f	1995-12-31	9000585	\N	\N	14748
hydromorphone hydrochloride 6 mg prolonged-release oral capsule	t	1	f	1995-12-31	9000586	\N	\N	14749
indapamide 1.25 mg oral tablet	t	10	f	1995-12-31	9000587	\N	\N	14750
ipratropium bromide 21 mcg per actuation nasal spray	t	1	f	1995-12-31	9000588	\N	\N	14751
ipratropium bromide 250 mcg per mL inhalation solution	t	1	f	1995-12-31	9000589	\N	\N	14752
ketorolac tromethamine 10 mg oral tablet	t	2	f	1995-12-31	9000590	\N	\N	14753
lamotrigine 100 mg oral tablet	t	9	f	1995-12-31	9000591	\N	\N	14754
lamotrigine 150 mg oral tablet	t	9	f	1995-12-31	9000592	\N	\N	14755
lamotrigine 25 mg oral tablet	t	9	f	1995-12-31	9000593	\N	\N	14756
lansoprazole 15 mg gastro-resistant capsule	t	11	f	1995-12-31	9000594	\N	\N	14757
lansoprazole 30 mg gastro-resistant capsule	t	13	f	1995-12-31	9000595	\N	\N	14758
lorazepam 0.5 mg sublingual tablet	t	2	f	1995-12-31	9000596	\N	\N	14759
losartan potassium 25 mg oral tablet	t	18	f	1995-12-31	9000597	\N	\N	14760
losartan potassium 50 mg oral tablet	t	18	f	1995-12-31	9000598	\N	\N	14761
medroxyprogesterone acetate 150 mg per 1 mL suspension for injection vial	t	2	f	1995-12-31	9000599	\N	\N	14762
mesalazine 1 g per 100 mL rectal liquid	t	1	f	1995-12-31	9000600	\N	\N	14763
mesalazine 1 g per 100 mL rectal solution	t	1	f	1995-12-31	9000601	\N	\N	14764
mesalazine 1 g suppository	t	1	f	1995-12-31	9000602	\N	\N	14765
mesalazine 2 g per 60 g rectal suspension	t	1	f	1995-12-31	9000603	\N	\N	14766
mesalazine 4 g per 100 mL rectal liquid	t	1	f	1995-12-31	9000604	\N	\N	14767
mesalazine 4 g per 100 mL rectal solution	t	1	f	1995-12-31	9000605	\N	\N	14768
mesalazine 4 g per 60 g rectal suspension	t	1	f	1995-12-31	9000606	\N	\N	14769
mesalazine 500 mg gastro-resistant tablet	t	1	f	1995-12-31	9000607	\N	\N	14770
mesalazine 500 mg suppository	t	1	f	1995-12-31	9000608	\N	\N	14771
metformin hydrochloride 850 mg oral tablet	t	20	f	1995-12-31	9000609	\N	\N	14772
methotrexate (methotrexate sodium) 1000 mg per 40 mL solution for injection vial	t	4	f	1995-12-31	9000610	\N	\N	14773
methotrexate (methotrexate sodium) 500 mg per 20 mL solution for injection vial	t	3	f	1995-12-31	9000611	\N	\N	14774
methotrexate (methotrexate sodium) 50 mg per 2 mL solution for injection vial	t	5	f	1995-12-31	9000612	\N	\N	14775
metoclopramide hydrochloride 10 mg per 2 mL solution for injection vial	t	2	f	1995-12-31	9000613	\N	\N	14776
metoclopramide hydrochloride 150 mg per 30 mL solution for injection vial	t	2	f	1995-12-31	9000614	\N	\N	14777
metoclopramide hydrochloride 50 mg per 10 mL solution for injection vial	t	2	f	1995-12-31	9000615	\N	\N	14778
metronidazole 1 % cutaneous cream	t	1	f	1995-12-31	9000616	\N	\N	14779
morphine sulfate 15 mg prolonged-release oral capsule	t	1	f	1995-12-31	9000617	\N	\N	14780
morphine sulfate 200 mg prolonged-release oral capsule	t	1	f	1995-12-31	9000618	\N	\N	14781
naproxen 375 mg gastro-resistant tablet	t	7	f	1995-12-31	9000619	\N	\N	14782
naproxen 500 mg gastro-resistant tablet	t	7	f	1995-12-31	9000620	\N	\N	14783
naproxen 750 mg prolonged-release oral tablet	t	2	f	1995-12-31	9000621	\N	\N	14784
nifedipine 10 mg oral tablet	t	1	f	1995-12-31	9000622	\N	\N	14785
nifedipine 20 mg prolonged-release oral tablet	t	3	f	1995-12-31	9000623	\N	\N	14786
nitroglycerin 18 mg per 6.7 sq cm transdermal patch	t	1	f	1995-12-31	9000624	\N	\N	14787
nitroglycerin 36 mg per 13.3 sq cm transdermal patch	t	1	f	1995-12-31	9000625	\N	\N	14788
nitroglycerin 54 mg per 20 sq cm transdermal patch	t	1	f	1995-12-31	9000626	\N	\N	14789
oxybutynin chloride 5 mg oral tablet	t	8	f	1995-12-31	9000627	\N	\N	14790
prednisolone sodium phosphate 0.5 % NA	t	1	f	1995-12-31	9000628	\N	\N	14791
prednisolone sodium phosphate 0.5 % ophthalmic drops	t	1	f	1995-12-31	9000629	\N	\N	14792
progesterone 100 mg oral capsule	t	2	f	1995-12-31	9000630	\N	\N	14793
propranolol hydrochloride 60 mg prolonged-release oral capsule	t	1	f	1995-12-31	9000631	\N	\N	14794
salbutamol (salbutamol sulfate) 2 mg oral tablet	t	1	f	1995-12-31	9000632	\N	\N	14795
salbutamol (salbutamol sulfate) 4 mg oral tablet	t	1	f	1995-12-31	9000633	\N	\N	14796
salbutamol (salbutamol sulfate) 5 mg per 2.5 mL inhalation solution unit dose vial	t	5	f	1995-12-31	9000634	\N	\N	14797
sertraline (sertraline hydrochloride) 25 mg oral capsule	t	21	f	1995-12-31	9000635	\N	\N	14798
timolol (timolol maleate) 0.25 % prolonged-release eye drops	t	1	f	1995-12-31	9000636	\N	\N	14799
timolol (timolol maleate) 0.5 % prolonged-release eye drops	t	1	f	1995-12-31	9000637	\N	\N	14800
trazodone hydrochloride 150 mg oral tablet	t	5	f	1995-12-31	9000638	\N	\N	14801
valproic acid 250 mg oral capsule	t	6	f	1995-12-31	9000639	\N	\N	14802
ipratropium bromide 42 mcg per actuation nasal spray	t	1	f	1996-02-02	9000640	\N	\N	14803
ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and norethindrone 0.5 mg and norethindrone 1 mg oral tablet	t	2	f	1996-08-14	9000641	\N	\N	14804
folic acid (sodium folate) 5 mg per mL solution for injection	t	1	f	1996-08-14	9000642	\N	\N	14805
simvastatin 40 mg oral tablet	t	21	f	1996-08-14	9000643	\N	\N	14806
tacrolimus 1 mg oral capsule	t	2	f	1996-08-14	9000644	\N	\N	14807
tacrolimus 5 mg oral capsule	t	2	f	1996-08-14	9000645	\N	\N	14808
tacrolimus 5 mg per 1 mL solution for injection ampoule	t	1	f	1996-08-14	9000646	\N	\N	14809
pravastatin sodium 40 mg oral tablet	t	15	f	1996-08-21	9000647	\N	\N	14810
dexamethasone 0.5 mg oral tablet	t	4	f	1996-08-26	9000648	\N	\N	14811
oxybutynin chloride 1 mg per mL syrup	t	3	f	1996-09-04	9000649	\N	\N	14812
dexamethasone 0.75 mg oral tablet	t	2	f	1996-09-05	9000650	\N	\N	14813
dexamethasone 4 mg oral tablet	t	6	f	1996-09-05	9000651	\N	\N	14814
diltiazem hydrochloride 300 mg modified-release oral capsule	t	4	f	1996-09-12	9000652	\N	\N	14815
nystatin 100000 unit per mL oral drops	t	1	f	1996-09-12	9000653	\N	\N	14816
diltiazem hydrochloride 60 mg prolonged-release oral capsule	t	1	f	1996-09-19	9000654	\N	\N	14817
diltiazem hydrochloride 90 mg prolonged-release oral capsule	t	1	f	1996-09-19	9000655	\N	\N	14818
azithromycin 100 mg per 5 mL powder for oral suspension	t	4	f	1996-09-26	9000656	\N	\N	14819
azithromycin 200 mg per 5 mL powder for oral solution	t	1	f	1996-09-26	9000657	\N	\N	14820
fenofibrate 100 mg oral capsule	t	1	f	1996-10-02	9000658	\N	\N	14821
propranolol hydrochloride 1 mg per 1 mL solution for injection ampoule	t	1	f	1996-10-04	9000659	\N	\N	14822
ciprofloxacin (ciprofloxacin hydrochloride) 250 mg oral tablet	t	23	f	1996-10-10	9000660	\N	\N	14823
ciprofloxacin (ciprofloxacin hydrochloride) 500 mg oral tablet	t	25	f	1996-10-10	9000661	\N	\N	14824
ciprofloxacin (ciprofloxacin hydrochloride) 750 mg oral tablet	t	20	f	1996-10-11	9000662	\N	\N	14825
ketorolac tromethamine 10 mg per 1 mL solution for injection ampoule	t	1	f	1996-10-16	9000663	\N	\N	14826
morphine sulfate 50 mg prolonged-release oral capsule	t	1	f	1996-10-23	9000664	\N	\N	14827
morphine sulfate 20 mg prolonged-release oral capsule	t	1	f	1996-10-25	9000665	\N	\N	14828
lisinopril 40 mg oral tablet	t	1	f	1996-10-30	9000666	\N	\N	14829
olanzapine 7.5 mg oral tablet	t	15	f	1996-11-04	9000667	\N	\N	14830
diclofenac sodium 75 mg and misoprostol 200 mcg oral tablet	t	2	f	1996-11-11	9000668	\N	\N	14831
olanzapine 10 mg oral tablet	t	15	f	1996-11-14	9000669	\N	\N	14832
olanzapine 5 mg oral tablet	t	15	f	1996-11-14	9000670	\N	\N	14833
insulin lispro 100 unit per mL solution for injection 10 mL vial	t	1	f	1996-11-15	9000671	\N	\N	14834
hydrochlorothiazide 12.5 mg and losartan potassium 50 mg oral tablet	t	14	f	1996-11-22	9000672	\N	\N	14835
insulin lispro 100 unit per mL solution for injection 3 mL cartridge	t	1	f	1996-11-27	9000673	\N	\N	14836
metronidazole 0.75 % cutaneous cream	t	1	f	1996-12-02	9000674	\N	\N	14837
ciclopirox olamine 1 % cutaneous cream	t	1	f	1996-12-03	9000675	\N	\N	14838
furosemide 10 mg per mL oral solution	t	1	f	1996-12-04	9000676	\N	\N	14839
valproic acid 500 mg gastro-resistant capsule	t	4	f	1996-12-13	9000677	\N	\N	14840
carbamazepine 100 mg per 5 mL oral suspension	t	2	f	1996-12-31	9000678	\N	\N	14841
hydromorphone hydrochloride 12 mg prolonged-release oral capsule	t	1	f	1996-12-31	9000679	\N	\N	14842
hydromorphone hydrochloride 24 mg prolonged-release oral capsule	t	1	f	1996-12-31	9000680	\N	\N	14843
levothyroxine sodium 100 mcg oral tablet	t	2	f	1996-12-31	9000681	\N	\N	14844
levothyroxine sodium 112 mcg oral tablet	t	1	f	1996-12-31	9000682	\N	\N	14845
levothyroxine sodium 125 mcg oral tablet	t	1	f	1996-12-31	9000683	\N	\N	14846
levothyroxine sodium 175 mcg oral tablet	t	1	f	1996-12-31	9000684	\N	\N	14847
levothyroxine sodium 200 mcg oral tablet	t	2	f	1996-12-31	9000685	\N	\N	14848
levothyroxine sodium 25 mcg oral tablet	t	1	f	1996-12-31	9000686	\N	\N	14849
levothyroxine sodium 300 mcg oral tablet	t	2	f	1996-12-31	9000687	\N	\N	14850
levothyroxine sodium 75 mcg oral tablet	t	1	f	1996-12-31	9000688	\N	\N	14851
levothyroxine sodium 88 mcg oral tablet	t	1	f	1996-12-31	9000689	\N	\N	14852
naproxen 25 mg per mL oral suspension	t	1	f	1996-12-31	9000690	\N	\N	14853
omeprazole (omeprazole magnesium) 20 mg gastro-resistant tablet	t	16	f	1996-12-31	9000691	\N	\N	14854
salbutamol (salbutamol sulfate) 1.25 mg per 2.5 mL inhalation solution unit dose vial	t	4	f	1996-12-31	9000692	\N	\N	14855
triamcinolone acetonide 55 mcg per actuation nasal spray	t	3	f	1996-12-31	9000693	\N	\N	14856
valacyclovir (valacyclovir hydrochloride) 500 mg oral tablet	t	16	f	1996-12-31	9000694	\N	\N	14857
normethadone hydrochloride 10 mg per mL and p-hydroxyephedrine hydrochloride 20 mg per mL oral drops	t	1	f	1997-01-23	9000695	\N	\N	14858
budesonide 3 mg prolonged-release oral capsule	t	1	f	1997-01-30	9000696	\N	\N	14859
paroxetine (paroxetine hydrochloride) 10 mg oral tablet	t	19	f	1997-01-31	9000697	\N	\N	14860
sumatriptan (sumatriptan succinate) 100 mg oral tablet	t	13	f	1997-02-11	9000698	\N	\N	14861
budesonide 100 mcg per actuation nasal spray	t	1	f	1997-02-12	9000699	\N	\N	14862
sumatriptan (sumatriptan hemisulfate) 20 mg nasal spray	t	1	f	1997-02-19	9000700	\N	\N	14863
sumatriptan (sumatriptan hemisulfate) 5 mg nasal spray	t	1	f	1997-02-19	9000701	\N	\N	14864
metoclopramide hydrochloride 1 mg per mL oral solution	t	1	f	1997-02-25	9000702	\N	\N	14865
atorvastatin (atorvastatin calcium) 10 mg oral tablet	t	21	f	1997-03-05	9000703	\N	\N	14866
atorvastatin (atorvastatin calcium) 20 mg oral tablet	t	21	f	1997-03-05	9000704	\N	\N	14867
atorvastatin (atorvastatin calcium) 40 mg oral tablet	t	20	f	1997-03-05	9000705	\N	\N	14868
zopiclone 5 mg oral tablet	t	18	f	1998-02-10	9000779	\N	\N	14940
pantoprazole (pantoprazole sodium) 40 mg gastro-resistant tablet	t	23	f	1997-03-05	9000706	\N	\N	14869
codeine (codeine, codeine sulfate) 50 mg prolonged-release oral tablet	t	1	f	1997-03-13	9000709	\N	\N	14870
ciclopirox olamine 1 % lotion	t	1	f	1997-03-24	9000710	\N	\N	14871
clobazam 10 mg oral tablet	t	5	f	1997-03-24	9000711	\N	\N	14872
ramipril 10 mg oral capsule	t	17	f	1997-03-24	9000712	\N	\N	14873
topiramate 100 mg oral tablet	t	20	f	1997-03-25	9000713	\N	\N	14874
topiramate 200 mg oral tablet	t	19	f	1997-03-25	9000714	\N	\N	14875
topiramate 25 mg oral tablet	t	20	f	1997-03-25	9000715	\N	\N	14876
diltiazem hydrochloride 120 mg modified-release oral capsule	t	4	f	1997-03-27	9000716	\N	\N	14877
diltiazem hydrochloride 180 mg modified-release oral capsule	t	4	f	1997-03-27	9000717	\N	\N	14878
diltiazem hydrochloride 240 mg modified-release oral capsule	t	4	f	1997-03-27	9000718	\N	\N	14879
betamethasone (betamethasone sodium phosphate) 5 mg per 100 mL rectal liquid	t	1	f	1997-04-01	9000719	\N	\N	14880
diltiazem hydrochloride 25 mg per 5 mL solution for injection vial	t	2	f	1997-04-10	9000720	\N	\N	14881
diltiazem hydrochloride 50 mg per 10 mL solution for injection vial	t	2	f	1997-04-10	9000721	\N	\N	14882
ramipril 2.5 mg oral capsule	t	17	f	1997-04-21	9000722	\N	\N	14883
ramipril 5 mg oral capsule	t	17	f	1997-04-21	9000723	\N	\N	14884
omeprazole (omeprazole magnesium) 10 mg gastro-resistant tablet	t	4	f	1997-04-28	9000724	\N	\N	14885
nitrofurantoin 50 mg oral capsule	t	1	f	1997-05-02	9000725	\N	\N	14886
hydroxyzine hydrochloride 500 mg per 10 mL solution for injection vial	t	1	f	1997-05-16	9000726	\N	\N	14887
ramipril 1.25 mg oral capsule	t	13	f	1997-05-28	9000727	\N	\N	14888
diltiazem hydrochloride 360 mg prolonged-release oral capsule	t	6	f	1997-06-09	9000728	\N	\N	14889
clotrimazole 10 % vaginal cream	t	1	f	1997-06-11	9000729	\N	\N	14890
clotrimazole 1 % and clotrimazole 10 % cutaneous cream	t	1	f	1997-06-11	9000730	\N	\N	14891
clotrimazole 1 % and clotrimazole 10 % vaginal cream	t	1	f	1997-06-11	9000731	\N	\N	14892
budesonide 0.25 mg per 2 mL nebuliser suspension unit dose vial	t	1	f	1997-06-16	9000732	\N	\N	14893
fluoxetine (fluoxetine hydrochloride) 20 mg per 5 mL oral solution	t	4	f	1997-06-16	9000733	\N	\N	14894
salbutamol 2.5 mg per 2.5 mL inhalation solution unit dose vial	t	1	f	1997-06-25	9000734	\N	\N	14895
estradiol 0.5 mg oral tablet	t	2	f	1997-07-10	9000735	\N	\N	14896
azithromycin 600 mg oral tablet	t	2	f	1997-07-21	9000736	\N	\N	14897
latanoprost 50 mcg per mL ophthalmic drops	t	8	f	1997-07-28	9000737	\N	\N	14898
methotrexate (methotrexate sodium) 20 mg per 2 mL solution for injection vial	t	1	f	1997-07-30	9000738	\N	\N	14899
morphine sulfate 30 mg suppository	t	1	f	1997-08-04	9000739	\N	\N	14900
morphine sulfate 5 mg suppository	t	1	f	1997-08-04	9000740	\N	\N	14901
haloperidol (haloperidol decanoate) 100 mg per 1 mL solution for injection vial	t	1	f	1997-08-17	9000741	\N	\N	14902
benztropine mesylate 0.4 mg per mL oral solution	t	1	f	1997-08-20	9000742	\N	\N	14903
donepezil hydrochloride 10 mg oral tablet	t	21	f	1997-08-20	9000743	\N	\N	14904
donepezil hydrochloride 5 mg oral tablet	t	21	f	1997-08-20	9000744	\N	\N	14905
furosemide 500 mg oral tablet	t	1	f	1997-08-20	9000745	\N	\N	14906
budesonide 64 mcg per actuation nasal spray	t	2	f	1997-09-17	9000746	\N	\N	14907
ranitidine (ranitidine hydrochloride) 75 mg oral tablet	t	6	f	1997-09-26	9000747	\N	\N	14908
terazosin (terazosin hydrochloride) 10 mg oral tablet	t	7	f	1997-09-26	9000748	\N	\N	14909
terazosin (terazosin hydrochloride) 1 mg oral tablet	t	7	f	1997-09-26	9000749	\N	\N	14910
terazosin (terazosin hydrochloride) 2 mg oral tablet	t	7	f	1997-09-26	9000750	\N	\N	14911
terazosin (terazosin hydrochloride) 5 mg oral tablet	t	7	f	1997-09-26	9000751	\N	\N	14912
triamcinolone acetonide 0.5 % cutaneous cream	t	1	f	1997-10-21	9000752	\N	\N	14913
methylphenidate hydrochloride 5 mg oral tablet	t	5	f	1997-10-24	9000753	\N	\N	14914
ipratropium bromide 250 mcg per 1 mL inhalation solution unit dose vial	t	1	f	1997-10-29	9000754	\N	\N	14915
ipratropium bromide 250 mcg per 2 mL inhalation solution unit dose vial	t	1	f	1997-10-29	9000755	\N	\N	14916
ipratropium bromide 500 mcg per 2 mL inhalation solution unit dose vial	t	1	f	1997-10-29	9000756	\N	\N	14917
ibuprofen 100 mg per 5 mL oral suspension	t	5	f	1997-11-03	9000757	\N	\N	14918
indomethacin 50 mg suppository	t	1	f	1997-11-17	9000758	\N	\N	14919
valproic acid (sodium valproate) 250 mg per 5 mL syrup	t	3	f	1997-11-20	9000759	\N	\N	14920
diclofenac sodium 25 mg oral tablet	t	2	f	1997-11-28	9000760	\N	\N	14921
diclofenac sodium 50 mg oral tablet	t	2	f	1997-11-28	9000761	\N	\N	14922
estradiol 3.8 mg transdermal patch	t	1	f	1997-12-01	9000762	\N	\N	14923
estradiol 7.6 mg transdermal patch	t	1	f	1997-12-01	9000763	\N	\N	14924
ipratropium bromide 125 mcg per 1 mL and ipratropium bromide 125 mcg per 1 mL inhalation solution unit dose vial	t	1	f	1997-12-04	9000764	\N	\N	14925
ipratropium bromide 250 mcg per 2 mL and ipratropium bromide 250 mcg per 2 mL inhalation solution unit dose vial	t	2	f	1997-12-04	9000765	\N	\N	14926
olanzapine 2.5 mg oral tablet	t	15	f	1997-12-08	9000766	\N	\N	14927
quetiapine (quetiapine fumarate) 100 mg oral tablet	t	21	f	1997-12-10	9000767	\N	\N	14928
quetiapine (quetiapine fumarate) 200 mg oral tablet	t	21	f	1997-12-10	9000768	\N	\N	14929
quetiapine (quetiapine fumarate) 25 mg oral tablet	t	21	f	1997-12-10	9000769	\N	\N	14930
valsartan 160 mg oral capsule	t	1	f	1997-12-15	9000770	\N	\N	14931
valsartan 80 mg oral capsule	t	1	f	1997-12-15	9000771	\N	\N	14932
ethinyl estradiol 20 mcg and levonorgestrel 100 mcg oral tablet	t	8	f	1998-01-07	9000772	\N	\N	14933
trandolapril 1 mg oral capsule	t	1	f	1998-01-07	9000773	\N	\N	14934
trandolapril 2 mg oral capsule	t	1	f	1998-01-14	9000774	\N	\N	14935
losartan potassium 100 mg oral tablet	t	18	f	1998-01-16	9000775	\N	\N	14936
trandolapril 0.5 mg oral capsule	t	1	f	1998-01-28	9000776	\N	\N	14937
acyclovir (acyclovir sodium) 500 mg per vial powder for solution for injection	t	1	f	1998-02-04	9000777	\N	\N	14938
olopatadine (olopatadine hydrochloride) 0.1 % ophthalmic drops	t	5	f	1998-02-09	9000778	\N	\N	14939
sumatriptan (sumatriptan succinate) 50 mg oral tablet	t	12	f	1998-02-11	9000780	\N	\N	14941
hydromorphone hydrochloride 30 mg prolonged-release oral capsule	t	1	f	1998-02-16	9000781	\N	\N	14942
trazodone hydrochloride 75 mg oral tablet	t	1	f	1998-02-17	9000782	\N	\N	14943
pramipexole dihydrochloride 0.25 mg oral tablet	t	11	f	1998-02-26	9000783	\N	\N	14944
pramipexole dihydrochloride 1.5 mg oral tablet	t	9	f	1998-02-26	9000784	\N	\N	14945
pramipexole dihydrochloride 1 mg oral tablet	t	10	f	1998-02-26	9000785	\N	\N	14946
ipratropium bromide 0.025 % per 1 mL inhalation solution unit dose vial	t	1	f	1998-03-04	9000786	\N	\N	14947
ipratropium bromide 0.05 % per 2 mL inhalation solution unit dose vial	t	2	f	1998-03-04	9000787	\N	\N	14948
risperidone (risperidone tartrate) 1 mg per mL oral solution	t	3	f	1998-03-04	9000788	\N	\N	14949
venlafaxine (venlafaxine hydrochloride) 150 mg prolonged-release oral capsule	t	16	f	1998-03-04	9000789	\N	\N	14950
venlafaxine (venlafaxine hydrochloride) 37.5 mg prolonged-release oral capsule	t	16	f	1998-03-04	9000790	\N	\N	14951
venlafaxine (venlafaxine hydrochloride) 75 mg prolonged-release oral capsule	t	16	f	1998-03-04	9000791	\N	\N	14952
acyclovir (acyclovir sodium) 25 mg per mL solution for injection	t	1	f	1998-03-18	9000792	\N	\N	14953
beclomethasone dipropionate 0.025 % cutaneous cream	t	1	f	1998-03-30	9000793	\N	\N	14954
fluticasone propionate 100 mcg inhalation powder	t	1	f	1998-04-02	9000794	\N	\N	14955
fluticasone propionate 250 mcg inhalation powder	t	1	f	1998-04-02	9000795	\N	\N	14956
fluticasone propionate 500 mcg inhalation powder	t	1	f	1998-04-02	9000796	\N	\N	14957
cyproterone acetate 2 mg and ethinyl estradiol 35 mcg oral tablet	t	1	f	1998-04-08	9000797	\N	\N	14958
bupropion hydrochloride 150 mg prolonged-release oral tablet	t	10	f	1998-05-05	9000798	\N	\N	14959
acyclovir (acyclovir sodium) 1000 mg per 20 mL solution for injection vial	t	1	f	1998-05-08	9000799	\N	\N	14960
acyclovir (acyclovir sodium) 500 mg per 10 mL solution for injection vial	t	1	f	1998-05-08	9000800	\N	\N	14961
clobetasol propionate 0.05 % cutaneous liquid	t	1	f	1998-06-18	9000801	\N	\N	14962
irbesartan 75 mg oral tablet	t	19	f	1998-06-22	9000802	\N	\N	14963
finasteride 1 mg oral tablet	t	6	f	1998-07-09	9000803	\N	\N	14964
valproic acid (sodium valproate) 50 mg per mL syrup	t	1	f	1998-07-15	9000804	\N	\N	14965
irbesartan 150 mg oral tablet	t	20	f	1998-07-22	9000805	\N	\N	14966
irbesartan 300 mg oral tablet	t	19	f	1998-07-22	9000806	\N	\N	14967
nitroglycerin 0.4 mg per actuation sublingual spray	t	4	f	1998-07-31	9000807	\N	\N	14968
salbutamol (salbutamol sulfate) 100 mcg pressurised inhalation	t	3	f	1998-08-13	9000808	\N	\N	14969
montelukast (montelukast sodium) 10 mg oral tablet	t	17	f	1998-08-21	9000809	\N	\N	14970
montelukast (montelukast sodium) 5 mg chewable tablet	t	15	f	1998-08-21	9000810	\N	\N	14971
ciprofloxacin 10 g per 100 mL oral suspension	t	1	f	1998-09-15	9000811	\N	\N	14972
mometasone furoate 50 mcg per spray nasal spray	t	2	f	1998-09-15	9000812	\N	\N	14973
prednisolone (prednisolone sodium phosphate) 5 mg per 5 mL oral liquid	t	1	f	1998-09-23	9000813	\N	\N	14974
hydrochlorothiazide 12.5 mg and quinapril (quinapril hydrochloride) 10 mg oral tablet	t	2	f	1998-10-01	9000814	\N	\N	14975
hydrochlorothiazide 12.5 mg and quinapril (quinapril hydrochloride) 20 mg oral tablet	t	2	f	1998-10-01	9000815	\N	\N	14976
epinephrine racemic 22.5 mg per mL inhalation solution	t	1	f	1998-10-02	9000816	\N	\N	14977
ciprofloxacin (ciprofloxacin hydrochloride) 0.3 % ophthalmic ointment	t	1	f	1998-10-07	9000817	\N	\N	14978
clopidogrel (clopidogrel bisulfate) 75 mg oral tablet	t	17	f	1998-10-13	9000818	\N	\N	14979
ibuprofen 40 mg per mL oral suspension	t	3	f	1998-10-14	9000819	\N	\N	14980
nystatin 100000 unit per g vaginal cream	t	1	f	1998-10-14	9000820	\N	\N	14981
amoxicillin 200 mg per 5 mL and clavulanic acid (potassium clavulanate) 28.5 mg per 5 mL powder for oral suspension	t	1	f	1998-10-29	9000821	\N	\N	14982
amoxicillin 400 mg per 5 mL and clavulanic acid (potassium clavulanate) 57 mg per 5 mL powder for oral suspension	t	2	f	1998-10-29	9000822	\N	\N	14983
amoxicillin 875 mg and clavulanic acid (potassium clavulanate) 125 mg oral tablet	t	4	f	1998-10-29	9000823	\N	\N	14984
estradiol 0.06 % transdermal gel	t	1	f	1998-11-16	9000824	\N	\N	14985
tolterodine tartrate 2 mg oral tablet	t	4	f	1998-11-23	9000825	\N	\N	14986
tolterodine tartrate 1 mg oral tablet	t	4	f	1998-11-26	9000826	\N	\N	14987
ipratropium bromide 0.25 mg per 1 mL inhalation solution unit dose vial	t	1	f	1998-12-04	9000827	\N	\N	14988
ipratropium bromide 0.25 mg per mL inhalation solution 20 mL bottle	t	1	f	1998-12-04	9000828	\N	\N	14989
ipratropium bromide 0.5 mg per 2 mL inhalation solution unit dose vial	t	1	f	1998-12-04	9000829	\N	\N	14990
candesartan cilexetil 16 mg oral tablet	t	15	f	1998-12-07	9000830	\N	\N	14991
candesartan cilexetil 8 mg oral tablet	t	16	f	1998-12-07	9000831	\N	\N	14992
terbinafine hydrochloride 1 % cutaneous spray	t	1	f	1999-01-05	9000832	\N	\N	14993
clindamycin (clindamycin phosphate) 150 mg per mL solution for injection	t	2	f	1999-01-15	9000833	\N	\N	14994
citalopram (citalopram hydrobromide) 20 mg oral tablet	t	27	f	1999-03-08	9000834	\N	\N	14995
citalopram (citalopram hydrobromide) 40 mg oral tablet	t	27	f	1999-03-08	9000835	\N	\N	14996
sildenafil (sildenafil citrate) 100 mg oral tablet	t	18	f	1999-03-09	9000836	\N	\N	14997
sildenafil (sildenafil citrate) 25 mg oral tablet	t	12	f	1999-03-09	9000837	\N	\N	14998
sildenafil (sildenafil citrate) 50 mg oral tablet	t	13	f	1999-03-09	9000838	\N	\N	14999
azithromycin 250 mg oral tablet	t	9	f	1999-03-23	9000839	\N	\N	15000
amiodarone hydrochloride 200 mg oral tablet	t	11	f	1999-03-29	9000840	\N	\N	15001
fenofibrate 200 mg oral capsule	t	7	f	1999-03-29	9000841	\N	\N	15002
nitroglycerin 22.4 mg transdermal patch	t	1	f	1999-04-01	9000842	\N	\N	15003
nitroglycerin 44.8 mg transdermal patch	t	1	f	1999-04-01	9000843	\N	\N	15004
nitroglycerin 67.2 mg transdermal patch	t	1	f	1999-04-01	9000844	\N	\N	15005
ipratropium bromide 0.3 mg per mL inhalation vapour (liquid)	t	2	f	1999-04-15	9000845	\N	\N	15006
celecoxib 100 mg oral capsule	t	21	f	1999-04-19	9000846	\N	\N	15007
celecoxib 200 mg oral capsule	t	21	f	1999-04-19	9000847	\N	\N	15008
ketorolac tromethamine 30 mg per 1 mL solution for injection vial	t	4	f	1999-05-21	9000848	\N	\N	15009
salbutamol (salbutamol sulfate) 5 mg per 5 mL solution for injection ampoule	t	1	f	1999-05-24	9000849	\N	\N	15010
dorzolamide (dorzolamide hydrochloride) 20 mg per mL and timolol (timolol maleate) 5 mg per mL ophthalmic drops	t	11	f	1999-05-27	9000850	\N	\N	15011
benztropine mesylate 2 mg per 2 mL solution for injection vial	t	1	f	1999-05-28	9000851	\N	\N	15012
haloperidol (haloperidol decanoate) 100 mg per mL solution for injection	t	1	f	1999-05-28	9000852	\N	\N	15013
lamotrigine 5 mg oral tablet	t	1	f	1999-06-02	9000853	\N	\N	15014
topiramate 15 mg oral capsule	t	1	f	1999-06-11	9000854	\N	\N	15015
topiramate 25 mg oral capsule	t	1	f	1999-06-11	9000855	\N	\N	15016
repaglinide 0.5 mg oral tablet	t	7	f	1999-06-21	9000856	\N	\N	15017
repaglinide 1 mg oral tablet	t	7	f	1999-06-21	9000857	\N	\N	15018
repaglinide 2 mg oral tablet	t	7	f	1999-06-21	9000858	\N	\N	15019
dexamethasone phosphate (dexamethasone sodium phosphate) 10 mg per mL solution for injection	t	2	f	1999-06-30	9000859	\N	\N	15020
haloperidol (haloperidol decanoate) 50 mg per mL solution for injection	t	1	f	1999-06-30	9000860	\N	\N	15021
warfarin sodium 3 mg oral tablet	t	3	f	1999-08-25	9000861	\N	\N	15022
azithromycin 500 mg per vial powder for solution for injection	t	4	f	1999-08-27	9000862	\N	\N	15023
sumatriptan (sumatriptan succinate) 3 mg per 0.5 mL solution for injection syringe	t	2	f	1999-08-30	9000863	\N	\N	15024
rizatriptan (rizatriptan benzoate) 10 mg oral tablet	t	7	f	1999-08-31	9000864	\N	\N	15025
rizatriptan (rizatriptan benzoate) 10 mg orodispersible tablet	t	14	f	1999-08-31	9000865	\N	\N	15026
telmisartan 40 mg oral tablet	t	15	f	1999-09-01	9000866	\N	\N	15027
telmisartan 80 mg oral tablet	t	15	f	1999-09-01	9000867	\N	\N	15028
risedronate sodium 30 mg oral tablet	t	2	f	1999-09-07	9000868	\N	\N	15029
ipratropium bromide 0.3 mg per mL nasal spray	t	1	f	1999-09-15	9000869	\N	\N	15030
methotrexate 2.5 mg oral tablet	t	1	f	1999-09-17	9000870	\N	\N	15031
risperidone 0.25 mg oral tablet	t	16	f	1999-09-17	9000871	\N	\N	15032
risperidone 0.5 mg oral tablet	t	16	f	1999-09-17	9000872	\N	\N	15033
fluticasone propionate 100 mcg and salmeterol (salmeterol xinafoate) 50 mcg inhalation powder	t	1	f	1999-09-24	9000873	\N	\N	15034
fluticasone propionate 250 mcg and salmeterol (salmeterol xinafoate) 50 mcg inhalation powder	t	1	f	1999-09-24	9000874	\N	\N	15035
fluticasone propionate 500 mcg and salmeterol (salmeterol xinafoate) 50 mcg inhalation powder	t	1	f	1999-09-24	9000875	\N	\N	15036
oxybutynin chloride 2.5 mg oral tablet	t	2	f	1999-11-22	9000876	\N	\N	15037
cetirizine hydrochloride 5 mg per 5 mL syrup	t	1	f	1999-12-21	9000877	\N	\N	15038
hydrochlorothiazide 25 mg and losartan potassium 100 mg oral tablet	t	14	f	2000-01-21	9000878	\N	\N	15039
diazepam 15 mg per 3 mL rectal gel tube	t	1	f	2000-01-28	9000879	\N	\N	15040
diazepam 20 mg per 4 mL rectal gel tube	t	1	f	2000-01-28	9000880	\N	\N	15041
diazepam 2.5 mg per 0.5 mL rectal gel tube	t	1	f	2000-01-28	9000881	\N	\N	15042
diazepam 5 mg per 1 mL rectal gel tube	t	1	f	2000-01-28	9000882	\N	\N	15043
diazepam 7.5 mg per 1.5 mL rectal gel tube	t	1	f	2000-01-28	9000883	\N	\N	15044
fentanyl (fentanyl citrate) 2500 mcg per 50 mL solution for injection vial	t	1	f	2000-02-10	9000884	\N	\N	15045
fentanyl (fentanyl citrate) 250 mcg per 5 mL solution for injection vial	t	1	f	2000-02-10	9000885	\N	\N	15046
fenofibrate 160 mg oral tablet	t	6	f	2000-03-16	9000886	\N	\N	15047
hydrochlorothiazide 12.5 mg and irbesartan 150 mg oral tablet	t	14	f	2000-03-16	9000887	\N	\N	15048
hydrochlorothiazide 12.5 mg and irbesartan 300 mg oral tablet	t	14	f	2000-03-16	9000888	\N	\N	15049
pramipexole dihydrochloride 0.5 mg oral tablet	t	10	f	2000-03-17	9000889	\N	\N	15050
oxycodone hydrochloride 20 mg oral tablet	t	4	f	2000-03-31	9000890	\N	\N	15051
gabapentin 600 mg oral tablet	t	17	f	2000-05-01	9000891	\N	\N	15052
gabapentin 800 mg oral tablet	t	14	f	2000-05-01	9000892	\N	\N	15053
meperidine hydrochloride 100 mg per mL solution for injection	t	2	f	2000-05-01	9000893	\N	\N	15054
ranitidine (ranitidine hydrochloride) 50 mg per 2 mL solution for injection vial	t	2	f	2000-05-01	9000894	\N	\N	15055
pantoprazole (pantoprazole sodium) 20 mg gastro-resistant tablet	t	8	f	2000-05-02	9000895	\N	\N	15056
methadone hydrochloride 10 mg per mL oral liquid	t	2	f	2000-05-05	9000896	\N	\N	15057
rizatriptan (rizatriptan benzoate) 5 mg orodispersible tablet	t	12	f	2000-05-05	9000897	\N	\N	15058
hydrochlorothiazide 12.5 mg and valsartan 160 mg oral tablet	t	8	f	2000-05-10	9000898	\N	\N	15059
hydrochlorothiazide 12.5 mg and valsartan 80 mg oral tablet	t	8	f	2000-05-10	9000899	\N	\N	15060
rivastigmine (rivastigmine hydrogen tartrate) 1.5 mg oral capsule	t	9	f	2000-05-15	9000900	\N	\N	15061
rivastigmine (rivastigmine hydrogen tartrate) 3 mg oral capsule	t	9	f	2000-05-15	9000901	\N	\N	15062
rivastigmine (rivastigmine hydrogen tartrate) 4.5 mg oral capsule	t	9	f	2000-05-15	9000902	\N	\N	15063
rivastigmine (rivastigmine hydrogen tartrate) 6 mg oral capsule	t	9	f	2000-05-15	9000903	\N	\N	15064
progesterone 8 % vaginal gel	t	1	f	2000-05-20	9000904	\N	\N	15065
salbutamol (salbutamol sulfate) 6.25 mg per 2.5 mL inhalation solution unit dose vial	t	1	f	2000-05-21	9000905	\N	\N	15066
beclomethasone dipropionate 100 mcg per actuation pressurised inhalation	t	1	f	2000-05-29	9000906	\N	\N	15067
beclomethasone dipropionate 50 mcg per actuation pressurised inhalation	t	1	f	2000-05-29	9000907	\N	\N	15068
mesalazine 1000 mg suppository	t	1	f	2000-06-01	9000908	\N	\N	15069
amiodarone hydrochloride 150 mg per 3 mL solution for injection vial	t	4	f	2000-06-14	9000909	\N	\N	15070
amiodarone hydrochloride 450 mg per 9 mL solution for injection vial	t	1	f	2000-06-14	9000910	\N	\N	15071
amiodarone hydrochloride 900 mg per 18 mL solution for injection vial	t	2	f	2000-06-14	9000911	\N	\N	15072
risedronate sodium 5 mg oral tablet	t	2	f	2000-07-25	9000912	\N	\N	15073
butorphanol tartrate 10 mg per mL nasal spray	t	2	f	2000-08-01	9000913	\N	\N	15074
warfarin sodium 6 mg oral tablet	t	2	f	2000-08-09	9000914	\N	\N	15075
warfarin sodium 7.5 mg oral tablet	t	1	f	2000-08-09	9000915	\N	\N	15076
bimatoprost 0.03 % ophthalmic drops	t	2	f	2002-05-24	9000987	\N	\N	15147
pioglitazone (pioglitazone hydrochloride) 15 mg oral tablet	t	17	f	2000-08-28	9000916	\N	\N	15077
pioglitazone (pioglitazone hydrochloride) 30 mg oral tablet	t	17	f	2000-08-28	9000917	\N	\N	15078
pioglitazone (pioglitazone hydrochloride) 45 mg oral tablet	t	17	f	2000-08-28	9000918	\N	\N	15079
meloxicam 15 mg oral tablet	t	11	f	2000-09-26	9000919	\N	\N	15080
meloxicam 7.5 mg oral tablet	t	11	f	2000-09-26	9000920	\N	\N	15081
ibuprofen 200 mg oral capsule	t	5	f	2000-10-02	9000921	\N	\N	15082
salbutamol (salbutamol sulfate) 12.5 mg per 2.5 mL inhalation solution unit dose vial	t	1	f	2000-10-02	9000922	\N	\N	15083
moxifloxacin (moxifloxacin hydrochloride) 400 mg oral tablet	t	10	f	2000-10-20	9000923	\N	\N	15084
meperidine hydrochloride 50 mg per mL solution for injection	t	1	f	2000-12-01	9000924	\N	\N	15085
meperidine hydrochloride 75 mg per mL solution for injection	t	1	f	2000-12-01	9000925	\N	\N	15086
hydrocortisone valerate 0.2 % cutaneous cream	t	1	f	2000-12-18	9000926	\N	\N	15087
hydrocortisone valerate 0.2 % cutaneous ointment	t	1	f	2000-12-18	9000927	\N	\N	15088
testosterone 12.2 mg transdermal patch	t	1	f	2000-12-19	9000928	\N	\N	15089
salbutamol (salbutamol sulfate) 200 mcg inhalation powder	t	1	f	2001-01-02	9000929	\N	\N	15090
doxycycline (doxycycline hyclate) 44 mg per unit periodontal gel	t	1	f	2001-01-31	9000930	\N	\N	15091
fenofibrate 67 mg oral capsule	t	1	f	2001-02-21	9000931	\N	\N	15092
pravastatin sodium 10 mg oral tablet	t	14	f	2001-02-27	9000932	\N	\N	15093
amoxicillin 250 mg and clavulanic acid (potassium clavulanate) 125 mg oral tablet	t	1	f	2001-03-01	9000933	\N	\N	15094
olanzapine 5 mg orodispersible tablet	t	16	f	2001-03-06	9000934	\N	\N	15095
olanzapine 10 mg orodispersible tablet	t	16	f	2001-03-15	9000935	\N	\N	15096
naproxen 250 mg gastro-resistant tablet	t	3	f	2001-04-02	9000936	\N	\N	15097
tacrolimus 0.5 mg oral capsule	t	2	f	2001-04-02	9000937	\N	\N	15098
gliclazide 30 mg prolonged-release oral tablet	t	6	f	2001-04-04	9000938	\N	\N	15099
montelukast (montelukast sodium) 4 mg chewable tablet	t	15	f	2001-04-09	9000939	\N	\N	15100
digoxin 0.05 mg per mL oral solution	t	1	f	2001-06-01	9000941	\N	\N	15101
lorazepam 4 mg per 1 mL solution for injection vial	t	2	f	2001-06-06	9000942	\N	\N	15102
oxybutynin chloride 10 mg prolonged-release oral tablet	t	1	f	2001-06-22	9000943	\N	\N	15103
oxybutynin chloride 5 mg prolonged-release oral tablet	t	1	f	2001-06-22	9000944	\N	\N	15104
clobetasol propionate 0.05 % cutaneous solution	t	3	f	2001-06-25	9000945	\N	\N	15105
candesartan cilexetil 16 mg and hydrochlorothiazide 12.5 mg oral tablet	t	10	f	2001-06-26	9000946	\N	\N	15106
atorvastatin (atorvastatin calcium) 80 mg oral tablet	t	18	f	2001-06-29	9000947	\N	\N	15107
hydromorphone hydrochloride 18 mg prolonged-release oral capsule	t	1	f	2001-07-03	9000948	\N	\N	15108
fusidic acid 1 % ophthalmic drops	t	2	f	2001-08-07	9000949	\N	\N	15109
hydrochlorothiazide 12.5 mg and telmisartan 80 mg oral tablet	t	11	f	2001-08-16	9000950	\N	\N	15110
betahistine hydrochloride 16 mg oral tablet	t	5	f	2001-08-17	9000951	\N	\N	15111
esomeprazole (esomeprazole magnesium) 20 mg gastro-resistant tablet	t	7	f	2001-08-20	9000952	\N	\N	15112
esomeprazole (esomeprazole magnesium) 40 mg gastro-resistant tablet	t	8	f	2001-08-20	9000953	\N	\N	15113
quetiapine (quetiapine fumarate) 300 mg oral tablet	t	21	f	2001-08-21	9000954	\N	\N	15114
estradiol 0.585 mg transdermal patch	t	1	f	2001-09-05	9000955	\N	\N	15115
estradiol 0.78 mg transdermal patch	t	1	f	2001-09-05	9000956	\N	\N	15116
estradiol 1.17 mg transdermal patch	t	1	f	2001-09-05	9000957	\N	\N	15117
estradiol 1.56 mg transdermal patch	t	1	f	2001-09-05	9000958	\N	\N	15118
tacrolimus 0.03 % cutaneous ointment	t	1	f	2001-09-06	9000959	\N	\N	15119
tacrolimus 0.1 % cutaneous ointment	t	1	f	2001-09-06	9000960	\N	\N	15120
lamotrigine 2 mg oral tablet	t	1	f	2001-09-13	9000961	\N	\N	15121
insulin aspart 100 unit per mL solution for injection 3 mL cartridge	t	3	f	2001-10-31	9000962	\N	\N	15122
quinine sulfate 300 mg oral tablet	t	1	f	2001-11-08	9000963	\N	\N	15123
methotrexate (methotrexate sodium) 2.5 mg oral tablet	t	1	f	2001-11-14	9000964	\N	\N	15124
ketorolac tromethamine 30 mg per mL solution for injection	t	1	f	2001-12-04	9000965	\N	\N	15125
hydromorphone hydrochloride 1000 mg per 10 mL solution for injection vial	t	1	f	2001-12-10	9000966	\N	\N	15126
fluticasone propionate 125 mcg per actuation pressurised inhalation	t	1	f	2001-12-20	9000967	\N	\N	15127
fluticasone propionate 250 mcg per actuation pressurised inhalation	t	1	f	2001-12-20	9000968	\N	\N	15128
fluticasone propionate 50 mcg per actuation pressurised inhalation	t	1	f	2001-12-20	9000969	\N	\N	15129
fluticasone propionate 125 mcg and salmeterol (salmeterol xinafoate) 25 mcg pressurised inhalation	t	1	f	2001-12-21	9000970	\N	\N	15130
fluticasone propionate 250 mcg and salmeterol (salmeterol xinafoate) 25 mcg pressurised inhalation	t	1	f	2001-12-21	9000971	\N	\N	15131
cetirizine hydrochloride 20 mg oral tablet	t	6	f	2002-01-14	9000972	\N	\N	15132
alendronic acid (alendronate sodium) 70 mg oral tablet	t	20	f	2002-02-14	9000973	\N	\N	15133
alfuzosin hydrochloride 10 mg prolonged-release oral tablet	t	7	f	2002-02-21	9000974	\N	\N	15134
prednisolone (prednisolone sodium phosphate) 5 mg per 5 mL oral solution	t	1	f	2002-03-19	9000975	\N	\N	15135
estradiol 10 mg transdermal patch	t	1	f	2002-03-21	9000976	\N	\N	15136
estradiol 5 mg transdermal patch	t	1	f	2002-03-22	9000977	\N	\N	15137
tolterodine tartrate 2 mg prolonged-release oral capsule	t	4	f	2002-03-26	9000978	\N	\N	15138
tolterodine tartrate 4 mg prolonged-release oral capsule	t	4	f	2002-03-26	9000979	\N	\N	15139
rabeprazole sodium 10 mg gastro-resistant tablet	t	11	f	2002-04-02	9000980	\N	\N	15140
rabeprazole sodium 20 mg gastro-resistant tablet	t	12	f	2002-04-02	9000981	\N	\N	15141
testosterone 1 % cutaneous gel	t	3	f	2002-05-06	9000982	\N	\N	15142
testosterone 1 % cutaneous gel 2.5 g sachet	t	1	f	2002-05-06	9000983	\N	\N	15143
testosterone 1 % cutaneous gel 5 g sachet	t	1	f	2002-05-06	9000984	\N	\N	15144
clarithromycin 500 mg prolonged-release oral tablet	t	3	f	2002-05-22	9000985	\N	\N	15145
ketorolac tromethamine 60 mg per 2 mL solution for injection vial	t	1	f	2002-05-23	9000986	\N	\N	15146
clarithromycin 250 mg per 5 mL granules for oral suspension	t	3	f	2002-05-28	9000988	\N	\N	15148
clindamycin (clindamycin phosphate) 1 % pad	t	1	f	2002-06-10	9000989	\N	\N	15149
insulin aspart 100 unit per mL solution for injection 10 mL vial	t	2	f	2002-06-12	9000990	\N	\N	15150
amoxicillin 125 mg per 5 mL and clavulanic acid (potassium clavulanate) 31.25 mg per 5 mL oral suspension	t	1	f	2002-06-18	9000991	\N	\N	15151
amoxicillin 250 mg per 5 mL and clavulanic acid (potassium clavulanate) 62.5 mg per 5 mL oral suspension	t	1	f	2002-06-18	9000992	\N	\N	15152
olanzapine 15 mg oral tablet	t	15	f	2002-06-24	9000993	\N	\N	15153
insulin glargine 100 unit per mL solution for injection 10 mL vial	t	1	f	2002-07-24	9000994	\N	\N	15154
zopiclone 3.75 mg oral tablet	t	2	f	2002-07-29	9000995	\N	\N	15155
salbutamol (salbutamol sulfate) 100 mcg per actuation pressurised inhalation	t	2	f	2002-08-22	9000996	\N	\N	15156
levothyroxine sodium 500 mcg per vial powder for solution for injection	t	1	f	2002-08-27	9000997	\N	\N	15157
amiodarone hydrochloride 300 mg per 6 mL solution for injection vial	t	1	f	2002-08-29	9000998	\N	\N	15158
testosterone 24.3 mg transdermal patch	t	1	f	2002-09-24	9000999	\N	\N	15159
estradiol 0.39 mg transdermal patch	t	1	f	2002-10-03	9001000	\N	\N	15160
metoprolol tartrate 25 mg oral tablet	t	8	f	2002-10-08	9001001	\N	\N	15161
pentazocine (pentazocine lactate) 30 mg per mL solution for injection	t	1	f	2002-11-01	9001002	\N	\N	15162
tiotropium (tiotropium bromide) 18 mcg inhalation powder capsule	t	1	f	2002-11-21	9001003	\N	\N	15163
atenolol 25 mg oral tablet	t	12	f	2002-11-28	9001004	\N	\N	15164
ipratropium bromide 0.03 % nasal spray	t	1	f	2002-12-03	9001005	\N	\N	15165
ipratropium bromide 0.06 % nasal spray	t	1	f	2002-12-03	9001006	\N	\N	15166
rivastigmine (rivastigmine hydrogen tartrate) 2 mg per mL oral solution	t	1	f	2002-12-05	9001007	\N	\N	15167
risedronate sodium 35 mg oral tablet	t	14	f	2002-12-10	9001008	\N	\N	15168
indapamide 1.25 mg and perindopril erbumine 4 mg oral tablet	t	1	f	2002-12-19	9001009	\N	\N	15169
simvastatin 5 mg oral tablet	t	19	f	2002-12-20	9001010	\N	\N	15170
simvastatin 80 mg oral tablet	t	20	f	2002-12-20	9001011	\N	\N	15171
hydrochlorothiazide 25 mg and valsartan 160 mg oral tablet	t	8	f	2003-01-24	9001012	\N	\N	15172
valsartan 160 mg oral tablet	t	13	f	2003-01-24	9001013	\N	\N	15173
valsartan 80 mg oral tablet	t	14	f	2003-01-24	9001014	\N	\N	15174
rosuvastatin (rosuvastatin calcium) 10 mg oral tablet	t	21	f	2003-02-19	9001015	\N	\N	15175
rosuvastatin (rosuvastatin calcium) 20 mg oral tablet	t	21	f	2003-02-19	9001016	\N	\N	15176
rosuvastatin (rosuvastatin calcium) 40 mg oral tablet	t	19	f	2003-02-19	9001017	\N	\N	15177
ibuprofen 100 mg chewable tablet	t	2	f	2003-03-31	9001018	\N	\N	15178
diclofenac sodium 1.5 % cutaneous solution	t	4	f	2003-04-01	9001019	\N	\N	15179
bisoprolol fumarate 10 mg oral tablet	t	9	f	2003-04-24	9001020	\N	\N	15180
bisoprolol fumarate 5 mg oral tablet	t	9	f	2003-04-24	9001021	\N	\N	15181
estradiol 4 mg transdermal patch	t	1	f	2003-04-24	9001022	\N	\N	15182
estradiol 6 mg transdermal patch	t	1	f	2003-04-24	9001023	\N	\N	15183
estradiol 8 mg transdermal patch	t	1	f	2003-04-24	9001024	\N	\N	15184
alendronic acid (alendronate sodium) 10 mg oral tablet	t	10	f	2003-05-12	9001025	\N	\N	15185
ibuprofen 100 mg oral tablet	t	1	f	2003-05-14	9001026	\N	\N	15186
ibuprofen 50 mg oral tablet	t	1	f	2003-05-14	9001027	\N	\N	15187
indapamide 0.625 mg and perindopril erbumine 2 mg oral tablet	t	1	f	2003-05-16	9001028	\N	\N	15188
salbutamol (salbutamol sulfate) 0.4 mg per mL oral solution	t	1	f	2003-05-28	9001029	\N	\N	15189
hydrochlorothiazide 25 mg and quinapril (quinapril hydrochloride) 20 mg oral tablet	t	2	f	2003-06-02	9001030	\N	\N	15190
ezetimibe 10 mg oral tablet	t	17	f	2003-06-15	9001031	\N	\N	15191
calcitriol 1 mcg per 1 mL solution for injection ampoule	t	2	f	2003-07-07	9001033	\N	\N	15192
methadone hydrochloride 1 mg per mL oral solution	t	2	f	2003-07-11	9001034	\N	\N	15193
levetiracetam 250 mg oral tablet	t	17	f	2003-07-23	9001035	\N	\N	15194
levetiracetam 500 mg oral tablet	t	18	f	2003-07-23	9001036	\N	\N	15195
levetiracetam 750 mg oral tablet	t	17	f	2003-07-23	9001037	\N	\N	15196
methylphenidate hydrochloride 18 mg prolonged-release oral tablet	t	4	f	2003-07-23	9001038	\N	\N	15197
methylphenidate hydrochloride 36 mg prolonged-release oral tablet	t	4	f	2003-07-23	9001039	\N	\N	15198
methylphenidate hydrochloride 54 mg prolonged-release oral tablet	t	4	f	2003-07-23	9001040	\N	\N	15199
methadone hydrochloride 10 mg oral tablet	t	1	f	2003-07-29	9001041	\N	\N	15200
methadone hydrochloride 1 mg oral tablet	t	1	f	2003-07-29	9001042	\N	\N	15201
methadone hydrochloride 25 mg oral tablet	t	1	f	2003-07-29	9001043	\N	\N	15202
methadone hydrochloride 5 mg oral tablet	t	1	f	2003-07-29	9001044	\N	\N	15203
carvedilol 12.5 mg oral tablet	t	11	f	2003-08-04	9001045	\N	\N	15204
carvedilol 25 mg oral tablet	t	11	f	2003-08-04	9001046	\N	\N	15205
carvedilol 3.125 mg oral tablet	t	11	f	2003-08-04	9001047	\N	\N	15206
carvedilol 6.25 mg oral tablet	t	11	f	2003-08-04	9001048	\N	\N	15207
ciprofloxacin (ciprofloxacin hydrochloride, ciprofloxacin) 500 mg prolonged-release oral tablet	t	2	f	2003-08-07	9001049	\N	\N	15208
doxycycline (doxycycline hyclate) 20 mg oral capsule	t	1	f	2003-09-03	9001050	\N	\N	15209
perindopril erbumine 8 mg oral tablet	t	1	f	2003-09-11	9001051	\N	\N	15210
levothyroxine sodium 137 mcg oral tablet	t	1	f	2003-11-01	9001052	\N	\N	15211
trandolapril 4 mg oral capsule	t	1	f	2003-11-01	9001053	\N	\N	15212
dutasteride 0.5 mg oral capsule	t	12	f	2003-11-14	9001054	\N	\N	15213
ciclopirox olamine 1.5 % shampoo	t	1	f	2003-11-17	9001055	\N	\N	15214
tadalafil 20 mg oral tablet	t	16	f	2003-11-25	9001056	\N	\N	15215
fosinopril sodium 10 mg oral tablet	t	8	f	2003-12-05	9001057	\N	\N	15216
fosinopril sodium 20 mg oral tablet	t	8	f	2003-12-05	9001058	\N	\N	15217
betahistine hydrochloride 24 mg oral tablet	t	5	f	2003-12-10	9001059	\N	\N	15218
tadalafil 10 mg oral tablet	t	12	f	2003-12-11	9001060	\N	\N	15219
mirtazapine 15 mg orodispersible tablet	t	3	f	2003-12-22	9001061	\N	\N	15220
mirtazapine 30 mg orodispersible tablet	t	3	f	2003-12-22	9001062	\N	\N	15221
mirtazapine 45 mg orodispersible tablet	t	3	f	2003-12-22	9001063	\N	\N	15222
alendronic acid (alendronate sodium) 5 mg oral tablet	t	5	f	2003-12-23	9001064	\N	\N	15223
ethinyl estradiol 0.6 mg and norelgestromin 6 mg transdermal patch	t	1	f	2003-12-24	9001065	\N	\N	15224
paroxetine (paroxetine hydrochloride) 12.5 mg prolonged-release oral tablet	t	1	f	2004-01-05	9001066	\N	\N	15225
paroxetine (paroxetine hydrochloride) 25 mg prolonged-release oral tablet	t	1	f	2004-01-05	9001067	\N	\N	15226
olanzapine 15 mg orodispersible tablet	t	15	f	2004-01-09	9001068	\N	\N	15227
olanzapine (olanzapine tartrate) 10 mg per vial powder for solution for injection	t	1	f	2004-01-12	9001069	\N	\N	15228
montelukast (montelukast sodium) 4 mg per pck granules for oral suspension	t	2	f	2004-02-20	9001070	\N	\N	15229
ketorolac tromethamine 0.4 % ophthalmic drops	t	1	f	2004-03-08	9001071	\N	\N	15230
estradiol 2 mg transdermal patch	t	1	f	2004-03-12	9001072	\N	\N	15231
estradiol 5.7 mg transdermal patch	t	1	f	2004-03-12	9001073	\N	\N	15232
ipratropium bromide 20 mcg per actuation pressurised inhalation	t	1	f	2004-03-24	9001074	\N	\N	15233
mirtazapine 15 mg oral tablet	t	8	f	2004-03-31	9001075	\N	\N	15234
ciprofloxacin (ciprofloxacin hydrochloride, ciprofloxacin) 1000 mg prolonged-release oral tablet	t	1	f	2004-04-08	9001076	\N	\N	15235
methotrexate 10 mg oral tablet	t	1	f	2004-04-12	9001077	\N	\N	15236
moxifloxacin (moxifloxacin hydrochloride) 0.5 % ophthalmic drops	t	5	f	2004-05-12	9001078	\N	\N	15237
ciprofloxacin (ciprofloxacin hydrochloride) 0.3 % and dexamethasone 0.1 % otic drops	t	1	f	2004-05-13	9001079	\N	\N	15238
ibuprofen 400 mg oral capsule	t	8	f	2004-06-21	9001080	\N	\N	15239
clonidine hydrochloride 0.025 mg oral tablet	t	2	f	2004-07-13	9001081	\N	\N	15240
ciclopirox 8 % cutaneous solution	t	5	f	2004-07-28	9001082	\N	\N	15241
diltiazem hydrochloride 120 mg prolonged-release oral tablet	t	1	f	2004-08-13	9001083	\N	\N	15242
diltiazem hydrochloride 180 mg prolonged-release oral tablet	t	1	f	2004-08-13	9001084	\N	\N	15243
diltiazem hydrochloride 240 mg prolonged-release oral tablet	t	1	f	2004-08-13	9001085	\N	\N	15244
diltiazem hydrochloride 300 mg prolonged-release oral tablet	t	1	f	2004-08-13	9001086	\N	\N	15245
diltiazem hydrochloride 360 mg prolonged-release oral tablet	t	1	f	2004-08-13	9001087	\N	\N	15246
mirtazapine 45 mg oral tablet	t	3	f	2004-08-17	9001088	\N	\N	15247
ranitidine (ranitidine hydrochloride) 15 mg per mL oral solution	t	2	f	2004-09-08	9001089	\N	\N	15248
risperidone 25 mg per vial kit	t	1	f	2004-09-08	9001090	\N	\N	15249
risperidone 25 mg per vial powder for prolonged-release suspension for injection	t	1	f	2004-09-08	9001091	\N	\N	15250
risperidone 37.5 mg per vial kit	t	1	f	2004-09-08	9001092	\N	\N	15251
risperidone 37.5 mg per vial powder for prolonged-release suspension for injection	t	1	f	2004-09-08	9001093	\N	\N	15252
risperidone 50 mg per vial kit	t	1	f	2004-09-08	9001094	\N	\N	15253
risperidone 50 mg per vial powder for prolonged-release suspension for injection	t	1	f	2004-09-08	9001095	\N	\N	15254
ethinyl estradiol 2.6 mg and etonogestrel 11.4 mg ring (slow release)	t	1	f	2004-12-02	9001096	\N	\N	15255
dexamethasone 0.5 mg per 5 mL oral solution	t	1	f	2004-12-06	9001097	\N	\N	15256
clobetasol propionate 0.05 % shampoo	t	1	f	2004-12-15	9001098	\N	\N	15257
drospirenone 3 mg and ethinyl estradiol 0.03 mg oral tablet	t	6	f	2004-12-22	9001099	\N	\N	15258
methylphenidate hydrochloride 27 mg prolonged-release oral tablet	t	4	f	2005-01-06	9001100	\N	\N	15259
ethinyl estradiol 0.025 mg and ethinyl estradiol 0.025 mg and ethinyl estradiol 0.025 mg and norgestimate 0.18 mg and norgestimate 0.215 mg and norgestimate 0.25 mg oral tablet	t	4	t	2005-01-27	9001101	\N	\N	15260
escitalopram (escitalopram oxalate) 10 mg oral tablet	t	19	f	2005-02-14	9001102	\N	\N	15261
escitalopram (escitalopram oxalate) 20 mg oral tablet	t	19	f	2005-02-14	9001103	\N	\N	15262
atomoxetine (atomoxetine hydrochloride) 10 mg oral capsule	t	8	f	2005-02-24	9001104	\N	\N	15263
atomoxetine (atomoxetine hydrochloride) 18 mg oral capsule	t	9	f	2005-02-24	9001105	\N	\N	15264
atomoxetine (atomoxetine hydrochloride) 25 mg oral capsule	t	10	f	2005-03-03	9001106	\N	\N	15265
atomoxetine (atomoxetine hydrochloride) 40 mg oral capsule	t	10	f	2005-03-03	9001107	\N	\N	15266
atomoxetine (atomoxetine hydrochloride) 60 mg oral capsule	t	10	f	2005-03-03	9001108	\N	\N	15267
rosuvastatin (rosuvastatin calcium) 5 mg oral tablet	t	21	f	2005-03-18	9001109	\N	\N	15268
lithium carbonate 300 mg prolonged-release oral tablet	t	1	f	2005-04-06	9001110	\N	\N	15269
valacyclovir (valacyclovir hydrochloride) 1 g oral tablet	t	1	f	2005-05-09	9001111	\N	\N	15270
mesalazine 800 mg gastro-resistant tablet	t	1	f	2005-06-13	9001112	\N	\N	15271
alendronic acid (alendronate sodium) 40 mg oral tablet	t	1	f	2005-06-14	9001113	\N	\N	15272
candesartan cilexetil 4 mg oral tablet	t	12	f	2005-06-28	9001114	\N	\N	15273
pregabalin 150 mg oral capsule	t	16	f	2005-07-18	9001115	\N	\N	15274
pregabalin 25 mg oral capsule	t	16	f	2005-07-18	9001116	\N	\N	15275
pregabalin 300 mg oral capsule	t	12	f	2005-07-18	9001117	\N	\N	15276
pregabalin 50 mg oral capsule	t	16	f	2005-07-18	9001118	\N	\N	15277
pregabalin 75 mg oral capsule	t	16	f	2005-07-18	9001119	\N	\N	15278
metoprolol tartrate 5 mg per 5 mL solution for injection vial	t	1	f	2005-07-20	9001120	\N	\N	15279
acetaminophen 325 mg and tramadol hydrochloride 37.5 mg oral tablet	t	14	f	2005-07-22	9001121	\N	\N	15280
fenofibrate 145 mg oral tablet	t	2	f	2005-07-26	9001122	\N	\N	15281
fenofibrate 48 mg oral tablet	t	2	f	2005-07-26	9001123	\N	\N	15282
medroxyprogesterone acetate 100 mg oral tablet	t	1	f	2005-08-04	9001124	\N	\N	15283
sumatriptan (sumatriptan succinate) 25 mg oral tablet	t	6	f	2005-08-24	9001125	\N	\N	15284
citalopram (citalopram hydrobromide) 10 mg oral tablet	t	20	f	2005-09-10	9001126	\N	\N	15285
tamsulosin hydrochloride 0.4 mg prolonged-release oral tablet	t	7	f	2005-10-11	9001127	\N	\N	15286
valsartan 40 mg oral tablet	t	13	f	2005-11-01	9001128	\N	\N	15287
azithromycin (azithromycin isopropanolate) 250 mg oral tablet	t	1	f	2005-11-02	9001129	\N	\N	15288
metformin hydrochloride 500 mg prolonged-release oral tablet	t	1	f	2005-11-03	9001130	\N	\N	15289
insulin detemir 100 unit per mL solution for injection 3 mL cartridge	t	1	f	2005-11-14	9001131	\N	\N	15290
azithromycin (azithromycin hemiethanolate) 250 mg oral tablet	t	7	f	2005-12-01	9001132	\N	\N	15291
lansoprazole 30 mg gastro-resistant tablet	t	1	f	2005-12-01	9001133	\N	\N	15292
hydrochlorothiazide 12.5 mg oral tablet	t	3	f	2005-12-22	9001134	\N	\N	15293
donepezil hydrochloride 10 mg orodispersible tablet	t	3	f	2006-01-02	9001135	\N	\N	15294
donepezil hydrochloride 5 mg orodispersible tablet	t	3	f	2006-01-02	9001136	\N	\N	15295
azithromycin (azithromycin hemiethanolate) 600 mg oral tablet	t	2	f	2006-01-04	9001137	\N	\N	15296
bupropion hydrochloride 300 mg prolonged-release oral tablet	t	3	f	2006-02-02	9001138	\N	\N	15297
pantoprazole (pantoprazole magnesium) 40 mg gastro-resistant tablet	t	4	f	2006-03-15	9001139	\N	\N	15298
azithromycin (azithromycin hemiethanolate) 100 mg per 5 mL powder for oral suspension	t	2	f	2006-04-19	9001140	\N	\N	15299
azithromycin (azithromycin hemiethanolate) 200 mg per 5 mL powder for oral suspension	t	2	f	2006-04-19	9001141	\N	\N	15300
fenofibrate 100 mg oral tablet	t	5	f	2006-04-21	9001142	\N	\N	15301
insulin glargine 100 unit per mL solution for injection 3 mL cartridge	t	2	f	2006-05-04	9001143	\N	\N	15302
clotrimazole 1 % and clotrimazole 500 mg per vtab cutaneous cream	t	1	f	2006-05-12	9001144	\N	\N	15303
clotrimazole 1 % and clotrimazole 500 mg per vtab NA	t	1	f	2006-05-12	9001145	\N	\N	15304
clotrimazole 1 % and clotrimazole 500 mg per vtab vaginal cream	t	1	f	2006-05-12	9001146	\N	\N	15305
clotrimazole 1 % and clotrimazole 500 mg per vtab vaginal tablet	t	1	f	2006-05-12	9001147	\N	\N	15306
clotrimazole 1 % and clotrimazole 200 mg per vtab cutaneous cream	t	1	f	2006-06-02	9001148	\N	\N	15307
clotrimazole 1 % and clotrimazole 200 mg per vtab NA	t	1	f	2006-06-02	9001149	\N	\N	15308
clotrimazole 1 % and clotrimazole 200 mg per vtab vaginal cream	t	1	f	2006-06-02	9001150	\N	\N	15309
clotrimazole 1 % and clotrimazole 200 mg per vtab vaginal tablet	t	1	f	2006-06-02	9001151	\N	\N	15310
dexamethasone 2 mg oral tablet	t	1	f	2006-06-08	9001152	\N	\N	15311
sildenafil (sildenafil citrate) 20 mg oral tablet	t	4	f	2006-06-12	9001153	\N	\N	15312
desogestrel 0.1 mg and desogestrel 0.125 mg and desogestrel 0.15 mg and ethinyl estradiol 0.025 mg and ethinyl estradiol 0.025 mg and ethinyl estradiol 0.025 mg oral tablet	t	2	t	2006-06-13	9001154	\N	\N	15313
digoxin 0.0625 mg oral tablet	t	2	f	2006-06-22	9001155	\N	\N	15314
digoxin 0.125 mg oral tablet	t	2	f	2006-06-22	9001156	\N	\N	15315
digoxin 0.25 mg oral tablet	t	2	f	2006-06-22	9001157	\N	\N	15316
bupropion hydrochloride 100 mg prolonged-release oral tablet	t	5	f	2006-06-23	9001158	\N	\N	15317
solifenacin succinate 10 mg oral tablet	t	13	f	2006-06-23	9001159	\N	\N	15318
solifenacin succinate 5 mg oral tablet	t	13	f	2006-06-23	9001160	\N	\N	15319
fentanyl 100 mcg per hour transdermal patch	t	9	f	2006-07-04	9001161	\N	\N	15320
fentanyl 25 mcg per hour transdermal patch	t	9	f	2006-07-04	9001162	\N	\N	15321
fentanyl 50 mcg per hour transdermal patch	t	9	f	2006-07-04	9001163	\N	\N	15322
fentanyl 75 mcg per hour transdermal patch	t	9	f	2006-07-04	9001164	\N	\N	15323
methylphenidate hydrochloride 10 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001165	\N	\N	15324
methylphenidate hydrochloride 15 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001166	\N	\N	15325
methylphenidate hydrochloride 20 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001167	\N	\N	15326
methylphenidate hydrochloride 30 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001168	\N	\N	15327
methylphenidate hydrochloride 40 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001169	\N	\N	15328
methylphenidate hydrochloride 50 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001170	\N	\N	15329
methylphenidate hydrochloride 60 mg prolonged-release oral capsule	t	1	f	2006-08-01	9001171	\N	\N	15330
ramipril 15 mg oral capsule	t	8	f	2006-08-14	9001172	\N	\N	15331
ciclesonide 100 mcg per actuation pressurised inhalation	t	1	f	2006-09-27	9001173	\N	\N	15332
ciclesonide 200 mcg per actuation pressurised inhalation	t	1	f	2006-09-27	9001174	\N	\N	15333
fenofibrate 160 mg oral capsule	t	1	f	2006-11-14	9001175	\N	\N	15334
hydrochlorothiazide 12.5 mg and ramipril 10 mg oral tablet	t	4	f	2006-11-16	9001176	\N	\N	15335
hydrochlorothiazide 12.5 mg and ramipril 2.5 mg oral tablet	t	2	f	2006-11-16	9001177	\N	\N	15336
hydrochlorothiazide 12.5 mg and ramipril 5 mg oral tablet	t	4	f	2006-11-16	9001178	\N	\N	15337
hydrochlorothiazide 25 mg and ramipril 10 mg oral tablet	t	4	f	2006-11-16	9001179	\N	\N	15338
hydrochlorothiazide 25 mg and ramipril 5 mg oral tablet	t	3	f	2006-11-16	9001180	\N	\N	15339
lansoprazole 15 mg gastro-resistant tablet	t	1	f	2006-11-24	9001181	\N	\N	15340
tramadol hydrochloride 150 mg prolonged-release oral tablet	t	1	f	2006-12-07	9001182	\N	\N	15341
tramadol hydrochloride 200 mg prolonged-release oral tablet	t	4	f	2006-12-07	9001183	\N	\N	15342
tramadol hydrochloride 300 mg prolonged-release oral tablet	t	4	f	2006-12-07	9001184	\N	\N	15343
tramadol hydrochloride 400 mg prolonged-release oral tablet	t	1	f	2006-12-07	9001185	\N	\N	15344
olanzapine 20 mg orodispersible tablet	t	14	f	2007-01-02	9001186	\N	\N	15345
valsartan 320 mg oral tablet	t	12	f	2007-02-14	9001187	\N	\N	15346
tamsulosin hydrochloride 0.4 mg prolonged-release oral capsule	t	3	f	2007-02-21	9001188	\N	\N	15347
methylphenidate hydrochloride 80 mg prolonged-release oral capsule	t	1	f	2007-03-09	9001189	\N	\N	15348
ciprofloxacin 10 mg per mL solution for injection	t	1	f	2007-03-12	9001190	\N	\N	15349
risperidone 0.5 mg orodispersible tablet	t	2	f	2007-03-13	9001191	\N	\N	15350
risperidone 1 mg orodispersible tablet	t	2	f	2007-03-13	9001192	\N	\N	15351
risperidone 2 mg orodispersible tablet	t	2	f	2007-03-13	9001193	\N	\N	15352
amiodarone hydrochloride 100 mg oral tablet	t	1	f	2007-04-03	9001194	\N	\N	15353
cyproterone acetate 2 mg and ethinyl estradiol 0.035 mg oral tablet	t	4	f	2007-04-03	9001195	\N	\N	15354
pantoprazole (pantoprazole sodium) 40 mg per vial powder for solution for injection	t	4	f	2007-04-03	9001196	\N	\N	15355
varenicline (varenicline tartrate) 0.5 mg oral tablet	t	1	f	2007-04-11	9001197	\N	\N	15356
varenicline (varenicline tartrate) 1 mg oral tablet	t	1	f	2007-04-11	9001198	\N	\N	15357
olanzapine 20 mg oral tablet	t	6	f	2007-04-30	9001199	\N	\N	15358
paroxetine (paroxetine hydrochloride) 40 mg oral tablet	t	1	f	2007-05-03	9001200	\N	\N	15359
ramipril 10 mg oral tablet	t	1	f	2007-07-05	9001201	\N	\N	15360
ramipril 1.25 mg oral tablet	t	1	f	2007-07-05	9001202	\N	\N	15361
ramipril 2.5 mg oral tablet	t	1	f	2007-07-05	9001203	\N	\N	15362
ramipril 5 mg oral tablet	t	1	f	2007-07-05	9001204	\N	\N	15363
mesalazine 1.2 g modified-release oral tablet	t	1	f	2007-07-27	9001205	\N	\N	15364
ethinyl estradiol 0.03 mg and levonorgestrel 0.15 mg oral tablet	t	4	f	2007-08-14	9001206	\N	\N	15365
tramadol hydrochloride 100 mg prolonged-release oral tablet	t	4	f	2007-08-14	9001207	\N	\N	15366
hydrochlorothiazide 12.5 mg and losartan potassium 100 mg oral tablet	t	12	f	2007-09-10	9001208	\N	\N	15367
omeprazole 10 mg gastro-resistant capsule	t	3	f	2007-09-14	9001209	\N	\N	15368
insulin glargine 100 unit per mL solution for injection 3 mL pen	t	2	f	2007-09-24	9001210	\N	\N	15369
quetiapine (quetiapine fumarate) 200 mg prolonged-release oral tablet	t	5	f	2007-09-27	9001211	\N	\N	15370
quetiapine (quetiapine fumarate) 300 mg prolonged-release oral tablet	t	5	f	2007-09-27	9001212	\N	\N	15371
quetiapine (quetiapine fumarate) 400 mg prolonged-release oral tablet	t	5	f	2007-09-27	9001213	\N	\N	15372
quetiapine (quetiapine fumarate) 50 mg prolonged-release oral tablet	t	5	f	2007-09-27	9001214	\N	\N	15373
varenicline (varenicline tartrate) 0.5 mg and varenicline (varenicline tartrate) 1 mg kit	t	1	f	2007-10-02	9001215	\N	\N	15374
enalapril sodium 2 mg oral tablet	t	8	f	2007-10-17	9001217	\N	\N	15375
enalapril sodium (enalapril maleate) 16 mg oral tablet	t	1	f	2007-10-17	9001218	\N	\N	15376
enalapril sodium (enalapril maleate) 2 mg oral tablet	t	1	f	2007-10-17	9001219	\N	\N	15377
enalapril sodium (enalapril maleate) 4 mg oral tablet	t	1	f	2007-10-17	9001220	\N	\N	15378
enalapril sodium (enalapril maleate) 8 mg oral tablet	t	1	f	2007-10-17	9001221	\N	\N	15379
fluticasone furoate 27.5 mcg per actuation nasal spray	t	1	f	2007-10-22	9001222	\N	\N	15380
risperidone 12.5 mg per vial kit	t	1	f	2007-10-24	9001223	\N	\N	15381
risperidone 12.5 mg per vial powder for prolonged-release suspension for injection	t	1	f	2007-10-24	9001224	\N	\N	15382
citalopram (citalopram hydrobromide) 30 mg oral tablet	t	1	f	2007-10-31	9001225	\N	\N	15383
buprenorphine (buprenorphine hydrochloride) 2 mg and naloxone (naloxone hydrochloride) 0.5 mg sublingual tablet	t	3	f	2007-11-26	9001226	\N	\N	15384
buprenorphine (buprenorphine hydrochloride) 8 mg and naloxone (naloxone hydrochloride) 2 mg sublingual tablet	t	3	f	2007-11-26	9001227	\N	\N	15385
rivastigmine 18 mg per 10 sq cm transdermal patch	t	3	f	2007-12-12	9001228	\N	\N	15386
rivastigmine 9 mg per 5 sq cm transdermal patch	t	3	f	2007-12-12	9001229	\N	\N	15387
metronidazole 1 % cutaneous gel	t	1	f	2007-12-20	9001230	\N	\N	15388
esomeprazole (esomeprazole magnesium) 10 mg per pck gastro-resistant granules for oral suspension	t	1	f	2008-01-02	9001231	\N	\N	15389
sitagliptin (sitagliptin phosphate) 100 mg oral tablet	t	1	f	2008-01-02	9001232	\N	\N	15390
metformin hydrochloride 1000 mg prolonged-release oral tablet	t	1	f	2008-01-08	9001233	\N	\N	15391
duloxetine (duloxetine hydrochloride) 30 mg gastro-resistant capsule	t	14	f	2008-01-18	9001234	\N	\N	15392
duloxetine (duloxetine hydrochloride) 60 mg gastro-resistant capsule	t	14	f	2008-01-18	9001235	\N	\N	15393
tadalafil 2.5 mg oral tablet	t	11	f	2008-01-18	9001236	\N	\N	15394
tadalafil 5 mg oral tablet	t	14	f	2008-01-18	9001237	\N	\N	15395
clozapine 200 mg oral tablet	t	2	f	2008-02-05	9001238	\N	\N	15396
clozapine 50 mg oral tablet	t	2	f	2008-02-05	9001239	\N	\N	15397
ciprofloxacin 2 mg per mL solution for injection	t	4	f	2008-03-27	9001240	\N	\N	15398
tacrolimus 0.5 mg prolonged-release oral capsule	t	1	f	2008-04-09	9001241	\N	\N	15399
tacrolimus 1 mg prolonged-release oral capsule	t	1	f	2008-04-09	9001242	\N	\N	15400
tacrolimus 5 mg prolonged-release oral capsule	t	1	f	2008-04-09	9001243	\N	\N	15401
ciclesonide 50 mcg per actuation nasal spray	t	1	f	2008-04-10	9001244	\N	\N	15402
hydrochlorothiazide 12.5 mg and valsartan 320 mg oral tablet	t	7	f	2008-05-12	9001245	\N	\N	15403
hydrochlorothiazide 25 mg and valsartan 320 mg oral tablet	t	7	f	2008-05-12	9001246	\N	\N	15404
ciprofloxacin (ciprofloxacin lactate) 0.2 % solution for injection	t	1	f	2008-05-16	9001247	\N	\N	15405
topiramate 50 mg oral tablet	t	1	f	2008-06-17	9001248	\N	\N	15406
fentanyl 12 mcg per hour transdermal patch	t	8	f	2008-06-27	9001249	\N	\N	15407
dabigatran etexilate (dabigatran etexilate mesilate) 110 mg oral capsule	t	1	f	2008-07-03	9001250	\N	\N	15408
dabigatran etexilate (dabigatran etexilate mesilate) 75 mg oral capsule	t	1	f	2008-07-03	9001251	\N	\N	15409
pramipexole dihydrochloride 0.125 mg oral tablet	t	2	f	2008-07-09	9001252	\N	\N	15410
candesartan cilexetil 32 mg oral tablet	t	15	f	2008-07-17	9001253	\N	\N	15411
minocycline (minocycline hydrochloride) 1 mg per 4 mg prolonged-release periodontal powder	t	1	f	2008-07-27	9001254	\N	\N	15412
diclofenac diethylamine 1.16 % cutaneous gel	t	2	f	2008-09-02	9001255	\N	\N	15413
quetiapine (quetiapine fumarate) 150 mg oral tablet	t	3	f	2008-09-04	9001256	\N	\N	15414
rivaroxaban 10 mg oral tablet	t	1	f	2008-09-16	9001257	\N	\N	15415
carbidopa 5 mg per mL and levodopa 20 mg per mL intestinal gel	t	1	f	2008-11-10	9001258	\N	\N	15416
travoprost 0.004 % ophthalmic drops	t	4	f	2008-11-10	9001259	\N	\N	15417
risedronate sodium 150 mg oral tablet	t	6	f	2008-12-01	9001260	\N	\N	15418
hydrochlorothiazide 25 mg and telmisartan 80 mg oral tablet	t	11	f	2008-12-02	9001261	\N	\N	15419
hydrochlorothiazide 12.5 mg and olmesartan medoxomil 20 mg oral tablet	t	4	f	2008-12-22	9001262	\N	\N	15420
hydrochlorothiazide 12.5 mg and olmesartan medoxomil 40 mg oral tablet	t	4	f	2008-12-22	9001263	\N	\N	15421
hydrochlorothiazide 25 mg and olmesartan medoxomil 40 mg oral tablet	t	4	f	2008-12-22	9001264	\N	\N	15422
olmesartan medoxomil 20 mg oral tablet	t	7	f	2008-12-22	9001265	\N	\N	15423
olmesartan medoxomil 40 mg oral tablet	t	7	f	2008-12-22	9001266	\N	\N	15424
drospirenone 3 mg and ethinyl estradiol 0.02 mg oral tablet	t	2	f	2009-01-06	9001267	\N	\N	15425
methotrexate (methotrexate sodium) 10 mg per 1 mL solution for injection syringe	t	1	f	2009-01-26	9001268	\N	\N	15426
methotrexate (methotrexate sodium) 15 mg per 1.5 mL solution for injection 1.5 mL syringe	t	1	f	2009-01-26	9001269	\N	\N	15427
methotrexate (methotrexate sodium) 7.5 mg per 0.75 mL solution for injection 0.75 mL syringe	t	1	f	2009-01-26	9001270	\N	\N	15428
desvenlafaxine (desvenlafaxine succinate) 50 mg prolonged-release oral tablet	t	1	f	2009-03-05	9001271	\N	\N	15429
desvenlafaxine (desvenlafaxine succinate) 100 mg prolonged-release oral tablet	t	1	f	2009-03-06	9001272	\N	\N	15430
quetiapine (quetiapine fumarate) 150 mg prolonged-release oral tablet	t	5	f	2009-04-14	9001273	\N	\N	15431
indapamide 2.5 mg and perindopril erbumine 8 mg oral tablet	t	1	f	2009-05-07	9001274	\N	\N	15432
naproxen sodium 220 mg oral tablet	t	5	f	2009-06-15	9001275	\N	\N	15433
bimatoprost 0.01 % ophthalmic drops	t	1	f	2009-06-16	9001276	\N	\N	15434
amlodipine (amlodipine besylate) 2.5 mg oral tablet	t	14	f	2009-07-15	9001277	\N	\N	15435
lisdexamfetamine dimesylate 30 mg oral capsule	t	1	f	2009-08-04	9001278	\N	\N	15436
lisdexamfetamine dimesylate 50 mg oral capsule	t	1	f	2009-08-04	9001279	\N	\N	15437
azithromycin 200 mg per 5 mL powder for oral suspension	t	3	f	2009-09-08	9001280	\N	\N	15438
enalapril sodium 32 mg oral tablet	t	1	f	2009-09-15	9001281	\N	\N	15439
candesartan cilexetil 32 mg and hydrochlorothiazide 12.5 mg oral tablet	t	5	f	2009-09-28	9001282	\N	\N	15440
candesartan cilexetil 32 mg and hydrochlorothiazide 25 mg oral tablet	t	4	f	2009-09-28	9001283	\N	\N	15441
aripiprazole 10 mg oral tablet	t	1	f	2009-09-30	9001284	\N	\N	15442
aripiprazole 15 mg oral tablet	t	1	f	2009-09-30	9001285	\N	\N	15443
aripiprazole 20 mg oral tablet	t	1	f	2009-09-30	9001286	\N	\N	15444
aripiprazole 2 mg oral tablet	t	1	f	2009-09-30	9001287	\N	\N	15445
aripiprazole 30 mg oral tablet	t	1	f	2009-09-30	9001288	\N	\N	15446
aripiprazole 5 mg oral tablet	t	1	f	2009-09-30	9001289	\N	\N	15447
clopidogrel (clopidogrel bisulfate) 300 mg oral tablet	t	3	f	2009-09-30	9001290	\N	\N	15448
metformin hydrochloride 1000 mg and sitagliptin (sitagliptin phosphate) 50 mg oral tablet	t	1	f	2009-10-08	9001291	\N	\N	15449
metformin hydrochloride 500 mg and sitagliptin (sitagliptin phosphate) 50 mg oral tablet	t	1	f	2009-10-08	9001292	\N	\N	15450
metformin hydrochloride 850 mg and sitagliptin (sitagliptin phosphate) 50 mg oral tablet	t	1	f	2009-10-08	9001293	\N	\N	15451
testosterone undecanoate 40 mg oral capsule	t	2	f	2009-10-08	9001294	\N	\N	15452
azithromycin (azithromycin hydrogen citrate) 500 mg per vial powder for solution for injection	t	1	f	2009-10-14	9001295	\N	\N	15453
saxagliptin (saxagliptin hydrochloride) 5 mg oral tablet	t	1	f	2009-10-29	9001296	\N	\N	15454
pregabalin 225 mg oral capsule	t	6	f	2009-11-18	9001297	\N	\N	15455
epinephrine 0.15 mg per 0.3 mL solution for injection 0.3 mL syringe	t	1	f	2009-11-23	9001298	\N	\N	15456
epinephrine 0.3 mg per 0.3 mL solution for injection 0.3 mL syringe	t	1	f	2009-11-23	9001299	\N	\N	15457
progesterone 100 mg effervescent vaginal tablet	t	1	f	2009-11-30	9001300	\N	\N	15458
mometasone furoate 0.1 % cutaneous solution	t	1	f	2009-12-01	9001301	\N	\N	15459
atomoxetine (atomoxetine hydrochloride) 80 mg oral capsule	t	5	f	2009-12-16	9001302	\N	\N	15460
atomoxetine (atomoxetine hydrochloride) 100 mg oral capsule	t	5	f	2010-01-08	9001303	\N	\N	15461
hydromorphone hydrochloride 16 mg prolonged-release oral tablet	t	1	f	2010-03-04	9001304	\N	\N	15462
hydromorphone hydrochloride 32 mg prolonged-release oral tablet	t	1	f	2010-03-04	9001305	\N	\N	15463
hydromorphone hydrochloride 4 mg prolonged-release oral tablet	t	1	f	2010-03-04	9001306	\N	\N	15464
hydromorphone hydrochloride 8 mg prolonged-release oral tablet	t	1	f	2010-03-04	9001307	\N	\N	15465
tacrolimus 3 mg prolonged-release oral capsule	t	1	f	2010-04-05	9001308	\N	\N	15466
calcitriol 3 mcg per g cutaneous ointment	t	1	f	2010-04-09	9001309	\N	\N	15467
lisdexamfetamine dimesylate 20 mg oral capsule	t	1	f	2010-04-13	9001310	\N	\N	15468
lisdexamfetamine dimesylate 40 mg oral capsule	t	1	f	2010-04-14	9001311	\N	\N	15469
lisdexamfetamine dimesylate 60 mg oral capsule	t	1	f	2010-04-14	9001312	\N	\N	15470
estradiol 10 mcg vaginal tablet	t	1	f	2010-04-28	9001313	\N	\N	15471
valacyclovir (valacyclovir hydrochloride) 1000 mg oral tablet	t	4	f	2010-05-25	9001314	\N	\N	15472
buprenorphine 10 mcg per hour transdermal patch	t	1	f	2010-05-26	9001315	\N	\N	15473
buprenorphine 20 mcg per hour transdermal patch	t	1	f	2010-05-26	9001316	\N	\N	15474
buprenorphine 5 mcg per hour transdermal patch	t	1	f	2010-05-26	9001317	\N	\N	15475
tramadol hydrochloride 50 mg oral tablet	t	2	f	2010-06-28	9001318	\N	\N	15476
dexlansoprazole 30 mg gastro-resistant capsule	t	1	f	2010-08-05	9001319	\N	\N	15477
dexlansoprazole 60 mg gastro-resistant capsule	t	1	f	2010-08-05	9001320	\N	\N	15478
sildenafil (sildenafil citrate) 10 mg per 12.5 mL solution for injection vial	t	1	f	2010-08-31	9001321	\N	\N	15479
naloxone hydrochloride 10 mg and oxycodone hydrochloride 20 mg prolonged-release oral tablet	t	1	f	2010-10-05	9001322	\N	\N	15480
naloxone hydrochloride 20 mg and oxycodone hydrochloride 40 mg prolonged-release oral tablet	t	1	f	2010-10-05	9001323	\N	\N	15481
naloxone hydrochloride 5 mg and oxycodone hydrochloride 10 mg prolonged-release oral tablet	t	1	f	2010-10-05	9001324	\N	\N	15482
bimatoprost 0.03 % cutaneous solution	t	1	f	2010-11-01	9001325	\N	\N	15483
fentanyl 37 mcg per hour transdermal patch	t	1	f	2010-11-01	9001326	\N	\N	15484
dabigatran etexilate (dabigatran etexilate mesilate) 150 mg oral capsule	t	1	f	2010-11-03	9001327	\N	\N	15485
galantamine (galantamine hydrobromide) 16 mg prolonged-release oral capsule	t	8	f	2010-11-12	9001328	\N	\N	15486
galantamine (galantamine hydrobromide) 24 mg prolonged-release oral capsule	t	8	f	2010-11-12	9001329	\N	\N	15487
galantamine (galantamine hydrobromide) 8 mg prolonged-release oral capsule	t	8	f	2010-11-12	9001330	\N	\N	15488
gliclazide 60 mg prolonged-release oral tablet	t	5	f	2010-12-09	9001331	\N	\N	15489
betahistine hydrochloride 8 mg oral tablet	t	2	f	2010-12-13	9001332	\N	\N	15490
quetiapine (quetiapine fumarate) 50 mg oral tablet	t	1	f	2011-01-21	9001333	\N	\N	15491
testosterone 2 % cutaneous solution	t	1	f	2013-05-08	9001401	\N	\N	15559
esomeprazole (esomeprazole magnesium) 20 mg and naproxen 375 mg modified-release oral tablet	t	2	f	2011-02-04	9001334	\N	\N	15492
esomeprazole (esomeprazole magnesium) 20 mg and naproxen 500 mg modified-release oral tablet	t	2	f	2011-02-04	9001335	\N	\N	15493
tramadol hydrochloride 75 mg prolonged-release oral tablet	t	1	f	2011-03-02	9001336	\N	\N	15494
trazodone hydrochloride 150 mg prolonged-release oral tablet	t	1	f	2011-03-09	9001337	\N	\N	15495
trazodone hydrochloride 300 mg prolonged-release oral tablet	t	1	f	2011-03-09	9001338	\N	\N	15496
hydrochlorothiazide 25 mg and irbesartan 300 mg oral tablet	t	13	f	2011-03-21	9001339	\N	\N	15497
hydromorphone hydrochloride 4.5 mg prolonged-release oral capsule	t	1	f	2011-04-14	9001340	\N	\N	15498
hydromorphone hydrochloride 9 mg prolonged-release oral capsule	t	1	f	2011-04-14	9001341	\N	\N	15499
olopatadine (olopatadine hydrochloride) 0.2 % ophthalmic drops	t	4	f	2011-04-14	9001342	\N	\N	15500
ethinyl estradiol 0.01 mg and ethinyl estradiol 0.03 mg and levonorgestrel 0.15 mg oral tablet	t	1	f	2011-04-18	9001343	\N	\N	15501
fentanyl (fentanyl citrate) 100 mcg sublingual tablet	t	1	f	2011-04-18	9001344	\N	\N	15502
fentanyl (fentanyl citrate) 200 mcg sublingual tablet	t	1	f	2011-04-18	9001345	\N	\N	15503
fentanyl (fentanyl citrate) 300 mcg sublingual tablet	t	1	f	2011-04-18	9001346	\N	\N	15504
fentanyl (fentanyl citrate) 400 mcg sublingual tablet	t	1	f	2011-04-18	9001347	\N	\N	15505
dexamethasone 0.7 mg intravitreal implant	t	1	f	2011-06-02	9001348	\N	\N	15506
fentanyl (fentanyl citrate) 800 mcg sublingual tablet	t	1	f	2011-06-03	9001349	\N	\N	15507
furosemide 20 mg per 2 mL solution for injection vial	t	1	f	2011-06-08	9001350	\N	\N	15508
furosemide 40 mg per 4 mL solution for injection vial	t	1	f	2011-06-08	9001351	\N	\N	15509
fentanyl (fentanyl citrate) 600 mcg sublingual tablet	t	1	f	2011-06-14	9001352	\N	\N	15510
risedronate sodium 35 mg gastro-resistant tablet	t	1	f	2011-08-10	9001353	\N	\N	15511
naproxen sodium 220 mg oral capsule	t	3	f	2011-09-12	9001354	\N	\N	15512
oxycodone hydrochloride 10 mg prolonged-release oral tablet	t	4	f	2011-09-13	9001355	\N	\N	15513
oxycodone hydrochloride 15 mg prolonged-release oral tablet	t	2	f	2011-09-13	9001356	\N	\N	15514
oxycodone hydrochloride 20 mg prolonged-release oral tablet	t	4	f	2011-09-13	9001357	\N	\N	15515
oxycodone hydrochloride 30 mg prolonged-release oral tablet	t	2	f	2011-09-13	9001358	\N	\N	15516
oxycodone hydrochloride 40 mg prolonged-release oral tablet	t	4	f	2011-09-13	9001359	\N	\N	15517
oxycodone hydrochloride 60 mg prolonged-release oral tablet	t	2	f	2011-09-13	9001360	\N	\N	15518
oxycodone hydrochloride 80 mg prolonged-release oral tablet	t	4	f	2011-09-13	9001361	\N	\N	15519
haloperidol 5 mg per 1 mL solution for injection vial	t	2	f	2011-09-19	9001362	\N	\N	15520
methotrexate 1000 mg per 40 mL solution for injection vial	t	1	f	2011-09-30	9001363	\N	\N	15521
methotrexate 500 mg per 20 mL solution for injection vial	t	1	f	2011-09-30	9001364	\N	\N	15522
methotrexate 50 mg per 2 mL solution for injection vial	t	1	f	2011-09-30	9001365	\N	\N	15523
betamethasone (betamethasone valerate) 0.1 % cutaneous ointment	t	1	f	2011-10-19	9001366	\N	\N	15524
oxybutynin chloride 100 mg per g cutaneous gel	t	1	f	2011-10-27	9001367	\N	\N	15525
risperidone 3 mg orodispersible tablet	t	2	f	2011-12-16	9001368	\N	\N	15526
risperidone 4 mg orodispersible tablet	t	2	f	2011-12-16	9001369	\N	\N	15527
mometasone furoate 200 mcg per actuation inhalation powder	t	1	f	2011-12-21	9001370	\N	\N	15528
mometasone furoate 400 mcg per actuation inhalation powder	t	1	f	2011-12-21	9001371	\N	\N	15529
saxagliptin (saxagliptin hydrochloride) 2.5 mg oral tablet	t	1	f	2011-12-23	9001372	\N	\N	15530
ketorolac tromethamine 0.45 % ophthalmic drops	t	1	f	2012-01-10	9001373	\N	\N	15531
rivaroxaban 15 mg oral tablet	t	1	f	2012-01-17	9001374	\N	\N	15532
rivaroxaban 20 mg oral tablet	t	1	f	2012-01-17	9001375	\N	\N	15533
hydrochlorothiazide 25 mg and telmisartan (telmisartan sodium) 80 mg oral tablet	t	2	f	2012-02-06	9001376	\N	\N	15534
betamethasone valerate 0.12 % cutaneous foam	t	1	f	2012-02-10	9001377	\N	\N	15535
hydrochlorothiazide 12.5 mg and telmisartan (telmisartan sodium) 80 mg oral tablet	t	2	f	2012-02-16	9001378	\N	\N	15536
tramadol hydrochloride 100 mg prolonged-release oral capsule	t	1	f	2012-03-19	9001379	\N	\N	15537
tramadol hydrochloride 200 mg prolonged-release oral capsule	t	1	f	2012-03-19	9001380	\N	\N	15538
tramadol hydrochloride 300 mg prolonged-release oral capsule	t	1	f	2012-03-19	9001381	\N	\N	15539
rizatriptan (rizatriptan benzoate) 5 mg oral tablet	t	4	f	2012-03-26	9001382	\N	\N	15540
cetirizine hydrochloride 10 mg oral capsule	t	1	f	2012-04-01	9001383	\N	\N	15541
ciprofloxacin (ciprofloxacin lactate) 2 mg per mL solution for injection	t	1	f	2012-04-17	9001384	\N	\N	15542
diclofenac potassium 50 mg per pck powder for oral solution	t	1	f	2012-06-02	9001385	\N	\N	15543
ibuprofen 100 mg per mL solution for injection	t	1	f	2012-06-15	9001386	\N	\N	15544
sitagliptin (sitagliptin phosphate) 25 mg oral tablet	t	1	f	2012-09-17	9001387	\N	\N	15545
sitagliptin (sitagliptin phosphate) 50 mg oral tablet	t	1	f	2012-09-17	9001388	\N	\N	15546
escitalopram 10 mg orodispersible tablet	t	2	f	2012-10-04	9001389	\N	\N	15547
escitalopram 20 mg orodispersible tablet	t	2	f	2012-10-04	9001390	\N	\N	15548
naloxone hydrochloride 2.5 mg and oxycodone hydrochloride 5 mg prolonged-release oral tablet	t	1	f	2012-10-16	9001391	\N	\N	15549
morphine sulfate 50 mg per 5 mL solution for injection ampoule	t	1	f	2012-10-18	9001392	\N	\N	15550
oxycodone hydrochloride 5 mg prolonged-release oral tablet	t	2	f	2012-11-26	9001393	\N	\N	15551
doxycycline 40 mg modified-release oral capsule	t	1	f	2012-11-29	9001394	\N	\N	15552
methadone hydrochloride 10 mg per mL oral solution	t	2	f	2013-01-03	9001395	\N	\N	15553
clobetasol propionate 0.05 % cutaneous foam	t	1	f	2013-02-04	9001396	\N	\N	15554
mesalazine 1 g prolonged-release oral tablet	t	1	f	2013-03-12	9001397	\N	\N	15555
mometasone furoate 50 mcg nasal spray	t	1	f	2013-03-25	9001398	\N	\N	15556
diclofenac sodium 50 mg and misoprostol 200 mcg gastro-resistant tablet	t	1	f	2013-03-27	9001399	\N	\N	15557
diclofenac sodium 75 mg and misoprostol 200 mcg gastro-resistant tablet	t	1	f	2013-03-27	9001400	\N	\N	15558
nitroglycerin 20.7 mg per 7.4 sq cm transdermal patch	t	1	f	2013-06-04	9001402	\N	\N	15560
nitroglycerin 41.4 mg per 14.8 sq cm transdermal patch	t	1	f	2013-06-04	9001403	\N	\N	15561
nitroglycerin 62.2 mg per 22.2 sq cm transdermal patch	t	1	f	2013-06-04	9001404	\N	\N	15562
nitroglycerin 82.9 mg per 29.6 sq cm transdermal patch	t	1	f	2013-06-04	9001405	\N	\N	15563
insulin lispro 100 unit per mL solution for injection 3 mL pen	t	1	f	2013-08-14	9001406	\N	\N	15564
insulin isophane human 100 unit per mL suspension for injection 3 mL pen	t	1	f	2013-09-13	9001407	\N	\N	15565
insulin detemir 100 unit per mL solution for injection 3 mL pen	t	1	f	2013-11-25	9001408	\N	\N	15566
clindamycin (clindamycin phosphate) 600 mg per 50 mL solution for injection bag	t	1	f	2013-12-05	9001409	\N	\N	15567
clindamycin (clindamycin phosphate) 900 mg per 50 mL solution for injection bag	t	1	f	2013-12-05	9001410	\N	\N	15568
metformin hydrochloride 1000 mg and sitagliptin (sitagliptin phosphate) 50 mg prolonged-release oral tablet	t	1	f	2014-01-15	9001411	\N	\N	15569
cetirizine hydrochloride 10 mg orodispersible tablet	t	1	f	2014-03-21	9001412	\N	\N	15570
ethinyl estradiol 10 mcg and ethinyl estradiol 10 mcg and norethindrone acetate 1 mg oral tablet	t	1	f	2014-03-24	9001413	\N	\N	15571
aripiprazole 300 mg per vial kit	t	1	f	2014-03-27	9001414	\N	\N	15572
aripiprazole 300 mg per vial powder for prolonged-release suspension for injection	t	1	f	2014-03-27	9001415	\N	\N	15573
aripiprazole 400 mg per vial kit	t	1	f	2014-03-27	9001416	\N	\N	15574
aripiprazole 400 mg per vial powder for prolonged-release suspension for injection	t	1	f	2014-03-27	9001417	\N	\N	15575
methotrexate 10 mg per 0.4 mL solution for injection 0.4 mL syringe	t	1	f	2014-05-08	9001418	\N	\N	15576
methotrexate 15 mg per 0.6 mL solution for injection 0.6 mL syringe	t	1	f	2014-05-08	9001419	\N	\N	15577
methotrexate 20 mg per 0.8 mL solution for injection 0.8 mL syringe	t	1	f	2014-05-08	9001420	\N	\N	15578
methotrexate 25 mg per 1 mL solution for injection syringe	t	1	f	2014-05-08	9001421	\N	\N	15579
methotrexate 7.5 mg per 0.3 mL solution for injection	t	1	f	2014-05-08	9001422	\N	\N	15580
methotrexate 7.5 mg per 0.3 mL solution for injection syringe	t	1	f	2014-05-08	9001423	\N	\N	15581
fentanyl (fentanyl citrate) 100 mcg buccal tablet	t	1	f	2014-05-14	9001424	\N	\N	15582
fentanyl (fentanyl citrate) 200 mcg buccal tablet	t	1	f	2014-05-14	9001425	\N	\N	15583
fentanyl (fentanyl citrate) 400 mcg buccal tablet	t	1	f	2014-05-14	9001426	\N	\N	15584
fentanyl (fentanyl citrate) 600 mcg buccal tablet	t	1	f	2014-05-14	9001427	\N	\N	15585
fentanyl (fentanyl citrate) 800 mcg buccal tablet	t	1	f	2014-05-14	9001428	\N	\N	15586
esomeprazole (esomeprazole magnesium) 40 mg gastro-resistant capsule	t	1	f	2014-06-12	9001429	\N	\N	15587
olanzapine (olanzapine tartrate) 10 mg powder for solution for injection	t	1	f	2014-07-22	9001430	\N	\N	15588
conjugated estrogens 0.3 mg prolonged-release oral tablet	t	1	f	2014-10-03	9001431	\N	\N	15589
conjugated estrogens 0.625 mg prolonged-release oral tablet	t	1	f	2014-10-03	9001432	\N	\N	15590
conjugated estrogens 1.25 mg prolonged-release oral tablet	t	1	f	2014-10-03	9001433	\N	\N	15591
diclofenac diethylamine 2.32 % cutaneous gel	t	1	f	2014-10-06	9001434	\N	\N	15592
haloperidol 50 mg per 10 mL solution for injection vial	t	1	f	2014-10-20	9001435	\N	\N	15593
tiotropium (tiotropium bromide) 2.5 mcg per actuation inhalation solution	t	1	f	2014-12-19	9001436	\N	\N	15594
metformin hydrochloride 1000 mg and sitagliptin (sitagliptin phosphate) 100 mg prolonged-release oral tablet	t	1	f	2015-01-13	9001437	\N	\N	15595
metformin hydrochloride 500 mg and sitagliptin (sitagliptin phosphate) 50 mg prolonged-release oral tablet	t	1	f	2015-01-13	9001438	\N	\N	15596
clindamycin hydrochloride 150 mg oral capsule	t	1	f	2015-03-02	9001439	\N	\N	15597
clindamycin hydrochloride 300 mg oral capsule	t	1	f	2015-03-02	9001440	\N	\N	15598
mometasone furoate 100 mcg per actuation inhalation powder	t	1	f	2015-04-08	9001441	\N	\N	15599
estradiol 0.1 % transdermal gel	t	3	f	2015-04-13	9001442	\N	\N	15600
calcitriol 4 mcg per 2 mL solution for injection ampoule	t	1	f	2015-04-16	9001443	\N	\N	15601
rivastigmine 27 mg per 15 sq cm transdermal patch	t	1	f	2015-04-17	9001444	\N	\N	15602
naproxen sodium 105 mg and naproxen 105 mg oral capsule	t	1	f	2015-06-19	9001445	\N	\N	15603
lisdexamfetamine dimesylate 10 mg oral capsule	t	1	f	2015-06-26	9001446	\N	\N	15604
insulin glargine 300 unit per mL solution for injection 1.5 mL pen	t	1	f	2015-07-15	9001447	\N	\N	15605
amiodarone hydrochloride 150 mg per 3 mL solution for injection syringe	t	1	f	2015-08-12	9001448	\N	\N	15606
insulin lispro 200 unit per mL solution for injection 3 mL pen	t	1	f	2015-09-14	9001449	\N	\N	15607
rivaroxaban 15 mg and rivaroxaban 20 mg oral tablet	t	1	f	2015-11-02	9001450	\N	\N	15608
lorazepam 2 mg per 1 mL solution for injection vial	t	1	f	2015-11-12	9001451	\N	\N	15609
fluticasone furoate 200 mcg inhalation powder	t	1	f	2015-12-14	9001452	\N	\N	15610
fluticasone furoate 200 mcg oral powder	t	1	f	2015-12-14	9001453	\N	\N	15611
fluticasone furoate 100 mcg inhalation powder	t	1	f	2016-01-26	9001454	\N	\N	15612
fluticasone furoate 100 mcg oral powder	t	1	f	2016-01-26	9001455	\N	\N	15613
betamethasone valerate 2.25 mg cutaneous patch	t	1	f	2016-04-05	9001456	\N	\N	15614
progesterone 500 mg per 10 mL solution for injection vial	t	1	f	2016-04-13	9001457	\N	\N	15615
testosterone 4.5 % nasal gel	t	1	f	2016-05-06	9001458	\N	\N	15616
buprenorphine 15 mcg per hour transdermal patch	t	1	f	2016-06-15	9001459	\N	\N	15617
budesonide 9 mg modified-release oral tablet	t	1	f	2016-07-25	9001460	\N	\N	15618
esomeprazole (esomeprazole magnesium) 20 mg gastro-resistant capsule	t	1	f	2016-08-10	9001461	\N	\N	15619
ibuprofen 600 mg prolonged-release oral tablet	t	1	f	2016-08-22	9001462	\N	\N	15620
morphine sulfate 10 mg oral capsule	t	1	f	2016-09-06	9001463	\N	\N	15621
morphine sulfate 20 mg oral capsule	t	1	f	2016-09-06	9001464	\N	\N	15622
morphine sulfate 30 mg oral capsule	t	1	f	2016-09-06	9001465	\N	\N	15623
morphine sulfate 5 mg oral capsule	t	1	f	2016-09-06	9001466	\N	\N	15624
ciclesonide 50 mcg per spray nasal spray	t	1	f	2016-11-25	9001467	\N	\N	15625
methotrexate (methotrexate sodium) 17.5 mg per 0.35 mL solution for injection 0.35 mL syringe	t	1	f	2016-12-02	9001468	\N	\N	15626
NA 250 mg oral capsule	f	1	f	1971-12-31	9001679	\N	\N	15627
methotrexate (methotrexate sodium) 20 mg per 0.4 mL solution for injection 0.4 mL syringe	t	1	f	2016-12-02	9001469	\N	\N	15628
methotrexate (methotrexate sodium) 22.5 mg per 0.45 mL solution for injection 0.45 mL syringe	t	1	f	2016-12-02	9001470	\N	\N	15629
methotrexate (methotrexate sodium) 25 mg per 0.5 mL solution for injection 0.5 mL syringe	t	1	f	2016-12-02	9001471	\N	\N	15630
lisdexamfetamine dimesylate 70 mg oral capsule	t	1	f	2017-01-05	9001472	\N	\N	15631
hydromorphone hydrochloride 100 mg per 10 mL solution for injection ampoule	t	1	f	2017-02-06	9001473	\N	\N	15632
hydromorphone hydrochloride 10 mg per 1 mL solution for injection ampoule	t	1	f	2017-02-06	9001474	\N	\N	15633
travoprost 0.003 % ophthalmic drops	t	1	f	2017-02-06	9001475	\N	\N	15634
insulin aspart 100 unit per mL solution for injection 3 mL pen	t	1	f	2017-03-03	9001476	\N	\N	15635
diazepam 10 mg per 2 mL solution for injection ampoule	t	1	f	2017-03-16	9001477	\N	\N	15636
propranolol hydrochloride 3.75 mg per mL oral solution	t	1	f	2017-03-23	9001478	\N	\N	15637
air 100 % medicinal gas	f	1	f	1911-12-31	9001479	\N	\N	15638
carbon dioxide 100 % medicinal gas	f	1	f	1911-12-31	9001480	\N	\N	15639
carbon dioxide 5 % and oxygen 95 % medicinal gas	f	1	f	1911-12-31	9001481	\N	\N	15640
helium 100 % medicinal gas	f	1	f	1911-12-31	9001482	\N	\N	15641
helium 80 % and oxygen 20 % medicinal gas	f	1	f	1911-12-31	9001483	\N	\N	15642
nitrogen 100 % medicinal gas	f	1	f	1911-12-31	9001484	\N	\N	15643
nitrous oxide 100 % medicinal gas	f	1	f	1911-12-31	9001485	\N	\N	15644
oxygen 100 % medicinal gas	f	4	f	1911-12-31	9001486	\N	\N	15645
gold sodium thiomalate 10 mg per mL solution for injection	f	2	f	1935-12-31	9001487	\N	\N	15646
gold sodium thiomalate 25 mg per mL solution for injection	f	2	f	1935-12-31	9001488	\N	\N	15647
gold sodium thiomalate 50 mg per mL solution for injection	f	2	f	1935-12-31	9001489	\N	\N	15648
chloroxylenol 4.8 % cutaneous liquid	f	1	f	1938-12-31	9001490	\N	\N	15649
pitcher plant 100 % solution for injection	f	1	f	1942-12-31	9001491	\N	\N	15650
NA 1 % cutaneous ointment	f	1	f	1944-12-31	9001492	\N	\N	15651
NA 1 % rectal ointment	f	1	f	1944-12-31	9001493	\N	\N	15652
primaquine phosphate 26.3 mg oral tablet	f	1	f	1945-12-31	9001494	\N	\N	15653
propylthiouracil 100 mg oral tablet	f	1	f	1945-12-31	9001495	\N	\N	15654
dihydroergotamine mesylate 1 mg per mL solution for injection	f	2	f	1946-12-31	9001496	\N	\N	15655
bismuth dipropylacetate 135 mg suppository	f	1	f	1950-12-31	9001497	\N	\N	15656
acetylsalicylic acid 325 mg gastro-resistant tablet	f	10	f	1951-12-31	9001498	\N	\N	15657
bacitracin 50000 unit per 10 mL powder for cutaneous solution	f	1	f	1951-12-31	9001499	\N	\N	15658
bacitracin 50000 unit per 10 mL powder for solution for injection	f	1	f	1951-12-31	9001500	\N	\N	15659
benzalkonium chloride 13 % cutaneous liquid	f	1	f	1951-12-31	9001501	\N	\N	15660
calcium chloride 0.2 mg per mL and dextrose 50 mg per mL and potassium chloride 0.3 mg per mL and sodium chloride 6 mg per mL and sodium lactate 3.1 mg per mL solution for injection	f	1	f	1951-12-31	9001502	\N	\N	15661
calcium chloride 0.2 mg per mL and potassium chloride 0.3 mg per mL and sodium chloride 6 mg per mL and sodium lactate 3.1 mg per mL solution for injection	f	1	f	1951-12-31	9001503	\N	\N	15662
camphor 2 mg and diphenylpyraline hydrochloride 0.5 mg and guaiacol carbonate 200 mg suppository	f	1	f	1951-12-31	9001504	\N	\N	15663
camphor 5 mg and diphenylpyraline hydrochloride 1.5 mg and guaiacol carbonate 600 mg suppository	f	1	f	1951-12-31	9001505	\N	\N	15664
dexpanthenol 10 mg per mL and lidocaine hydrochloride 2 % and nicotinamide 75 mg per mL and pyridoxine hydrochloride 2 mg per mL and vitamin b1 50 mg per mL and vitamin b2 (riboflavin 5'-phosphate sodium) 7.5 mg per mL solution for injection	f	1	t	1951-12-31	9001506	\N	\N	15665
dextrose 100 mg per mL solution for injection	f	2	f	1951-12-31	9001507	\N	\N	15666
dextrose 500 mg per mL solution for injection	f	1	f	1951-12-31	9001508	\N	\N	15667
dextrose 50 mg per mL and sodium chloride 4.5 mg per mL solution for injection	f	1	f	1951-12-31	9001509	\N	\N	15668
dextrose 50 mg per mL and sodium chloride 9 mg per mL solution for injection	f	2	f	1951-12-31	9001510	\N	\N	15669
dimenhydrinate 100 mg suppository	f	2	f	1951-12-31	9001511	\N	\N	15670
dimenhydrinate 15 mg per 5 mL syrup	f	1	f	1951-12-31	9001512	\N	\N	15671
gentian violet 1 % cutaneous liquid	f	1	f	1951-12-31	9001513	\N	\N	15672
iothalamate meglumine 600 mg per mL solution for injection	f	1	f	1951-12-31	9001514	\N	\N	15673
lidocaine hydrochloride 20 mg per mL cutaneous gel	f	2	f	1951-12-31	9001515	\N	\N	15674
methenamine mandelate 500 mg oral tablet	f	1	f	1951-12-31	9001516	\N	\N	15675
methylene blue 1 % oral liquid	f	1	f	1951-12-31	9001517	\N	\N	15676
methylene blue 2 % oral liquid	f	1	f	1951-12-31	9001518	\N	\N	15677
mineral oil 100 % cutaneous liquid	f	2	f	1951-12-31	9001519	\N	\N	15678
mineral oil 100 % oral liquid	f	3	f	1951-12-31	9001520	\N	\N	15679
papaverine hydrochloride 65 mg per 2 mL solution for injection	f	1	f	1951-12-31	9001521	\N	\N	15680
petrolatum 100 % cutaneous ointment	f	3	f	1951-12-31	9001522	\N	\N	15681
potassium chloride 149 mg per mL solution for injection	f	1	f	1951-12-31	9001523	\N	\N	15682
propylthiouracil 50 mg oral tablet	f	1	f	1951-12-31	9001524	\N	\N	15683
sodium chloride 146 mg per mL solution for injection	f	1	f	1951-12-31	9001525	\N	\N	15684
sodium chloride 50 mg per mL solution for injection	f	1	f	1951-12-31	9001526	\N	\N	15685
sodium chloride 9 mg per mL solution for injection	f	7	f	1951-12-31	9001527	\N	\N	15686
sulfacetamide sodium 100 mg per mL ophthalmic drops	f	1	f	1951-12-31	9001528	\N	\N	15687
thiamazole 5 mg oral tablet	f	2	f	1951-12-31	9001529	\N	\N	15688
thiopental sodium 1 g per vial powder for solution for injection	f	1	f	1951-12-31	9001530	\N	\N	15689
thyroid 125 mg oral tablet	f	1	f	1951-12-31	9001531	\N	\N	15690
thyroid 30 mg oral tablet	f	1	f	1951-12-31	9001532	\N	\N	15691
thyroid 60 mg oral tablet	f	1	f	1951-12-31	9001533	\N	\N	15692
tropicamide 0.5 % ophthalmic drops	f	2	f	1951-12-31	9001534	\N	\N	15693
water 100 % solution for injection	f	11	f	1951-12-31	9001535	\N	\N	15694
white petrolatum 100 % cutaneous ointment	f	4	f	1951-12-31	9001536	\N	\N	15695
ethopropazine (ethopropazine hydrochloride) 50 mg oral tablet	f	1	f	1952-12-31	9001537	\N	\N	15696
succinylcholine chloride 20 mg per mL solution for injection	f	3	f	1952-12-31	9001538	\N	\N	15697
crotamiton 10 % cutaneous cream	f	1	f	1953-12-31	9001539	\N	\N	15698
dimenhydrinate 50 mg per mL solution for injection	f	5	f	1953-12-31	9001540	\N	\N	15699
busulfan 2 mg oral tablet	f	1	f	1954-12-31	9001541	\N	\N	15700
epinephrine 0.01 mg per mL and lidocaine hydrochloride 10 mg per mL solution for injection	f	1	f	1954-12-31	9001542	\N	\N	15701
epinephrine 5 mcg per mL and lidocaine hydrochloride 10 mg per mL solution for injection	f	1	f	1954-12-31	9001543	\N	\N	15702
lidocaine 5 % cutaneous ointment	f	3	f	1954-12-31	9001544	\N	\N	15703
lidocaine hydrochloride 10 mg per mL solution for injection	f	7	f	1954-12-31	9001545	\N	\N	15704
lidocaine hydrochloride 20 mg per mL cutaneous liquid	f	1	f	1954-12-31	9001546	\N	\N	15705
lidocaine hydrochloride 20 mg per mL oral liquid	f	1	f	1954-12-31	9001547	\N	\N	15706
lidocaine hydrochloride 20 mg per mL solution for injection	f	6	f	1954-12-31	9001548	\N	\N	15707
mercaptopurine 50 mg oral tablet	f	2	f	1954-12-31	9001549	\N	\N	15708
dextrose 50 mg per mL and sodium chloride 2.25 mg per mL solution for injection	f	1	f	1955-12-31	9001550	\N	\N	15709
nylidrin hydrochloride 6 mg oral tablet	f	1	f	1955-12-31	9001551	\N	\N	15710
acenocoumarol 4 mg oral tablet	f	1	f	1957-12-31	9001552	\N	\N	15711
calcium chloride 20 mg per 100 mL and potassium chloride 30 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL solution for injection	f	2	f	1957-12-31	9001553	\N	\N	15712
clioquinol 3 % and hydrocortisone 1 % cutaneous cream	f	1	f	1957-12-31	9001554	\N	\N	15713
NA 2 mg oral tablet	f	2	f	1957-12-31	9001555	\N	\N	15714
phenobarbital 100 mg oral tablet	f	1	f	1957-12-31	9001556	\N	\N	15715
phenobarbital 15 mg oral tablet	f	1	f	1957-12-31	9001557	\N	\N	15716
phenobarbital 30 mg oral tablet	f	1	f	1957-12-31	9001558	\N	\N	15717
phenobarbital 60 mg oral tablet	f	1	f	1957-12-31	9001559	\N	\N	15718
spiramycin 1500000 unit oral capsule	f	1	f	1957-12-31	9001560	\N	\N	15719
spiramycin 750000 unit oral capsule	f	1	f	1957-12-31	9001561	\N	\N	15720
amphotericin b 50 mg per vial powder for solution for injection	f	2	f	1958-12-31	9001562	\N	\N	15721
bisacodyl 10 mg suppository	f	7	f	1958-12-31	9001563	\N	\N	15722
bisacodyl 5 mg gastro-resistant tablet	f	4	f	1958-12-31	9001564	\N	\N	15723
dextrose 5 g per 100 mL and magnesium chloride 30 mg per 100 mL and potassium chloride 37 mg per 100 mL and sodium acetate 368 mg per 100 mL and sodium chloride 526 mg per 100 mL and sodium gluconate 502 mg per 100 mL solution for injection	f	1	t	1958-12-31	9001565	\N	\N	15724
methocarbamol 500 mg oral tablet	f	1	f	1958-12-31	9001566	\N	\N	15725
methotrimeprazine (methotrimeprazine hydrochloride) 25 mg per mL solution for injection	f	1	f	1958-12-31	9001567	\N	\N	15726
belladonna 0.2 mg and ergotamine tartrate 0.6 mg and phenobarbital 40 mg prolonged-release oral tablet	f	1	f	1959-01-01	9001568	\N	\N	15727
chloramphenicol (chloramphenicol sodium succinate) 1 g per vial powder for solution for injection	f	1	f	1959-12-31	9001569	\N	\N	15728
pilocarpine hydrochloride 20 mg per mL ophthalmic drops	f	1	f	1959-12-31	9001570	\N	\N	15729
pilocarpine hydrochloride 40 mg per mL ophthalmic drops	f	1	f	1959-12-31	9001571	\N	\N	15730
trimeprazine (trimeprazine tartrate) 2.5 mg oral tablet	f	1	f	1959-12-31	9001572	\N	\N	15731
trimeprazine (trimeprazine tartrate) 5 mg oral tablet	f	1	f	1959-12-31	9001573	\N	\N	15732
atropine sulfate 0.025 mg and diphenoxylate hydrochloride 2.5 mg oral tablet	f	1	f	1960-12-31	9001574	\N	\N	15733
codeine phosphate 10 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL and triprolidine hydrochloride 2 mg per 5 mL syrup	f	3	f	1960-12-31	9001575	\N	\N	15734
ethosuximide 250 mg oral capsule	f	1	f	1960-12-31	9001576	\N	\N	15735
hydrochlorothiazide 25 mg and spironolactone 25 mg oral tablet	f	2	f	1960-12-31	9001577	\N	\N	15736
methylprednisolone 4 mg oral tablet	f	1	f	1960-12-31	9001578	\N	\N	15737
methylprednisolone acetate 40 mg per mL suspension for injection	f	4	f	1960-12-31	9001579	\N	\N	15738
sodium chloride 4.5 mg per mL solution for injection	f	2	f	1960-12-31	9001580	\N	\N	15739
tetrahydrozoline hydrochloride 0.05 % ophthalmic drops	f	1	f	1960-12-31	9001581	\N	\N	15740
xylometazoline hydrochloride 0.1 % nasal spray	f	15	f	1960-12-31	9001582	\N	\N	15741
acetaminophen 325 mg oral tablet	f	23	f	1961-12-31	9001583	\N	\N	15742
chlordiazepoxide hydrochloride 5 mg and clidinium bromide 2.5 mg oral capsule	f	2	f	1961-12-31	9001584	\N	\N	15743
sodium polystyrene sulfonate 100 % NA	f	1	f	1961-12-31	9001585	\N	\N	15744
sodium polystyrene sulfonate 100 % oral powder	f	1	f	1961-12-31	9001586	\N	\N	15745
acenocoumarol 1 mg oral tablet	f	1	f	1962-12-31	9001587	\N	\N	15746
clofedanol hydrochloride 25 mg per 5 mL syrup	f	1	f	1962-12-31	9001588	\N	\N	15747
dextrose 25 mg per mL and sodium chloride 3 mg per mL and sodium lactate 3.1 mg per mL solution for injection	f	1	f	1962-12-31	9001589	\N	\N	15748
thioproperazine (thioproperazine mesylate) 10 mg oral tablet	f	1	f	1962-12-31	9001590	\N	\N	15749
aluminum hydroxide (dried aluminum hydroxide gel) 165 mg per 5 mL and magnesium hydroxide 200 mg per 5 mL and simethicone 25 mg per 5 mL oral suspension	f	1	f	1963-12-31	9001591	\N	\N	15750
aluminum hydroxide-magnesium carbonate-co dried gel 300 mg and magnesium hydroxide 100 mg and simethicone 25 mg oral tablet	f	1	f	1963-12-31	9001592	\N	\N	15751
dactinomycin 0.5 mg per vial powder for solution for injection	f	1	f	1963-12-31	9001593	\N	\N	15752
dexamethasone 0.1 % and neomycin (neomycin sulfate) 3.5 mg and polymyxin b sulfate 6000 unit per mL ophthalmic drops	f	1	f	1963-12-31	9001594	\N	\N	15753
glycerine 50 % and phenol 0.4 % and sodium chloride 0.9 % solution for injection	f	1	f	1963-12-31	9001595	\N	\N	15754
mannitol 200 mg per mL solution for injection	f	1	f	1963-12-31	9001596	\N	\N	15755
non pollen 100000 unit per mL solution for injection	f	1	f	1963-12-31	9001597	\N	\N	15756
phenol 0.4 % and sodium chloride 0.9 % solution for injection	f	1	f	1963-12-31	9001598	\N	\N	15757
pollen 100000 unit per mL solution for injection	f	1	f	1963-12-31	9001599	\N	\N	15758
simethicone 40 mg per mL oral drops	f	2	f	1963-12-31	9001600	\N	\N	15759
atropine sulfate 1 % ophthalmic drops	f	3	f	1964-12-31	9001601	\N	\N	15760
d-penicillamine 250 mg oral capsule	f	1	f	1964-12-31	9001602	\N	\N	15761
epinephrine (epinephrine bitartrate) 0.01 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	2	f	1964-12-31	9001603	\N	\N	15762
epinephrine (epinephrine bitartrate) 0.02 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	2	f	1964-12-31	9001604	\N	\N	15763
ethosuximide 250 mg per 5 mL syrup	f	1	f	1964-12-31	9001605	\N	\N	15764
sodium chloride 9 mg per mL irrigation solution	f	2	f	1964-12-31	9001606	\N	\N	15765
sodium chloride 9 mg per mL solution for peritoneal dialysis	f	3	f	1964-12-31	9001607	\N	\N	15766
water 100 % cutaneous liquid	f	1	f	1964-12-31	9001608	\N	\N	15767
water 100 % irrigation solution	f	5	f	1964-12-31	9001609	\N	\N	15768
aluminum chlorohydrate 100 mg per mL and methylprednisolone acetate 2.5 mg per mL and neomycin sulfate 2.5 mg per mL and sulfur 50 mg per mL lotion	f	1	f	1965-12-31	9001610	\N	\N	15769
betamethasone acetate 3 mg per mL and betamethasone (betamethasone sodium phosphate) 3 mg per mL suspension for injection	f	2	f	1965-12-31	9001611	\N	\N	15770
dextrose 50 mg per mL and magnesium acetate 0.21 mg per mL and potassium acetate 1.28 mg per mL and sodium chloride 2.34 mg per mL solution for injection	f	1	f	1965-12-31	9001612	\N	\N	15771
dextrose 50 mg per mL and magnesium chloride 0.14 mg per mL and potassium chloride 0.37 mg per mL and sodium acetate 2.22 mg per mL and sodium chloride 5.26 mg per mL and sodium gluconate 5.02 mg per mL solution for injection	f	1	t	1965-12-31	9001613	\N	\N	15772
epinephrine 5 mcg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	1965-12-31	9001614	\N	\N	15773
magnesium chloride 0.14 mg per mL and potassium chloride 0.37 mg per mL and sodium acetate 2.22 mg per mL and sodium chloride 5.26 mg per mL and sodium gluconate 5.02 mg per mL solution for injection	f	1	f	1965-12-31	9001615	\N	\N	15774
phenobarbital 5 mg per mL oral solution	f	1	f	1965-12-31	9001616	\N	\N	15775
tolnaftate 1 % cutaneous cream	f	4	f	1965-12-31	9001617	\N	\N	15776
tolnaftate 1 % cutaneous powder	f	3	f	1965-12-31	9001618	\N	\N	15777
ephedrine sulfate 50 mg per mL solution for injection	f	2	f	1966-12-31	9001619	\N	\N	15778
flecainide acetate 100 mg oral tablet	f	3	f	1966-12-31	9001620	\N	\N	15779
mefenamic acid 250 mg oral capsule	f	4	f	1966-12-31	9001621	\N	\N	15780
sodium chloride 9 mg per mL cutaneous solution	f	1	f	1966-12-31	9001622	\N	\N	15781
acetylsalicylic acid 650 mg gastro-resistant tablet	f	7	f	1967-12-31	9001623	\N	\N	15782
chlorpheniramine maleate 4 mg oral tablet	f	3	f	1967-12-31	9001624	\N	\N	15783
chlorpromazine (chlorpromazine hydrochloride) 100 mg oral tablet	f	1	f	1967-12-31	9001625	\N	\N	15784
chlorpromazine (chlorpromazine hydrochloride) 25 mg oral tablet	f	1	f	1967-12-31	9001626	\N	\N	15785
chlorpromazine (chlorpromazine hydrochloride) 50 mg oral tablet	f	1	f	1967-12-31	9001627	\N	\N	15786
dimenhydrinate 50 mg oral tablet	f	12	f	1967-12-31	9001628	\N	\N	15787
isoniazid 300 mg and pyridoxine hydrochloride 15 mg oral tablet	f	1	f	1967-12-31	9001629	\N	\N	15788
NA 0.05 % and NA 0.5 % cutaneous cream	f	1	f	1967-12-31	9001630	\N	\N	15789
carbon monoxide 0.3 % and neon 0.5 % and nitrogen 78.2 % and oxygen 21 % medicinal gas	f	2	f	1968-12-31	9001631	\N	\N	15790
chloroquine diphosphate 250 mg oral tablet	f	1	f	1968-12-31	9001632	\N	\N	15791
clioquinol 3 % and flumethasone pivalate 0.02 % cutaneous cream	f	1	f	1968-12-31	9001633	\N	\N	15792
dextran 100 mg per mL and dextrose 50 mg per mL solution for injection	f	1	f	1968-12-31	9001634	\N	\N	15793
dextran 10 % and sodium chloride 0.9 % solution for injection	f	1	f	1968-12-31	9001635	\N	\N	15794
ergoloid mesylates 1 mg oral tablet	f	1	f	1968-12-31	9001636	\N	\N	15795
ethacrynic acid (ethacrynate sodium) 50 mg per vial powder for solution for injection	f	1	f	1968-12-31	9001637	\N	\N	15796
magnesium chloride 30 mg per 100 mL and potassium chloride 37 mg per 100 mL and sodium acetate 368 mg per 100 mL and sodium chloride 526 mg per 100 mL and sodium gluconate 502 mg per 100 mL solution for injection	f	2	f	1968-12-31	9001638	\N	\N	15797
methylprednisolone 16 mg oral tablet	f	1	f	1968-12-31	9001639	\N	\N	15798
acetylsalicylic acid 325 mg oral tablet	f	8	f	1969-12-31	9001640	\N	\N	15799
calcium chloride 0.2 mg per mL and magnesium chloride 0.116 mg per mL and potassium chloride 0.3 mg per mL and sodium chloride 8.6 mg per mL solution for injection	f	1	f	1969-12-31	9001641	\N	\N	15800
citric acid 148 mg per mL and magnesium oxide 1.9 mg per mL and sodium carbonate (anhydrous) 2.2 mg per mL irrigation solution	f	1	f	1969-12-31	9001642	\N	\N	15801
clioquinol 1 % and flumethasone pivalate 0.02 % otic drops	f	1	f	1969-12-31	9001643	\N	\N	15802
hypromellose 0.5 % ophthalmic drops	f	2	f	1969-12-31	9001644	\N	\N	15803
methylprednisolone acetate 80 mg per mL suspension for injection	f	4	f	1969-12-31	9001645	\N	\N	15804
mineral oil 100 % rectal liquid	f	1	f	1969-12-31	9001646	\N	\N	15805
periciazine 10 mg oral capsule	f	1	f	1969-12-31	9001647	\N	\N	15806
periciazine 5 mg oral capsule	f	1	f	1969-12-31	9001648	\N	\N	15807
thiothixene 5 mg oral capsule	f	1	f	1969-12-31	9001649	\N	\N	15808
tropicamide 1 % ophthalmic drops	f	3	f	1969-12-31	9001650	\N	\N	15809
acetylsalicylic acid 330 mg and butalbital 50 mg and caffeine 40 mg and codeine phosphate 15 mg oral capsule	f	3	f	1970-12-31	9001651	\N	\N	15810
acetylsalicylic acid 330 mg and butalbital 50 mg and caffeine 40 mg and codeine phosphate 30 mg oral capsule	f	3	f	1970-12-31	9001652	\N	\N	15811
acetylsalicylic acid 375 mg and caffeine 15 mg and codeine phosphate 8 mg oral tablet	f	4	f	1970-12-31	9001653	\N	\N	15812
betamethasone (betamethasone valerate) 0.1 % and gentamicin (gentamicin sulfate) 0.1 % cutaneous cream	f	1	f	1970-12-31	9001654	\N	\N	15813
chloroxylenol 0.5 % and coal tar 7.5 % and menthol 1.5 % shampoo	f	3	f	1970-12-31	9001655	\N	\N	15814
dexamethasone 0.1 % and neomycin (neomycin sulfate) 3.5 mg and polymyxin b sulfate 6000 unit per g ophthalmic ointment	f	1	f	1970-12-31	9001656	\N	\N	15815
doxepin (doxepin hydrochloride) 10 mg oral capsule	f	2	f	1970-12-31	9001657	\N	\N	15816
doxepin (doxepin hydrochloride) 25 mg oral capsule	f	3	f	1970-12-31	9001658	\N	\N	15817
doxepin (doxepin hydrochloride) 50 mg oral capsule	f	3	f	1970-12-31	9001659	\N	\N	15818
hypromellose 1 % ophthalmic drops	f	1	f	1970-12-31	9001660	\N	\N	15819
mannitol 250 mg per mL solution for injection	f	2	f	1970-12-31	9001661	\N	\N	15820
methylprednisolone (methylprednisolone sodium succinate) 500 mg per vial kit	f	2	f	1970-12-31	9001662	\N	\N	15821
methylprednisolone (methylprednisolone sodium succinate) 500 mg per vial NA	f	2	f	1970-12-31	9001663	\N	\N	15822
methylprednisolone (methylprednisolone sodium succinate) 500 mg per vial powder for solution for injection	f	3	f	1970-12-31	9001664	\N	\N	15823
naphazoline hydrochloride 0.1 % ophthalmic drops	f	5	f	1970-12-31	9001665	\N	\N	15824
octinoxate 7 % and oxybenzone 2 % lotion	f	1	f	1970-12-31	9001666	\N	\N	15825
procarbazine (procarbazine hydrochloride) 50 mg oral capsule	f	1	f	1970-12-31	9001667	\N	\N	15826
acetylsalicylic acid 330 mg and butalbital 50 mg and caffeine 40 mg oral capsule	f	3	f	1971-12-31	9001668	\N	\N	15827
chlorobutanol 5 % per 11 mL and dichlorobenzene 2 % per 11 mL and oil of turpentine 10 % per 11 mL and peanut oil 57 % per 11 mL otic drops	f	1	f	1971-12-31	9001669	\N	\N	15828
citric acid 32.4 mg per mL and magnesium oxide 3.8 mg per mL and sodium carbonate (anhydrous) 4.3 mg per mL irrigation solution	f	1	f	1971-12-31	9001670	\N	\N	15829
daunorubicin (daunorubicin hydrochloride) 20 mg per vial powder for solution for injection	f	2	f	1971-12-31	9001671	\N	\N	15830
imipramine hydrochloride 10 mg oral tablet	f	3	f	1971-12-31	9001672	\N	\N	15831
imipramine hydrochloride 25 mg oral tablet	f	3	f	1971-12-31	9001673	\N	\N	15832
imipramine hydrochloride 50 mg oral tablet	f	3	f	1971-12-31	9001674	\N	\N	15833
methylprednisolone (methylprednisolone sodium succinate) 1 g per vial kit	f	2	f	1971-12-31	9001675	\N	\N	15834
methylprednisolone (methylprednisolone sodium succinate) 1 g per vial NA	f	2	f	1971-12-31	9001676	\N	\N	15835
methylprednisolone (methylprednisolone sodium succinate) 1 g per vial powder for solution for injection	f	3	f	1971-12-31	9001677	\N	\N	15836
NA 0.5 % ophthalmic drops	f	2	f	1971-12-31	9001678	\N	\N	15837
NA 500 mg oral capsule	f	1	f	1971-12-31	9001680	\N	\N	15838
betamethasone (betamethasone valerate) 1 mg per g and gentamicin (gentamicin sulfate) 1 mg per g cutaneous ointment	f	1	f	1972-12-31	9001681	\N	\N	15839
cetrimonium bromide 750 mg per 100 g and disodium edetate 15 g per 100 g dental solution	f	1	f	1972-12-31	9001682	\N	\N	15840
chlorhexidine gluconate 4 % cutaneous solution	f	2	f	1972-12-31	9001683	\N	\N	15841
cyclopentolate hydrochloride 1 % ophthalmic drops	f	3	f	1972-12-31	9001684	\N	\N	15842
danazol 200 mg oral capsule	f	1	f	1972-12-31	9001685	\N	\N	15843
ethambutol hydrochloride 100 mg oral tablet	f	1	f	1972-12-31	9001686	\N	\N	15844
ethambutol hydrochloride 400 mg oral tablet	f	1	f	1972-12-31	9001687	\N	\N	15845
fluorometholone 0.1 % ophthalmic drops	f	2	f	1972-12-31	9001688	\N	\N	15846
isoniazid 100 mg oral tablet	f	2	f	1972-12-31	9001689	\N	\N	15847
isoniazid 300 mg oral tablet	f	3	f	1972-12-31	9001690	\N	\N	15848
ketamine (ketamine hydrochloride) 10 mg per mL solution for injection	f	2	f	1972-12-31	9001691	\N	\N	15849
ketamine (ketamine hydrochloride) 50 mg per mL solution for injection	f	3	f	1972-12-31	9001692	\N	\N	15850
magnesium hydroxide 60 mg per mL and mineral oil 0.25 mL per mL oral emulsion	f	1	f	1972-12-31	9001693	\N	\N	15851
trometamol 36 mg per mL solution for injection	f	1	f	1972-12-31	9001694	\N	\N	15852
amylase 40000 unit and lipase 10000 unit and protease 35000 unit oral capsule	f	1	f	1973-12-31	9001695	\N	\N	15853
arginine hydrochloride 250 mg per mL solution for injection	f	1	f	1973-12-31	9001696	\N	\N	15854
calcium chloride 20 mg per 100 mL and dextrose 5 g per 100 mL and potassium chloride 30 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL solution for injection	f	1	f	1973-12-31	9001697	\N	\N	15855
clomipramine hydrochloride 25 mg oral tablet	f	1	f	1973-12-31	9001698	\N	\N	15856
coal tar 5 % and salicylic acid 2 % and triclosan 0.3 % shampoo	f	1	f	1973-12-31	9001699	\N	\N	15857
cortisone acetate 25 mg oral tablet	f	1	f	1973-12-31	9001700	\N	\N	15858
dimenhydrinate 10 mg per mL solution for injection	f	1	f	1973-12-31	9001701	\N	\N	15859
lidocaine hydrochloride 10 mg per mL and methylprednisolone acetate 40 mg per mL solution for injection	f	1	f	1973-12-31	9001702	\N	\N	15860
phenazopyridine hydrochloride 100 mg oral tablet	f	2	f	1973-12-31	9001703	\N	\N	15861
pyrantel (pyrantel pamoate) 125 mg oral tablet	f	3	f	1973-12-31	9001704	\N	\N	15862
pyrantel (pyrantel pamoate) 50 mg per mL oral suspension	f	3	f	1973-12-31	9001705	\N	\N	15863
pyrazinamide 500 mg oral tablet	f	2	f	1973-12-31	9001706	\N	\N	15864
sodium chloride 234 mg per mL solution for injection	f	3	f	1973-12-31	9001707	\N	\N	15865
tetracosactide (tetracosactide zinc hydroxide) 1 mg per mL suspension for injection	f	1	f	1973-12-31	9001708	\N	\N	15866
triclosan 0.5 % cutaneous liquid	f	7	f	1973-12-31	9001709	\N	\N	15867
alanine 2.08 g per 100 mL and arginine 1.04 g per 100 mL and glycine 2.08 g per 100 mL and histidine 440 mg per 100 mL and isoleucine 480 mg per 100 mL and leucine 620 mg per 100 mL and l-lysine (l-lysine hydrochloride) 580 mg per 100 mL and magnesium chloride 102 mg per 100 mL and methionine 580 mg per 100 mL and phenylalanine 620 mg per 100 mL and potassium phosphate dibasic 522 mg per 100 mL and proline 420 mg per 100 mL and sodium acetate 680 mg per 100 mL and sodium chloride 117 mg per 100 mL and threonine 420 mg per 100 mL and tryptophan 180 mg per 100 mL and tyrosine 40 mg per 100 mL and valine 460 mg per 100 mL solution for injection	f	1	t	1974-12-31	9001710	\N	\N	15868
chlorpropamide 250 mg oral tablet	f	1	f	1974-12-31	9001711	\N	\N	15869
colistin (colistimethate sodium) 150 mg per vial powder for solution for injection	f	3	f	1974-12-31	9001712	\N	\N	15870
dexbrompheniramine maleate 6 mg and pseudoephedrine sulfate 120 mg prolonged-release oral tablet	f	1	f	1974-12-31	9001713	\N	\N	15871
dicyclomine hydrochloride 10 mg oral capsule	f	3	f	1974-12-31	9001714	\N	\N	15872
dimenhydrinate 50 mg suppository	f	1	f	1974-12-31	9001715	\N	\N	15873
dinoprost (dinoprost tromethamine) 5 mg per mL solution for injection	f	1	f	1974-12-31	9001716	\N	\N	15874
lidocaine hydrochloride 100 mg per 5 mL solution for injection	f	1	f	1974-12-31	9001717	\N	\N	15875
metolazone 2.5 mg oral tablet	f	1	f	1974-12-31	9001718	\N	\N	15876
miconazole nitrate 2 % cutaneous cream	f	2	f	1974-12-31	9001719	\N	\N	15877
NA 10000 unit per vial powder for solution for injection	f	2	f	1974-12-31	9001720	\N	\N	15878
NA 40 mg oral tablet	f	1	f	1974-12-31	9001721	\N	\N	15879
prednisolone acetate 0.2 % and sulfacetamide sodium 10 % ophthalmic ointment	f	1	f	1974-12-31	9001722	\N	\N	15880
silver sulfadiazine 1 % cutaneous cream	f	1	f	1974-12-31	9001723	\N	\N	15881
simethicone 80 mg oral tablet	f	2	f	1974-12-31	9001724	\N	\N	15882
sodium bicarbonate 84 mg per mL solution for injection	f	1	f	1974-12-31	9001725	\N	\N	15883
tetracosactide 0.25 mg per vial powder for solution for injection	f	1	f	1974-12-31	9001726	\N	\N	15884
pizotifen (pizotifen malate) 0.5 mg oral tablet	f	1	f	1975-01-01	9001727	\N	\N	15885
acetaminophen 500 mg oral tablet	f	41	f	1975-12-31	9001728	\N	\N	15886
benzylpenicilloyl-polylysine 6e-05 m per amp solution for injection	f	1	f	1975-12-31	9001729	\N	\N	15887
carmustine 100 mg per vial powder for solution for injection	f	1	f	1975-12-31	9001730	\N	\N	15888
clomipramine hydrochloride 10 mg oral tablet	f	1	f	1975-12-31	9001731	\N	\N	15889
cloxacillin (cloxacillin sodium) 250 mg oral capsule	f	1	f	1975-12-31	9001732	\N	\N	15890
cloxacillin (cloxacillin sodium) 500 mg oral capsule	f	1	f	1975-12-31	9001733	\N	\N	15891
coal tar 10 % cutaneous gel	f	1	f	1975-12-31	9001734	\N	\N	15892
docusate sodium 50 mg and sennosides (senna) 8.6 mg oral tablet	f	1	f	1975-12-31	9001735	\N	\N	15893
fluorouracil 5 % cutaneous cream	f	1	f	1975-12-31	9001736	\N	\N	15894
hydrocortisone acetate 10 mg and zinc sulfate 10 mg suppository	f	6	f	1975-12-31	9001737	\N	\N	15895
magnesium sulfate 500 mg per mL solution for injection	f	4	f	1975-12-31	9001738	\N	\N	15896
mineral oil 78 % oral gel	f	2	f	1975-12-31	9001739	\N	\N	15897
NA 99.99 % inhalation solution	f	1	f	1975-12-31	9001740	\N	\N	15898
pimozide 2 mg oral tablet	f	3	f	1975-12-31	9001741	\N	\N	15899
pimozide 4 mg oral tablet	f	3	f	1975-12-31	9001742	\N	\N	15900
purified protein derivative of tuberculin 5 tub per 0.1 mL solution for injection	f	1	f	1975-12-31	9001743	\N	\N	15901
thiopental sodium 5 g per bottle powder for solution for injection	f	1	f	1975-12-31	9001744	\N	\N	15902
tolbutamide 500 mg oral tablet	f	1	f	1975-12-31	9001745	\N	\N	15903
trifluoperazine (trifluoperazine hydrochloride) 10 mg oral tablet	f	1	f	1975-12-31	9001746	\N	\N	15904
trifluoperazine (trifluoperazine hydrochloride) 1 mg oral tablet	f	1	f	1975-12-31	9001747	\N	\N	15905
trifluoperazine (trifluoperazine hydrochloride) 2 mg oral tablet	f	1	f	1975-12-31	9001748	\N	\N	15906
trifluoperazine (trifluoperazine hydrochloride) 5 mg oral tablet	f	1	f	1975-12-31	9001749	\N	\N	15907
chlorthalidone 100 mg oral tablet	f	1	f	1976-12-31	9001750	\N	\N	15908
chlorthalidone 50 mg oral tablet	f	1	f	1976-12-31	9001751	\N	\N	15909
coal tar 20 % cutaneous liquid	f	1	f	1976-12-31	9001752	\N	\N	15910
danazol 100 mg oral capsule	f	1	f	1976-12-31	9001753	\N	\N	15911
dextrose 33.3 mg per mL and sodium chloride 3 mg per mL solution for injection	f	1	f	1976-12-31	9001754	\N	\N	15912
dicyclomine hydrochloride 10 mg per mL solution for injection	f	1	f	1976-12-31	9001755	\N	\N	15913
epinephrine 18 mcg per 1.8 mL and lidocaine hydrochloride 36 mg per 1.8 mL solution for injection	f	1	f	1976-12-31	9001756	\N	\N	15914
epinephrine (epinephrine bitartrate) 36 mcg per 1.8 mL and lidocaine hydrochloride 36 mg per 1.8 mL solution for injection	f	1	f	1976-12-31	9001757	\N	\N	15915
hyoscine butylbromide 10 mg oral tablet	f	1	f	1976-12-31	9001758	\N	\N	15916
hyoscine butylbromide 20 mg per mL solution for injection	f	2	f	1976-12-31	9001759	\N	\N	15917
isoniazid 500 g per bottle oral powder	f	1	f	1976-12-31	9001760	\N	\N	15918
lomustine 100 mg oral capsule	f	1	f	1976-12-31	9001761	\N	\N	15919
lomustine 10 mg oral capsule	f	1	f	1976-12-31	9001762	\N	\N	15920
lomustine 40 mg oral capsule	f	1	f	1976-12-31	9001763	\N	\N	15921
methyldopa 250 mg oral tablet	f	1	f	1976-12-31	9001764	\N	\N	15922
metronidazole 500 mg per 4.5 g and nystatin 100000 unit per 4.5 g vaginal cream	f	1	f	1976-12-31	9001765	\N	\N	15923
oxtriphylline 100 mg per 5 mL oral solution	f	1	f	1976-12-31	9001766	\N	\N	15924
periciazine 10 mg per mL oral drops	f	1	f	1976-12-31	9001767	\N	\N	15925
periciazine 20 mg oral capsule	f	1	f	1976-12-31	9001768	\N	\N	15926
perphenazine 16 mg oral tablet	f	2	f	1976-12-31	9001769	\N	\N	15927
perphenazine 2 mg oral tablet	f	2	f	1976-12-31	9001770	\N	\N	15928
perphenazine 4 mg oral tablet	f	2	f	1976-12-31	9001771	\N	\N	15929
perphenazine 8 mg oral tablet	f	2	f	1976-12-31	9001772	\N	\N	15930
succinylcholine chloride 100 mg per mL solution for injection	f	1	f	1976-12-31	9001773	\N	\N	15931
aluminum chloride 25 g per 100 mL and oxyquinoline sulfate 100 mg per 100 mL dental solution	f	1	f	1977-12-31	9001774	\N	\N	15932
benserazide (benserazide hydrochloride) 25 mg and levodopa 100 mg oral capsule	f	1	f	1977-12-31	9001775	\N	\N	15933
benserazide (benserazide hydrochloride) 50 mg and levodopa 200 mg oral capsule	f	1	f	1977-12-31	9001776	\N	\N	15934
camphor 20 mg and eucalyptol 185 mg and guaiacol 90 mg and guaiacol carbonate 100 mg suppository	f	1	f	1977-12-31	9001777	\N	\N	15935
chlorpropamide 100 mg oral tablet	f	1	f	1977-12-31	9001778	\N	\N	15936
corbadrine (corbadrine hydrochloride) 50 mcg per mL and mepivacaine hydrochloride 20 mg per mL solution for injection	f	2	f	1977-12-31	9001779	\N	\N	15937
cytarabine 100 mg per vial powder for solution for injection	f	2	f	1977-12-31	9001780	\N	\N	15938
cytarabine 500 mg per vial powder for solution for injection	f	1	f	1977-12-31	9001781	\N	\N	15939
dextrose 250 mg per mL and sodium chloride 100 mg per mL solution for injection	f	1	f	1977-12-31	9001782	\N	\N	15940
dinoprostone 0.5 mg oral tablet	f	1	f	1977-12-31	9001783	\N	\N	15941
epinephrine 5 mcg per mL and prilocaine hydrochloride 40 mg per mL solution for injection	f	2	f	1977-12-31	9001784	\N	\N	15942
fluphenazine hydrochloride 1 mg oral tablet	f	2	f	1977-12-31	9001785	\N	\N	15943
fluphenazine hydrochloride 2.5 mg oral tablet	f	1	f	1977-12-31	9001786	\N	\N	15944
fluphenazine hydrochloride 2 mg oral tablet	f	2	f	1977-12-31	9001787	\N	\N	15945
fluphenazine hydrochloride 5 mg oral tablet	f	2	f	1977-12-31	9001788	\N	\N	15946
iodine 60 mg per mL and sodium iodide 90 mg per mL solution for injection	f	1	f	1977-12-31	9001789	\N	\N	15947
iodine (ethiodized oil) 380 mg per g solution for injection	f	1	f	1977-12-31	9001790	\N	\N	15948
isoniazid 10 mg per mL syrup	f	1	f	1977-12-31	9001791	\N	\N	15949
mepivacaine hydrochloride 30 mg per mL solution for injection	f	4	f	1977-12-31	9001792	\N	\N	15950
primidone 125 mg oral tablet	f	1	f	1977-12-31	9001793	\N	\N	15951
primidone 250 mg oral tablet	f	1	f	1977-12-31	9001794	\N	\N	15952
rifampin 150 mg oral capsule	f	2	f	1977-12-31	9001795	\N	\N	15953
rifampin 300 mg oral capsule	f	2	f	1977-12-31	9001796	\N	\N	15954
sulfisoxazole 500 mg oral tablet	f	1	f	1977-12-31	9001797	\N	\N	15955
diatrizoate meglumine 66 % and diatrizoate sodium 10 % oral solution	f	1	f	1978-12-30	9001798	\N	\N	15956
acetylsalicylic acid 975 mg gastro-resistant tablet	f	1	f	1978-12-31	9001799	\N	\N	15957
alcohol anhydrous 100 % solution for injection	f	1	f	1978-12-31	9001800	\N	\N	15958
antazoline phosphate 0.5 % and naphazoline hydrochloride 0.05 % ophthalmic drops	f	1	f	1978-12-31	9001801	\N	\N	15959
benzocaine 18 % and tetracaine hydrochloride 2 % cutaneous liquid	f	1	f	1978-12-31	9001802	\N	\N	15960
bismuth subgallate 200 mg oral tablet	f	1	f	1978-12-31	9001803	\N	\N	15961
camphor 649 mg per 1 g and dexamethasone 1 mg per 1 g and parachlorophenol 300 mg per 1 g and thymol 50 mg per 1 g dental solution	f	1	f	1978-12-31	9001804	\N	\N	15962
dextromethorphan hydrobromide 10 mg per 5 mL and guaifenesin 50 mg per 5 mL and pheniramine maleate 7.5 mg per 5 mL and phenylephrine hydrochloride 3.75 mg per 5 mL syrup	f	1	f	1978-12-31	9001805	\N	\N	15963
dextrose 3.3 g per 100 mL and potassium chloride 150 mg per 100 mL and sodium chloride 300 mg per 100 mL solution for injection	f	2	f	1978-12-31	9001806	\N	\N	15964
dextrose 3.3 g per 100 mL and potassium chloride 300 mg per 100 mL and sodium chloride 300 mg per 100 mL solution for injection	f	1	f	1978-12-31	9001807	\N	\N	15965
dextrose 50 mg per mL solution for injection	f	2	f	1978-12-31	9001808	\N	\N	15966
hydrocortisone acetate 10 mg and pramoxine hydrochloride 20 mg and zinc sulfate 10 mg suppository	f	3	f	1978-12-31	9001809	\N	\N	15967
iothalamate meglumine 172 mg per mL intravesical solution	f	1	f	1978-12-31	9001810	\N	\N	15968
lidocaine hydrochloride 20 mg per mL urethral gel	f	1	f	1978-12-31	9001811	\N	\N	15969
magnesium sulfate 200 mg per mL solution for injection	f	1	f	1978-12-31	9001812	\N	\N	15970
methyldopa 500 mg oral tablet	f	1	f	1978-12-31	9001813	\N	\N	15971
miconazole nitrate 2 % vaginal cream	f	4	f	1978-12-31	9001814	\N	\N	15972
pindolol 10 mg oral tablet	f	5	f	1978-12-31	9001815	\N	\N	15973
pindolol 15 mg oral tablet	f	5	f	1978-12-31	9001816	\N	\N	15974
pindolol 5 mg oral tablet	f	5	f	1978-12-31	9001817	\N	\N	15975
alfacalcidol 0.25 mcg oral capsule	f	1	f	1980-12-31	9001869	\N	\N	15976
alfacalcidol 1 mcg oral capsule	f	1	f	1980-12-31	9001870	\N	\N	15977
amylase 42000 unit and lipase 10800 unit and protease 45000 unit gastro-resistant capsule	f	1	f	1980-12-31	9001871	\N	\N	15978
calcium chloride 0.0154 % and dextrose 0.092 % and glutathione disulfide 0.0184 % and magnesium chloride 0.02 % and potassium chloride 0.038 % and sodium bicarbonate 0.21 % and sodium chloride 0.714 % and sodium phosphate dibasic 0.042 % solution for injection	f	1	t	1982-12-31	9001936	\N	\N	15979
pneumococcal polysaccharide serotype 1 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 10a 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 11a 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 12f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 14 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 15b 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 17f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 18c 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 19a 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 19f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 2 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 20 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 22f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 23f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 3 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 33f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 4 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 5 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 6b 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 7f 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 8 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 9n 25 mcg per 0.5 mL and pneumococcal polysaccharide serotype 9v 25 mcg per 0.5 mL solution for injection	f	1	t	1978-12-31	9001818	\N	\N	15980
potassium chloride 20 meq per 10 mL solution for injection	f	1	f	1978-12-31	9001819	\N	\N	15981
sulfamethoxazole 500 mg oral tablet	f	1	f	1978-12-31	9001820	\N	\N	15982
sulfasalazine 500 mg oral tablet	f	3	f	1978-12-31	9001821	\N	\N	15983
sulfinpyrazone 200 mg oral tablet	f	1	f	1978-12-31	9001822	\N	\N	15984
tretinoin 0.05 % cutaneous gel	f	1	f	1978-12-31	9001823	\N	\N	15985
vitamin b12 1 mg per mL solution for injection	f	5	f	1978-12-31	9001824	\N	\N	15986
yellow fever vaccine 109648 pfu per 0.5 mL powder for solution for injection	f	1	f	1978-12-31	9001825	\N	\N	15987
antipyrine 10 mg per mL and sodium salicylate 56 mg per mL oral liquid	f	1	f	1979-12-31	9001826	\N	\N	15988
atropine sulfate 0.4 mg per mL solution for injection	f	3	f	1979-12-31	9001827	\N	\N	15989
atropine sulfate 0.6 mg per mL solution for injection	f	3	f	1979-12-31	9001828	\N	\N	15990
calcium polystyrene sulfonate 999 mg per g powder for oral solution	f	1	f	1979-12-31	9001829	\N	\N	15991
calcium polystyrene sulfonate 999 mg per g powder for rectal solution	f	1	f	1979-12-31	9001830	\N	\N	15992
dexpanthenol 10 mg per mL and nicotinamide 100 mg per mL and pyridoxine hydrochloride 10 mg per mL and thiamine hydrochloride 100 mg per mL and vitamin b12 100 mcg per mL and vitamin b2 (riboflavin 5'-phosphate sodium) 10 mg per mL solution for injection	f	1	t	1979-12-31	9001831	\N	\N	15993
dextromethorphan hydrobromide 15 mg per 5 mL syrup	f	13	f	1979-12-31	9001832	\N	\N	15994
dextromethorphan hydrobromide 3 mg per mL syrup	f	3	f	1979-12-31	9001833	\N	\N	15995
dextrose 33.3 mg per mL and potassium chloride 1.49 mg per mL and sodium chloride 3 mg per mL solution for injection	f	1	f	1979-12-31	9001834	\N	\N	15996
dextrose 33.3 mg per mL and potassium chloride 2.98 mg per mL and sodium chloride 3 mg per mL solution for injection	f	1	f	1979-12-31	9001835	\N	\N	15997
dextrose 50 mg per mL and potassium chloride 1.49 mg per mL and sodium chloride 2.25 mg per mL solution for injection	f	1	f	1979-12-31	9001836	\N	\N	15998
dextrose 50 mg per mL and potassium chloride 1.49 mg per mL and sodium chloride 4.5 mg per mL solution for injection	f	1	f	1979-12-31	9001837	\N	\N	15999
dextrose 50 mg per mL and potassium chloride 1.49 mg per mL solution for injection	f	1	f	1979-12-31	9001838	\N	\N	16000
dextrose 700 mg per mL solution for injection	f	2	f	1979-12-31	9001839	\N	\N	16001
dimenhydrinate 50 mg chewable tablet	f	2	f	1979-12-31	9001840	\N	\N	16002
diphenhydramine hydrochloride 25 mg oral tablet	f	16	f	1979-12-31	9001841	\N	\N	16003
ethinyl estradiol 30 mcg and ethynodiol diacetate 2 mg oral tablet	f	2	f	1979-12-31	9001842	\N	\N	16004
fluocinolone acetonide 0.01 % cutaneous cream	f	1	f	1979-12-31	9001843	\N	\N	16005
fluocinolone acetonide 0.025 % cutaneous cream	f	1	f	1979-12-31	9001844	\N	\N	16006
fluocinolone acetonide 0.25 mg per g cutaneous ointment	f	1	f	1979-12-31	9001845	\N	\N	16007
glycine 1.28 g per 100 mL and histidine 300 mg per 100 mL and l-alanine 1.28 g per 100 mL and l-arginine 980 mg per 100 mL and l-isoleucine 720 mg per 100 mL and l-leucine 940 mg per 100 mL and l-lysine (l-lysine acetate) 720 mg per 100 mL and l-phenylalanine 440 mg per 100 mL and l-proline 860 mg per 100 mL and l-threonine 520 mg per 100 mL and l-tyrosine 44 mg per 100 mL and l-valine 800 mg per 100 mL and methionine 400 mg per 100 mL and serine 420 mg per 100 mL and tryptophan 160 mg per 100 mL solution for injection	f	1	t	1979-12-31	9001846	\N	\N	16008
guaifenesin 100 mg per 5 mL syrup	f	9	f	1979-12-31	9001847	\N	\N	16009
hydrocortisone acetate 1 % and pramoxine hydrochloride 1 % rectal foam	f	1	f	1979-12-31	9001848	\N	\N	16010
hydroxocobalamin 1 mg per mL solution for injection	f	1	f	1979-12-31	9001849	\N	\N	16011
hydroxyurea 500 mg oral capsule	f	4	f	1979-12-31	9001850	\N	\N	16012
measles virus vaccine live attenuated 1000 unit per 0.5 mL and mumps virus vaccine live attenuated (jeryl lynn strain) 5000 unit per 0.5 mL and rubella virus vaccine live attenuated (wistar ra27/3 strain) 1000 unit per 0.5 mL powder for solution for injection	f	1	f	1979-12-31	9001851	\N	\N	16013
metronidazole 500 mg and nystatin 100000 unit pessary	f	1	f	1979-12-31	9001852	\N	\N	16014
mitotane 500 mg oral tablet	f	1	f	1979-12-31	9001853	\N	\N	16015
modified ragweed tyrosine adsorbate 1400 unit per mL and modified ragweed tyrosine adsorbate 210 unit per mL and modified ragweed tyrosine adsorbate 4300 unit per mL and modified ragweed tyrosine adsorbate 500 unit per mL solution for injection	f	1	f	1979-12-31	9001854	\N	\N	16016
nicotinamide 100 mg per mL solution for injection	f	1	f	1979-12-31	9001855	\N	\N	16017
nicotinic acid 100 mg per mL solution for injection	f	1	f	1979-12-31	9001856	\N	\N	16018
patent blue sodium 50 mg per 2 mL solution for injection	f	1	f	1979-12-31	9001857	\N	\N	16019
phenazopyridine hydrochloride 200 mg oral tablet	f	2	f	1979-12-31	9001858	\N	\N	16020
phenylephrine hydrochloride 2.5 % ophthalmic drops	f	3	f	1979-12-31	9001859	\N	\N	16021
piperazine 100 mg per mL oral liquid	f	1	f	1979-12-31	9001860	\N	\N	16022
pyridoxine hydrochloride 100 mg per mL solution for injection	f	3	f	1979-12-31	9001861	\N	\N	16023
sodium bicarbonate 75 mg per mL solution for injection	f	1	f	1979-12-31	9001862	\N	\N	16024
theophylline 80 mg per 15 mL oral solution	f	2	f	1979-12-31	9001863	\N	\N	16025
thiamine hydrochloride 100 mg per mL solution for injection	f	4	f	1979-12-31	9001864	\N	\N	16026
vitamin b2 (riboflavin 5'-phosphate sodium) 50 mg per mL solution for injection	f	1	f	1979-12-31	9001865	\N	\N	16027
methyldopa 125 mg oral tablet	f	1	f	1980-04-02	9001866	\N	\N	16028
benzalkonium chloride 0.1 % cutaneous liquid	f	6	f	1980-11-04	9001867	\N	\N	16029
benzocaine 23 % and methyl heptyl colamino formylmethyl pyridinium chl 0.1 % oromucosal paste	f	1	f	1980-11-04	9001868	\N	\N	16030
arginine 1.04 g per 100 mL and glycine 2.08 g per 100 mL and histidine 440 mg per 100 mL and isoleucine 480 mg per 100 mL and l-alanine 2.08 g per 100 mL and leucine 620 mg per 100 mL and l-lysine hydrochloride 580 mg per 100 mL and methionine 580 mg per 100 mL and phenylalanine 620 mg per 100 mL and proline 420 mg per 100 mL and threonine 420 mg per 100 mL and tryptophan 180 mg per 100 mL and tyrosine 40 mg per 100 mL and valine 460 mg per 100 mL solution for injection	f	1	t	1980-12-31	9001872	\N	\N	16031
calcium chloride 0.048 % and magnesium chloride 0.03 % and potassium chloride 0.075 % and sodium acetate trihydrate 0.39 % and sodium chloride 0.64 % and sodium citrate dihydrate 0.17 % ophthalmic drops	f	1	t	1980-12-31	9001873	\N	\N	16032
camphor 0.38 % and menthol 0.6 % and meradimate 2.5 % and padimate o 6.6 % and phenol 0.45 % cutaneous ointment	f	1	f	1980-12-31	9001874	\N	\N	16033
carbachol 0.01 % solution for injection	f	1	f	1980-12-31	9001875	\N	\N	16034
cloxacillin sodium 125 mg per 5 mL granules for oral solution	f	1	f	1980-12-31	9001876	\N	\N	16035
coal tar 10 % and salicylic acid 3 % cutaneous liquid	f	1	f	1980-12-31	9001877	\N	\N	16036
danazol 50 mg oral capsule	f	1	f	1980-12-31	9001878	\N	\N	16037
dextrose 200 mg per mL solution for injection	f	2	f	1980-12-31	9001879	\N	\N	16038
dextrose 400 mg per mL solution for injection	f	1	f	1980-12-31	9001880	\N	\N	16039
dimethyl sulfoxide 500 mg per g intravesical solution	f	2	f	1980-12-31	9001881	\N	\N	16040
diphenhydramine hydrochloride 50 mg oral capsule	f	9	f	1980-12-31	9001882	\N	\N	16041
diphtheria toxoid adsorbed 2 lf per 0.5 mL and tetanus toxoid adsorbed 5 lf per 0.5 mL suspension for injection	f	1	f	1980-12-31	9001883	\N	\N	16042
epinephrine 0.01 mg per mL and mepivacaine hydrochloride 20 mg per mL solution for injection	f	1	f	1980-12-31	9001884	\N	\N	16043
fluorescein sodium 10 % solution for injection	f	2	f	1980-12-31	9001885	\N	\N	16044
glycine 15 mg per mL irrigation solution	f	1	f	1980-12-31	9001886	\N	\N	16045
iothalamate meglumine 430 mg per mL solution for injection	f	1	f	1980-12-31	9001887	\N	\N	16046
mannitol 5.4 mg per mL and sorbitol 27 mg per mL irrigation solution	f	1	f	1980-12-31	9001888	\N	\N	16047
minoxidil 10 mg oral tablet	f	1	f	1980-12-31	9001889	\N	\N	16048
minoxidil 2.5 mg oral tablet	f	1	f	1980-12-31	9001890	\N	\N	16049
naphazoline hydrochloride 0.025 % and pheniramine maleate 0.3 % ophthalmic drops	f	4	f	1980-12-31	9001891	\N	\N	16050
nitrazepam 10 mg oral tablet	f	3	f	1980-12-31	9001892	\N	\N	16051
nitrazepam 5 mg oral tablet	f	3	f	1980-12-31	9001893	\N	\N	16052
non pollen 0 nil solution for injection	f	1	f	1980-12-31	9001894	\N	\N	16053
pizotifen (pizotifen malate) 1 mg oral tablet	f	1	f	1980-12-31	9001895	\N	\N	16054
aminophylline 25 mg per mL solution for injection	f	2	f	1981-12-31	9001896	\N	\N	16055
ammonium chloride 125 mg per 5 mL and codeine phosphate 3.33 mg per 5 mL and diphenhydramine hydrochloride 12.5 mg per 5 mL oral liquid	f	1	f	1981-12-31	9001897	\N	\N	16056
benserazide (benserazide hydrochloride) 12.5 mg and levodopa 50 mg oral capsule	f	1	f	1981-12-31	9001898	\N	\N	16057
calamine 8 % and diphenhydramine hydrochloride 1 % cutaneous suspension	f	2	f	1981-12-31	9001899	\N	\N	16058
calcium chloride 100 mg per mL solution for injection	f	2	f	1981-12-31	9001900	\N	\N	16059
calcium glycerophosphate 10 mg per mL and calcium levulinate 15 mg per mL solution for injection	f	1	f	1981-12-31	9001901	\N	\N	16060
cetrimonium bromide 150 mg per 100 g and lidocaine 5 g per 100 g cutaneous gel	f	1	f	1981-12-31	9001902	\N	\N	16061
chlordiazepoxide hydrochloride 10 mg oral capsule	f	1	f	1981-12-31	9001903	\N	\N	16062
chlordiazepoxide hydrochloride 25 mg oral capsule	f	1	f	1981-12-31	9001904	\N	\N	16063
chlordiazepoxide hydrochloride 5 mg oral capsule	f	1	f	1981-12-31	9001905	\N	\N	16064
clomipramine hydrochloride 50 mg oral tablet	f	1	f	1981-12-31	9001906	\N	\N	16065
cromolyn sodium 100 mg oral capsule	f	1	f	1981-12-31	9001907	\N	\N	16066
ergonovine maleate 0.25 mg per mL solution for injection	f	3	f	1981-12-31	9001908	\N	\N	16067
guaifenesin 50 mg per 5 mL and oxtriphylline 100 mg per 5 mL oral solution	f	1	f	1981-12-31	9001909	\N	\N	16068
hydrocortisone acetate 0.5 % and pramoxine hydrochloride 1 % and zinc sulfate 0.5 % rectal ointment	f	2	f	1981-12-31	9001910	\N	\N	16069
hydrocortisone acetate 0.5 % and zinc sulfate 0.5 % rectal ointment	f	4	f	1981-12-31	9001911	\N	\N	16070
miconazole nitrate 400 mg pessary	f	2	f	1981-12-31	9001912	\N	\N	16071
oxytocin 10 unit per mL solution for injection	f	2	f	1981-12-31	9001913	\N	\N	16072
phenelzine (phenelzine sulfate) 15 mg oral tablet	f	1	f	1981-12-31	9001914	\N	\N	16073
pyrithione zinc 2 % shampoo	f	4	f	1981-12-31	9001915	\N	\N	16074
quinidine sulfate 190 mg per mL solution for injection	f	1	f	1981-12-31	9001916	\N	\N	16075
scopolamine hydrobromide 0.4 mg per mL solution for injection	f	2	f	1981-12-31	9001917	\N	\N	16076
scopolamine hydrobromide 0.6 mg per mL solution for injection	f	2	f	1981-12-31	9001918	\N	\N	16077
sodium ascorbate 250 mg per mL solution for injection	f	1	f	1981-12-31	9001919	\N	\N	16078
tobramycin 0.3 % ophthalmic drops	f	3	f	1981-12-31	9001920	\N	\N	16079
tretinoin 0.05 % cutaneous cream	f	2	f	1981-12-31	9001921	\N	\N	16080
vitamin b12 (cyanocobalamin) 100 mcg per mL solution for injection	f	1	f	1981-12-31	9001922	\N	\N	16081
vitamin b12 (cyanocobalamin) 1 mg per mL solution for injection	f	1	f	1981-12-31	9001923	\N	\N	16082
vitamin k1 10 mg per mL solution for injection	f	1	f	1981-12-31	9001924	\N	\N	16083
vitamin k1 2 mg per mL solution for injection	f	1	f	1981-12-31	9001925	\N	\N	16084
white petrolatum 99.96 % cutaneous ointment	f	1	f	1981-12-31	9001926	\N	\N	16085
acetaminophen 325 mg and codeine phosphate 8 mg and doxylamine succinate 5 mg oral tablet	f	1	f	1982-12-31	9001927	\N	\N	16086
acetazolamide 250 mg oral tablet	f	1	f	1982-12-31	9001928	\N	\N	16087
aloe 2 g per 100 mL and benzoin 10 g per 100 mL and myroxylon balsamum 4 g per 100 mL and storax 8 g per 100 mL cutaneous solution	f	1	f	1982-12-31	9001929	\N	\N	16088
aloe 2 g per 100 mL and benzoin 10 g per 100 mL and myroxylon balsamum 4 g per 100 mL and storax 8 g per 100 mL NA	f	1	f	1982-12-31	9001930	\N	\N	16089
alprostadil 500 mcg per mL solution for injection	f	3	f	1982-12-31	9001931	\N	\N	16090
benzocaine 20 % and cetylpyridinium chloride 0.1 % cutaneous liquid	f	1	f	1982-12-31	9001932	\N	\N	16091
benzocaine 20 % and cetylpyridinium chloride 0.1 % mouthwash	f	1	f	1982-12-31	9001933	\N	\N	16092
benzoyl peroxide 5 % cutaneous cream	f	7	f	1982-12-31	9001934	\N	\N	16093
calcium chloride 0.0154 % and dextrose 0.092 % and glutathione disulfide 0.0184 % and magnesium chloride 0.02 % and potassium chloride 0.038 % and sodium bicarbonate 0.21 % and sodium chloride 0.714 % and sodium phosphate dibasic 0.042 % NA	f	1	t	1982-12-31	9001935	\N	\N	16094
cimetidine 200 mg oral tablet	f	3	f	1982-12-31	9001937	\N	\N	16095
cimetidine 300 mg oral tablet	f	5	f	1982-12-31	9001938	\N	\N	16096
diphenhydramine hydrochloride 50 mg oral tablet	f	18	f	1982-12-31	9001939	\N	\N	16097
dipyridamole 25 mg oral tablet	f	2	f	1982-12-31	9001940	\N	\N	16098
dipyridamole 50 mg oral tablet	f	2	f	1982-12-31	9001941	\N	\N	16099
isosorbide dinitrate 10 mg oral tablet	f	2	f	1982-12-31	9001942	\N	\N	16100
isosorbide dinitrate 30 mg oral tablet	f	2	f	1982-12-31	9001943	\N	\N	16101
macrogol 15 % and propylene glycol 20 % nasal gel	f	3	f	1982-12-31	9001944	\N	\N	16102
macrogol 15 % and propylene glycol 20 % nasal spray	f	1	f	1982-12-31	9001945	\N	\N	16103
mebendazole 100 mg oral tablet	f	1	f	1982-12-31	9001946	\N	\N	16104
nabilone 1 mg oral capsule	f	5	f	1982-12-31	9001947	\N	\N	16105
oxtriphylline 100 mg oral tablet	f	1	f	1982-12-31	9001948	\N	\N	16106
oxtriphylline 200 mg oral tablet	f	1	f	1982-12-31	9001949	\N	\N	16107
oxtriphylline 300 mg oral tablet	f	1	f	1982-12-31	9001950	\N	\N	16108
phenol 5 mg per mL and sodium chloride 9 mg per mL solution for injection	f	1	f	1982-12-31	9001951	\N	\N	16109
polyvinyl alcohol 1.4 % ophthalmic drops	f	4	f	1982-12-31	9001952	\N	\N	16110
potassium chloride 600 mg prolonged-release oral tablet	f	1	f	1982-12-31	9001953	\N	\N	16111
promethazine (promethazine hydrochloride) 25 mg per mL solution for injection	f	1	f	1982-12-31	9001954	\N	\N	16112
sodium chloride 900 mg per 100 mL solution for injection	f	2	f	1982-12-31	9001955	\N	\N	16113
trihexyphenidyl hydrochloride 2 mg oral tablet	f	2	f	1982-12-31	9001956	\N	\N	16114
trihexyphenidyl hydrochloride 5 mg oral tablet	f	2	f	1982-12-31	9001957	\N	\N	16115
alcohol anhydrous 0.05 mL per mL and doxylamine succinate 1.2 mg per mL and etafedrin hydrochloride 3.33 mg per mL and hydrocodone bitartrate 0.33 mg per mL and sodium citrate 40 mg per mL oral liquid	f	2	f	1983-12-31	9001958	\N	\N	16116
amsacrine 50 mg per mL solution for injection	f	1	f	1983-12-31	9001959	\N	\N	16117
betamethasone (betamethasone dipropionate) 0.5 mg per g and salicylic acid 30 mg per g cutaneous ointment	f	1	f	1983-12-31	9001960	\N	\N	16118
bronopol 0.1 % and triclosan 0.6 % cutaneous liquid	f	1	f	1983-12-31	9001961	\N	\N	16119
calcitonin (salmon synthetic) 200 unit per mL solution for injection	f	1	f	1983-12-31	9001962	\N	\N	16120
calcium chloride 16.55 mg per mL and magnesium chloride 25.4 mg per mL and potassium chloride 74.55 mg per mL and sodium acetate 121 mg per mL and sodium chloride 16.05 mg per mL solution for injection	f	1	f	1983-12-31	9001963	\N	\N	16121
cantharidin 1 % and podophyllin 5 % and salicylic acid 30 % cutaneous liquid	f	1	f	1983-12-31	9001964	\N	\N	16122
chromic chloride 6 mcg per mL and cupric chloride 0.42 mg per mL and manganese chloride 0.37 mg per mL and zinc chloride 1.67 mg per mL solution for injection	f	1	f	1983-12-31	9001965	\N	\N	16123
cimetidine 400 mg oral tablet	f	5	f	1983-12-31	9001966	\N	\N	16124
cimetidine 600 mg oral tablet	f	5	f	1983-12-31	9001967	\N	\N	16125
deoxycholic acid 30 mg and NA 150 mg and NA 30 mg oral tablet	f	1	f	1983-12-31	9001968	\N	\N	16126
dextromethorphan hydrobromide 5 mg per 5 mL and pheniramine maleate 5 mg per 5 mL and phenylephrine hydrochloride 2 mg per 5 mL syrup	f	1	f	1983-12-31	9001969	\N	\N	16127
dextrose 50 mg per mL and lidocaine hydrochloride 2 mg per mL solution for injection	f	1	f	1983-12-31	9001970	\N	\N	16128
dextrose 50 mg per mL and lidocaine hydrochloride 4 mg per mL solution for injection	f	2	f	1983-12-31	9001971	\N	\N	16129
dextrose 50 mg per mL and potassium chloride 3 mg per mL and sodium chloride 4.5 mg per mL solution for injection	f	1	f	1983-12-31	9001972	\N	\N	16130
dextrose 50 mg per mL and potassium chloride 3 mg per mL solution for injection	f	1	f	1983-12-31	9001973	\N	\N	16131
diphenhydramine hydrochloride 50 mg per mL solution for injection	f	5	f	1983-12-31	9001974	\N	\N	16132
doxylamine succinate 10 mg and pyridoxine hydrochloride 10 mg gastro-resistant tablet	f	1	f	1983-12-31	9001975	\N	\N	16133
erythromycin (erythromycin ethylsuccinate) 200 mg per 5 mL and sulfisoxazole (sulfisoxazole acetyl) 600 mg per 5 mL powder for oral suspension	f	1	f	1983-12-31	9001976	\N	\N	16134
fluocinonide 0.05 % cutaneous cream	f	5	f	1983-12-31	9001977	\N	\N	16135
gramicidin 0.25 mg per g and neomycin (neomycin sulfate) 2.5 mg per g and nystatin 100000 unit per g and triamcinolone acetonide 1 mg per g cutaneous cream	f	3	f	1983-12-31	9001978	\N	\N	16136
gramicidin 0.25 mg per g and neomycin (neomycin sulfate) 2.5 mg per g and nystatin 100000 unit per g and triamcinolone acetonide 1 mg per g cutaneous ointment	f	1	f	1983-12-31	9001979	\N	\N	16137
hydrochlorothiazide 25 mg and pindolol 10 mg oral tablet	f	1	f	1983-12-31	9001980	\N	\N	16138
hydrochlorothiazide 50 mg and pindolol 10 mg oral tablet	f	1	f	1983-12-31	9001981	\N	\N	16139
hydrochlorothiazide 50 mg and spironolactone 50 mg oral tablet	f	2	f	1983-12-31	9001982	\N	\N	16140
insulin nph human dna origin 100 unit per mL suspension for injection 10 mL vial	f	1	f	1983-12-31	9001983	\N	\N	16141
insulin semi synthetic human 100 unit per mL solution for injection	f	1	f	1983-12-31	9001984	\N	\N	16142
isotretinoin 10 mg oral capsule	f	3	f	1983-12-31	9001985	\N	\N	16143
isotretinoin 40 mg oral capsule	f	3	f	1983-12-31	9001986	\N	\N	16144
mineral oil 64.5 % and urea 5 % cutaneous ointment	f	1	f	1983-12-31	9001987	\N	\N	16145
nitrogen 99 % medicinal gas	f	3	f	1983-12-31	9001988	\N	\N	16146
nitrous oxide 50 % and oxygen 50 % medicinal gas	f	3	f	1983-12-31	9001989	\N	\N	16147
oxygen 99.5 % medicinal gas	f	2	f	1983-12-31	9001990	\N	\N	16148
prazosin (prazosin hydrochloride) 1 mg oral tablet	f	3	f	1983-12-31	9001991	\N	\N	16149
prazosin (prazosin hydrochloride) 2 mg oral tablet	f	3	f	1983-12-31	9001992	\N	\N	16150
prazosin (prazosin hydrochloride) 5 mg oral tablet	f	3	f	1983-12-31	9001993	\N	\N	16151
promethazine hydrochloride 25 mg oral tablet	f	1	f	1983-12-31	9001994	\N	\N	16152
promethazine hydrochloride 50 mg oral tablet	f	1	f	1983-12-31	9001995	\N	\N	16153
tetracycline hydrochloride 250 mg oral capsule	f	1	f	1983-12-31	9001996	\N	\N	16154
tobramycin (tobramycin sulfate) 1.2 g per vial powder for solution for injection	f	2	f	1983-12-31	9001997	\N	\N	16155
tolnaftate 1 % cutaneous spray	f	6	f	1983-12-31	9001998	\N	\N	16156
tretinoin 0.01 % cutaneous gel	f	2	f	1983-12-31	9001999	\N	\N	16157
tretinoin 0.025 % cutaneous cream	f	2	f	1983-12-31	9002000	\N	\N	16158
calcium gluconate 94 mg per mL and calcium saccharate 4.5 mg per mL solution for injection	f	1	f	1984-07-19	9002001	\N	\N	16159
acetylsalicylic acid 330 mg and butalbital 50 mg and caffeine 40 mg oral tablet	f	3	f	1984-12-31	9002002	\N	\N	16160
aminophylline 50 mg per mL solution for injection	f	1	f	1984-12-31	9002003	\N	\N	16161
ampicillin 125 mg per 5 mL oral liquid	f	1	f	1984-12-31	9002004	\N	\N	16162
ampicillin 250 mg oral capsule	f	1	f	1984-12-31	9002005	\N	\N	16163
ampicillin 250 mg per 5 mL oral liquid	f	1	f	1984-12-31	9002006	\N	\N	16164
ampicillin 500 mg oral capsule	f	1	f	1984-12-31	9002007	\N	\N	16165
bacitracin 500 unit per g cutaneous ointment	f	3	f	1984-12-31	9002008	\N	\N	16166
betamethasone (betamethasone dipropionate) 0.5 mg per g and salicylic acid 20 mg per g lotion	f	2	f	1984-12-31	9002009	\N	\N	16167
calcium chloride 0.176 mg per mL and magnesium chloride 3.253 mg per mL and potassium chloride 1.193 mg per mL and sodium chloride 6.43 mg per mL solution for cardioplegia	f	1	f	1984-12-31	9002010	\N	\N	16168
cantharidin 1 % and podophyllin 2 % and salicylic acid 30 % cutaneous liquid	f	1	f	1984-12-31	9002011	\N	\N	16169
cetylpyridinium chloride 0.05 % gargle/mouthwash	f	1	f	1984-12-31	9002012	\N	\N	16170
cloxacillin sodium 250 mg oral capsule	f	1	f	1984-12-31	9002013	\N	\N	16171
cloxacillin sodium 500 mg oral capsule	f	1	f	1984-12-31	9002014	\N	\N	16172
cyclosporine 50 mg per mL solution for injection	f	1	f	1984-12-31	9002015	\N	\N	16173
diphtheria toxoid 2 lf per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL suspension for injection	f	1	f	1984-12-31	9002016	\N	\N	16174
dipyridamole 75 mg oral tablet	f	2	f	1984-12-31	9002017	\N	\N	16175
petrolatum 67 % cutaneous cream	f	1	f	1986-12-31	9002080	\N	\N	16238
piroxicam 10 mg oral capsule	f	2	f	1986-12-31	9002081	\N	\N	16239
piroxicam 20 mg oral capsule	f	2	f	1986-12-31	9002082	\N	\N	16240
d-pantothenic acid (calcium d-pantothenate, riboflavin-5-phosphate) 2.6 mg per mL and nicotinamide 10 mg per mL and vitamin a 1000 unit per mL and vitamin b1 (thiamine hydrochloride) 4.5 mg per mL and vitamin b2 (riboflavin-5-phosphate) 1 mg per mL and vitamin b6 (pyridoxine hydrochloride) 1.2 mg per mL and vitamin c 100 mg per mL and vitamin d 100 unit per mL and vitamin e (dl-alpha tocopheryl acetate) 1 unit per mL solution for injection	f	1	t	1984-12-31	9002018	\N	\N	16176
etoposide 50 mg oral capsule	f	1	f	1984-12-31	9002019	\N	\N	16177
fusidate sodium 2 % cutaneous ointment	f	1	f	1984-12-31	9002020	\N	\N	16178
heparin sodium 100 unit per mL irrigation solution	f	2	f	1984-12-31	9002021	\N	\N	16179
histamine phosphate 0.275 mg per mL solution for injection	f	1	f	1984-12-31	9002022	\N	\N	16180
histamine phosphate 2.75 mg per mL solution for injection	f	1	f	1984-12-31	9002023	\N	\N	16181
hydrochlorothiazide 15 mg and methyldopa 250 mg oral tablet	f	1	f	1984-12-31	9002024	\N	\N	16182
hydrochlorothiazide 25 mg and methyldopa 250 mg oral tablet	f	1	f	1984-12-31	9002025	\N	\N	16183
hydrocortisone acetate 5 mg per g and zinc sulfate 5 mg per g rectal ointment	f	2	f	1984-12-31	9002026	\N	\N	16184
isoniazid 50 mg per 5 mL oral solution	f	1	f	1984-12-31	9002027	\N	\N	16185
podophyllin 250 mg per mL cutaneous liquid	f	1	f	1984-12-31	9002028	\N	\N	16186
potassium acetate 392 mg per mL solution for injection	f	1	f	1984-12-31	9002029	\N	\N	16187
potassium phosphate dibasic 236 mg per mL and potassium phosphate monobasic 224 mg per mL solution for injection	f	2	f	1984-12-31	9002030	\N	\N	16188
promethazine hydrochloride 10 mg per 5 mL syrup	f	1	f	1984-12-31	9002031	\N	\N	16189
sodium chloride 4.4 mg per mL and sodium phosphate dibasic 7.58 mg per mL and sodium phosphate monobasic 1.81 mg per mL inhalation solution	f	1	f	1984-12-31	9002032	\N	\N	16190
sulfasalazine 500 mg gastro-resistant tablet	f	2	f	1984-12-31	9002033	\N	\N	16191
teniposide 10 mg per mL solution for injection	f	1	f	1984-12-31	9002034	\N	\N	16192
tobramycin 0.3 % ophthalmic ointment	f	1	f	1984-12-31	9002035	\N	\N	16193
trifluoperazine (trifluoperazine hydrochloride) 20 mg oral tablet	f	1	f	1984-12-31	9002036	\N	\N	16194
trolamine salicylate 15 % cutaneous cream	f	5	f	1984-12-31	9002037	\N	\N	16195
acetaminophen 160 mg per 5 mL syrup	f	2	f	1985-12-31	9002038	\N	\N	16196
charcoal activated 200 mg per mL oral suspension	f	4	f	1985-12-31	9002039	\N	\N	16197
charcoal activated 222 mg per mL oral suspension	f	1	f	1985-12-31	9002040	\N	\N	16198
charcoal activated 50 g per 225 mL oral suspension	f	1	f	1985-12-31	9002041	\N	\N	16199
charcoal activated 50 g per 250 mL oral suspension	f	1	f	1985-12-31	9002042	\N	\N	16200
cloxacillin sodium 125 mg per 5 mL powder for oral solution	f	1	f	1985-12-31	9002043	\N	\N	16201
colestipol hydrochloride 5 g per pck granules for oral suspension	f	2	f	1985-12-31	9002044	\N	\N	16202
dextrose 250 mg per mL solution for injection	f	1	f	1985-12-31	9002045	\N	\N	16203
diazoxide 100 mg oral capsule	f	1	f	1985-12-31	9002046	\N	\N	16204
docusate sodium 100 mg oral capsule	f	24	f	1985-12-31	9002047	\N	\N	16205
isosorbide dinitrate 5 mg sublingual tablet	f	1	f	1985-12-31	9002048	\N	\N	16206
leuprolide acetate 5 mg per mL solution for injection	f	1	f	1985-12-31	9002049	\N	\N	16207
levobunolol hydrochloride 5 mg per mL ophthalmic drops	f	1	f	1985-12-31	9002050	\N	\N	16208
macrogol 236 g per 4 l and potassium chloride 2.97 g per 4 l and sodium bicarbonate 6.74 g per 4 l and sodium chloride 5.86 g per 4 l and sodium sulfate 22.74 g per 4 l powder for oral solution	f	1	f	1985-12-31	9002051	\N	\N	16209
oxymetazoline hydrochloride 0.05 % nasal spray	f	18	f	1985-12-31	9002052	\N	\N	16210
phenylephrine hydrochloride 5 % and tropicamide 0.8 % ophthalmic drops	f	2	f	1985-12-31	9002053	\N	\N	16211
pollen and non pollen 20000 unit per mL solution for injection	f	1	f	1985-12-31	9002054	\N	\N	16212
procainamide hydrochloride 250 mg prolonged-release oral tablet	f	1	f	1985-12-31	9002055	\N	\N	16213
sodium salicylate 570 mg per mL solution for injection	f	1	f	1985-12-31	9002056	\N	\N	16214
streptozocin 1 g per vial powder for solution for injection	f	1	f	1985-12-31	9002057	\N	\N	16215
triclosan 0.3 % lotion	f	2	f	1985-12-31	9002058	\N	\N	16216
acetaminophen 325 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	5	f	1986-12-31	9002059	\N	\N	16217
acetaminophen 500 mg and caffeine 65 mg oral tablet	f	6	f	1986-12-31	9002060	\N	\N	16218
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	5	f	1986-12-31	9002061	\N	\N	16219
ammonium chloride 125 mg per 5 mL and codeine phosphate 3.33 mg per 5 mL and diphenhydramine hydrochloride 12.5 mg per 5 mL syrup	f	1	f	1986-12-31	9002062	\N	\N	16220
camphor 40 mg and eucalyptol 370 mg and guaiacol 180 mg and guaiacol carbonate 200 mg suppository	f	1	f	1986-12-31	9002063	\N	\N	16221
coal tar 10 % and salicylic acid 4 % shampoo	f	1	f	1986-12-31	9002064	\N	\N	16222
cytarabine 1 g per vial powder for solution for injection	f	1	f	1986-12-31	9002065	\N	\N	16223
cytarabine 2 g per vial powder for solution for injection	f	1	f	1986-12-31	9002066	\N	\N	16224
dextrose 50 mg per mL and dopamine hydrochloride 0.8 mg per mL solution for injection	f	2	f	1986-12-31	9002067	\N	\N	16225
dextrose 50 mg per mL and dopamine hydrochloride 1.6 mg per mL solution for injection	f	2	f	1986-12-31	9002068	\N	\N	16226
dipyridamole 5 mg per mL solution for injection	f	3	f	1986-12-31	9002069	\N	\N	16227
docusate calcium 240 mg oral capsule	f	8	f	1986-12-31	9002070	\N	\N	16228
isoniazid 50 mg oral tablet	f	1	f	1986-12-31	9002071	\N	\N	16229
lactulose 667 mg per mL oral solution	f	4	f	1986-12-31	9002072	\N	\N	16230
methylene blue 0.2 mg per mL and naphazoline nitrate 0.5 mg per mL ophthalmic drops	f	1	f	1986-12-31	9002073	\N	\N	16231
miconazole nitrate 2 % and miconazole nitrate 400 mg cutaneous cream	f	1	f	1986-12-31	9002074	\N	\N	16232
miconazole nitrate 2 % and miconazole nitrate 400 mg NA	f	1	f	1986-12-31	9002075	\N	\N	16233
miconazole nitrate 2 % and miconazole nitrate 400 mg pessary	f	1	f	1986-12-31	9002076	\N	\N	16234
miconazole nitrate 2 % and miconazole nitrate 400 mg vaginal cream	f	1	f	1986-12-31	9002077	\N	\N	16235
minoxidil 20 mg per mL cutaneous solution	f	3	f	1986-12-31	9002078	\N	\N	16236
oxygen 99 % medicinal gas	f	15	f	1986-12-31	9002079	\N	\N	16237
polyethylene glycol 3350 857.69 mg per g and potassium chloride 10.65 mg per g and sodium bicarbonate 24.02 mg per g and sodium chloride 20.87 mg per g and sodium sulfate 81.2 mg per g powder for oral solution	f	1	f	1986-12-31	9002083	\N	\N	16241
procainamide hydrochloride 250 mg oral capsule	f	1	f	1986-12-31	9002084	\N	\N	16242
procainamide hydrochloride 375 g oral capsule	f	1	f	1986-12-31	9002085	\N	\N	16243
procainamide hydrochloride 500 mg oral capsule	f	1	f	1986-12-31	9002086	\N	\N	16244
sodium bicarbonate 81.3 g per l solution for haemodialysis	f	1	f	1986-12-31	9002087	\N	\N	16245
sodium hypochlorite 5 g per l cutaneous solution	f	1	f	1986-12-31	9002088	\N	\N	16246
thiopental sodium 250 mg powder for solution for injection	f	1	f	1986-12-31	9002089	\N	\N	16247
thiopental sodium 500 mg powder for solution for injection	f	1	f	1986-12-31	9002090	\N	\N	16248
tretinoin 0.01 % cutaneous cream	f	2	f	1986-12-31	9002091	\N	\N	16249
tretinoin 0.025 % cutaneous gel	f	2	f	1986-12-31	9002092	\N	\N	16250
triclosan 0.3 % cutaneous gel	f	2	f	1986-12-31	9002093	\N	\N	16251
tryptophan 1 g oral tablet	f	4	f	1986-12-31	9002094	\N	\N	16252
tryptophan 500 mg oral capsule	f	4	f	1986-12-31	9002095	\N	\N	16253
vitamin e (dl-alpha tocopheryl acetate) 100 unit per mL solution for injection	f	1	f	1986-12-31	9002096	\N	\N	16254
albumin (human) 0.3 mg per mL and sodium chloride 9 mg per mL solution for injection	f	1	f	1987-12-31	9002097	\N	\N	16255
bacitracin 500 unit per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	4	f	1987-12-31	9002098	\N	\N	16256
bismuth subsalicylate 17.6 mg per mL oral liquid	f	2	f	1987-12-31	9002099	\N	\N	16257
calcium chloride 0.048 % and magnesium chloride 0.03 % and potassium chloride 0.075 % and sodium chloride 0.64 % ophthalmic drops	f	1	f	1987-12-31	9002100	\N	\N	16258
cilastatin (cilastatin sodium) 500 mg per vial and imipenem 500 mg per vial powder for solution for injection	f	3	f	1987-12-31	9002101	\N	\N	16259
cimetidine 800 mg oral tablet	f	4	f	1987-12-31	9002102	\N	\N	16260
cyproterone acetate 50 mg oral tablet	f	4	f	1987-12-31	9002103	\N	\N	16261
docusate sodium 4 mg per mL syrup	f	5	f	1987-12-31	9002104	\N	\N	16262
doxylamine succinate 25 mg oral tablet	f	1	f	1987-12-31	9002105	\N	\N	16263
estrone 0.1 % vaginal cream	f	1	f	1987-12-31	9002106	\N	\N	16264
flavoxate hydrochloride 200 mg oral tablet	f	2	f	1987-12-31	9002107	\N	\N	16265
glutamic acid 738 mg per 100 mL and glycine 500 mg per 100 mL and histidine 300 mg per 100 mL and l-alanine 993 mg per 100 mL and l-arginine 1.018 g per 100 mL and l-aspartic acid 700 mg per 100 mL and l-isoleucine 660 mg per 100 mL and l-leucine 1 g per 100 mL and l-lysine (l-lysine acetate) 1.05 g per 100 mL and l-phenylalanine 298 mg per 100 mL and l-proline 722 mg per 100 mL and l-threonine 400 mg per 100 mL and l-valine 500 mg per 100 mL and methionine 172 mg per 100 mL and n-acetyl-l-tyrosine 270 mg per 100 mL and serine 530 mg per 100 mL and tryptophan 200 mg per 100 mL solution for injection	f	1	t	1987-12-31	9002108	\N	\N	16266
heparin sodium 1000 unit per mL solution for injection	f	4	f	1987-12-31	9002109	\N	\N	16267
NA 0.1 % ophthalmic drops	f	3	f	1987-12-31	9002110	\N	\N	16268
naphazoline hydrochloride 0.02675 % and pheniramine maleate 0.315 % ophthalmic drops	f	2	f	1987-12-31	9002111	\N	\N	16269
potassium phosphate monobasic 176 mg per mL solution for injection	f	1	f	1987-12-31	9002112	\N	\N	16270
sodium bicarbonate 42 mg per mL solution for injection	f	1	f	1987-12-31	9002113	\N	\N	16271
sodium tetradecyl sulfate 10 mg per mL solution for injection	f	1	f	1987-12-31	9002114	\N	\N	16272
sodium tetradecyl sulfate 30 mg per mL solution for injection	f	1	f	1987-12-31	9002115	\N	\N	16273
somatropin 1 mg per mL powder for solution for injection	f	1	f	1987-12-31	9002116	\N	\N	16274
theophylline 400 mg prolonged-release oral tablet	f	2	f	1987-12-31	9002117	\N	\N	16275
theophylline 600 mg prolonged-release oral tablet	f	2	f	1987-12-31	9002118	\N	\N	16276
trifluridine 1 % ophthalmic drops	f	2	f	1987-12-31	9002119	\N	\N	16277
trimipramine (trimipramine maleate) 100 mg oral tablet	f	1	f	1987-12-31	9002120	\N	\N	16278
trimipramine (trimipramine maleate) 12.5 mg oral tablet	f	1	f	1987-12-31	9002121	\N	\N	16279
trimipramine (trimipramine maleate) 25 mg oral tablet	f	1	f	1987-12-31	9002122	\N	\N	16280
trimipramine (trimipramine maleate) 50 mg oral tablet	f	1	f	1987-12-31	9002123	\N	\N	16281
vitamin c 500 mg per mL solution for injection	f	2	f	1987-12-31	9002124	\N	\N	16282
loratadine 10 mg oral tablet	f	5	f	1988-12-18	9002125	\N	\N	16283
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 67.54 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1988-12-31	9002126	\N	\N	16284
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 67.54 g per l and magnesium chloride 1.61 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1988-12-31	9002127	\N	\N	16285
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 67.54 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1988-12-31	9002128	\N	\N	16286
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 67.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1988-12-31	9002129	\N	\N	16287
acetic acid 8.11 g per l and calcium chloride 7.74 g per l and dextrose 89.99 g per l and magnesium chloride 3.21 g per l and potassium chloride 10.06 g per l and sodium chloride 268.24 g per l solution for haemodialysis	f	1	t	1988-12-31	9002130	\N	\N	16288
acetic acid 8.11 g per l and calcium chloride 7.74 g per l and dextrose 89.99 g per l and magnesium chloride 3.21 g per l and potassium chloride 3.35 g per l and sodium chloride 268.24 g per l solution for haemodialysis	f	1	t	1988-12-31	9002131	\N	\N	16289
acetic acid 8.11 g per l and calcium chloride 7.74 g per l and dextrose 89.99 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 268.24 g per l solution for haemodialysis	f	1	t	1988-12-31	9002132	\N	\N	16290
carbon dioxide 12 % and oxygen 88 % medicinal gas	f	1	f	1990-12-31	9002259	\N	\N	16291
amylase 17500 unit and lipase 4200 unit and protease 10000 unit gastro-resistant capsule	f	1	f	1988-12-31	9002133	\N	\N	16292
amylase 43750 unit and lipase 10500 unit and protease 25000 unit gastro-resistant capsule	f	1	f	1988-12-31	9002134	\N	\N	16293
amylase 70000 unit and lipase 16800 unit and protease 40000 unit gastro-resistant capsule	f	1	f	1988-12-31	9002135	\N	\N	16294
calcium chloride 20 mg per 100 mL and potassium chloride 30 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL irrigation solution	f	2	f	1988-12-31	9002136	\N	\N	16295
chloroxylenol 0.5 % lotion	f	3	f	1988-12-31	9002137	\N	\N	16296
chlorpheniramine maleate 12 mg prolonged-release oral tablet	f	1	f	1988-12-31	9002138	\N	\N	16297
chlorpromazine hydrochloride 27.9 mg per mL solution for injection	f	1	f	1988-12-31	9002139	\N	\N	16298
dextromethorphan hydrobromide 15 mg per 5 mL oral liquid	f	1	f	1988-12-31	9002140	\N	\N	16299
flecainide acetate 50 mg oral tablet	f	3	f	1988-12-31	9002141	\N	\N	16300
macrogol 15 % and propylene glycol 5 % nasal spray	f	2	f	1988-12-31	9002142	\N	\N	16301
macrogol 238.18 g per pck and potassium chloride 3.05 g per pck and sodium bicarbonate 6.76 g per pck and sodium chloride 5.85 g per pck and sodium sulfate 22.96 g per pck powder for oral solution	f	1	f	1988-12-31	9002143	\N	\N	16302
methocarbamol 100 mg per mL solution for injection	f	3	f	1988-12-31	9002144	\N	\N	16303
nadolol 160 mg oral tablet	f	1	f	1988-12-31	9002145	\N	\N	16304
nadolol 40 mg oral tablet	f	2	f	1988-12-31	9002146	\N	\N	16305
nadolol 80 mg oral tablet	f	2	f	1988-12-31	9002147	\N	\N	16306
naphazoline hydrochloride 0.012 % ophthalmic drops	f	3	f	1988-12-31	9002148	\N	\N	16307
neostigmine bromide 15 mg oral tablet	f	1	f	1988-12-31	9002149	\N	\N	16308
nizatidine 150 mg oral capsule	f	5	f	1988-12-31	9002150	\N	\N	16309
nizatidine 300 mg oral capsule	f	4	f	1988-12-31	9002151	\N	\N	16310
permethrin 1 % cutaneous cream	f	1	f	1988-12-31	9002152	\N	\N	16311
perphenazine 3.2 mg per mL oral liquid	f	1	f	1988-12-31	9002153	\N	\N	16312
propafenone hydrochloride 150 mg oral tablet	f	5	f	1988-12-31	9002154	\N	\N	16313
propafenone hydrochloride 300 mg oral tablet	f	5	f	1988-12-31	9002155	\N	\N	16314
sodium bicarbonate 650 g per 8 l powder for concentrate for solution for haemodialysis	f	1	f	1988-12-31	9002156	\N	\N	16315
sodium polystyrene sulfonate 100 % powder for oral solution	f	1	f	1988-12-31	9002157	\N	\N	16316
sodium polystyrene sulfonate 100 % powder for rectal solution	f	1	f	1988-12-31	9002158	\N	\N	16317
sodium polystyrene sulfonate 94.3 mg per g NA	f	1	f	1988-12-31	9002159	\N	\N	16318
sodium polystyrene sulfonate 94.3 mg per g oral powder	f	1	f	1988-12-31	9002160	\N	\N	16319
sulindac 150 mg oral tablet	f	2	f	1988-12-31	9002161	\N	\N	16320
sulindac 200 mg oral tablet	f	2	f	1988-12-31	9002162	\N	\N	16321
tetracycline hydrochloride 10 mg per g ophthalmic ointment	f	1	f	1988-12-31	9002163	\N	\N	16322
thiopental sodium 25 mg per mL powder for solution for injection	f	1	f	1988-12-31	9002164	\N	\N	16323
acetaminophen 650 mg per pck and phenylephrine hydrochloride 10 mg per pck oral powder	f	1	f	1989-12-31	9002165	\N	\N	16324
acetic acid 10.8 g per l and calcium chloride 4.99 g per l and dextrose 67.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1989-12-31	9002166	\N	\N	16325
acetic acid 10.8 g per l and calcium chloride 4.99 g per l and dextrose 67.5 g per l and magnesium chloride 2.14 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1989-12-31	9002167	\N	\N	16326
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1989-12-31	9002168	\N	\N	16327
acetic acid 10.8 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1989-12-31	9002169	\N	\N	16328
albumin 250 mg per mL solution for injection	f	1	f	1989-12-31	9002170	\N	\N	16329
albumin 50 mg per mL solution for injection	f	1	f	1989-12-31	9002171	\N	\N	16330
aluminum hydroxide 200 mg per 5 mL and dimethicone 25 mg per 5 mL and magnesium hydroxide 200 mg per 5 mL oral suspension	f	3	f	1989-12-31	9002172	\N	\N	16331
amiloride hydrochloride 5 mg and hydrochlorothiazide 50 mg oral tablet	f	3	f	1989-12-31	9002173	\N	\N	16332
amylase 100000 unit and lipase 25000 unit and protease 100000 unit gastro-resistant capsule	f	1	f	1989-12-31	9002174	\N	\N	16333
calcium chloride 23.9 mg per 100 mL and dextrose 1.5 g per 100 mL and magnesium chloride 15.2 mg per 100 mL and sodium chloride 567 mg per 100 mL and sodium lactate 392 mg per 100 mL solution for haemodialysis	f	1	f	1989-12-31	9002175	\N	\N	16334
calcium chloride 23.9 mg per 100 mL and dextrose 2.5 g per 100 mL and magnesium chloride 15.2 mg per 100 mL and sodium chloride 567 mg per 100 mL and sodium lactate 392 mg per 100 mL solution for haemodialysis	f	1	f	1989-12-31	9002176	\N	\N	16335
calcium chloride 23.9 mg per 100 mL and dextrose 4.25 g per 100 mL and magnesium chloride 15.2 mg per 100 mL and sodium chloride 567 mg per 100 mL and sodium lactate 392 mg per 100 mL solution for haemodialysis	f	1	f	1989-12-31	9002177	\N	\N	16336
chlorhexidine gluconate 0.05 % cutaneous liquid	f	1	f	1989-12-31	9002178	\N	\N	16337
chlorhexidine gluconate 20 % cutaneous liquid	f	2	f	1989-12-31	9002179	\N	\N	16338
chloroxylenol 0.6 % cutaneous liquid	f	2	f	1989-12-31	9002180	\N	\N	16339
desmopressin acetate 10 mcg per actuation nasal spray	f	1	f	1989-12-31	9002181	\N	\N	16340
dextran 70 0.1 % and hypromellose 0.3 % ophthalmic drops	f	2	f	1989-12-31	9002182	\N	\N	16341
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	2	f	1989-12-31	9002183	\N	\N	16342
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL solution for injection	f	2	f	1989-12-31	9002184	\N	\N	16343
dextrose 5 g per 100 mL and potassium chloride 300 mg per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	2	f	1989-12-31	9002185	\N	\N	16344
dextrose 5 g per 100 mL and potassium chloride 300 mg per 100 mL solution for injection	f	2	f	1989-12-31	9002186	\N	\N	16345
dimenhydrinate 25 mg suppository	f	1	f	1989-12-31	9002187	\N	\N	16346
epinephrine 10 mcg per mL and lidocaine hydrochloride 10 mg per mL solution for injection	f	1	f	1989-12-31	9002188	\N	\N	16347
epinephrine 10 mcg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	1989-12-31	9002189	\N	\N	16348
fluorouracil 50 mg per mL solution for injection	f	2	f	1989-12-31	9002190	\N	\N	16349
gentamicin (gentamicin sulfate) 3 mg per mL ophthalmic drops	f	2	f	1989-12-31	9002191	\N	\N	16350
glycine 1.5 g per 100 mL irrigation solution	f	1	f	1989-12-31	9002192	\N	\N	16351
gramicidin 0.025 mg per mL and neomycin (neomycin sulfate) 1.75 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL ophthalmic drops	f	1	f	1989-12-31	9002193	\N	\N	16352
gramicidin 0.025 mg per mL and neomycin (neomycin sulfate) 1.75 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL otic drops	f	1	f	1989-12-31	9002194	\N	\N	16353
heparin sodium 100 unit per mL solution for injection	f	1	f	1989-12-31	9002195	\N	\N	16354
heparin sodium 10 unit per mL irrigation solution	f	1	f	1989-12-31	9002196	\N	\N	16355
heparin sodium 10 unit per mL solution for injection	f	1	f	1989-12-31	9002197	\N	\N	16356
hydrocortisone 1 % and pramoxine hydrochloride 1 % cutaneous cream	f	1	f	1989-12-31	9002198	\N	\N	16357
imipramine hydrochloride 75 mg oral tablet	f	1	f	1989-12-31	9002199	\N	\N	16358
insulin 30 unit per mL and insulin isophane human 70 unit per mL suspension for injection	f	1	f	1989-12-31	9002200	\N	\N	16359
ketoprofen 100 mg gastro-resistant tablet	f	2	f	1989-12-31	9002201	\N	\N	16360
ketoprofen 50 mg gastro-resistant tablet	f	2	f	1989-12-31	9002202	\N	\N	16361
ketoprofen 50 mg oral capsule	f	2	f	1989-12-31	9002203	\N	\N	16362
leuprolide acetate 7.5 mg per vial powder for prolonged-release suspension for injection	f	1	f	1989-12-31	9002204	\N	\N	16363
mannitol 10 g per 100 mL solution for injection	f	1	f	1989-12-31	9002205	\N	\N	16364
mannitol 20 g per 100 mL solution for injection	f	1	f	1989-12-31	9002206	\N	\N	16365
mannitol 500 mg per 100 mL and sorbitol 2.5 g per 100 mL irrigation solution	f	1	f	1989-12-31	9002207	\N	\N	16366
methylene blue 10 mg per mL solution for injection	f	4	f	1989-12-31	9002208	\N	\N	16367
mineral oil 42.5 % and white petrolatum 57.3 % ophthalmic ointment	f	1	f	1989-12-31	9002209	\N	\N	16368
octreotide (octreotide acetate) 100 mcg per mL solution for injection	f	4	f	1989-12-31	9002210	\N	\N	16369
octreotide (octreotide acetate) 500 mcg per mL solution for injection	f	4	f	1989-12-31	9002211	\N	\N	16370
octreotide (octreotide acetate) 50 mcg per mL solution for injection	f	4	f	1989-12-31	9002212	\N	\N	16371
petrolatum 100 % cutaneous cream	f	1	f	1989-12-31	9002213	\N	\N	16372
potassium chloride 150 mg per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	1	f	1989-12-31	9002214	\N	\N	16373
potassium chloride 300 mg per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	1	f	1989-12-31	9002215	\N	\N	16374
prednisolone acetate 0.2 % and sulfacetamide sodium 10 % ophthalmic drops	f	1	f	1989-12-31	9002216	\N	\N	16375
prochlorperazine 10 mg suppository	f	2	f	1989-12-31	9002217	\N	\N	16376
prochlorperazine (prochlorperazine maleate) 10 mg oral tablet	f	2	f	1989-12-31	9002218	\N	\N	16377
prochlorperazine (prochlorperazine maleate) 5 mg oral tablet	f	2	f	1989-12-31	9002219	\N	\N	16378
prochlorperazine (prochlorperazine mesylate) 5 mg per mL solution for injection	f	2	f	1989-12-31	9002220	\N	\N	16379
protamine sulfate 10 mg per mL solution for injection	f	3	f	1989-12-31	9002221	\N	\N	16380
pyrantel (pyrantel pamoate) 35 mg oral tablet	f	1	f	1989-12-31	9002222	\N	\N	16381
sodium chloride 900 mg per 100 mL irrigation solution	f	1	f	1989-12-31	9002223	\N	\N	16382
sodium polystyrene sulfonate 250 mg per mL oral suspension	f	1	f	1989-12-31	9002224	\N	\N	16383
sodium polystyrene sulfonate 250 mg per mL rectal suspension	f	1	f	1989-12-31	9002225	\N	\N	16384
tamoxifen (tamoxifen citrate) 10 mg oral tablet	f	2	f	1989-12-31	9002226	\N	\N	16385
tamoxifen (tamoxifen citrate) 20 mg oral tablet	f	3	f	1989-12-31	9002227	\N	\N	16386
triazolam 0.25 mg oral tablet	f	1	f	1989-12-31	9002228	\N	\N	16387
vancomycin (vancomycin hydrochloride) 125 mg oral capsule	f	3	f	1989-12-31	9002229	\N	\N	16388
vancomycin (vancomycin hydrochloride) 250 mg oral capsule	f	3	f	1989-12-31	9002230	\N	\N	16389
vitamin c (sodium ascorbate) 250 mg per mL solution for injection	f	1	f	1989-12-31	9002231	\N	\N	16390
vitamin k1 10 mg per mL emulsion for injection	f	1	f	1989-12-31	9002232	\N	\N	16391
vitamin k1 2 mg per mL emulsion for injection	f	1	f	1989-12-31	9002233	\N	\N	16392
ketoconazole 2 % shampoo	f	1	f	1990-12-30	9002234	\N	\N	16393
acetaminophen 16 mg per mL oral solution	f	1	f	1990-12-31	9002235	\N	\N	16394
acetaminophen 32 mg per mL oral solution	f	2	f	1990-12-31	9002236	\N	\N	16395
acetaminophen 80 mg per mL oral solution	f	5	f	1990-12-31	9002237	\N	\N	16396
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.05 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1990-12-31	9002238	\N	\N	16397
acetylsalicylic acid 150 mg suppository	f	1	f	1990-12-31	9002239	\N	\N	16398
acetylsalicylic acid 500 mg gastro-resistant tablet	f	2	f	1990-12-31	9002240	\N	\N	16399
acetylsalicylic acid 650 mg suppository	f	1	f	1990-12-31	9002241	\N	\N	16400
alcohol anhydrous 5 mL per 100 mL and dextrose 5 g per 100 mL solution for injection	f	1	f	1990-12-31	9002242	\N	\N	16401
bacillus calmette-guerin (bcg) substrain connaught 81 mg per vial powder for intravesical suspension	f	1	f	1990-12-31	9002243	\N	\N	16402
benzalkonium chloride 4 mg per mL pad	f	1	f	1990-12-31	9002244	\N	\N	16403
betamethasone (betamethasone dipropionate) 0.05 % and clotrimazole 1 % cutaneous cream	f	1	f	1990-12-31	9002245	\N	\N	16404
bethanechol chloride 10 mg oral tablet	f	2	f	1990-12-31	9002246	\N	\N	16405
bethanechol chloride 25 mg oral tablet	f	2	f	1990-12-31	9002247	\N	\N	16406
bethanechol chloride 50 mg oral tablet	f	2	f	1990-12-31	9002248	\N	\N	16407
calcium chloride 18.3 mg per 100 mL and dextrose 1.5 g per 100 mL and magnesium chloride 5.08 mg per 100 mL and sodium chloride 538 mg per 100 mL and sodium lactate 448 mg per 100 mL solution for haemodialysis	f	1	f	1990-12-31	9002249	\N	\N	16408
calcium chloride 18.3 mg per 100 mL and dextrose 2.5 g per 100 mL and magnesium chloride 5.08 mg per 100 mL and sodium chloride 538 mg per 100 mL and sodium lactate 448 mg per 100 mL solution for haemodialysis	f	1	f	1990-12-31	9002250	\N	\N	16409
hydralazine hydrochloride 10 mg oral tablet	f	1	f	1990-12-31	9002309	\N	\N	16467
ioversol 68 % solution for injection	f	2	f	1990-12-31	9002310	\N	\N	16468
calcium chloride 18.3 mg per 100 mL and dextrose 4.25 g per 100 mL and magnesium chloride 5.08 mg per 100 mL and sodium chloride 538 mg per 100 mL and sodium lactate 448 mg per 100 mL solution for haemodialysis	f	1	f	1990-12-31	9002251	\N	\N	16410
calcium chloride 20 mg per 100 mL and dextrose 5 g per 100 mL and potassium chloride 179 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002252	\N	\N	16411
calcium chloride 20 mg per 100 mL and dextrose 5 g per 100 mL and potassium chloride 328 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002253	\N	\N	16412
calcium chloride 23.9 mg per 100 mL and dextrose 500 mg per 100 mL and magnesium chloride 15.2 mg per 100 mL and sodium chloride 567 mg per 100 mL and sodium lactate 392 mg per 100 mL solution for haemodialysis	f	1	f	1990-12-31	9002254	\N	\N	16413
captopril 100 mg oral tablet	f	4	f	1990-12-31	9002255	\N	\N	16414
captopril 12.5 mg oral tablet	f	4	f	1990-12-31	9002256	\N	\N	16415
captopril 25 mg oral tablet	f	4	f	1990-12-31	9002257	\N	\N	16416
captopril 50 mg oral tablet	f	4	f	1990-12-31	9002258	\N	\N	16417
carbon dioxide 23 % and oxygen 77 % medicinal gas	f	1	f	1990-12-31	9002260	\N	\N	16418
carbon dioxide 50 % and oxygen 50 % medicinal gas	f	2	f	1990-12-31	9002261	\N	\N	16419
cefixime 100 mg per 5 mL powder for oral suspension	f	1	f	1990-12-31	9002262	\N	\N	16420
cefixime 400 mg oral tablet	f	2	f	1990-12-31	9002263	\N	\N	16421
cetrimonium bromide 0.5 % cutaneous solution	f	1	f	1990-12-31	9002264	\N	\N	16422
charcoal activated 140 mg and dimethicone 45 mg oral capsule	f	1	f	1990-12-31	9002265	\N	\N	16423
chloral hydrate 100 mg per mL syrup	f	2	f	1990-12-31	9002266	\N	\N	16424
chlorhexidine gluconate 2 % cutaneous liquid	f	6	f	1990-12-31	9002267	\N	\N	16425
chlorhexidine gluconate 4 % cutaneous liquid	f	3	f	1990-12-31	9002268	\N	\N	16426
clorazepate dipotassium 15 mg oral capsule	f	1	f	1990-12-31	9002269	\N	\N	16427
clorazepate dipotassium 3.75 mg oral capsule	f	1	f	1990-12-31	9002270	\N	\N	16428
clorazepate dipotassium 7.5 mg oral capsule	f	1	f	1990-12-31	9002271	\N	\N	16429
cyproterone acetate 100 mg per mL solution for injection	f	1	f	1990-12-31	9002272	\N	\N	16430
dexamethasone 0.1 % and tobramycin 0.3 % ophthalmic drops	f	1	f	1990-12-31	9002273	\N	\N	16431
dexamethasone 0.1 % and tobramycin 0.3 % ophthalmic ointment	f	1	f	1990-12-31	9002274	\N	\N	16432
dextrose 10 g per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002275	\N	\N	16433
dextrose 3.3 g per 100 mL and sodium chloride 300 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002276	\N	\N	16434
dextrose 50 mg per mL and dopamine hydrochloride 3.2 mg per mL solution for injection	f	2	f	1990-12-31	9002277	\N	\N	16435
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL and sodium chloride 330 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002278	\N	\N	16436
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002279	\N	\N	16437
dextrose 5 g per 100 mL and potassium chloride 224 mg per 100 mL and sodium chloride 200 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002280	\N	\N	16438
dextrose 5 g per 100 mL and potassium chloride 224 mg per 100 mL and sodium chloride 330 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002281	\N	\N	16439
dextrose 5 g per 100 mL and potassium chloride 224 mg per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002282	\N	\N	16440
dextrose 5 g per 100 mL and potassium chloride 224 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002283	\N	\N	16441
dextrose 5 g per 100 mL and potassium chloride 300 mg per 100 mL and sodium chloride 200 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002284	\N	\N	16442
dextrose 5 g per 100 mL and potassium chloride 300 mg per 100 mL and sodium chloride 330 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002285	\N	\N	16443
dextrose 5 g per 100 mL and potassium chloride 300 mg per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002286	\N	\N	16444
dextrose 5 g per 100 mL and potassium chloride 75 mg per 100 mL and sodium chloride 200 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002287	\N	\N	16445
dextrose 5 g per 100 mL and potassium chloride 75 mg per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002288	\N	\N	16446
dextrose 5 g per 100 mL and potassium chloride 75 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002289	\N	\N	16447
dextrose 5 g per 100 mL and sodium chloride 200 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002290	\N	\N	16448
dextrose 5 g per 100 mL and sodium chloride 330 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002291	\N	\N	16449
dextrose 5 g per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	2	f	1990-12-31	9002292	\N	\N	16450
dextrose 5 g per 100 mL and sodium chloride 900 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002293	\N	\N	16451
dextrose 5 g per 100 mL solution for injection	f	1	f	1990-12-31	9002294	\N	\N	16452
dinoprostone 0.5 mg per 2.5 mL endocervical gel	f	1	f	1990-12-31	9002295	\N	\N	16453
diphenhydramine hydrochloride 25 mg oral capsule	f	9	f	1990-12-31	9002296	\N	\N	16454
diphenhydramine hydrochloride 2.5 mg per mL oral solution	f	1	f	1990-12-31	9002297	\N	\N	16455
docusate sodium 10 mg per mL oral drops	f	2	f	1990-12-31	9002298	\N	\N	16456
docusate sodium 200 mg oral capsule	f	3	f	1990-12-31	9002299	\N	\N	16457
docusate sodium 50 mg per mL syrup	f	2	f	1990-12-31	9002300	\N	\N	16458
enalapril sodium 8 mg and hydrochlorothiazide 25 mg oral tablet	f	2	f	1990-12-31	9002301	\N	\N	16459
fluconazole 100 mg oral tablet	f	9	f	1990-12-31	9002302	\N	\N	16460
fluconazole 2 mg per mL solution for injection	f	6	f	1990-12-31	9002303	\N	\N	16461
fluconazole 50 mg oral tablet	f	8	f	1990-12-31	9002304	\N	\N	16462
fluphenazine decanoate 100 mg per mL solution for injection	f	3	f	1990-12-31	9002305	\N	\N	16463
gentamicin (gentamicin sulfate) 1 mg per g cutaneous cream	f	1	f	1990-12-31	9002306	\N	\N	16464
gentamicin (gentamicin sulfate) 1 mg per g cutaneous ointment	f	1	f	1990-12-31	9002307	\N	\N	16465
heparin (heparin sodium) 2 unit per mL and sodium chloride 9 mg per mL solution for injection	f	1	f	1990-12-31	9002308	\N	\N	16466
ketotifen (ketotifen fumarate) 1 mg oral tablet	f	1	f	1990-12-31	9002311	\N	\N	16469
ketotifen (ketotifen fumarate) 1 mg per 5 mL syrup	f	1	f	1990-12-31	9002312	\N	\N	16470
levobunolol hydrochloride 0.25 % ophthalmic drops	f	4	f	1990-12-31	9002313	\N	\N	16471
lidocaine 0.5 % cutaneous spray	f	2	f	1990-12-31	9002314	\N	\N	16472
lidocaine hydrochloride 2 % dental solution	f	1	f	1990-12-31	9002315	\N	\N	16473
lidocaine hydrochloride 50 mg per mL and polymyxin b sulfate 10000 unit per mL otic drops	f	1	f	1990-12-31	9002316	\N	\N	16474
magnesium sulfate 20 mg per 100 mL and potassium chloride 40 mg per 100 mL and potassium phosphate monobasic 6.25 mg per 100 mL and sodium chloride 800 mg per 100 mL and sodium phosphate dibasic 8.75 mg per 100 mL irrigation solution	f	1	f	1990-12-31	9002317	\N	\N	16475
menthol 0.3 % and pyrithione zinc 2 % shampoo	f	1	f	1990-12-31	9002318	\N	\N	16476
neostigmine methylsulfate 0.5 mg per mL solution for injection	f	3	f	1990-12-31	9002319	\N	\N	16477
neostigmine methylsulfate 1 mg per mL solution for injection	f	3	f	1990-12-31	9002320	\N	\N	16478
potassium chloride 251.6 g per l solution for haemodialysis	f	1	f	1990-12-31	9002321	\N	\N	16479
pyridostigmine bromide 60 mg oral tablet	f	1	f	1990-12-31	9002322	\N	\N	16480
sodium chloride 3 g per 100 mL solution for injection	f	1	f	1990-12-31	9002323	\N	\N	16481
sodium chloride 450 mg per 100 mL solution for injection	f	1	f	1990-12-31	9002324	\N	\N	16482
sodium chloride 5 g per 100 mL solution for injection	f	2	f	1990-12-31	9002325	\N	\N	16483
sodium citrate 4 g per 100 mL NA	f	2	f	1990-12-31	9002326	\N	\N	16484
terbutaline sulfate 0.5 mg per actuation inhalation powder	f	1	f	1990-12-31	9002327	\N	\N	16485
tetrahydrozoline hydrochloride 0.5 mg per mL ophthalmic drops	f	2	f	1990-12-31	9002328	\N	\N	16486
zidovudine 100 mg oral capsule	f	2	f	1990-12-31	9002329	\N	\N	16487
acetaminophen 160 mg per 5 mL oral solution	f	5	f	1991-12-31	9002330	\N	\N	16488
acetaminophen 300 mg and chlorzoxazone 250 mg and codeine phosphate 8 mg oral tablet	f	1	f	1991-12-31	9002331	\N	\N	16489
acetaminophen 300 mg and chlorzoxazone 250 mg oral tablet	f	1	f	1991-12-31	9002332	\N	\N	16490
acetaminophen 500 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	13	f	1991-12-31	9002333	\N	\N	16491
acetaminophen 80 mg oral tablet	f	6	f	1991-12-31	9002334	\N	\N	16492
acetaminophen 80 mg per 5 mL oral liquid	f	1	f	1991-12-31	9002335	\N	\N	16493
acetaminophen 80 mg per 5 mL syrup	f	1	f	1991-12-31	9002336	\N	\N	16494
acetaminophen 80 mg per mL oral drops	f	4	f	1991-12-31	9002337	\N	\N	16495
acetaminophen 80 mg per mL oral liquid	f	2	f	1991-12-31	9002338	\N	\N	16496
ammonium chloride 125 mg per 5 mL and dextromethorphan hydrobromide 15 mg per 5 mL and diphenhydramine hydrochloride 12.5 mg per 5 mL syrup	f	2	f	1991-12-31	9002339	\N	\N	16497
arginine 1.15 g per 100 mL and glycine 1.03 g per 100 mL and histidine 480 mg per 100 mL and isoleucine 600 mg per 100 mL and l-alanine 2.07 g per 100 mL and leucine 730 mg per 100 mL and l-lysine (l-lysine hydrochloride) 580 mg per 100 mL and methionine 400 mg per 100 mL and phenylalanine 560 mg per 100 mL and proline 680 mg per 100 mL and serine 500 mg per 100 mL and threonine 420 mg per 100 mL and tryptophan 180 mg per 100 mL and tyrosine 40 mg per 100 mL and valine 580 mg per 100 mL solution for injection	f	1	t	1991-12-31	9002340	\N	\N	16498
benzalkonium chloride 0.2 % and coal tar 4.25 % and salicylic acid 2 % shampoo	f	1	f	1991-12-31	9002341	\N	\N	16499
benzocaine 3 % and triclosan 0.02 % cutaneous spray	f	1	f	1991-12-31	9002342	\N	\N	16500
benzoyl peroxide 10 % cutaneous gel	f	1	f	1991-12-31	9002343	\N	\N	16501
bisacodyl 5 mg oral tablet	f	10	f	1991-12-31	9002344	\N	\N	16502
ceftazidime 1 g per vial powder for solution for injection	f	1	f	1991-12-31	9002345	\N	\N	16503
ceftazidime 2 g per vial powder for solution for injection	f	1	f	1991-12-31	9002346	\N	\N	16504
ceftazidime 6 g per vial powder for solution for injection	f	1	f	1991-12-31	9002347	\N	\N	16505
chlorhexidine gluconate 2 % cutaneous gel	f	1	f	1991-12-31	9002348	\N	\N	16506
citric acid 730 mg per 100 mL and dextrose 2.45 g per 100 mL and sodium citrate 2.2 g per 100 mL NA	f	1	f	1991-12-31	9002349	\N	\N	16507
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 100 mg per 5 mL syrup	f	9	f	1991-12-31	9002350	\N	\N	16508
dextrose 200 mg per 100 mL and sodium chloride 900 mg per 100 mL irrigation solution	f	1	f	1991-12-31	9002351	\N	\N	16509
dimethicone 1 % and petrolatum 30 % cutaneous cream	f	1	f	1991-12-31	9002352	\N	\N	16510
dimethicone 3 % and petrolatum 6 % lotion	f	1	f	1991-12-31	9002353	\N	\N	16511
dinoprostone 1 mg per 3 g vaginal gel	f	1	f	1991-12-31	9002354	\N	\N	16512
dinoprostone 2 mg per 3 g vaginal gel	f	1	f	1991-12-31	9002355	\N	\N	16513
diphenhydramine hydrochloride 12.5 mg per 5 mL oral solution	f	7	f	1991-12-31	9002356	\N	\N	16514
diphenhydramine hydrochloride 6.25 mg per 5 mL oral liquid	f	3	f	1991-12-31	9002357	\N	\N	16515
docusate sodium 10 mg per mL oral solution	f	2	f	1991-12-31	9002358	\N	\N	16516
docusate sodium 20 mg per 5 mL syrup	f	4	f	1991-12-31	9002359	\N	\N	16517
fluocinolone acetonide 0.01 % cutaneous liquid	f	1	f	1991-12-31	9002360	\N	\N	16518
fluocinonide 0.5 mg per g cutaneous cream	f	1	f	1991-12-31	9002361	\N	\N	16519
flurbiprofen 100 mg oral tablet	f	2	f	1991-12-31	9002362	\N	\N	16520
flurbiprofen 50 mg oral tablet	f	2	f	1991-12-31	9002363	\N	\N	16521
fluvoxamine maleate 100 mg oral tablet	f	8	f	1991-12-31	9002364	\N	\N	16522
fluvoxamine maleate 50 mg oral tablet	f	8	f	1991-12-31	9002365	\N	\N	16523
gentamicin (gentamicin sulfate) 0.8 mg per mL and sodium chloride 9 mg per mL solution for injection	f	1	f	1991-12-31	9002366	\N	\N	16524
glycerine 57 g per 100 mL and potassium chloride 30 mg per 100 mL and sodium lactate 1.6 g per 100 mL and sodium phosphate dibasic 124.2 mg per 100 mL and sodium phosphate monobasic 51.7 mg per 100 mL NA	f	1	f	1991-12-31	9002367	\N	\N	16525
heparin sodium 40 unit per mL solution for injection	f	1	f	1991-12-31	9002368	\N	\N	16526
heparin sodium 50 unit per mL solution for injection	f	1	f	1991-12-31	9002369	\N	\N	16527
hepatitis b surface antigen (recombinant) 20 mcg per mL suspension for injection	f	1	f	1991-12-31	9002370	\N	\N	16528
hexylresorcinol 2.4 mg lozenge	f	2	f	1991-12-31	9002371	\N	\N	16529
hexylresorcinol 3.5 mg lozenge	f	3	f	1991-12-31	9002372	\N	\N	16530
hydralazine hydrochloride 25 mg oral tablet	f	1	f	1991-12-31	9002373	\N	\N	16531
hydralazine hydrochloride 50 mg oral tablet	f	1	f	1991-12-31	9002374	\N	\N	16532
hydroquinone 2 % cutaneous cream	f	2	f	1991-12-31	9002375	\N	\N	16533
hypromellose 10 mg per mL ophthalmic drops	f	1	f	1991-12-31	9002376	\N	\N	16534
isoproterenol hydrochloride 0.2 mg per mL solution for injection	f	1	f	1991-12-31	9002377	\N	\N	16535
lidocaine 25 mg per g and prilocaine 25 mg per g cutaneous cream	f	1	f	1991-12-31	9002378	\N	\N	16536
loratadine 5 mg and pseudoephedrine sulfate 120 mg modified-release oral tablet	f	1	f	1991-12-31	9002379	\N	\N	16537
NA 50 mg oral tablet	f	1	f	1991-12-31	9002380	\N	\N	16538
neostigmine methylsulfate 2.5 mg per mL solution for injection	f	2	f	1991-12-31	9002381	\N	\N	16539
nicotinic acid 500 mg prolonged-release oral tablet	f	2	f	1991-12-31	9002382	\N	\N	16540
norepinephrine (norepinephrine bitartrate) 1 mg per mL solution for injection	f	2	f	1991-12-31	9002383	\N	\N	16541
pyridostigmine bromide 180 mg prolonged-release oral tablet	f	1	f	1991-12-31	9002384	\N	\N	16542
simethicone 125 mg chewable tablet	f	2	f	1991-12-31	9002385	\N	\N	16543
simethicone 125 mg oral capsule	f	1	f	1991-12-31	9002386	\N	\N	16544
sodium carboxymethyl cellulose 1 % ophthalmic drops	f	1	f	1991-12-31	9002387	\N	\N	16545
sodium chloride 12 g per 100 mL irrigation solution	f	1	f	1991-12-31	9002388	\N	\N	16546
sodium chloride 1.6 g per 100 mL irrigation solution	f	1	f	1991-12-31	9002389	\N	\N	16547
sodium phosphate dibasic 268 mg per mL and sodium phosphate monobasic 276 mg per mL solution for injection	f	1	f	1991-12-31	9002390	\N	\N	16548
tretinoin 0.1 % cutaneous cream	f	1	f	1991-12-31	9002391	\N	\N	16549
triclosan 0.3 % cutaneous liquid	f	19	f	1991-12-31	9002392	\N	\N	16550
trimebutine maleate 200 mg oral tablet	f	2	f	1991-12-31	9002393	\N	\N	16551
xylometazoline hydrochloride 0.1 % nasal drops	f	1	f	1991-12-31	9002394	\N	\N	16552
yohimbine hydrochloride 5.4 mg oral tablet	f	1	f	1991-12-31	9002395	\N	\N	16553
zidovudine 10 mg per mL solution for injection	f	1	f	1991-12-31	9002396	\N	\N	16554
zidovudine 50 mg per 5 mL syrup	f	1	f	1991-12-31	9002397	\N	\N	16555
iothalamate meglumine 300 mg per mL solution for injection	f	1	f	1992-01-29	9002398	\N	\N	16556
NA 40 mg per mL suspension for injection	f	1	f	1992-11-19	9002399	\N	\N	16557
acetaminophen 120 mg suppository	f	3	f	1992-12-31	9002400	\N	\N	16558
acetaminophen 160 mg per 5 mL oral liquid	f	2	f	1992-12-31	9002401	\N	\N	16559
acetaminophen 160 mg per 5 mL oral suspension	f	4	f	1992-12-31	9002402	\N	\N	16560
acetaminophen 325 mg and codeine phosphate 8 mg and methocarbamol 400 mg oral tablet	f	6	f	1992-12-31	9002403	\N	\N	16561
acetaminophen 325 mg suppository	f	3	f	1992-12-31	9002404	\N	\N	16562
acetaminophen 650 mg per 20 mL and chlorpheniramine maleate 4 mg per 20 mL and dextromethorphan hydrobromide 30 mg per 20 mL and pseudoephedrine hydrochloride 60 mg per 20 mL oral liquid	f	1	f	1992-12-31	9002405	\N	\N	16563
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and doxylamine succinate 7.5 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL oral liquid	f	1	f	1992-12-31	9002406	\N	\N	16564
acetaminophen 650 mg suppository	f	3	f	1992-12-31	9002407	\N	\N	16565
acetaminophen 80 mg per 1 mL oral drops	f	1	f	1992-12-31	9002408	\N	\N	16566
acetaminophen 80 mg per 1 mL oral suspension	f	1	f	1992-12-31	9002409	\N	\N	16567
acetylsalicylic acid 325 mg and codeine phosphate 16.2 mg and methocarbamol 400 mg oral tablet	f	2	f	1992-12-31	9002410	\N	\N	16568
acetylsalicylic acid 325 mg and codeine phosphate 32.4 mg and methocarbamol 400 mg oral tablet	f	2	f	1992-12-31	9002411	\N	\N	16569
amantadine hydrochloride 100 mg oral capsule	f	2	f	1992-12-31	9002412	\N	\N	16570
ampicillin (ampicillin sodium) 1000 mg per vial powder for solution for injection	f	1	f	1992-12-31	9002413	\N	\N	16571
ampicillin (ampicillin sodium) 2000 mg per vial powder for solution for injection	f	1	f	1992-12-31	9002414	\N	\N	16572
ampicillin (ampicillin sodium) 250 mg per vial powder for solution for injection	f	2	f	1992-12-31	9002415	\N	\N	16573
ampicillin (ampicillin sodium) 500 mg per vial powder for solution for injection	f	2	f	1992-12-31	9002416	\N	\N	16574
amylase 25500 unit and lipase 25000 unit and protease 1600 unit oral capsule	f	1	f	1992-12-31	9002417	\N	\N	16575
apraclonidine (apraclonidine hydrochloride) 1 % ophthalmic drops	f	1	f	1992-12-31	9002418	\N	\N	16576
benzalkonium chloride 1 mg per g and benzocaine 180 mg per g cutaneous gel	f	1	f	1992-12-31	9002419	\N	\N	16577
benzocaine 18 % and tetracaine hydrochloride 2 % cutaneous gel	f	3	f	1992-12-31	9002420	\N	\N	16578
calcipotriol 50 mcg per g cutaneous ointment	f	1	f	1992-12-31	9002421	\N	\N	16579
captopril 6.25 mg oral tablet	f	1	f	1992-12-31	9002422	\N	\N	16580
cetrimonium bromide 0.5 % cutaneous cream	f	1	f	1992-12-31	9002423	\N	\N	16581
chloramphenicol 10 mg per g and hydrocortisone acetate 10 mg per g ophthalmic ointment	f	1	f	1992-12-31	9002424	\N	\N	16582
chloramphenicol 10 mg per g and hydrocortisone acetate 10 mg per g otic ointment	f	1	f	1992-12-31	9002425	\N	\N	16583
chloramphenicol 10 mg per g ophthalmic ointment	f	1	f	1992-12-31	9002426	\N	\N	16584
chloramphenicol 2.5 mg per mL ophthalmic drops	f	1	f	1992-12-31	9002427	\N	\N	16585
chloramphenicol 2 mg per mL and hydrocortisone acetate 10 mg per mL ophthalmic drops	f	1	f	1992-12-31	9002428	\N	\N	16586
chloramphenicol 2 mg per mL and hydrocortisone acetate 10 mg per mL otic drops	f	1	f	1992-12-31	9002429	\N	\N	16587
chlorhexidine gluconate 0.05 % cutaneous solution	f	2	f	1992-12-31	9002430	\N	\N	16588
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % cutaneous gel	f	1	f	1992-12-31	9002431	\N	\N	16589
chlorhexidine gluconate 2 % and isopropyl alcohol 4 % cutaneous solution	f	2	f	1992-12-31	9002432	\N	\N	16590
chlorhexidine gluconate 4 % and isopropyl alcohol 4 % cutaneous solution	f	1	f	1992-12-31	9002433	\N	\N	16591
chlorhexidine gluconate 4 % cutaneous gel	f	2	f	1992-12-31	9002434	\N	\N	16592
chloroxylenol 0.5 % and menthol 4 % cutaneous liquid	f	1	f	1992-12-31	9002435	\N	\N	16593
chloroxylenol 0.5 % cutaneous liquid	f	4	f	1992-12-31	9002436	\N	\N	16594
tranylcypromine (tranylcypromine sulfate) 10 mg oral tablet	f	1	f	1992-12-31	9002496	\N	\N	16654
chlorpheniramine maleate 2 mg per 15 mL and dextromethorphan hydrobromide 15 mg per 15 mL and pseudoephedrine hydrochloride 30 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002437	\N	\N	16595
clodronate disodium (clodronate disodium tetrahydrate) 400 mg oral capsule	f	1	f	1992-12-31	9002438	\N	\N	16596
clodronate disodium (clodronate disodium tetrahydrate) 60 mg per mL solution for injection	f	1	f	1992-12-31	9002439	\N	\N	16597
cloxacillin sodium 1 g per vial powder for solution for injection	f	1	f	1992-12-31	9002440	\N	\N	16598
cloxacillin sodium 2 g per vial powder for solution for injection	f	1	f	1992-12-31	9002441	\N	\N	16599
cloxacillin sodium 500 mg per vial powder for solution for injection	f	1	f	1992-12-31	9002442	\N	\N	16600
cocaine hydrochloride 100 mg per mL cutaneous liquid	f	2	f	1992-12-31	9002443	\N	\N	16601
cocaine hydrochloride 40 mg per mL cutaneous liquid	f	2	f	1992-12-31	9002444	\N	\N	16602
deferoxamine mesylate 500 mg per vial powder for solution for injection	f	3	f	1992-12-31	9002445	\N	\N	16603
desmopressin acetate 0.1 mg per mL nasal spray	f	1	f	1992-12-31	9002446	\N	\N	16604
dextromethorphan hydrobromide 10 mg per 15 mL and guaifenesin 100 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002447	\N	\N	16605
dextromethorphan hydrobromide 15 mg per 15 mL and pseudoephedrine hydrochloride 30 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002448	\N	\N	16606
dextromethorphan hydrobromide 15 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002449	\N	\N	16607
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 100 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL syrup	f	7	f	1992-12-31	9002450	\N	\N	16608
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 100 mg per 5 mL oral liquid	f	1	f	1992-12-31	9002451	\N	\N	16609
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL syrup	f	7	f	1992-12-31	9002452	\N	\N	16610
dextromethorphan hydrobromide 30 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002453	\N	\N	16611
dextromethorphan hydrobromide 7.5 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL syrup	f	5	f	1992-12-31	9002454	\N	\N	16612
docusate sodium 20 mg per 5 mL oral liquid	f	1	f	1992-12-31	9002455	\N	\N	16613
dolichovespula arenaria venom protein extract 120 mcg per vial powder for solution for injection	f	1	f	1992-12-31	9002456	\N	\N	16614
doxepin (doxepin hydrochloride) 100 mg oral capsule	f	2	f	1992-12-31	9002457	\N	\N	16615
doxepin (doxepin hydrochloride) 150 mg oral capsule	f	2	f	1992-12-31	9002458	\N	\N	16616
doxepin (doxepin hydrochloride) 75 mg oral capsule	f	2	f	1992-12-31	9002459	\N	\N	16617
enalaprilat 2.5 mg per 2 mL solution for injection vial	f	2	f	1992-12-31	9002460	\N	\N	16618
filgrastim (r-methug-csf) 300 mcg per mL solution for injection	f	1	f	1992-12-31	9002461	\N	\N	16619
gadopentetate dimeglumine 469 mg per mL solution for injection	f	1	f	1992-12-31	9002462	\N	\N	16620
glycine 1.5 % irrigation solution	f	1	f	1992-12-31	9002463	\N	\N	16621
haemophilus influenzae type b-prp 10 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL kit	f	1	f	1992-12-31	9002464	\N	\N	16622
haemophilus influenzae type b-prp 10 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL powder for solution for injection	f	1	f	1992-12-31	9002465	\N	\N	16623
hydralazine hydrochloride 20 mg per mL solution for injection	f	1	f	1992-12-31	9002466	\N	\N	16624
hydrocodone bitartrate 1 mg per mL syrup	f	2	f	1992-12-31	9002467	\N	\N	16625
hydrocodone bitartrate 5 mg oral tablet	f	1	f	1992-12-31	9002468	\N	\N	16626
hydroquinone 1.5 % and oxybenzone 4 % cutaneous cream	f	1	f	1992-12-31	9002469	\N	\N	16627
hydroquinone 1.8 % and oxybenzone 4 % cutaneous cream	f	1	f	1992-12-31	9002470	\N	\N	16628
hydroquinone 2 % and oxybenzone 4 % cutaneous cream	f	1	f	1992-12-31	9002471	\N	\N	16629
insulin injection human biosynthetic 100 unit per mL solution for injection	f	3	f	1992-12-31	9002472	\N	\N	16630
insulin injection human biosynthetic 30 unit per mL and insulin isophane human 70 unit per mL suspension for injection	f	3	f	1992-12-31	9002473	\N	\N	16631
lanolin 3 % and mineral oil 91.7 % cutaneous liquid	f	1	f	1992-12-31	9002474	\N	\N	16632
leuprolide acetate 3.75 mg per vial powder for prolonged-release suspension for injection	f	1	f	1992-12-31	9002475	\N	\N	16633
magnesium chloride 30 mg per 100 mL and potassium chloride 37 mg per 100 mL and sodium acetate 370 mg per 100 mL and sodium chloride 530 mg per 100 mL and sodium gluconate 500 mg per 100 mL solution for injection	f	1	f	1992-12-31	9002476	\N	\N	16634
manganese (manganese sulfate) 0.1 mg per mL solution for injection	f	1	f	1992-12-31	9002477	\N	\N	16635
manganese (manganese sulfate) 0.5 mg per mL solution for injection	f	1	f	1992-12-31	9002478	\N	\N	16636
minoxidil 20 mg per mL cutaneous liquid	f	1	f	1992-12-31	9002479	\N	\N	16637
moclobemide 150 mg oral tablet	f	4	f	1992-12-31	9002480	\N	\N	16638
mupirocin 2 % cutaneous ointment	f	2	f	1992-12-31	9002481	\N	\N	16639
onabotulinumtoxina 100 unit per vial powder for solution for injection	f	2	f	1992-12-31	9002482	\N	\N	16640
penicillin g sodium 10000000 unit per vial powder for solution for injection	f	1	f	1992-12-31	9002483	\N	\N	16641
penicillin g sodium 1000000 unit per vial powder for solution for injection	f	1	f	1992-12-31	9002484	\N	\N	16642
penicillin g sodium 5000000 unit per vial powder for solution for injection	f	1	f	1992-12-31	9002485	\N	\N	16643
pheniramine maleate 0.2 % and phenylephrine hydrochloride 0.5 % nasal spray	f	1	f	1992-12-31	9002486	\N	\N	16644
phenylephrine (phenylephrine hydrochloride) 10 mg per mL solution for injection	f	1	f	1992-12-31	9002487	\N	\N	16645
podophyllotoxin 0.5 % cutaneous solution	f	1	f	1992-12-31	9002488	\N	\N	16646
polistes spp venom protein extract 120 mcg per vial powder for solution for injection	f	1	f	1992-12-31	9002489	\N	\N	16647
pramoxine hydrochloride 1 % and zinc sulfate 0.5 % cutaneous ointment	f	2	f	1992-12-31	9002490	\N	\N	16648
pramoxine hydrochloride 1 % and zinc sulfate 0.5 % rectal ointment	f	3	f	1992-12-31	9002491	\N	\N	16649
pramoxine hydrochloride 20 mg and zinc sulfate 10 mg suppository	f	1	f	1992-12-31	9002492	\N	\N	16650
sodium chloride 0.9 % irrigation solution	f	1	f	1992-12-31	9002493	\N	\N	16651
sodium chloride 0.9 % solution for injection	f	3	f	1992-12-31	9002494	\N	\N	16652
theophylline 80 mg per 15 mL oral liquid	f	1	f	1992-12-31	9002495	\N	\N	16653
fluocinonide 0.05 % cutaneous gel	f	2	f	1995-12-31	9002812	\N	\N	16970
vancomycin (vancomycin hydrochloride) 1 g per vial powder for solution for injection	f	7	f	1992-12-31	9002497	\N	\N	16655
vancomycin (vancomycin hydrochloride) 500 mg per vial powder for solution for injection	f	8	f	1992-12-31	9002498	\N	\N	16656
vespula spp venom protein extract 120 mcg per vial powder for solution for injection	f	1	f	1992-12-31	9002499	\N	\N	16657
vitamin d3 10000 unit oral tablet	f	1	f	1992-12-31	9002500	\N	\N	16658
white faced hornet venom protein 1.1 mg per vial and yellow hornet venom protein 1.1 mg per vial and yellow jacket venom protein 1.1 mg per vial powder for solution for injection	f	1	f	1992-12-31	9002501	\N	\N	16659
yohimbine hydrochloride 2 mg oral tablet	f	1	f	1992-12-31	9002502	\N	\N	16660
yohimbine hydrochloride 6 mg oral tablet	f	1	f	1992-12-31	9002503	\N	\N	16661
zinc (zinc sulfate) 1 mg per mL solution for injection	f	1	f	1992-12-31	9002504	\N	\N	16662
zinc (zinc sulfate) 5 mg per mL solution for injection	f	1	f	1992-12-31	9002505	\N	\N	16663
typhoid vaccine (salmonella typhi ty21a) 10 b gastro-resistant capsule	f	1	f	1993-01-01	9002506	\N	\N	16664
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck powder for oral solution	f	2	f	1993-12-30	9002507	\N	\N	16665
acetaminophen 160 mg chewable tablet	f	7	f	1993-12-31	9002508	\N	\N	16666
acetaminophen 160 mg oral tablet	f	5	f	1993-12-31	9002509	\N	\N	16667
acetaminophen 160 mg suppository	f	2	f	1993-12-31	9002510	\N	\N	16668
acetaminophen 325 mg and methocarbamol 400 mg oral tablet	f	6	f	1993-12-31	9002511	\N	\N	16669
acetaminophen 80 mg chewable tablet	f	3	f	1993-12-31	9002512	\N	\N	16670
acetylsalicylic acid 325 mg and caffeine 15 mg and codeine phosphate 8 mg oral tablet	f	1	f	1993-12-31	9002513	\N	\N	16671
acetylsalicylic acid 325 mg and caffeine 33 mg oral tablet	f	1	f	1993-12-31	9002514	\N	\N	16672
air 50 % and carbon dioxide 50 % medicinal gas	f	1	f	1993-12-31	9002515	\N	\N	16673
air 70 % and carbon dioxide 30 % medicinal gas	f	1	f	1993-12-31	9002516	\N	\N	16674
air 85 % and carbon dioxide 15 % medicinal gas	f	1	f	1993-12-31	9002517	\N	\N	16675
air 99.7 % and carbon monoxide 0.3 % medicinal gas	f	1	f	1993-12-31	9002518	\N	\N	16676
amantadine hydrochloride 10 mg per mL syrup	f	1	f	1993-12-31	9002519	\N	\N	16677
apis mellifera venom protein extract 1.1 mg per vial powder for solution for injection	f	1	f	1993-12-31	9002520	\N	\N	16678
apis mellifera venom protein extract 120 mcg per vial powder for solution for injection	f	1	f	1993-12-31	9002521	\N	\N	16679
articaine hydrochloride 40 mg per mL and epinephrine 0.01 mg per mL solution for injection	f	1	f	1993-12-31	9002522	\N	\N	16680
auranofin 3 mg oral capsule	f	1	f	1993-12-31	9002523	\N	\N	16681
benazepril hydrochloride 20 mg oral tablet	f	2	f	1993-12-31	9002524	\N	\N	16682
benazepril hydrochloride 5 mg oral tablet	f	2	f	1993-12-31	9002525	\N	\N	16683
benzydamine hydrochloride 15 mg per 10 mL mouthwash	f	1	f	1993-12-31	9002526	\N	\N	16684
beractant 25 mg per mL endotracheopulmonary instillation	f	1	f	1993-12-31	9002527	\N	\N	16685
bumetanide 1 mg oral tablet	f	1	f	1993-12-31	9002528	\N	\N	16686
bumetanide 5 mg oral tablet	f	1	f	1993-12-31	9002529	\N	\N	16687
carbon dioxide 7 % and oxygen 93 % medicinal gas	f	1	f	1993-12-31	9002530	\N	\N	16688
carbon dioxide 99 % medicinal gas	f	2	f	1993-12-31	9002531	\N	\N	16689
carbon monoxide 0.3 % and helium 10.5 % and nitrogen 67.7 % and oxygen 21.5 % medicinal gas	f	1	f	1993-12-31	9002532	\N	\N	16690
chlorhexidine acetate 10 % dental solution	f	1	f	1993-12-31	9002533	\N	\N	16691
chlorhexidine acetate 10 % kit	f	1	f	1993-12-31	9002534	\N	\N	16692
chloroxylenol 0.15 % and triclosan 0.15 % cutaneous gel	f	2	f	1993-12-31	9002535	\N	\N	16693
chloroxylenol 0.5 % and menthol 1.25 % cutaneous liquid	f	1	f	1993-12-31	9002536	\N	\N	16694
chloroxylenol 0.5 % and menthol 4 % cutaneous gel	f	1	f	1993-12-31	9002537	\N	\N	16695
cholestyramine resin 4 g per 5 g powder for oral suspension	f	1	f	1993-12-31	9002538	\N	\N	16696
chromium (chromic chloride) 4 mcg per mL solution for injection	f	1	f	1993-12-31	9002539	\N	\N	16697
cilazapril 2.5 mg oral tablet	f	1	f	1993-12-31	9002540	\N	\N	16698
cilazapril 5 mg oral tablet	f	1	f	1993-12-31	9002541	\N	\N	16699
citric acid 93 mg per 100 mL and dextrose 5 g per 100 mL and heparin sodium 5000 unit per 100 mL and sodium phosphate dibasic 410 mg per 100 mL solution for injection	f	1	f	1993-12-31	9002542	\N	\N	16700
codeine phosphate 10 mg per 5 mL and guaifenesin 100 mg per 5 mL and pheniramine maleate 7.5 mg per 5 mL syrup	f	2	f	1993-12-31	9002543	\N	\N	16701
copper (copper sulfate) 0.4 mg per mL solution for injection	f	1	f	1993-12-31	9002544	\N	\N	16702
cromolyn sodium 1 % inhalation solution	f	2	f	1993-12-31	9002545	\N	\N	16703
cromolyn sodium 1 % oral solution	f	1	f	1993-12-31	9002546	\N	\N	16704
cromolyn sodium 2 % nasal spray	f	2	f	1993-12-31	9002547	\N	\N	16705
cromolyn sodium 2 % ophthalmic drops	f	2	f	1993-12-31	9002548	\N	\N	16706
desipramine hydrochloride 10 mg oral tablet	f	2	f	1993-12-31	9002549	\N	\N	16707
desipramine hydrochloride 25 mg oral tablet	f	2	f	1993-12-31	9002550	\N	\N	16708
desipramine hydrochloride 50 mg oral tablet	f	2	f	1993-12-31	9002551	\N	\N	16709
desipramine hydrochloride 75 mg oral tablet	f	2	f	1993-12-31	9002552	\N	\N	16710
desmopressin acetate 4 mcg per mL solution for injection	f	1	f	1993-12-31	9002553	\N	\N	16711
dextran 40 10 % and sodium chloride 0.9 % solution for injection	f	1	f	1993-12-31	9002554	\N	\N	16712
dextromethorphan hydrobromide 7.5 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral liquid	f	1	f	1993-12-31	9002555	\N	\N	16713
dextrose 10 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 290 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002556	\N	\N	16714
dextrose 10 g per 100 mL and glycine 880 mg per 100 mL and histidine 186 mg per 100 mL and l-alanine 880 mg per 100 mL and l-arginine 440 mg per 100 mL and l-isoleucine 203 mg per 100 mL and l-leucine hydrochloride 263 mg per 100 mL and l-lysine hydrochloride 246 mg per 100 mL and l-phenylalanine hydrochloride 263 mg per 100 mL and l-proline 178 mg per 100 mL and l-threonine 178 mg per 100 mL and l-tyrosine 17 mg per 100 mL and l-valine 195 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 246 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and sodium acetate 297 mg per 100 mL and sodium chloride 77 mg per 100 mL and tryptophan 76 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002557	\N	\N	16715
dextrose 16.6 g per 100 mL and glycine 1040 mg per 100 mL and histidine 220 mg per 100 mL and l-alanine 1040 mg per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine (l-lysine hydrochloride) 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and methionine 290 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002558	\N	\N	16716
dextrose 16.6 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 290 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002559	\N	\N	16717
dextrose 25 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and methionine 290 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002560	\N	\N	16718
dextrose 25 g per 100 mL and glycine 880 mg per 100 mL and histidine 186 mg per 100 mL and l-alanine 880 mg per 100 mL and l-arginine 440 mg per 100 mL and l-isoleucine 203 mg per 100 mL and l-leucine hydrochloride 263 mg per 100 mL and l-lysine hydrochloride 246 mg per 100 mL and l-phenylalanine hydrochloride 263 mg per 100 mL and l-proline 178 mg per 100 mL and l-threonine 178 mg per 100 mL and l-tyrosine 17 mg per 100 mL and l-valine 195 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 246 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and sodium acetate 297 mg per 100 mL and sodium chloride 77 mg per 100 mL and tryptophan 76 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002561	\N	\N	16719
dextrose 5 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and methionine 290 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002562	\N	\N	16720
dextrose 5 g per 100 mL and magnesium chloride 30 mg per 100 mL and potassium chloride 97 mg per 100 mL and sodium acetate 220 mg per 100 mL and sodium chloride 140 mg per 100 mL solution for injection	f	1	f	1993-12-31	9002563	\N	\N	16721
dicyclomine hydrochloride 10 mg per 5 mL syrup	f	1	f	1993-12-31	9002564	\N	\N	16722
diflunisal 250 mg oral tablet	f	2	f	1993-12-31	9002565	\N	\N	16723
diflunisal 500 mg oral tablet	f	2	f	1993-12-31	9002566	\N	\N	16724
dimethicone 2 % and oxybenzone 2.5 % and padimate o 6.6 % cutaneous ointment	f	1	f	1993-12-31	9002567	\N	\N	16725
diphenhydramine hydrochloride 2 % cutaneous cream	f	2	f	1993-12-31	9002568	\N	\N	16726
dl-methionine 880 mg per 100 mL and histidine 250 mg per 100 mL and isoleucine 560 mg per 100 mL and l-cysteine (l-cysteine hydrochloride) 13 mg per 100 mL and leucine 880 mg per 100 mL and lysine (lysine acetate) 640 mg per 100 mL and phenylalanine 880 mg per 100 mL and sodium bisulfite 40 mg per 100 mL and threonine 400 mg per 100 mL and tryptophan 200 mg per 100 mL and valine 640 mg per 100 mL solution for injection	f	1	t	1993-12-31	9002569	\N	\N	16727
enoxaparin sodium 30 mg per 0.3 mL solution for injection	f	1	f	1993-12-31	9002570	\N	\N	16728
famotidine 20 mg oral tablet	f	6	f	1993-12-31	9002571	\N	\N	16729
famotidine 40 mg oral tablet	f	4	f	1993-12-31	9002572	\N	\N	16730
gemfibrozil 300 mg oral capsule	f	4	f	1993-12-31	9002573	\N	\N	16731
gemfibrozil 600 mg oral tablet	f	3	f	1993-12-31	9002574	\N	\N	16732
glycopyrrolate 0.2 mg per mL solution for injection	f	3	f	1993-12-31	9002575	\N	\N	16733
halobetasol propionate 0.05 % cutaneous cream	f	1	f	1993-12-31	9002576	\N	\N	16734
halobetasol propionate 0.05 % cutaneous ointment	f	1	f	1993-12-31	9002577	\N	\N	16735
helium 76 % and oxygen 24 % medicinal gas	f	1	f	1993-12-31	9002578	\N	\N	16736
helium 99 % medicinal gas	f	2	f	1993-12-31	9002579	\N	\N	16737
ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	6	f	1993-12-31	9002580	\N	\N	16738
insulin injection human biosynthetic 40 unit per mL and insulin isophane human 60 unit per mL suspension for injection	f	1	f	1993-12-31	9002581	\N	\N	16739
insulin injection human biosynthetic 50 unit per mL and insulin isophane human 50 unit per mL suspension for injection	f	1	f	1993-12-31	9002582	\N	\N	16740
iodide (sodium iodide) 100 mcg per mL solution for injection	f	1	f	1993-12-31	9002583	\N	\N	16741
ioversol 74 % solution for injection	f	2	f	1993-12-31	9002584	\N	\N	16742
isoflurane 99.9 % inhalation vapour (liquid)	f	3	f	1993-12-31	9002585	\N	\N	16743
isoflurane 99.9 % oral liquid	f	1	f	1993-12-31	9002586	\N	\N	16744
itraconazole 100 mg oral capsule	f	2	f	1993-12-31	9002587	\N	\N	16745
ketoprofen 100 mg suppository	f	2	f	1993-12-31	9002588	\N	\N	16746
levocabastine (levocabastine hydrochloride) 0.5 mg per mL nasal spray	f	1	f	1993-12-31	9002589	\N	\N	16747
lidocaine (lidocaine hydrochloride) 100 mg per mL oral solution	f	1	f	1993-12-31	9002590	\N	\N	16748
liothyronine (liothyronine sodium) 25 mcg oral tablet	f	1	f	1993-12-31	9002591	\N	\N	16749
liothyronine (liothyronine sodium) 5 mcg oral tablet	f	1	f	1993-12-31	9002592	\N	\N	16750
loperamide hydrochloride 0.2 mg per mL oral solution	f	3	f	1993-12-31	9002593	\N	\N	16751
mannitol 5 % irrigation solution	f	1	f	1993-12-31	9002594	\N	\N	16752
methocarbamol 750 mg oral tablet	f	1	f	1993-12-31	9002595	\N	\N	16753
NA 100 mg oral capsule	f	2	f	1993-12-31	9002596	\N	\N	16754
NA 20 mg per vial powder for solution for injection	f	1	f	1993-12-31	9002597	\N	\N	16755
NA 25 mg oral capsule	f	2	f	1993-12-31	9002598	\N	\N	16756
nalbuphine hydrochloride 10 mg per mL solution for injection	f	1	f	1993-12-31	9002599	\N	\N	16757
nalbuphine hydrochloride 20 mg per mL solution for injection	f	1	f	1993-12-31	9002600	\N	\N	16758
nitrogen 50 % and oxygen 50 % medicinal gas	f	1	f	1993-12-31	9002601	\N	\N	16759
nitrogen 80.5 % and oxygen 19.5 % medicinal gas	f	1	f	1993-12-31	9002602	\N	\N	16760
nitrous oxide 99 % medicinal gas	f	2	f	1993-12-31	9002603	\N	\N	16761
pentosan polysulfate sodium 100 mg oral capsule	f	1	f	1993-12-31	9002604	\N	\N	16762
phenol 6 % solution for injection	f	1	f	1993-12-31	9002605	\N	\N	16763
pinaverium bromide 50 mg oral tablet	f	1	f	1993-12-31	9002606	\N	\N	16764
polistes spp venom protein extract 1.1 mg per vial powder for solution for injection	f	1	f	1993-12-31	9002607	\N	\N	16765
polymyxin b (polymyxin b sulfate) 10000 unit per mL and trimethoprim (trimethoprim sulfate) 1 mg per mL ophthalmic drops	f	1	f	1993-12-31	9002608	\N	\N	16766
propofol 1 % emulsion for injection	f	1	f	1993-12-31	9002609	\N	\N	16767
pyrithione zinc 1 % shampoo	f	62	f	1993-12-31	9002610	\N	\N	16768
selenium (selenious acid) 40 mcg per mL solution for injection	f	1	f	1993-12-31	9002611	\N	\N	16769
sodium fluoride 0.243 % and triclosan 0.3 % toothpaste	f	3	f	1993-12-31	9002612	\N	\N	16770
sucralfate 1 g oral tablet	f	3	f	1993-12-31	9002613	\N	\N	16771
theophylline 100 mg prolonged-release oral tablet	f	2	f	1993-12-31	9002614	\N	\N	16772
theophylline 200 mg prolonged-release oral tablet	f	2	f	1993-12-31	9002615	\N	\N	16773
theophylline 300 mg prolonged-release oral tablet	f	2	f	1993-12-31	9002616	\N	\N	16774
trolamine salicylate 13.3 % cutaneous cream	f	2	f	1993-12-31	9002617	\N	\N	16775
vespula spp venom protein extract 1.1 mg per vial powder for solution for injection	f	1	f	1993-12-31	9002618	\N	\N	16776
white faced hornet venom protein 120 mcg per vial and yellow hornet venom protein 120 mcg per vial and yellow jacket venom protein 120 mcg per vial powder for solution for injection	f	2	f	1993-12-31	9002619	\N	\N	16777
bezafibrate 400 mg prolonged-release oral tablet	f	2	f	1994-12-21	9002620	\N	\N	16778
acetaminophen 325 mg and chlorpheniramine maleate 2 mg and phenylephrine hydrochloride 5 mg oral tablet	f	3	f	1994-12-31	9002621	\N	\N	16779
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and phenylephrine hydrochloride 5 mg oral tablet	f	6	f	1994-12-31	9002622	\N	\N	16780
adenosine 3 mg per mL solution for injection	f	3	f	1994-12-31	9002623	\N	\N	16781
articaine hydrochloride 40 mg per mL and epinephrine 5 mcg per mL solution for injection	f	1	f	1994-12-31	9002624	\N	\N	16782
articaine hydrochloride 40 mg per mL and epinephrine (epinephrine bitartrate) 0.005 mg per mL solution for injection	f	3	f	1994-12-31	9002625	\N	\N	16783
articaine hydrochloride 40 mg per mL and epinephrine (epinephrine bitartrate) 0.01 mg per mL solution for injection	f	4	f	1994-12-31	9002626	\N	\N	16784
atenolol 100 mg and chlorthalidone 25 mg oral tablet	f	3	f	1994-12-31	9002627	\N	\N	16785
bacitracin (bacitracin zinc) 500 unit per g and gramicidin 0.25 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	1	f	1994-12-31	9002628	\N	\N	16786
bacitracin zinc 400 unit per g and neomycin (neomycin sulfate) 3.5 mg per g and polymyxin b sulfate 10000 unit per g cutaneous ointment	f	1	f	1994-12-31	9002629	\N	\N	16787
bacitracin zinc 400 unit per g and neomycin (neomycin sulfate) 3.5 mg per g and polymyxin b sulfate 10000 unit per g ophthalmic ointment	f	1	f	1994-12-31	9002630	\N	\N	16788
betaxolol (betaxolol hydrochloride) 0.25 % ophthalmic drops	f	1	f	1994-12-31	9002631	\N	\N	16789
hydrocodone bitartrate 1.7 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL syrup	f	1	f	1994-12-31	9002679	\N	\N	16790
hydrocodone bitartrate 5 mg per 5 mL and phenylephrine hydrochloride 20 mg per 5 mL syrup	f	1	f	1994-12-31	9002680	\N	\N	16791
hydrocortisone (hydrocortisone acetate) 1 % and pramoxine hydrochloride 1 % lotion	f	1	f	1994-12-31	9002681	\N	\N	16792
biotin 12 mcg per mL and dexpanthenol 3 mg per mL and folic acid 80 mcg per mL and nicotinamide 8 mg per mL and pyridoxine hydrochloride 0.8 mg per mL and vitamin a 660 unit per mL and vitamin b12 (vitamin b12) 1 mcg per mL and vitamin b1 (thiamine hydrochloride) 0.6 mg per mL and vitamin b2 (riboflavin-5-phosphate) 0.72 mg per mL and vitamin c 20 mg per mL and vitamin d 40 unit per mL and vitamin e 2 unit per mL solution for injection	f	1	t	1994-12-31	9002632	\N	\N	16793
bromocriptine (bromocriptine mesylate) 2.5 mg oral tablet	f	4	f	1994-12-31	9002633	\N	\N	16794
budesonide 2.3 mg and sodium chloride 115 mL enema	f	1	f	1994-12-31	9002634	\N	\N	16795
budesonide 2.3 mg and sodium chloride 115 mL kit	f	1	f	1994-12-31	9002635	\N	\N	16796
budesonide 2.3 mg and sodium chloride 115 mL rectal liquid	f	1	f	1994-12-31	9002636	\N	\N	16797
bupivacaine hydrochloride 2.5 mg per mL and epinephrine (epinephrine bitartrate) 5 mcg per mL solution for injection	f	1	f	1994-12-31	9002637	\N	\N	16798
bupivacaine hydrochloride 2.5 mg per mL solution for injection	f	4	f	1994-12-31	9002638	\N	\N	16799
bupivacaine hydrochloride 5 mg per mL and epinephrine (epinephrine bitartrate) 5 mcg per mL solution for injection	f	1	f	1994-12-31	9002639	\N	\N	16800
bupivacaine hydrochloride 5 mg per mL solution for injection	f	4	f	1994-12-31	9002640	\N	\N	16801
calcium chloride 0.048 % and magnesium chloride 0.03 % and potassium chloride 0.075 % and sodium acetate 0.39 % and sodium chloride 0.64 % and sodium citrate 0.17 % solution for injection	f	1	t	1994-12-31	9002641	\N	\N	16802
calcium chloride 0.48 mg per mL and magnesium chloride 0.3 mg per mL and potassium chloride 0.75 mg per mL and sodium acetate 3.9 mg per mL and sodium chloride 6.4 mg per mL and sodium citrate 1.7 mg per mL oral solution	f	1	t	1994-12-31	9002642	\N	\N	16803
carboplatin 10 mg per mL solution for injection	f	4	f	1994-12-31	9002643	\N	\N	16804
chloramphenicol 0.5 % ophthalmic drops	f	1	f	1994-12-31	9002644	\N	\N	16805
chloramphenicol 1 % cutaneous ointment	f	1	f	1994-12-31	9002645	\N	\N	16806
fluocinonide 0.05 % cutaneous ointment	f	2	f	1995-12-31	9002813	\N	\N	16971
chloramphenicol 1 % ophthalmic ointment	f	1	f	1994-12-31	9002646	\N	\N	16807
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % wipe	f	1	f	1994-12-31	9002647	\N	\N	16808
chlorhexidine gluconate 20 % cutaneous solution	f	1	f	1994-12-31	9002648	\N	\N	16809
chromium (chromic chloride) 10 mcg per mL and copper (copper sulfate) 1 mg per mL and iodine (sodium iodide) 75 mcg per mL and manganese (manganese sulfate) 0.5 mg per mL and selenium (selenious acid) 60 mcg per mL and zinc (zinc sulfate) 5 mg per mL solution for injection	f	1	t	1994-12-31	9002649	\N	\N	16810
chromium (chromic chloride) 10 mcg per mL and copper (copper sulfate) 1 mg per mL and manganese (manganese sulfate) 0.5 mg per mL and selenium (selenious acid) 60 mcg per mL and zinc (zinc sulfate) 5 mg per mL solution for injection	f	1	f	1994-12-31	9002650	\N	\N	16811
chromium (chromic chloride) 10 mcg per mL and copper (copper sulfate) 1 mg per mL and manganese (manganese sulfate) 0.5 mg per mL and zinc (zinc sulfate) 5 mg per mL solution for injection	f	1	f	1994-12-31	9002651	\N	\N	16812
chromium (chromic chloride) 4 mcg per mL and copper (copper sulfate) 0.4 mg per mL and iodine (sodium iodide) 60 mcg per mL and manganese (manganese sulfate) 0.1 mg per mL and selenium (selenious acid) 20 mcg per mL and zinc (zinc sulfate) 3 mg per mL solution for injection	f	1	t	1994-12-31	9002652	\N	\N	16813
codeine phosphate 10 mg per 5 mL and guaifenesin 100 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL and triprolidine hydrochloride 2 mg per 5 mL syrup	f	1	f	1994-12-31	9002653	\N	\N	16814
collagenase 250 unit per g cutaneous ointment	f	1	f	1994-12-31	9002654	\N	\N	16815
cyclopentolate hydrochloride 0.5 % ophthalmic drops	f	2	f	1994-12-31	9002655	\N	\N	16816
dapsone 100 mg oral tablet	f	1	f	1994-12-31	9002656	\N	\N	16817
dexamethasone 1 mg per g and neomycin sulfate 3.5 mg per g and polymyxin b sulfate 10000 unit per g ophthalmic ointment	f	1	f	1994-12-31	9002657	\N	\N	16818
dexamethasone 1 mg per mL and neomycin (neomycin sulfate) 3.5 mg per mL and polymyxin b sulfate 10000 unit per mL ophthalmic drops	f	1	f	1994-12-31	9002658	\N	\N	16819
dextrose 20 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 290 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1994-12-31	9002659	\N	\N	16820
dextrose 20 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and methionine 290 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1994-12-31	9002660	\N	\N	16821
dimenhydrinate 15 mg chewable tablet	f	2	f	1994-12-31	9002661	\N	\N	16822
dimethicone 3 % and homosalate 4.5 % and meradimate 4.8 % and octinoxate 7.4 % and octisalate 5 % and oxybenzone 5.2 % cutaneous ointment	f	1	t	1994-12-31	9002662	\N	\N	16823
dolichovespula maculata venom protein extract 120 mcg per vial powder for solution for injection	f	1	f	1994-12-31	9002663	\N	\N	16824
dornase alfa 1 mg per mL inhalation solution	f	1	f	1994-12-31	9002664	\N	\N	16825
ensulizole 2 % and meradimate 4 % and octinoxate 7.5 % cutaneous cream	f	1	f	1994-12-31	9002665	\N	\N	16826
ensulizole 2 % and meradimate 4 % and octinoxate 7.5 % lotion	f	1	f	1994-12-31	9002666	\N	\N	16827
etoposide 20 mg per mL solution for injection	f	4	f	1994-12-31	9002667	\N	\N	16828
fluorescein sodium 1 mg ophthalmic strip	f	1	f	1994-12-31	9002668	\N	\N	16829
fluorescein sodium 25 % solution for injection	f	1	f	1994-12-31	9002669	\N	\N	16830
fluphenazine decanoate 25 mg per mL solution for injection	f	2	f	1994-12-31	9002670	\N	\N	16831
fluvastatin (fluvastatin sodium) 20 mg oral capsule	f	3	f	1994-12-31	9002671	\N	\N	16832
fluvastatin (fluvastatin sodium) 40 mg oral capsule	f	3	f	1994-12-31	9002672	\N	\N	16833
framycetin sulfate 1 % dressing	f	2	f	1994-12-31	9002673	\N	\N	16834
gentamicin (gentamicin sulfate) 0.3 % ophthalmic drops	f	1	f	1994-12-31	9002674	\N	\N	16835
gentamicin (gentamicin sulfate) 0.3 % ophthalmic ointment	f	1	f	1994-12-31	9002675	\N	\N	16836
gonadorelin acetate 0.8 mg per vial powder for solution for injection	f	1	f	1994-12-31	9002676	\N	\N	16837
goserelin (goserelin acetate) 3.6 mg implant	f	1	f	1994-12-31	9002677	\N	\N	16838
heparin sodium 2 unit per mL solution for injection	f	1	f	1994-12-31	9002678	\N	\N	16839
famciclovir 500 mg oral tablet	f	6	f	1995-12-31	9002808	\N	\N	16840
hydroquinone 4 g per 100 g and oxybenzone 4 g per 100 g cutaneous cream	f	1	f	1994-12-31	9002682	\N	\N	16841
indigo carmine 0.8 % solution for injection	f	1	f	1994-12-31	9002683	\N	\N	16842
indocyanine green 25 mg per vial powder for solution for injection	f	1	f	1994-12-31	9002684	\N	\N	16843
iopromide 50 % solution for injection	f	1	f	1994-12-31	9002685	\N	\N	16844
iopromide 62 % solution for injection	f	1	f	1994-12-31	9002686	\N	\N	16845
iopromide 77 % solution for injection	f	1	f	1994-12-31	9002687	\N	\N	16846
lanolin 2 % and mineral oil 42.5 % and petrolatum 55 % ophthalmic ointment	f	1	f	1994-12-31	9002688	\N	\N	16847
leucovorin (leucovorin calcium) 10 mg per mL solution for injection	f	3	f	1994-12-31	9002689	\N	\N	16848
lidocaine 2.5 % and prilocaine 2.5 % cutaneous patch	f	1	f	1994-12-31	9002690	\N	\N	16849
lidocaine hydrochloride 2 % cutaneous gel	f	1	f	1994-12-31	9002691	\N	\N	16850
lidocaine hydrochloride 2 % mouthwash	f	1	f	1994-12-31	9002692	\N	\N	16851
menthol 200 mg per 100 mL and tolnaftate 1 g per 100 mL cutaneous liquid	f	1	f	1994-12-31	9002693	\N	\N	16852
miconazole nitrate 100 mg and miconazole nitrate 2 % cutaneous cream	f	1	f	1994-12-31	9002694	\N	\N	16853
miconazole nitrate 100 mg and miconazole nitrate 2 % NA	f	1	f	1994-12-31	9002695	\N	\N	16854
miconazole nitrate 100 mg and miconazole nitrate 2 % pessary	f	1	f	1994-12-31	9002696	\N	\N	16855
miconazole nitrate 100 mg and miconazole nitrate 2 % vaginal cream	f	1	f	1994-12-31	9002697	\N	\N	16856
mineral oil 20 % and petrolatum 80 % ophthalmic ointment	f	1	f	1994-12-31	9002698	\N	\N	16857
NA 0.5 % cutaneous liquid	f	1	f	1994-12-31	9002699	\N	\N	16858
NA 10 mg oral capsule	f	1	f	1994-12-31	9002700	\N	\N	16859
octinoxate 7.5 % and oxybenzone 3 % cutaneous stick	f	4	f	1994-12-31	9002701	\N	\N	16860
octinoxate 7.5 % and oxybenzone 4 % and titanium dioxide 4 % cutaneous stick	f	1	f	1994-12-31	9002702	\N	\N	16861
orphenadrine citrate 100 mg oral tablet	f	1	f	1994-12-31	9002703	\N	\N	16862
paromomycin (paromomycin sulfate) 250 mg oral capsule	f	1	f	1994-12-31	9002704	\N	\N	16863
pheniramine maleate 0.5 % and phenylephrine hydrochloride 0.125 % and polyvinyl alcohol 1.4 % ophthalmic drops	f	1	f	1994-12-31	9002705	\N	\N	16864
phenylephrine hydrochloride 0.12 % and NA 0.5 % ophthalmic drops	f	1	f	1994-12-31	9002706	\N	\N	16865
pilocarpine hydrochloride 1 % ophthalmic drops	f	1	f	1994-12-31	9002707	\N	\N	16866
pilocarpine hydrochloride 2 % ophthalmic drops	f	1	f	1994-12-31	9002708	\N	\N	16867
pilocarpine hydrochloride 4 % ophthalmic drops	f	1	f	1994-12-31	9002709	\N	\N	16868
polysorbate 80 0.8 % cutaneous solution	f	1	f	1994-12-31	9002710	\N	\N	16869
polysorbate 80 0.8 % ophthalmic drops	f	1	f	1994-12-31	9002711	\N	\N	16870
prednisolone acetate 0.5 % and sulfacetamide sodium 10 % ophthalmic drops	f	1	f	1994-12-31	9002712	\N	\N	16871
prednisolone acetate 5 mg per g and sulfacetamide sodium 100 mg per g cutaneous ointment	f	1	f	1994-12-31	9002713	\N	\N	16872
prednisolone acetate 5 mg per g and sulfacetamide sodium 100 mg per g ophthalmic ointment	f	1	f	1994-12-31	9002714	\N	\N	16873
selegiline hydrochloride 5 mg oral tablet	f	3	f	1994-12-31	9002715	\N	\N	16874
sodium chloride 0.9 % inhalation solution	f	1	f	1994-12-31	9002716	\N	\N	16875
sulfacetamide sodium 10 % ophthalmic drops	f	1	f	1994-12-31	9002717	\N	\N	16876
tiaprofenic acid 200 mg oral tablet	f	3	f	1994-12-31	9002718	\N	\N	16877
tiaprofenic acid 300 mg oral tablet	f	4	f	1994-12-31	9002719	\N	\N	16878
trimipramine (trimipramine maleate) 75 mg oral capsule	f	1	f	1994-12-31	9002720	\N	\N	16879
tryptophan 500 mg oral tablet	f	4	f	1994-12-31	9002721	\N	\N	16880
vigabatrin 500 mg oral tablet	f	1	f	1994-12-31	9002722	\N	\N	16881
potassium citrate 540 mg prolonged-release oral tablet	f	1	f	1995-01-01	9002723	\N	\N	16882
lidocaine 0.5 % cutaneous liquid	f	1	f	1995-03-17	9002724	\N	\N	16883
methotrimeprazine (methotrimeprazine maleate) 5 mg oral tablet	f	3	f	1995-07-17	9002725	\N	\N	16884
aluminum hydroxide (dried aluminum hydroxide gel) 174 mg per 5 mL and magnesium hydroxide 200 mg per 5 mL and simethicone 25 mg per 5 mL oral suspension	f	1	f	1995-08-21	9002726	\N	\N	16885
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	4	f	1995-12-31	9002727	\N	\N	16886
acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	5	f	1995-12-31	9002728	\N	\N	16887
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1995-12-31	9002729	\N	\N	16888
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1995-12-31	9002730	\N	\N	16889
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1995-12-31	9002731	\N	\N	16890
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1995-12-31	9002732	\N	\N	16891
acetic acid 5.41 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 5.02 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1995-12-31	9002733	\N	\N	16892
acetic acid 8.11 g per l and calcium chloride 7.49 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 5.02 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1995-12-31	9002734	\N	\N	16893
acetylsalicylic acid 325 mg per evt and citric acid 1000 mg per evt and sodium bicarbonate 1916 mg per evt effervescent oral tablet	f	1	f	1995-12-31	9002735	\N	\N	16894
acetylsalicylic acid 500 mg oral tablet	f	5	f	1995-12-31	9002736	\N	\N	16895
acetylsalicylic acid 80 mg chewable tablet	f	7	f	1995-12-31	9002737	\N	\N	16896
aldesleukin 22000000 unit per vial powder for solution for injection	f	1	f	1995-12-31	9002738	\N	\N	16897
aluminum hydroxide 300 mg per 5 mL and magnesium hydroxide 100 mg per 5 mL and oxetacaine 10 mg per 5 mL oral suspension	f	1	f	1995-12-31	9002739	\N	\N	16898
apraclonidine (apraclonidine hydrochloride) 0.5 % ophthalmic drops	f	1	f	1995-12-31	9002740	\N	\N	16899
atenolol 50 mg and chlorthalidone 25 mg oral tablet	f	3	f	1995-12-31	9002741	\N	\N	16900
avobenzone 2 % and octinoxate 7.5 % and oxybenzone 3 % cutaneous cream	f	1	f	1995-12-31	9002742	\N	\N	16901
bacillus calmette-guerin (bcg) strain tice 800000000 unit per vial powder for solution for injection	f	1	f	1995-12-31	9002743	\N	\N	16902
bacitracin (bacitracin zinc) 500 unit per g and polymyxin b (polymyxin b sulfate) 10000 unit per g ophthalmic ointment	f	2	f	1995-12-31	9002744	\N	\N	16903
benzalkonium chloride 0.13 % and lidocaine hydrochloride 2.5 % cutaneous spray	f	1	f	1995-12-31	9002745	\N	\N	16904
bretylium tosylate 50 mg per mL solution for injection	f	1	f	1995-12-31	9002746	\N	\N	16905
buffer solution 10 mL per vial and melphalan (melphalan hydrochloride) 50 mg per vial NA	f	1	f	1995-12-31	9002747	\N	\N	16906
buffer solution 10 mL per vial and melphalan (melphalan hydrochloride) 50 mg per vial powder for solution for injection	f	1	f	1995-12-31	9002748	\N	\N	16907
buffer solution 10 mL per vial and melphalan (melphalan hydrochloride) 50 mg per vial solution for injection	f	1	f	1995-12-31	9002749	\N	\N	16908
calcium carbonate 200 mg and magnesium hydroxide 200 mg and simethicone 25 mg chewable tablet	f	1	f	1995-12-31	9002750	\N	\N	16909
calcium carbonate 200 mg per 5 mL and magnesium hydroxide 200 mg per 5 mL and simethicone 25 mg per 5 mL oral suspension	f	1	f	1995-12-31	9002751	\N	\N	16910
calcium chloride 14.9 g per pck powder for concentrate for solution for haemodialysis	f	1	f	1995-12-31	9002752	\N	\N	16911
calcium chloride 7.45 g per pck powder for concentrate for solution for haemodialysis	f	1	f	1995-12-31	9002753	\N	\N	16912
camphor 0.38 % and menthol 0.6 % and octinoxate 7.3 % and oxybenzone 4.5 % and phenol 0.48 % cutaneous ointment	f	1	f	1995-12-31	9002754	\N	\N	16913
carbon monoxide 0.3 % and helium 10 % and nitrogen 68.7 % and oxygen 21 % medicinal gas	f	1	f	1995-12-31	9002755	\N	\N	16914
cefazolin (cefazolin sodium) 0.5 g per vial powder for solution for injection	f	1	f	1995-12-31	9002756	\N	\N	16915
cefazolin (cefazolin sodium) 10 g per vial powder for solution for injection	f	6	f	1995-12-31	9002757	\N	\N	16916
cefazolin (cefazolin sodium) 1 g per vial powder for solution for injection	f	5	f	1995-12-31	9002758	\N	\N	16917
cefoxitin (cefoxitin sodium) 1 g per vial powder for solution for injection	f	2	f	1995-12-31	9002759	\N	\N	16918
cefoxitin (cefoxitin sodium) 2 g per vial powder for solution for injection	f	2	f	1995-12-31	9002760	\N	\N	16919
chloramphenicol 5 mg per mL ophthalmic drops	f	1	f	1995-12-31	9002761	\N	\N	16920
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % cutaneous solution	f	1	f	1995-12-31	9002762	\N	\N	16921
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % medicated sponge	f	1	f	1995-12-31	9002763	\N	\N	16922
chlorhexidine gluconate 0.5 mg per mL cutaneous liquid	f	1	f	1995-12-31	9002764	\N	\N	16923
choline 2.222 mg per mL and inositol 2.222 mg per mL and nicotinamide 1.111 mg per mL and pipradrol hydrochloride 0.044 mg per mL and pyridoxine hydrochloride 0.042 mg per mL and thiamine hydrochloride 0.222 mg per mL and vitamin b2 0.111 mg per mL oral solution	f	1	t	1995-12-31	9002765	\N	\N	16924
coal tar 1 % cutaneous emulsion	f	1	f	1995-12-31	9002766	\N	\N	16925
coal tar 2 % cutaneous emulsion	f	1	f	1995-12-31	9002767	\N	\N	16926
codeine phosphate 3.3 mg per 5 mL and guaifenesin 100 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL syrup	f	2	f	1995-12-31	9002768	\N	\N	16927
colestipol hydrochloride 1 g oral tablet	f	1	f	1995-12-31	9002769	\N	\N	16928
cyclosporine 100 mg oral capsule	f	2	f	1995-12-31	9002770	\N	\N	16929
cyclosporine 100 mg per mL oral solution	f	2	f	1995-12-31	9002771	\N	\N	16930
cyclosporine 25 mg oral capsule	f	2	f	1995-12-31	9002772	\N	\N	16931
cyclosporine 50 mg oral capsule	f	2	f	1995-12-31	9002773	\N	\N	16932
dalteparin sodium 10000 unit per mL solution for injection	f	1	f	1995-12-31	9002774	\N	\N	16933
dalteparin sodium 2500 unit per 0.2 mL solution for injection	f	1	f	1995-12-31	9002775	\N	\N	16934
dalteparin sodium 5000 unit per 0.2 mL solution for injection	f	1	f	1995-12-31	9002776	\N	\N	16935
danaparoid sodium 750 unit per 0.6 mL solution for injection	f	1	f	1995-12-31	9002777	\N	\N	16936
d&c red no. 28 5 mg NA	f	1	f	1995-12-31	9002778	\N	\N	16937
dequalinium chloride 0.5 % oral liquid	f	1	f	1995-12-31	9002779	\N	\N	16938
desipramine hydrochloride 100 mg oral tablet	f	1	f	1995-12-31	9002780	\N	\N	16939
desmopressin acetate 0.1 mg oral tablet	f	3	f	1995-12-31	9002781	\N	\N	16940
desmopressin acetate 0.2 mg oral tablet	f	3	f	1995-12-31	9002782	\N	\N	16941
desmopressin acetate 15 mcg per mL solution for injection	f	1	f	1995-12-31	9002783	\N	\N	16942
dexrazoxane 250 mg per vial powder for solution for injection	f	1	f	1995-12-31	9002784	\N	\N	16943
dexrazoxane 500 mg per vial powder for solution for injection	f	1	f	1995-12-31	9002785	\N	\N	16944
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL oral liquid	f	1	f	1995-12-31	9002786	\N	\N	16945
dextromethorphan hydrobromide 20 mg per 15 mL and guaifenesin 200 mg per 15 mL oral liquid	f	1	f	1995-12-31	9002787	\N	\N	16946
dextromethorphan hydrobromide 30 mg per 23 g and pheniramine maleate 20 mg per 23 g and phenylephrine hydrochloride 10 mg per 23 g and vitamin c 50 mg per 23 g powder for oral solution	f	1	f	1995-12-31	9002788	\N	\N	16947
dextrose 10 g per 100 mL and glycine 1.04 g per 100 mL and histidine 220 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 520 mg per 100 mL and l-isoleucine 240 mg per 100 mL and l-leucine hydrochloride 310 mg per 100 mL and l-lysine hydrochloride 290 mg per 100 mL and l-phenylalanine hydrochloride 310 mg per 100 mL and l-proline 210 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 230 mg per 100 mL and methionine 290 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1995-12-31	9002789	\N	\N	16948
dextrose 20 g per 100 mL solution for injection	f	1	f	1995-12-31	9002790	\N	\N	16949
dextrose 222.7 g per pck powder for concentrate for solution for haemodialysis	f	1	f	1995-12-31	9002791	\N	\N	16950
dextrose 33.3 g per 100 mL solution for injection	f	1	f	1995-12-31	9002792	\N	\N	16951
dextrose 40 g per 100 mL solution for injection	f	1	f	1995-12-31	9002793	\N	\N	16952
dextrose 50 g per 100 mL solution for injection	f	1	f	1995-12-31	9002794	\N	\N	16953
dextrose 5 g per 100 mL and nitroglycerin 20 mg per 100 mL solution for injection	f	1	f	1995-12-31	9002795	\N	\N	16954
dextrose 5 g per 100 mL and nitroglycerin 40 mg per 100 mL solution for injection	f	1	f	1995-12-31	9002796	\N	\N	16955
dextrose 70 g per 100 mL solution for injection	f	1	f	1995-12-31	9002797	\N	\N	16956
dicyclomine hydrochloride 10 mg oral tablet	f	2	f	1995-12-31	9002798	\N	\N	16957
dicyclomine hydrochloride 20 mg oral tablet	f	2	f	1995-12-31	9002799	\N	\N	16958
dimercaprol 100 mg per mL solution for injection	f	1	f	1995-12-31	9002800	\N	\N	16959
docetaxel 20 mg per 0.5 mL solution for injection	f	1	f	1995-12-31	9002801	\N	\N	16960
docetaxel 80 mg per 2 mL solution for injection	f	1	f	1995-12-31	9002802	\N	\N	16961
doxorubicin hydrochloride 2 mg per mL intravesical solution	f	6	f	1995-12-31	9002803	\N	\N	16962
doxorubicin hydrochloride 2 mg per mL solution for injection	f	7	f	1995-12-31	9002804	\N	\N	16963
droperidol 2.5 mg per mL solution for injection	f	1	f	1995-12-31	9002805	\N	\N	16964
epirubicin hydrochloride 2 mg per mL solution for injection	f	5	f	1995-12-31	9002806	\N	\N	16965
estramustine phosphate sodium 140 mg oral capsule	f	1	f	1995-12-31	9002807	\N	\N	16966
fluconazole 150 mg oral capsule	f	17	f	1995-12-31	9002809	\N	\N	16967
fluconazole 50 mg per 5 mL powder for oral solution	f	1	f	1995-12-31	9002810	\N	\N	16968
fludrocortisone 21-acetate 0.1 mg oral tablet	f	1	f	1995-12-31	9002811	\N	\N	16969
fluorescein sodium 1 mg per strip NA	f	1	f	1995-12-31	9002814	\N	\N	16972
fluorescein sodium 2 % ophthalmic drops	f	1	f	1995-12-31	9002815	\N	\N	16973
flupentixol decanoate 100 mg per mL solution for injection	f	2	f	1995-12-31	9002816	\N	\N	16974
flupentixol decanoate 20 mg per mL solution for injection	f	1	f	1995-12-31	9002817	\N	\N	16975
flupentixol (flupentixol dihydrochloride) 0.5 mg oral tablet	f	1	f	1995-12-31	9002818	\N	\N	16976
flupentixol (flupentixol dihydrochloride) 3 mg oral tablet	f	1	f	1995-12-31	9002819	\N	\N	16977
ganciclovir (ganciclovir sodium) 500 mg per vial powder for solution for injection	f	2	f	1995-12-31	9002820	\N	\N	16978
gelatin 13.3 % and pectin 13.3 % and sodium carboxymethyl cellulose 13.3 % cutaneous paste	f	1	f	1995-12-31	9002821	\N	\N	16979
gelatin 13.3 % and pectin 13.3 % and sodium carboxymethyl cellulose 13.3 % oral paste	f	1	f	1995-12-31	9002822	\N	\N	16980
gentamicin (gentamicin sulfate) 1.6 mg per mL solution for injection	f	1	f	1995-12-31	9002823	\N	\N	16981
gentamicin (gentamicin sulfate) 1 mg per mL solution for injection	f	1	f	1995-12-31	9002824	\N	\N	16982
glutamic acid 1.107 g per 100 mL and glycine 750 mg per 100 mL and histidine 450 mg per 100 mL and l-alanine 1.49 g per 100 mL and l-arginine 1.527 g per 100 mL and l-aspartic acid 1.05 g per 100 mL and l-isoleucine 990 mg per 100 mL and l-leucine 1.5 g per 100 mL and l-lysine (lysine acetate) 1.575 g per 100 mL and l-phenylalanine 447 mg per 100 mL and l-proline 1.083 g per 100 mL and l-threonine 600 mg per 100 mL and l-valine 750 mg per 100 mL and methionine 258 mg per 100 mL and n-acetyl-l-tyrosine 405 mg per 100 mL and serine 795 mg per 100 mL and tryptophan 300 mg per 100 mL solution for injection	f	1	t	1995-12-31	9002825	\N	\N	16983
guaifenesin 200 mg per 5 mL syrup	f	4	f	1995-12-31	9002826	\N	\N	16984
helium 50 % and oxygen 50 % medicinal gas	f	2	f	1995-12-31	9002827	\N	\N	16985
hydrocortisone acetate 0.5 % and zinc sulfate 0.5 % cutaneous ointment	f	3	f	1995-12-31	9002828	\N	\N	16986
interferon beta-1b 0.3 mg per vial powder for solution for injection	f	2	f	1995-12-31	9002829	\N	\N	16987
iodixanol 550 mg per mL solution for injection	f	1	f	1995-12-31	9002830	\N	\N	16988
iodixanol 652 mg per mL solution for injection	f	1	f	1995-12-31	9002831	\N	\N	16989
ketoprofen 200 mg prolonged-release oral tablet	f	1	f	1995-12-31	9002832	\N	\N	16990
ketoprofen 50 mg suppository	f	1	f	1995-12-31	9002833	\N	\N	16991
lamivudine 10 mg per mL oral solution	f	1	f	1995-12-31	9002834	\N	\N	16992
lamivudine 150 mg oral tablet	f	3	f	1995-12-31	9002835	\N	\N	16993
levobunolol hydrochloride 0.5 % ophthalmic drops	f	3	f	1995-12-31	9002836	\N	\N	16994
levocarnitine 100 mg per mL oral liquid	f	1	f	1995-12-31	9002837	\N	\N	16995
levocarnitine 200 mg per mL solution for injection	f	1	f	1995-12-31	9002838	\N	\N	16996
levocarnitine 330 mg oral tablet	f	1	f	1995-12-31	9002839	\N	\N	16997
lidocaine hydrochloride 0.5 % cutaneous gel	f	2	f	1995-12-31	9002840	\N	\N	16998
loperamide hydrochloride 2 mg oral tablet	f	17	f	1995-12-31	9002841	\N	\N	16999
maprotiline hydrochloride 25 mg oral tablet	f	1	f	1995-12-31	9002842	\N	\N	17000
maprotiline hydrochloride 50 mg oral tablet	f	1	f	1995-12-31	9002843	\N	\N	17001
maprotiline hydrochloride 75 mg oral tablet	f	1	f	1995-12-31	9002844	\N	\N	17002
megestrol acetate 160 mg oral tablet	f	1	f	1995-12-31	9002845	\N	\N	17003
megestrol acetate 40 mg oral tablet	f	1	f	1995-12-31	9002846	\N	\N	17004
megestrol acetate 40 mg per mL oral suspension	f	1	f	1995-12-31	9002847	\N	\N	17005
meglumine ioxitalamate 513 mg per mL and sodium ioxitalamate 255 mg per mL oral solution	f	1	f	1995-12-31	9002848	\N	\N	17006
methylprednisolone acetate 20 mg per mL suspension for injection	f	1	f	1995-12-31	9002849	\N	\N	17007
moclobemide 300 mg oral tablet	f	4	f	1995-12-31	9002850	\N	\N	17008
mycophenolate mofetil 250 mg oral capsule	f	8	f	1995-12-31	9002851	\N	\N	17009
NA 75 mg per vial powder for solution for injection	f	1	f	1995-12-31	9002852	\N	\N	17010
naloxone hydrochloride 0.4 mg per mL solution for injection	f	6	f	1995-12-31	9002853	\N	\N	17011
naloxone hydrochloride 1 mg per mL solution for injection	f	2	f	1995-12-31	9002854	\N	\N	17012
nitrogen 76.5 % and oxygen 23.5 % medicinal gas	f	1	f	1995-12-31	9002855	\N	\N	17013
octinoxate 7.5 % and oxybenzone 2 % cutaneous liquid	f	1	f	1995-12-31	9002856	\N	\N	17014
ofloxacin 0.3 % ophthalmic drops	f	3	f	1995-12-31	9002857	\N	\N	17015
olsalazine sodium 250 mg oral capsule	f	1	f	1995-12-31	9002858	\N	\N	17016
pancuronium bromide 1 mg per mL solution for injection	f	2	f	1995-12-31	9002859	\N	\N	17017
pancuronium bromide 2 mg per mL solution for injection	f	2	f	1995-12-31	9002860	\N	\N	17018
phenylephrine hydrochloride 10 % ophthalmic drops	f	1	f	1995-12-31	9002861	\N	\N	17019
pilocarpine nitrate 2 % ophthalmic drops	f	1	f	1995-12-31	9002862	\N	\N	17020
piperonyl butoxide 3 % and pyrethrins 0.33 % shampoo	f	1	f	1995-12-31	9002863	\N	\N	17021
procainamide hydrochloride 100 mg per mL solution for injection	f	1	f	1995-12-31	9002864	\N	\N	17022
pyrantel (pyrantel pamoate) 125 mg per g oral paste	f	1	f	1995-12-31	9002865	\N	\N	17023
rifabutin 150 mg oral capsule	f	1	f	1995-12-31	9002866	\N	\N	17024
rocuronium bromide 10 mg per mL solution for injection	f	4	f	1995-12-31	9002867	\N	\N	17025
salmonella typhi vi capsular polysaccharide vaccine 25 mcg per 0.5 mL solution for injection	f	2	f	1995-12-31	9002868	\N	\N	17026
sevoflurane 99.97 % inhalation vapour (liquid)	f	3	f	1995-12-31	9002869	\N	\N	17027
sodium citrate 90 mg per mL and sodium lauryl sulfoacetate 9 mg per mL and sorbitol 625 mg per mL rectal liquid	f	1	f	1995-12-31	9002870	\N	\N	17028
sodium citrate 90 mg per mL and sodium lauryl sulfoacetate 9 mg per mL and sorbitol 625 mg per mL rectal solution	f	1	f	1995-12-31	9002871	\N	\N	17029
sotalol hydrochloride 160 mg oral tablet	f	10	f	1995-12-31	9002872	\N	\N	17030
sotalol hydrochloride 80 mg oral tablet	f	10	f	1995-12-31	9002873	\N	\N	17031
soybean oil 10 % emulsion for injection	f	1	f	1995-12-31	9002874	\N	\N	17032
soybean oil 20 % emulsion for injection	f	1	f	1995-12-31	9002875	\N	\N	17033
sucralfate 1 g per 5 mL oral suspension	f	1	f	1995-12-31	9002876	\N	\N	17034
tetracaine hydrochloride 0.5 % ophthalmic drops	f	2	f	1995-12-31	9002877	\N	\N	17035
loratadine 1 mg per mL syrup	f	1	f	2000-04-06	9003483	\N	\N	17641
tetracaine hydrochloride 1 % ophthalmic drops	f	1	f	1995-12-31	9002878	\N	\N	17036
tinzaparin sodium 10000 unit per mL solution for injection	f	4	f	1995-12-31	9002879	\N	\N	17037
tranexamic acid 100 mg per mL solution for injection	f	4	f	1995-12-31	9002880	\N	\N	17038
tranexamic acid 500 mg oral tablet	f	3	f	1995-12-31	9002881	\N	\N	17039
tretinoin 10 mg oral capsule	f	1	f	1995-12-31	9002882	\N	\N	17040
triclosan 0.1 % lotion	f	2	f	1995-12-31	9002883	\N	\N	17041
vincristine sulfate 1 mg per mL solution for injection	f	2	f	1995-12-31	9002884	\N	\N	17042
acarbose 100 mg oral tablet	f	1	f	1996-02-02	9002885	\N	\N	17043
acarbose 50 mg oral tablet	f	1	f	1996-02-02	9002886	\N	\N	17044
cholestyramine resin 4 g per 9 g powder for oral suspension	f	1	f	1996-03-15	9002887	\N	\N	17045
allantoin 0.2 % and chloroxylenol 0.2 % cutaneous cream	f	1	f	1996-07-22	9002888	\N	\N	17046
famotidine 10 mg oral tablet	f	5	f	1996-07-23	9002889	\N	\N	17047
alprostadil 23.2 mcg per vial and water 99.1 % NA	f	1	f	1996-07-30	9002890	\N	\N	17048
alprostadil 23.2 mcg per vial and water 99.1 % powder for solution for injection	f	1	f	1996-07-30	9002891	\N	\N	17049
alprostadil 23.2 mcg per vial and water 99.1 % solution for injection	f	1	f	1996-07-30	9002892	\N	\N	17050
chromium (chromic chloride) 4 mcg per mL and copper (copper sulfate) 0.4 mg per mL and iodine (sodium iodide) 25 mcg per mL and manganese (manganese sulfate) 0.1 mg per mL and selenium (selenious acid) 20 mcg per mL and zinc (zinc sulfate) 1 mg per mL solution for injection	f	1	t	1996-07-30	9002893	\N	\N	17051
dextrose 16.6 g per 100 mL and glycine 515 mg per 100 mL and histidine 240 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 575 mg per 100 mL and l-isoleucine 300 mg per 100 mL and l-leucine 365 mg per 100 mL and l-phenylalanine 280 mg per 100 mL and l-proline 340 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 290 mg per 100 mL and lysine (l-lysine hydrochloride) 290 mg per 100 mL and methionine 200 mg per 100 mL and serine 250 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1996-07-30	9002894	\N	\N	17052
labetalol hydrochloride 100 mg oral tablet	f	2	f	1996-07-30	9002895	\N	\N	17053
stavudine 15 mg oral capsule	f	1	f	1996-07-30	9002896	\N	\N	17054
stavudine 20 mg oral capsule	f	1	f	1996-07-30	9002897	\N	\N	17055
stavudine 30 mg oral capsule	f	1	f	1996-07-30	9002898	\N	\N	17056
stavudine 40 mg oral capsule	f	1	f	1996-07-30	9002899	\N	\N	17057
water 99.1 % solution for injection	f	1	f	1996-07-30	9002900	\N	\N	17058
acetylcholine chloride 10 mg per mL powder for ophthalmic drops	f	1	f	1996-08-14	9002901	\N	\N	17059
sodium acetate 328 mg per mL solution for injection	f	2	f	1996-08-14	9002902	\N	\N	17060
vancomycin (vancomycin hydrochloride) 5 g per vial powder for solution for injection	f	5	f	1996-08-14	9002903	\N	\N	17061
vasopressin 20 unit per mL solution for injection	f	2	f	1996-08-14	9002904	\N	\N	17062
esmolol hydrochloride 10 mg per mL solution for injection	f	2	f	1996-08-16	9002905	\N	\N	17063
dimenhydrinate 3 mg per mL syrup	f	1	f	1996-08-23	9002906	\N	\N	17064
goserelin (goserelin acetate) 10.8 mg implant	f	1	f	1996-08-28	9002907	\N	\N	17065
benzoyl peroxide 5 % cutaneous gel	f	7	f	1996-08-29	9002908	\N	\N	17066
anastrozole 1 mg oral tablet	f	21	f	1996-08-30	9002909	\N	\N	17067
codeine phosphate 3.3 mg per 5 mL and guaifenesin 100 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL oral liquid	f	1	f	1996-08-30	9002910	\N	\N	17068
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 89.99 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.06 g per l and sodium chloride 262.98 g per l solution for haemodialysis	f	1	t	1996-09-03	9002911	\N	\N	17069
acetic acid 5.4 g per l and calcium chloride 2.5 g per l and dextrose 112.53 g per l and magnesium chloride 3.21 g per l and potassium chloride 8.39 g per l and sodium chloride 262.98 g per l solution for haemodialysis	f	1	t	1996-09-03	9002912	\N	\N	17070
acetaminophen 650 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck oral powder	f	2	f	1996-09-04	9002913	\N	\N	17071
iron (iron dextran complex) 50 mg per mL solution for injection	f	1	f	1996-09-06	9002914	\N	\N	17072
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % swab	f	2	f	1996-09-09	9002915	\N	\N	17073
alcohol anhydrous 5 % and dextrose 5 % solution for injection	f	1	f	1996-09-10	9002916	\N	\N	17074
atovaquone 750 mg per 5 mL oral suspension	f	1	f	1996-09-10	9002917	\N	\N	17075
calcium chloride 33 mg per 100 mL and potassium chloride 30 mg per 100 mL and sodium chloride 860 mg per 100 mL solution for injection	f	1	f	1996-09-10	9002918	\N	\N	17076
citric acid 37 mg per 100 mL and heparin sodium 200 unit per 100 mL and sodium chloride 900 mg per 100 mL and sodium phosphate dibasic 430 mg per 100 mL solution for injection	f	1	f	1996-09-10	9002919	\N	\N	17077
dextran 40 10 % and dextrose 5 % solution for injection	f	1	f	1996-09-10	9002920	\N	\N	17078
dextran 70 6 % and sodium chloride 0.9 % solution for injection	f	1	f	1996-09-10	9002921	\N	\N	17079
dextrose 5 g per 100 mL and heparin sodium 10000 unit per 100 mL solution for injection	f	1	f	1996-09-10	9002922	\N	\N	17080
dextrose 5 g per 100 mL and heparin sodium 4000 unit per 100 mL solution for injection	f	1	f	1996-09-10	9002923	\N	\N	17081
dextrose 5 g per 100 mL and magnesium chloride 30 mg per 100 mL and potassium chloride 37 mg per 100 mL and sodium acetate 370 mg per 100 mL and sodium chloride 530 mg per 100 mL and sodium gluconate 500 mg per 100 mL solution for injection	f	1	t	1996-09-10	9002924	\N	\N	17082
magnesium chloride 30 mg per 100 mL and potassium chloride 37 mg per 100 mL and potassium phosphate monobasic 820 mcg per 100 mL and sodium acetate 370 mg per 100 mL and sodium chloride 530 mg per 100 mL and sodium gluconate 500 mg per 100 mL and sodium phosphate dibasic 12 mg per 100 mL solution for injection	f	1	t	1996-09-10	9002925	\N	\N	17083
octinoxate 7.5 % and oxybenzone 3.5 % cutaneous cream	f	1	f	1996-09-10	9002926	\N	\N	17084
sodium bicarbonate 650 g per pck powder for concentrate for solution for haemodialysis	f	1	f	1996-09-10	9002927	\N	\N	17085
famciclovir 125 mg oral tablet	f	6	f	1996-09-11	9002928	\N	\N	17086
famciclovir 250 mg oral tablet	f	6	f	1996-09-11	9002929	\N	\N	17087
amcinonide 0.1 % cutaneous cream	f	3	f	1996-09-12	9002930	\N	\N	17088
amcinonide 0.1 % lotion	f	2	f	1996-09-12	9002931	\N	\N	17089
gadodiamide 287 mg per mL solution for injection	f	1	f	1997-03-25	9003071	\N	\N	17229
dolichovespula arenaria venom protein extract 1.1 mg per vial powder for solution for injection	f	1	f	1996-09-16	9002932	\N	\N	17090
dextromethorphan hydrobromide 7.5 mg per 5 mL syrup	f	2	f	1996-09-18	9002933	\N	\N	17091
benzocaine 14 % and butamben 2 % and tetracaine hydrochloride 2 % cutaneous liquid	f	1	f	1996-09-19	9002934	\N	\N	17092
cytarabine 100 mg per mL solution for injection	f	2	f	1996-09-23	9002935	\N	\N	17093
ritonavir 80 mg per mL oral solution	f	1	f	1996-09-25	9002936	\N	\N	17094
glycerine 2.6 % irrigation solution	f	1	f	1996-09-26	9002937	\N	\N	17095
dolichovespula maculata venom protein extract 1.1 mg per vial powder for solution for injection	f	1	f	1996-09-30	9002938	\N	\N	17096
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002993	\N	\N	17097
alanine 2.76 g per 100 mL and arginine 1.96 g per 100 mL and dl-methionine 0.76 g per 100 mL and glutamic acid 1.02 g per 100 mL and glycine 2.06 g per 100 mL and histidine 1.18 g per 100 mL and isoleucine 1.08 g per 100 mL and l-aspartic acid 0.6 g per 100 mL and leucine 1.08 g per 100 mL and lysine (lysine acetate) 1.35 g per 100 mL and phenylalanine 1 g per 100 mL and proline 1.34 g per 100 mL and serine 1.02 g per 100 mL and threonine 0.98 g per 100 mL and tryptophan 0.32 g per 100 mL and tyrosine 0.05 g per 100 mL and valine 1.44 g per 100 mL solution for injection	f	1	t	1996-10-09	9002939	\N	\N	17098
chloral hydrate 500 mg oral capsule	f	1	f	1996-10-10	9002940	\N	\N	17099
cyproheptadine hydrochloride 4 mg oral tablet	f	3	f	1996-10-16	9002941	\N	\N	17100
lactulose 667 mg per mL syrup	f	2	f	1996-10-16	9002942	\N	\N	17101
trihexyphenidyl hydrochloride 0.4 mg per mL oral solution	f	1	f	1996-10-16	9002943	\N	\N	17102
adenine 17.3 mg per 63 mL and citric acid 189 mg per 63 mL and dextrose 2 g per 63 mL and sodium citrate 1.66 g per 63 mL and sodium phosphate monobasic 140 mg per 63 mL solution for injection	f	1	f	1996-10-17	9002944	\N	\N	17103
sodium chloride 5 mL and somatropin 3.3 mg powder for solution for injection	f	1	f	1996-10-17	9002945	\N	\N	17104
coagulation factor ix (human) 720 unit per 5 mL powder for solution for injection	f	1	f	1996-10-18	9002946	\N	\N	17105
dobutamine (dobutamine hydrochloride) 12.5 mg per mL solution for injection	f	4	f	1996-10-24	9002947	\N	\N	17106
leucovorin (leucovorin calcium) 5 mg oral tablet	f	1	f	1996-10-25	9002948	\N	\N	17107
abciximab 2 mg per mL solution for injection	f	1	f	1996-10-30	9002949	\N	\N	17108
chlorhexidine gluconate 0.12 % mouthwash	f	7	f	1996-10-30	9002950	\N	\N	17109
chlorhexidine gluconate 0.12 % oral liquid	f	4	f	1996-10-30	9002951	\N	\N	17110
amylase 11200 unit and lipase 10000 unit and protease 730 unit oral capsule	f	1	f	1996-10-31	9002952	\N	\N	17111
benzoyl peroxide 50 mg per g and erythromycin 30 mg per g cutaneous gel	f	1	f	1996-11-05	9002953	\N	\N	17112
dihydroergotamine mesylate 4 mg per mL nasal spray	f	1	f	1996-11-05	9002954	\N	\N	17113
desoximetasone 0.05 % cutaneous cream	f	2	f	1996-11-07	9002955	\N	\N	17114
ketotifen fumarate 1 mg per 5 mL syrup	f	1	f	1996-11-07	9002956	\N	\N	17115
meropenem 500 mg per vial powder for solution for injection	f	2	f	1996-11-08	9002957	\N	\N	17116
hepatitis a vaccine, inactivated 50 unit per mL suspension for injection	f	1	f	1996-11-10	9002958	\N	\N	17117
alpha 1-proteinase inhibitor (human) 1000 mg per vial powder for solution for injection	f	1	f	1996-11-11	9002959	\N	\N	17118
antithrombin iii (human) 1000 unit per vial powder for solution for injection	f	1	f	1996-11-11	9002960	\N	\N	17119
desonide 0.05 % cutaneous cream	f	2	f	1996-11-11	9002961	\N	\N	17120
meropenem 1 g per vial powder for solution for injection	f	2	f	1996-11-12	9002962	\N	\N	17121
ondansetron (ondansetron hydrochloride dihydrate) 4 mg per 5 mL oral solution	f	2	f	1996-11-13	9002963	\N	\N	17122
NA 2.5 mg oral tablet	f	1	f	1996-11-15	9002964	\N	\N	17123
raltitrexed (raltitrexed disodium) 2 mg per vial powder for solution for injection	f	1	f	1996-11-18	9002965	\N	\N	17124
ioversol 51 % solution for injection	f	2	f	1996-11-20	9002966	\N	\N	17125
acetic acid 10.8 g per l and calcium chloride 2.49 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1996-11-25	9002967	\N	\N	17126
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-11-25	9002968	\N	\N	17127
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-11-25	9002969	\N	\N	17128
nafarelin (nafarelin acetate) 2 mg per mL nasal spray	f	1	f	1996-11-25	9002970	\N	\N	17129
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck oral powder	f	1	f	1996-11-26	9002971	\N	\N	17130
acetaminophen 500 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck oral powder	f	1	f	1996-11-26	9002972	\N	\N	17131
acetaminophen 500 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck powder for oral solution	f	1	f	1996-11-26	9002973	\N	\N	17132
gentamicin (gentamicin sulfate) 3 mg per mL otic drops	f	2	f	1996-11-26	9002974	\N	\N	17133
benzydamine hydrochloride 1.5 mg per mL gargle/mouthwash	f	2	f	1996-12-02	9002975	\N	\N	17134
benzydamine hydrochloride 1.5 mg per mL mouthwash	f	3	f	1996-12-02	9002976	\N	\N	17135
benzydamine hydrochloride 1.5 mg per mL oral solution	f	2	f	1996-12-02	9002977	\N	\N	17136
orphenadrine citrate 30 mg per mL solution for injection	f	1	f	1996-12-02	9002978	\N	\N	17137
desoximetasone 0.05 % cutaneous gel	f	2	f	1996-12-04	9002979	\N	\N	17138
ribavirin 6 g per vial powder for nebuliser solution	f	1	f	1996-12-05	9002980	\N	\N	17139
tetrabenazine 25 mg oral tablet	f	4	f	1996-12-09	9002981	\N	\N	17140
albumin (human) 0.03 % solution for injection	f	3	f	1996-12-16	9002982	\N	\N	17141
benoxinate hydrochloride 0.4 % and fluorescein sodium 0.25 % ophthalmic drops	f	2	f	1996-12-18	9002983	\N	\N	17142
desflurane 100 % inhalation vapour (liquid)	f	1	f	1996-12-23	9002984	\N	\N	17143
dextrose 50 mg per mL and magnesium sulfate 20 mg per mL solution for injection	f	1	f	1996-12-30	9002985	\N	\N	17144
dibucaine hydrochloride 5 mg and esculin 10 mg and framycetin sulfate 10 mg and hydrocortisone (hydrocortisone acetate) 5 mg suppository	f	1	f	1996-12-30	9002986	\N	\N	17145
soybean oil 30 % emulsion for injection	f	1	f	1996-12-30	9002987	\N	\N	17146
acetic acid 10.8 g per l and calcium chloride 4.99 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002988	\N	\N	17147
acetic acid 10.8 g per l and calcium chloride 4.99 g per l and dextrose 67.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002989	\N	\N	17148
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002990	\N	\N	17149
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002991	\N	\N	17150
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 10 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002992	\N	\N	17151
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 45 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002994	\N	\N	17152
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 67.5 g per l and magnesium chloride 3.21 g per l and potassium chloride 5.02 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002995	\N	\N	17153
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 67.5 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002996	\N	\N	17154
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9002997	\N	\N	17155
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.06 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	1996-12-31	9002998	\N	\N	17156
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 2.14 g per l and potassium chloride 5.02 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	1996-12-31	9002999	\N	\N	17157
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1996-12-31	9003000	\N	\N	17158
acetic acid 10.8 g per l and calcium chloride 7.48 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 10 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	1996-12-31	9003001	\N	\N	17159
acetic acid 10.8 g per l and calcium chloride 7.48 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1996-12-31	9003002	\N	\N	17160
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 89.99 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 268.24 g per l solution for haemodialysis	f	1	t	1996-12-31	9003003	\N	\N	17161
adapalene 0.1 % cutaneous gel	f	1	f	1996-12-31	9003004	\N	\N	17162
alteplase 100 mg and water 100 mL powder for solution for injection	f	1	f	1996-12-31	9003005	\N	\N	17163
alteplase 100 mg and water 100 mL solution for injection	f	1	f	1996-12-31	9003006	\N	\N	17164
bacitracin zinc 500 unit per g and polymyxin b sulfate 10000 unit per g cutaneous ointment	f	5	f	1996-12-31	9003007	\N	\N	17165
benzoyl peroxide 5 % cutaneous liquid	f	1	f	1996-12-31	9003008	\N	\N	17166
benzoyl peroxide 5 % lotion	f	9	f	1996-12-31	9003009	\N	\N	17167
bicalutamide 50 mg oral tablet	f	14	f	1996-12-31	9003010	\N	\N	17168
bismuth subsalicylate 262 mg oral tablet	f	7	f	1996-12-31	9003011	\N	\N	17169
buspirone hydrochloride 10 mg oral tablet	f	7	f	1996-12-31	9003012	\N	\N	17170
chlorhexidine gluconate 4 % medicated sponge	f	1	f	1996-12-31	9003013	\N	\N	17171
chromium (chromic chloride) 4 mcg per mL and copper (copper sulfate) 0.4 mg per mL and manganese (manganese sulfate) 0.1 mg per mL and zinc (zinc sulfate) 1 mg per mL solution for injection	f	1	f	1996-12-31	9003014	\N	\N	17172
desipramine (desipramine hydrochloride) 100 mg oral tablet	f	1	f	1996-12-31	9003015	\N	\N	17173
desipramine (desipramine hydrochloride) 10 mg oral tablet	f	1	f	1996-12-31	9003016	\N	\N	17174
desipramine (desipramine hydrochloride) 25 mg oral tablet	f	1	f	1996-12-31	9003017	\N	\N	17175
desipramine (desipramine hydrochloride) 50 mg oral tablet	f	1	f	1996-12-31	9003018	\N	\N	17176
desipramine (desipramine hydrochloride) 75 mg oral tablet	f	1	f	1996-12-31	9003019	\N	\N	17177
dextromethorphan hydrobromide 10 mg per 5 mL and guaifenesin 100 mg per 5 mL oral liquid	f	2	f	1996-12-31	9003020	\N	\N	17178
dextrose 10 g per 100 mL and glycine 515 mg per 100 mL and histidine 240 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 575 mg per 100 mL and l-isoleucine 300 mg per 100 mL and l-leucine 365 mg per 100 mL and l-phenylalanine 280 mg per 100 mL and l-proline 340 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 290 mg per 100 mL and lysine (l-lysine hydrochloride) 290 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 200 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and serine 250 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1996-12-31	9003021	\N	\N	17179
cetrimide 150 mg per 100 g and lidocaine 15 g per 100 g cutaneous spray	f	1	f	1997-03-26	9003072	\N	\N	17230
cetrimide 150 mg per 100 g and lidocaine 15 g per 100 g oromucosal spray	f	1	f	1997-03-26	9003073	\N	\N	17231
lovastatin 20 mg oral tablet	f	11	f	1997-03-27	9003074	\N	\N	17232
lovastatin 40 mg oral tablet	f	11	f	1997-03-27	9003075	\N	\N	17233
dequalinium chloride 0.25 mg lozenge	f	1	f	1997-04-01	9003076	\N	\N	17234
dextrose 10 g per 100 mL and glycine 515 mg per 100 mL and histidine 240 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 575 mg per 100 mL and l-isoleucine 300 mg per 100 mL and l-leucine 365 mg per 100 mL and l-phenylalanine 280 mg per 100 mL and l-proline 340 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 290 mg per 100 mL and lysine (l-lysine hydrochloride) 290 mg per 100 mL and methionine 200 mg per 100 mL and serine 250 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1996-12-31	9003022	\N	\N	17180
dextrose 16.6 g per 100 mL and glycine 515 mg per 100 mL and histidine 240 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 575 mg per 100 mL and l-isoleucine 300 mg per 100 mL and l-leucine 365 mg per 100 mL and l-phenylalanine 280 mg per 100 mL and l-proline 340 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 290 mg per 100 mL and lysine (l-lysine hydrochloride) 290 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 200 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and serine 250 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1996-12-31	9003023	\N	\N	17181
dextrose 25 g per 100 mL and glycine 515 mg per 100 mL and histidine 240 mg per 100 mL and l-alanine 1.04 g per 100 mL and l-arginine 575 mg per 100 mL and l-isoleucine 300 mg per 100 mL and l-leucine 365 mg per 100 mL and l-phenylalanine 280 mg per 100 mL and l-proline 340 mg per 100 mL and l-threonine 210 mg per 100 mL and l-tyrosine 20 mg per 100 mL and l-valine 290 mg per 100 mL and lysine (l-lysine hydrochloride) 290 mg per 100 mL and magnesium chloride 51 mg per 100 mL and methionine 200 mg per 100 mL and potassium phosphate dibasic 261 mg per 100 mL and serine 250 mg per 100 mL and sodium acetate 340 mg per 100 mL and sodium chloride 58.5 mg per 100 mL and tryptophan 90 mg per 100 mL solution for injection	f	1	t	1996-12-31	9003024	\N	\N	17182
dimenhydrinate 15 mg per 5 mL oral liquid	f	1	f	1996-12-31	9003025	\N	\N	17183
dorzolamide (dorzolamide hydrochloride) 2 % ophthalmic drops	f	3	f	1996-12-31	9003026	\N	\N	17184
fluocinolone acetonide 0.01 % cutaneous solution	f	1	f	1996-12-31	9003027	\N	\N	17185
fluocinolone acetonide 0.025 % cutaneous ointment	f	1	f	1996-12-31	9003028	\N	\N	17186
hepatitis a vaccine, inactivated 1440 unit per mL suspension for injection	f	1	f	1996-12-31	9003029	\N	\N	17187
isoflurane 100 % inhalation vapour (liquid)	f	1	f	1996-12-31	9003030	\N	\N	17188
magnesium chloride 20.5 g per 4.5 l powder for concentrate for solution for haemodialysis	f	1	f	1996-12-31	9003031	\N	\N	17189
methotrimeprazine (methotrimeprazine maleate) 25 mg oral tablet	f	3	f	1996-12-31	9003032	\N	\N	17190
octreotide (octreotide acetate) 200 mcg per mL solution for injection	f	3	f	1996-12-31	9003033	\N	\N	17191
saquinavir (saquinavir mesylate) 200 mg oral capsule	f	1	f	1996-12-31	9003034	\N	\N	17192
tetrahydrozoline hydrochloride 0.05 % and zinc sulfate 0.25 % ophthalmic drops	f	4	f	1996-12-31	9003035	\N	\N	17193
triclosan 0.25 % cutaneous solution	f	3	f	1996-12-31	9003036	\N	\N	17194
triclosan 0.32 % cutaneous liquid	f	2	f	1996-12-31	9003037	\N	\N	17195
trolamine salicylate 10 % cutaneous cream	f	1	f	1996-12-31	9003038	\N	\N	17196
dermatophagoides farinae 30000 unit per mL solution for injection	f	1	f	1997-01-03	9003039	\N	\N	17197
dermatophagoides pteronyssinus 30000 unit per mL solution for injection	f	1	f	1997-01-03	9003040	\N	\N	17198
bromocriptine (bromocriptine mesylate) 5 mg oral capsule	f	4	f	1997-01-08	9003041	\N	\N	17199
acetaminophen 1 g per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and doxylamine succinate 12.5 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL oral liquid	f	1	f	1997-01-09	9003042	\N	\N	17200
desonide 0.05 % cutaneous ointment	f	2	f	1997-01-14	9003043	\N	\N	17201
pentoxifylline 400 mg prolonged-release oral tablet	f	1	f	1997-01-14	9003044	\N	\N	17202
flutamide 250 mg oral tablet	f	3	f	1997-01-16	9003045	\N	\N	17203
albumin (human) 250 mg per mL solution for injection	f	1	f	1997-01-17	9003046	\N	\N	17204
albumin (human) 50 mg per mL solution for injection	f	1	f	1997-01-17	9003047	\N	\N	17205
amcinonide 0.1 % cutaneous ointment	f	2	f	1997-01-20	9003048	\N	\N	17206
cefaclor 250 mg oral capsule	f	3	f	1997-01-20	9003049	\N	\N	17207
cefaclor 500 mg oral capsule	f	3	f	1997-01-20	9003050	\N	\N	17208
NA 20 mg per 1 mL suspension for injection vial	f	1	f	1997-01-20	9003051	\N	\N	17209
amylase 56400 unit and lipase 10440 unit and protease 57100 unit oral tablet	f	1	f	1997-01-23	9003052	\N	\N	17210
dibucaine hydrochloride 5 mg and esculin 10 mg and framycetin sulfate 10 mg and hydrocortisone 5 mg suppository	f	3	f	1997-01-23	9003053	\N	\N	17211
penicillin g (penicillin g sodium) 10000000 unit per vial powder for solution for injection	f	1	f	1997-01-23	9003054	\N	\N	17212
penicillin g (penicillin g sodium) 1000000 unit per vial powder for solution for injection	f	1	f	1997-01-23	9003055	\N	\N	17213
penicillin g (penicillin g sodium) 5000000 unit per vial powder for solution for injection	f	2	f	1997-01-23	9003056	\N	\N	17214
gramicidin 0.25 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous cream	f	2	f	1997-01-27	9003057	\N	\N	17215
leuprolide acetate 22.5 mg per vial powder for prolonged-release suspension for injection	f	1	f	1997-01-29	9003058	\N	\N	17216
dibucaine hydrochloride 5 mg per g and esculin 10 mg per g and framycetin sulfate 10 mg per g and hydrocortisone (hydrocortisone acetate) 5 mg per g rectal ointment	f	1	f	1997-02-03	9003059	\N	\N	17217
albumin (human) 25 % solution for injection	f	3	f	1997-02-10	9003060	\N	\N	17218
buserelin (buserelin acetate) 6.3 mg per imp implant	f	1	f	1997-02-10	9003061	\N	\N	17219
NA 200 mg oral capsule	f	1	f	1997-02-17	9003062	\N	\N	17220
tenoxicam 20 mg oral tablet	f	1	f	1997-02-21	9003063	\N	\N	17221
tinzaparin sodium 20000 unit per mL solution for injection	f	4	f	1997-02-28	9003064	\N	\N	17222
oxygen 99.99 % medicinal gas	f	1	f	1997-03-11	9003065	\N	\N	17223
interferon alfa-2b 10000000 unit per vial and water 1 mL per vial powder for solution for injection	f	1	f	1997-03-12	9003066	\N	\N	17224
interferon alfa-2b 10000000 unit per vial and water 1 mL per vial solution for injection	f	1	f	1997-03-12	9003067	\N	\N	17225
pramoxine hydrochloride 1 % and zinc sulfate monohydrate 0.5 % rectal ointment	f	1	f	1997-03-17	9003068	\N	\N	17226
desoximetasone 0.25 % cutaneous cream	f	2	f	1997-03-24	9003069	\N	\N	17227
desoximetasone 0.25 % cutaneous ointment	f	1	f	1997-03-24	9003070	\N	\N	17228
labetalol hydrochloride 200 mg oral tablet	f	2	f	1997-04-01	9003077	\N	\N	17235
pilocarpine hydrochloride 5 mg oral tablet	f	2	f	1997-04-01	9003078	\N	\N	17236
silicone 20 % cutaneous cream	f	1	f	1997-04-01	9003079	\N	\N	17237
tazarotene 0.05 % cutaneous gel	f	1	f	1997-04-10	9003080	\N	\N	17238
tazarotene 0.1 % cutaneous gel	f	1	f	1997-04-10	9003081	\N	\N	17239
ondansetron (ondansetron hydrochloride dihydrate) 8 mg oral tablet	f	13	f	1997-04-14	9003082	\N	\N	17240
dextromethorphan hydrobromide 30 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck powder for oral solution	f	1	f	1997-04-15	9003083	\N	\N	17241
immune globulin (human) 18 % solution for injection	f	2	f	1997-04-21	9003084	\N	\N	17242
praziquantel 600 mg oral tablet	f	1	f	1997-04-24	9003085	\N	\N	17243
ropivacaine hydrochloride 10 mg per mL solution for injection	f	2	f	1997-04-30	9003086	\N	\N	17244
ropivacaine hydrochloride 2 mg per mL solution for injection	f	1	f	1997-04-30	9003087	\N	\N	17245
ropivacaine hydrochloride 5 mg per mL solution for injection	f	2	f	1997-04-30	9003088	\N	\N	17246
carbon monoxide 0.1 % and helium 10 % and nitrogen 68.9 % and oxygen 21 % medicinal gas	f	1	f	1997-05-02	9003089	\N	\N	17247
zuclopenthixol acetate 50 mg per mL solution for injection	f	1	f	1997-05-02	9003090	\N	\N	17248
zuclopenthixol decanoate 200 mg per mL solution for injection	f	1	f	1997-05-02	9003091	\N	\N	17249
zuclopenthixol (zuclopenthixol hydrochloride) 10 mg oral tablet	f	1	f	1997-05-02	9003092	\N	\N	17250
zuclopenthixol (zuclopenthixol hydrochloride) 25 mg oral tablet	f	1	f	1997-05-02	9003093	\N	\N	17251
hamamelis virginiana 50 % and phenylephrine hydrochloride 0.25 % cutaneous gel	f	1	f	1997-05-05	9003094	\N	\N	17252
hamamelis virginiana 50 % and phenylephrine hydrochloride 0.25 % rectal gel	f	1	f	1997-05-05	9003095	\N	\N	17253
albumin (human) 5 % solution for injection	f	3	f	1997-05-06	9003096	\N	\N	17254
doxorubicin hydrochloride 150 mg per vial powder for solution for injection	f	1	f	1997-05-08	9003097	\N	\N	17255
cisplatin 1 mg per mL solution for injection	f	4	f	1997-05-09	9003098	\N	\N	17256
lidocaine hydrochloride 0.5 % lotion	f	1	f	1997-05-12	9003099	\N	\N	17257
methylene blue 0.2 mg per mL and naphazoline hydrochloride 0.5 mg per mL ophthalmic drops	f	1	f	1997-05-13	9003100	\N	\N	17258
cefadroxil 500 mg oral capsule	f	2	f	1999-08-31	9003412	\N	\N	17259
tobramycin (tobramycin sulfate) 40 mg per mL solution for injection	f	2	f	1997-05-21	9003101	\N	\N	17260
octinoxate 6 % and oxybenzone 3 % lotion	f	1	f	1997-05-30	9003102	\N	\N	17261
buspirone hydrochloride 5 mg oral tablet	f	1	f	1997-06-05	9003103	\N	\N	17262
loxapine (loxapine hydrochloride) 50 mg per mL solution for injection	f	1	f	1997-06-13	9003104	\N	\N	17263
loxapine (loxapine succinate) 5 mg oral tablet	f	3	f	1997-06-13	9003105	\N	\N	17264
miconazole nitrate 2 % cutaneous spray	f	1	f	1997-06-16	9003106	\N	\N	17265
octinoxate 7 % and oxybenzone 3 % lotion	f	1	f	1997-06-16	9003107	\N	\N	17266
dinoprostone 10 mg per insert vaginal delivery system	f	1	f	1997-06-17	9003108	\N	\N	17267
topotecan (topotecan hydrochloride) 4 mg per vial powder for solution for injection	f	6	f	1997-06-18	9003109	\N	\N	17268
diphenhydramine hydrochloride 12.5 mg per 5 mL and menthol 22 mg per 5 mL syrup	f	1	f	1997-06-23	9003110	\N	\N	17269
acetaminophen 500 mg and methocarbamol 400 mg oral tablet	f	10	f	1997-07-07	9003111	\N	\N	17270
acetylsalicylic acid 500 mg and methocarbamol 400 mg oral tablet	f	5	f	1997-07-07	9003112	\N	\N	17271
formoterol fumarate 12 mcg inhalation powder capsule	f	1	f	1997-07-08	9003113	\N	\N	17272
hepatitis b immune globulin human 220 unit per mL solution for injection	f	2	f	1997-07-08	9003114	\N	\N	17273
hydrocortisone 10 mg per mL and neomycin (neomycin sulfate) 3.5 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL otic drops	f	1	f	1997-07-08	9003115	\N	\N	17274
loxapine (loxapine succinate) 25 mg oral tablet	f	3	f	1997-07-08	9003116	\N	\N	17275
tetanus immune globulin (human) 250 unit solution for injection	f	1	f	1997-07-08	9003117	\N	\N	17276
fexofenadine hydrochloride 60 mg oral tablet	f	1	f	1997-07-10	9003118	\N	\N	17277
lidocaine 9.6 % cutaneous spray	f	2	f	1997-07-15	9003119	\N	\N	17278
ipratropium bromide 0.2 mg per mL and salbutamol (salbutamol sulfate) 1 mg per mL inhalation solution	f	1	f	1997-07-25	9003120	\N	\N	17279
sodium carboxymethyl cellulose 0.5 % ophthalmic drops	f	3	f	1997-07-25	9003121	\N	\N	17280
epoprostenol (epoprostenol sodium) 0.5 mg per vial powder for solution for injection	f	1	f	1997-07-28	9003122	\N	\N	17281
epoprostenol (epoprostenol sodium) 1.5 mg per vial powder for solution for injection	f	1	f	1997-07-28	9003123	\N	\N	17282
glycine 94 mg per vial and sodium chloride 73.5 mg per vial and water 50 mL per vial solution for injection	f	1	f	1997-07-28	9003124	\N	\N	17283
itraconazole 10 mg per mL oral solution	f	1	f	1997-07-28	9003125	\N	\N	17284
doxorubicin hydrochloride 50 mg per vial powder for solution for injection	f	1	f	1997-07-30	9003126	\N	\N	17285
acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	7	f	1997-08-06	9003127	\N	\N	17286
acetaminophen 160 mg per 5 mL and chlorpheniramine maleate 1 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral suspension	f	2	f	1997-08-11	9003128	\N	\N	17287
acetaminophen 160 mg per 5 mL and chlorpheniramine maleate 1 mg per 5 mL and dextromethorphan hydrobromide 7.5 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral suspension	f	4	f	1997-08-12	9003129	\N	\N	17288
chorionic gonadotropin 10000 unit per vial and water 10 mL per vial kit	f	1	f	1997-08-13	9003130	\N	\N	17289
chorionic gonadotropin 10000 unit per vial and water 10 mL per vial powder for solution for injection	f	1	f	1997-08-13	9003131	\N	\N	17290
chorionic gonadotropin 10000 unit per vial and water 10 mL per vial solution for injection	f	1	f	1997-08-13	9003132	\N	\N	17291
dextrose 10 g per 100 mL solution for injection	f	1	f	1997-08-13	9003133	\N	\N	17292
loxapine (loxapine succinate) 50 mg oral tablet	f	3	f	1998-03-30	9003240	\N	\N	17399
ondansetron (ondansetron hydrochloride dihydrate) 4 mg oral tablet	f	12	f	1998-03-30	9003241	\N	\N	17400
ticlopidine hydrochloride 250 mg oral tablet	f	2	f	1998-03-30	9003242	\N	\N	17401
alfacalcidol 2 mcg per mL oral drops	f	1	f	2000-12-04	9003545	\N	\N	17703
diphtheria toxoid 15 lf per 0.5 mL and filamentous haemagglutinin 20 mcg per 0.5 mL and fimbriae 5 mcg per 0.5 mL and haemophilus influenzae type b-prp 10 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 20 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL powder for solution for injection	f	1	t	1997-08-14	9003134	\N	\N	17293
diphtheria toxoid 15 lf per 0.5 mL and filamentous haemagglutinin 20 mcg per 0.5 mL and fimbriae 5 mcg per 0.5 mL and haemophilus influenzae type b-prp 10 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 20 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL solution for injection	f	1	t	1997-08-14	9003135	\N	\N	17294
diphtheria toxoid 15 lf per 0.5 mL and filamentous haemagglutinin 20 mcg per 0.5 mL and fimbriae 5 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 20 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL suspension for injection	f	1	t	1997-08-14	9003136	\N	\N	17295
dextromethorphan hydrobromide (dextromethorphan polistirex) 30 mg per 5 mL syrup	f	1	f	1997-08-15	9003137	\N	\N	17296
dyclonine hydrochloride 1.2 mg lozenge	f	1	f	1997-08-15	9003138	\N	\N	17297
nilutamide 50 mg oral tablet	f	1	f	1997-08-20	9003139	\N	\N	17298
vigabatrin 500 mg per pck oral powder	f	1	f	1997-08-20	9003140	\N	\N	17299
etodolac 200 mg oral capsule	f	2	f	1997-08-21	9003141	\N	\N	17300
etodolac 300 mg oral capsule	f	2	f	1997-08-21	9003142	\N	\N	17301
immune globulin (human) 10 g per vial powder for solution for injection	f	1	f	1997-08-22	9003143	\N	\N	17302
immune globulin (human) 5 g per vial powder for solution for injection	f	1	f	1997-08-22	9003144	\N	\N	17303
octinoxate 7.5 % and oxybenzone 3.5 % cutaneous stick	f	4	f	1997-08-22	9003145	\N	\N	17304
irinotecan hydrochloride 20 mg per mL solution for injection	f	5	f	1997-08-27	9003146	\N	\N	17305
letrozole 2.5 mg oral tablet	f	18	f	1997-09-02	9003147	\N	\N	17306
chlorhexidine gluconate 0.05 % medicated sponge	f	1	f	1997-09-03	9003148	\N	\N	17307
dermatophagoides farinae 10000 unit per mL solution for injection	f	3	f	1997-09-15	9003149	\N	\N	17308
dermatophagoides pteronyssinus 10000 unit per mL solution for injection	f	3	f	1997-09-15	9003150	\N	\N	17309
moclobemide 100 mg oral tablet	f	2	f	1997-09-18	9003151	\N	\N	17310
epoetin alfa 10000 unit per mL solution for injection	f	1	f	1997-09-19	9003152	\N	\N	17311
epoetin alfa 1000 unit per 0.5 mL solution for injection	f	1	f	1997-09-19	9003153	\N	\N	17312
epoetin alfa 2000 unit per 0.5 mL solution for injection	f	1	f	1997-09-19	9003154	\N	\N	17313
epoetin alfa 3000 unit per 0.3 mL solution for injection	f	1	f	1997-09-19	9003155	\N	\N	17314
epoetin alfa 4000 unit per 0.4 mL solution for injection	f	1	f	1997-09-19	9003156	\N	\N	17315
hepatitis a vaccine, inactivated 720 unit per 0.5 mL suspension for injection	f	1	f	1997-09-23	9003157	\N	\N	17316
hepatitis a vaccine, inactivated 720 unit per 1 mL and hepatitis b surface antigen (recombinant) 20 mcg per 1 mL suspension for injection	f	1	f	1997-09-23	9003158	\N	\N	17317
alprostadil 23.2 mcg per vial powder for solution for injection	f	1	f	1997-09-24	9003159	\N	\N	17318
amphotericin b 5 mg per mL suspension for injection	f	1	f	1997-09-25	9003160	\N	\N	17319
ropinirole (ropinirole hydrochloride) 1 mg oral tablet	f	6	f	1997-09-25	9003161	\N	\N	17320
ropinirole (ropinirole hydrochloride) 2 mg oral tablet	f	5	f	1997-09-25	9003162	\N	\N	17321
ropinirole (ropinirole hydrochloride) 5 mg oral tablet	f	6	f	1997-09-25	9003163	\N	\N	17322
diphenhydramine hydrochloride 12.5 mg per 5 mL oral liquid	f	3	f	1997-09-29	9003164	\N	\N	17323
ropinirole (ropinirole hydrochloride) 0.25 mg oral tablet	f	6	f	1997-09-29	9003165	\N	\N	17324
acetaminophen 160 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral suspension	f	1	f	1997-10-08	9003166	\N	\N	17325
rabies immune globulin human 150 unit per mL solution for injection	f	2	f	1997-10-09	9003167	\N	\N	17326
permethrin 5 % lotion	f	1	f	1997-10-16	9003168	\N	\N	17327
haemagglutinin-strain a(h1n1) 15 mcg per 0.5 mL and haemagglutinin-strain a(h3n2) 15 mcg per 0.5 mL and haemagglutinin-strain b 15 mcg per 0.5 mL suspension for injection	f	7	f	1997-10-17	9003169	\N	\N	17328
hypromellose 3 mg per g ophthalmic drops	f	1	f	1997-10-17	9003170	\N	\N	17329
methotrimeprazine (methotrimeprazine maleate) 50 mg oral tablet	f	2	f	1997-10-20	9003171	\N	\N	17330
mitomycin 20 mg per vial powder for solution for injection	f	2	f	1997-10-22	9003172	\N	\N	17331
naltrexone hydrochloride 50 mg oral tablet	f	3	f	1997-10-23	9003173	\N	\N	17332
anti-inhibitor coagulant complex 1200 unit per vial and water 20 mL per vial powder for solution for injection	f	1	f	1997-10-27	9003174	\N	\N	17333
anti-inhibitor coagulant complex 1200 unit per vial and water 20 mL per vial solution for injection	f	1	f	1997-10-27	9003175	\N	\N	17334
lidocaine 2 % cutaneous cream	f	1	f	1997-10-30	9003176	\N	\N	17335
avobenzone 2.5 % and ensulizole 2 % and enzacamene 2 % and octinoxate 5.5 % lotion	f	2	f	1997-11-10	9003177	\N	\N	17336
avobenzone 2 % and octinoxate 7.5 % and oxybenzone 4.5 % lotion	f	1	f	1997-11-10	9003178	\N	\N	17337
octinoxate 7.5 % and octocrylene 7.5 % and oxybenzone 3.5 % and titanium dioxide 2.5 % cutaneous stick	f	1	f	1997-11-11	9003179	\N	\N	17338
octinoxate 7.5 % and oxybenzone 5 % cutaneous stick	f	1	f	1997-11-12	9003180	\N	\N	17339
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL syrup	f	6	f	1998-03-31	9003243	\N	\N	17402
bacitracin zinc 500 unit per g and polymyxin b sulfate 10000 unit per g pad	f	1	f	1998-04-06	9003244	\N	\N	17403
alteplase 50 mg and water 50 mL powder for solution for injection	f	1	f	1998-04-12	9003245	\N	\N	17404
alteplase 50 mg and water 50 mL solution for injection	f	1	f	1998-04-12	9003246	\N	\N	17405
vinblastine sulfate 1 mg per mL solution for injection	f	2	f	1998-04-14	9003247	\N	\N	17406
glutamic acid 1 g per 100 mL and glycine 400 mg per 100 mL and histidine 380 mg per 100 mL and l-alanine 800 mg per 100 mL and l-arginine 840 mg per 100 mL and l-aspartic acid 600 mg per 100 mL and l-cysteine 189 mg per 100 mL and l-isoleucine 670 mg per 100 mL and l-leucine 1 g per 100 mL and l-lysine 1.1 g per 100 mL and l-ornithine dihydrochloride 318 mg per 100 mL and l-phenylalanine 420 mg per 100 mL and l-proline 300 mg per 100 mL and l-threonine 370 mg per 100 mL and l-tyrosine 45 mg per 100 mL and l-valine 760 mg per 100 mL and methionine 240 mg per 100 mL and serine 400 mg per 100 mL and taurine 60 mg per 100 mL and tryptophan 200 mg per 100 mL solution for injection	f	1	t	1997-11-14	9003181	\N	\N	17340
zafirlukast 20 mg oral tablet	f	1	f	1997-11-17	9003182	\N	\N	17341
orciprenaline sulfate 2 mg per mL syrup	f	1	f	1997-11-21	9003183	\N	\N	17342
gentamicin (gentamicin sulfate) 3 mg per g ophthalmic ointment	f	1	f	1997-11-25	9003184	\N	\N	17343
dalteparin sodium 25000 unit per mL solution for injection	f	1	f	1997-11-27	9003185	\N	\N	17344
carboprost (carboprost tromethamine) 250 mcg per mL solution for injection	f	1	f	1997-11-28	9003186	\N	\N	17345
non pollen 500 unit per mL solution for injection	f	1	f	1997-12-01	9003187	\N	\N	17346
brimonidine tartrate 0.2 % ophthalmic drops	f	5	f	1997-12-02	9003188	\N	\N	17347
pollen 40000 unit per mL solution for injection	f	2	f	1997-12-05	9003189	\N	\N	17348
white faced hornet venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-06	9003190	\N	\N	17349
octinoxate 7.5 % and octisalate 5 % and oxybenzone 4.5 % and titanium dioxide 1 % cutaneous stick	f	1	f	1997-12-09	9003191	\N	\N	17350
aprotinin (bovine) 10000 unit per mL solution for injection	f	1	f	1997-12-15	9003192	\N	\N	17351
honey bee venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-16	9003193	\N	\N	17352
wasp venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-16	9003194	\N	\N	17353
white faced hornet venom protein 550 mcg per vial and yellow hornet venom protein 550 mcg per vial and yellow jacket venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-16	9003195	\N	\N	17354
yellow hornet venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-16	9003196	\N	\N	17355
yellow jacket venom protein 550 mcg per vial powder for solution for injection	f	1	f	1997-12-16	9003197	\N	\N	17356
anagrelide (anagrelide hydrochloride) 0.5 mg oral capsule	f	1	f	1998-01-06	9003198	\N	\N	17357
adapalene 0.1 % cutaneous cream	f	1	f	1998-01-08	9003199	\N	\N	17358
diatrizoate meglumine 52.7 % and meglumine iodipamide 26.9 % solution for injection	f	1	f	1998-01-08	9003200	\N	\N	17359
iopamidol 41 % solution for injection	f	1	f	1998-01-08	9003201	\N	\N	17360
iopamidol 61 % solution for injection	f	2	f	1998-01-08	9003202	\N	\N	17361
iopamidol 76 % solution for injection	f	2	f	1998-01-08	9003203	\N	\N	17362
avobenzone 3 % and octinoxate 7.5 % cutaneous cream	f	3	f	1998-01-15	9003204	\N	\N	17363
dermatophagoides farinae 15000 unit per mL and dermatophagoides pteronyssinus 15000 unit per mL solution for injection	f	1	f	1998-01-16	9003205	\N	\N	17364
dermatophagoides farinae 5000 unit per mL and dermatophagoides pteronyssinus 5000 unit per mL solution for injection	f	3	f	1998-01-16	9003206	\N	\N	17365
atracurium besylate 10 mg per mL solution for injection	f	1	f	1998-01-20	9003207	\N	\N	17366
enoxaparin sodium 100 mg per mL solution for injection	f	2	f	1998-01-21	9003208	\N	\N	17367
hydrocortisone acetate 0.5 % and pramoxine hydrochloride 1 % and zinc sulfate 0.5 % cutaneous ointment	f	1	f	1998-01-23	9003209	\N	\N	17368
erythrosine 2 % dental solution	f	1	f	1998-01-26	9003210	\N	\N	17369
standardized cat pelt 10000 unit per mL solution for injection	f	1	f	1998-01-29	9003211	\N	\N	17370
buserelin (buserelin acetate) 1 mg per mL nasal spray	f	1	f	1998-02-03	9003212	\N	\N	17371
ketoconazole 200 mg oral tablet	f	2	f	1998-02-03	9003213	\N	\N	17372
NA 9500 unit per mL solution for injection	f	5	f	1998-02-05	9003214	\N	\N	17373
propofol 10 mg per mL emulsion for injection	f	5	f	1998-02-05	9003215	\N	\N	17374
standardized cat pelt acetone precipitated 10000 unit per mL solution for injection	f	1	f	1998-02-09	9003216	\N	\N	17375
salmeterol (salmeterol xinafoate) 50 mcg inhalation powder	f	2	f	1998-02-11	9003217	\N	\N	17376
salmeterol (salmeterol xinafoate) 50 mcg oral powder	f	1	f	1998-02-11	9003218	\N	\N	17377
interferon beta-1a 22 mcg per 0.5 mL solution for injection	f	1	f	1998-02-23	9003219	\N	\N	17378
interferon beta-1a 44 mcg per 0.5 mL solution for injection	f	1	f	1998-02-24	9003220	\N	\N	17379
ioversol 64 % solution for injection	f	1	f	1998-03-03	9003221	\N	\N	17380
acetaminophen 500 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	11	f	1998-03-05	9003222	\N	\N	17381
iohexol 647 mg per mL solution for injection	f	1	f	1998-03-05	9003223	\N	\N	17382
iohexol 755 mg per mL solution for injection	f	1	f	1998-03-05	9003224	\N	\N	17383
cefaclor 125 mg per 5 mL oral powder	f	1	f	1998-03-06	9003225	\N	\N	17384
cefaclor 250 mg per 5 mL oral powder	f	1	f	1998-03-06	9003226	\N	\N	17385
cefaclor 375 mg per 5 mL oral powder	f	1	f	1998-03-06	9003227	\N	\N	17386
diphenhydramine hydrochloride 12.5 mg chewable tablet	f	1	f	1998-03-06	9003228	\N	\N	17387
iohexol 388 mg per mL solution for injection	f	1	f	1998-03-08	9003229	\N	\N	17388
bleomycin (bleomycin sulfate) 15 unit per vial powder for solution for injection	f	2	f	1998-03-12	9003230	\N	\N	17389
doxorubicin hydrochloride 10 mg per vial powder for solution for injection	f	1	f	1998-03-12	9003231	\N	\N	17390
formoterol fumarate 12 mcg inhalation powder	f	1	f	1998-03-12	9003232	\N	\N	17391
formoterol fumarate 6 mcg inhalation powder	f	1	f	1998-03-12	9003233	\N	\N	17392
methylprednisolone 1 g per vial and water 20 mL per vial powder for solution for injection	f	1	f	1998-03-12	9003234	\N	\N	17393
methylprednisolone 500 mg per vial and water 10 mL per vial powder for solution for injection	f	1	f	1998-03-12	9003235	\N	\N	17394
tetracaine (tetracaine hydrochloride) 40 mg per g cutaneous gel	f	1	f	1998-03-16	9003236	\N	\N	17395
labetalol hydrochloride 5 mg per mL solution for injection	f	3	f	1998-03-17	9003237	\N	\N	17396
petrolatum 50 % and starch 49.95 % cutaneous cream	f	1	f	1998-03-18	9003238	\N	\N	17397
loxapine (loxapine succinate) 10 mg oral tablet	f	3	f	1998-03-30	9003239	\N	\N	17398
benzocaine 18 % and tetracaine hydrochloride 2 % oromucosal gel	f	1	f	1998-04-21	9003248	\N	\N	17407
avobenzone 2.5 % and octinoxate 7.5 % and oxybenzone 6 % and titanium dioxide 2 % lotion	f	2	f	1998-05-04	9003249	\N	\N	17408
buserelin (buserelin acetate) 1 mg per mL solution for injection	f	1	f	1998-05-05	9003250	\N	\N	17409
loratadine 10 mg orodispersible tablet	f	1	f	1998-05-05	9003251	\N	\N	17410
naratriptan (naratriptan hydrochloride) 1 mg oral tablet	f	2	f	1998-05-05	9003252	\N	\N	17411
naratriptan (naratriptan hydrochloride) 2.5 mg oral tablet	f	3	f	1998-05-05	9003253	\N	\N	17412
loperamide hydrochloride 2 mg and simethicone 125 mg chewable tablet	f	1	f	1998-05-12	9003254	\N	\N	17413
acetylsalicylic acid 325 mg and codeine phosphate 8 mg and methocarbamol 400 mg oral tablet	f	1	f	1998-05-19	9003255	\N	\N	17414
benzocaine 10 % and hydrocortisone acetate 1 % and zinc sulfate 0.5 % rectal ointment	f	1	f	1998-05-26	9003256	\N	\N	17415
iohexol 518 mg per mL solution for injection	f	1	f	1998-05-26	9003257	\N	\N	17416
bacitracin 500 unit per g and lidocaine hydrochloride 40 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	1	f	1998-05-27	9003258	\N	\N	17417
octinoxate 5.5 % and oxybenzone 1 % lotion	f	1	f	1998-06-01	9003259	\N	\N	17418
triclosan 0.3 % cutaneous spray	f	1	f	1998-06-01	9003260	\N	\N	17419
enoxaparin sodium 40 mg per 0.4 mL solution for injection	f	1	f	1998-06-02	9003261	\N	\N	17420
avobenzone 2 g per 100 g and octinoxate 6 g per 100 g cutaneous emulsion	f	1	f	1998-06-03	9003262	\N	\N	17421
dextromethorphan hydrobromide (dextromethorphan polistirex) 15 mg per 5 mL syrup	f	1	f	1998-06-12	9003263	\N	\N	17422
sincalide 5 mcg per vial powder for solution for injection	f	1	f	1998-07-08	9003264	\N	\N	17423
sodium thiosulfate 25 % solution for injection	f	1	f	1998-07-13	9003265	\N	\N	17424
mitomycin 5 mg per vial powder for solution for injection	f	1	f	1998-07-15	9003266	\N	\N	17425
methotrimeprazine (methotrimeprazine maleate) 2 mg oral tablet	f	1	f	1998-07-20	9003267	\N	\N	17426
norfloxacin 400 mg oral tablet	f	4	f	1998-07-20	9003268	\N	\N	17427
lidocaine (lidocaine hydrochloride) 10 mg per actuation cutaneous liquid	f	1	f	1998-07-22	9003269	\N	\N	17428
pyrithione zinc 2.5 mg per g cutaneous spray	f	1	f	1998-07-22	9003270	\N	\N	17429
delavirdine mesylate 100 mg oral tablet	f	1	f	1998-07-24	9003271	\N	\N	17430
ampicillin (ampicillin sodium) 2 g per vial powder for solution for injection	f	1	f	1998-07-27	9003272	\N	\N	17431
meglumine iodipamide 52 % solution for injection	f	1	f	1998-07-31	9003273	\N	\N	17432
phenylephrine hydrochloride 0.25 % cutaneous ointment	f	1	f	1998-08-06	9003274	\N	\N	17433
atovaquone 250 mg and proguanil hydrochloride 100 mg oral tablet	f	4	f	1998-08-07	9003275	\N	\N	17434
betaine 1 g per 1.7 cc powder for oral solution	f	1	f	1998-08-11	9003276	\N	\N	17435
bacitracin zinc 500 unit per g and gramicidin 0.25 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	3	f	1998-08-13	9003277	\N	\N	17436
bacitracin zinc 500 unit per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	2	f	1998-08-13	9003278	\N	\N	17437
ampicillin (ampicillin sodium) 1 g per vial powder for solution for injection	f	1	f	1998-08-14	9003279	\N	\N	17438
chloroxylenol 0.52 % cutaneous liquid	f	1	f	1998-08-14	9003280	\N	\N	17439
amoxicillin 500 mg and clarithromycin 500 mg and lansoprazole 30 mg kit	f	1	f	1998-08-18	9003281	\N	\N	17440
amoxicillin 500 mg and clarithromycin 500 mg and lansoprazole 30 mg oral capsule	f	1	f	1998-08-18	9003282	\N	\N	17441
amoxicillin 500 mg and clarithromycin 500 mg and lansoprazole 30 mg oral tablet	f	1	f	1998-08-18	9003283	\N	\N	17442
amoxicillin 500 mg and clarithromycin 500 mg and lansoprazole 30 mg prolonged-release oral capsule	f	1	f	1998-08-18	9003284	\N	\N	17443
doxorubicin hydrochloride 2 mg per mL suspension for injection	f	1	f	1998-08-19	9003285	\N	\N	17444
nabumetone 500 mg oral tablet	f	2	f	1998-08-21	9003286	\N	\N	17445
acetaminophen 1000 mg per pck and chlorpheniramine maleate 4 mg per pck and dextromethorphan hydrobromide 30 mg per pck and pseudoephedrine hydrochloride 60 mg per pck oral powder	f	1	f	1998-08-28	9003287	\N	\N	17446
honey bee venom protein 120 mcg per vial powder for solution for injection	f	1	f	1998-08-28	9003288	\N	\N	17447
standardized cat hair acetone precipitated 10000 unit per mL solution for injection	f	1	f	1998-08-28	9003289	\N	\N	17448
wasp venom protein 120 mcg per vial powder for solution for injection	f	1	f	1998-08-28	9003290	\N	\N	17449
yellow hornet venom protein 120 mcg per vial powder for solution for injection	f	1	f	1998-08-28	9003291	\N	\N	17450
yellow jacket venom protein 120 mcg per vial powder for solution for injection	f	1	f	1998-08-28	9003292	\N	\N	17451
chlorhexidine gluconate 0.12 % gargle/mouthwash	f	4	f	1998-08-31	9003293	\N	\N	17452
chlorhexidine gluconate 2 % and isopropyl alcohol 70 % cutaneous solution	f	4	f	1998-08-31	9003294	\N	\N	17453
acetylsalicylic acid 81 mg gastro-resistant tablet	f	15	f	1998-09-02	9003295	\N	\N	17454
calcium chloride 10 mg per 100 mL and dextrose 2.5 g per 100 mL and potassium chloride 15 mg per 100 mL and sodium chloride 300 mg per 100 mL and sodium lactate 160 mg per 100 mL solution for injection	f	1	f	1998-09-03	9003296	\N	\N	17455
calcium chloride 370 mg per 20 mL and magnesium chloride 510 mg per 20 mL and potassium acetate 1.96 g per 20 mL and sodium acetate 680 mg per 20 mL and sodium chloride 1.17 g per 20 mL solution for injection	f	1	f	1998-09-03	9003297	\N	\N	17456
calcium chloride 37 mg per 100 mL and dextrose 5 g per 100 mL and magnesium chloride 31 mg per 100 mL and potassium chloride 120 mg per 100 mL and sodium acetate 330 mg per 100 mL and sodium chloride 88 mg per 100 mL solution for injection	f	1	t	1998-09-03	9003298	\N	\N	17457
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL and potassium phosphate dibasic 130 mg per 100 mL and sodium acetate 280 mg per 100 mL and sodium chloride 91 mg per 100 mL solution for injection	f	1	f	1998-09-03	9003299	\N	\N	17458
dextrose 5 g per 100 mL and potassium chloride 150 mg per 100 mL and sodium chloride 200 mg per 100 mL solution for injection	f	1	f	1998-09-03	9003300	\N	\N	17459
calcium acetate 440 mg per 25 mL and magnesium acetate 860 mg per 25 mL and potassium acetate 690 mg per 25 mL and potassium chloride 2.46 g per 25 mL and sodium acetate 2.72 g per 25 mL and sodium gluconate 1.09 g per 25 mL solution for injection	f	1	t	1998-09-04	9003301	\N	\N	17460
idoxuridine 0.1 % cutaneous liquid	f	1	f	1999-02-15	9003357	\N	\N	17516
gadoteridol 279.3 mg per mL solution for injection	f	1	f	1998-09-08	9003302	\N	\N	17461
capecitabine 150 mg oral tablet	f	4	f	1998-09-10	9003303	\N	\N	17462
capecitabine 500 mg oral tablet	f	4	f	1998-09-10	9003304	\N	\N	17463
NA 300 mg per vial powder for solution for injection	f	1	f	1998-09-10	9003305	\N	\N	17464
white faced hornet venom protein 120 mcg per vial powder for solution for injection	f	1	f	1998-09-15	9003306	\N	\N	17465
nevirapine 200 mg oral tablet	f	5	f	1998-09-17	9003307	\N	\N	17466
nelfinavir (nelfinavir mesylate) 250 mg oral tablet	f	1	f	1998-09-21	9003308	\N	\N	17467
nelfinavir (nelfinavir mesylate) 50 mg per g oral powder	f	1	f	1998-09-21	9003309	\N	\N	17468
alprostadil 1000 mcg urethral stick	f	1	f	1998-09-24	9003310	\N	\N	17469
alprostadil 250 mcg urethral stick	f	1	f	1998-09-24	9003311	\N	\N	17470
alprostadil 500 mcg urethral stick	f	1	f	1998-09-24	9003312	\N	\N	17471
alanine 95.1 mg per 100 mL and arginine 107.1 mg per 100 mL and calcium chloride 18.4 mg per 100 mL and dl-methionine 85 mg per 100 mL and glycine 51 mg per 100 mL and histidine 71.4 mg per 100 mL and isoleucine 85 mg per 100 mL and leucine 102 mg per 100 mL and lysine (lysine monohydrochloride) 95.5 mg per 100 mL and magnesium chloride 5.1 mg per 100 mL and phenylalanine 57 mg per 100 mL and proline 59.5 mg per 100 mL and serine 51 mg per 100 mL and sodium chloride 538 mg per 100 mL and sodium lactate 448 mg per 100 mL and threonine 64.6 mg per 100 mL and tryptophan 27 mg per 100 mL and tyrosine 30 mg per 100 mL and valine 139.3 mg per 100 mL solution for haemodialysis	f	1	t	1998-09-25	9003313	\N	\N	17472
benzalkonium chloride 2.5 % cutaneous liquid	f	1	f	1998-09-25	9003314	\N	\N	17473
zolmitriptan 2.5 mg oral tablet	f	14	f	1998-09-30	9003315	\N	\N	17474
acetylsalicylic acid 375 mg and caffeine citrate 30 mg and codeine phosphate 30 mg oral tablet	f	1	f	1998-10-01	9003316	\N	\N	17475
cyclosporine 10 mg oral capsule	f	1	f	1998-10-02	9003317	\N	\N	17476
charcoal activated 225 mg oral capsule	f	2	f	1998-10-07	9003318	\N	\N	17477
tolnaftate 1 % cutaneous liquid	f	1	f	1998-10-09	9003319	\N	\N	17478
cefuroxime (cefuroxime axetil) 500 mg oral tablet	f	5	f	1998-10-27	9003320	\N	\N	17479
simethicone 180 mg oral capsule	f	5	f	1998-10-27	9003321	\N	\N	17480
cefazolin (cefazolin sodium) 20 g per vial powder for solution for injection	f	1	f	1998-10-30	9003322	\N	\N	17481
cefazolin (cefazolin sodium) 500 mg per vial powder for solution for injection	f	3	f	1998-10-30	9003323	\N	\N	17482
acetylsalicylic acid 375 mg and caffeine citrate 30 mg and codeine phosphate 15 mg oral tablet	f	1	f	1998-11-01	9003324	\N	\N	17483
dextrose 40 % solution for injection	f	1	f	1998-11-03	9003325	\N	\N	17484
hepatitis a vaccine, inactivated 360 unit per 0.5 mL and hepatitis b surface antigen (recombinant) 10 mcg per 0.5 mL suspension for injection	f	1	f	1998-11-06	9003326	\N	\N	17485
ursodiol 250 mg oral tablet	f	4	f	1998-11-08	9003327	\N	\N	17486
benzydamine hydrochloride 0.15 % mouthwash	f	1	f	1998-11-09	9003328	\N	\N	17487
fusidic acid 2 % and hydrocortisone acetate 1 % cutaneous cream	f	1	f	1998-11-11	9003329	\N	\N	17488
mycophenolate mofetil 500 mg oral tablet	f	9	f	1998-11-11	9003330	\N	\N	17489
NA 1 % ophthalmic drops	f	1	f	1998-11-11	9003331	\N	\N	17490
permethrin 1 % cutaneous liquid	f	1	f	1998-11-16	9003332	\N	\N	17491
raloxifene hydrochloride 60 mg oral tablet	f	6	f	1998-11-20	9003333	\N	\N	17492
betaxolol (betaxolol hydrochloride) 0.5 % ophthalmic drops	f	1	f	1998-11-27	9003334	\N	\N	17493
desmopressin acetate 150 mcg per actuation nasal spray	f	1	f	1998-12-01	9003335	\N	\N	17494
lamivudine 100 mg oral tablet	f	2	f	1998-12-02	9003336	\N	\N	17495
acetylsalicylic acid 80 mg gastro-resistant tablet	f	7	f	1998-12-03	9003337	\N	\N	17496
loxapine (loxapine hydrochloride) 25 mg per mL oral solution	f	1	f	1998-12-03	9003338	\N	\N	17497
lymphocyte immune globulin anti-thymocyte globulin (equine) 50 mg per mL solution for injection	f	1	f	1998-12-04	9003339	\N	\N	17498
measles virus vaccine live attenuated 1000 unit per 0.5 mL and mumps virus vaccine live attenuated (jeryl lynn strain) 10000 unit per 0.5 mL and rubella virus vaccine live attenuated (wistar ra27/3 strain) 1000 unit per 0.5 mL and water 0.5 mL NA	f	1	f	1998-12-04	9003340	\N	\N	17499
measles virus vaccine live attenuated 1000 unit per 0.5 mL and mumps virus vaccine live attenuated (jeryl lynn strain) 10000 unit per 0.5 mL and rubella virus vaccine live attenuated (wistar ra27/3 strain) 1000 unit per 0.5 mL and water 0.5 mL powder for solution for injection	f	1	f	1998-12-04	9003341	\N	\N	17500
charcoal activated 260 mg oral capsule	f	3	f	1998-12-07	9003342	\N	\N	17501
lamivudine 150 mg and zidovudine 300 mg oral tablet	f	4	f	1998-12-08	9003343	\N	\N	17502
interferon alfa-2b 10000000 unit per mL solution for injection	f	1	f	1998-12-10	9003344	\N	\N	17503
interferon alfa-2b 6000000 unit per mL solution for injection	f	1	f	1998-12-10	9003345	\N	\N	17504
cefuroxime (cefuroxime axetil) 250 mg oral tablet	f	4	f	1998-12-31	9003346	\N	\N	17505
acetaminophen 325 mg per 23 g and pheniramine maleate 20 mg per 23 g and phenylephrine hydrochloride 10 mg per 23 g and vitamin c 50 mg per 23 g oral powder	f	1	f	1999-01-06	9003347	\N	\N	17506
tryptophan 250 mg oral tablet	f	1	f	1999-01-06	9003348	\N	\N	17507
tryptophan 750 mg oral tablet	f	2	f	1999-01-06	9003349	\N	\N	17508
menthol 1 % and pramoxine hydrochloride 1 % cutaneous cream	f	1	f	1999-01-11	9003350	\N	\N	17509
acetic acid 10.8 g per l and calcium chloride 7.49 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	1999-01-21	9003351	\N	\N	17510
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 3.21 g per l and potassium chloride 10.1 g per l and sodium chloride 268 g per l solution for haemodialysis	f	1	t	1999-01-21	9003352	\N	\N	17511
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 3.21 g per l and potassium chloride 3.35 g per l and sodium chloride 268 g per l solution for haemodialysis	f	1	t	1999-01-21	9003353	\N	\N	17512
octreotide (octreotide acetate) 10 mg per vial powder for suspension for injection	f	1	f	1999-01-27	9003354	\N	\N	17513
octreotide (octreotide acetate) 20 mg per vial powder for suspension for injection	f	1	f	1999-01-27	9003355	\N	\N	17514
octreotide (octreotide acetate) 30 mg per vial powder for suspension for injection	f	1	f	1999-01-27	9003356	\N	\N	17515
tobramycin 3 mg per mL ophthalmic drops	f	1	f	1999-02-18	9003358	\N	\N	17517
acetaminophen 80 mg per mL oral suspension	f	1	f	1999-02-22	9003359	\N	\N	17518
sucralfate 1000 mg oral tablet	f	1	f	1999-02-23	9003360	\N	\N	17519
miconazole nitrate 1200 mg per pck and miconazole nitrate 2 % per pck cutaneous cream	f	1	f	1999-02-26	9003361	\N	\N	17520
miconazole nitrate 1200 mg per pck and miconazole nitrate 2 % per pck NA	f	1	f	1999-02-26	9003362	\N	\N	17521
miconazole nitrate 1200 mg per pck and miconazole nitrate 2 % per pck pessary	f	1	f	1999-02-26	9003363	\N	\N	17522
miconazole nitrate 1200 mg per pck and miconazole nitrate 2 % per pck vaginal cream	f	1	f	1999-02-26	9003364	\N	\N	17523
miconazole nitrate 1200 mg pessary	f	1	f	1999-02-26	9003365	\N	\N	17524
octinoxate 7.3 % and oxybenzone 5 % lotion	f	1	f	1999-03-03	9003366	\N	\N	17525
modafinil 100 mg oral tablet	f	6	f	1999-03-24	9003367	\N	\N	17526
efavirenz 200 mg oral capsule	f	1	f	1999-03-25	9003368	\N	\N	17527
efavirenz 50 mg oral capsule	f	1	f	1999-03-25	9003369	\N	\N	17528
lamivudine 5 mg per mL oral solution	f	1	f	1999-03-30	9003370	\N	\N	17529
chlorhexidine gluconate 0.5 % cutaneous solution	f	1	f	1999-03-31	9003371	\N	\N	17530
ondansetron 4 mg orodispersible tablet	f	2	f	1999-03-31	9003372	\N	\N	17531
ondansetron 8 mg orodispersible tablet	f	2	f	1999-03-31	9003373	\N	\N	17532
cilazapril 5 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	1999-04-01	9003374	\N	\N	17533
methacholine chloride 100 mg per vial powder for nebuliser solution	f	2	f	1999-04-01	9003375	\N	\N	17534
mupirocin (mupirocin calcium dihydrate) 2 % cutaneous cream	f	1	f	1999-04-13	9003376	\N	\N	17535
cat (felis domesticus) pelt and cat dander 10000 unit per mL solution for injection	f	1	f	1999-04-19	9003377	\N	\N	17536
benzalkonium chloride 0.13 % cutaneous liquid	f	1	f	1999-04-20	9003378	\N	\N	17537
tobramycin (tobramycin sulfate) 300 mg per 5 mL inhalation solution	f	2	f	1999-04-28	9003379	\N	\N	17538
fexofenadine hydrochloride 60 mg and pseudoephedrine hydrochloride 120 mg prolonged-release oral tablet	f	1	f	1999-04-29	9003380	\N	\N	17539
hepatitis a vaccine, inactivated 160 unit per 0.5 mL suspension for injection	f	1	f	1999-05-27	9003381	\N	\N	17540
cefadroxil (cefadroxil monohydrate) 500 mg oral capsule	f	1	f	1999-06-02	9003382	\N	\N	17541
orlistat 120 mg oral capsule	f	1	f	1999-06-03	9003383	\N	\N	17542
NA 300 mg oral tablet	f	3	f	1999-06-09	9003384	\N	\N	17543
triclosan 0.6 % lotion	f	1	f	1999-06-10	9003385	\N	\N	17544
NA 20 mg per mL oral solution	f	1	f	1999-06-15	9003386	\N	\N	17545
gramicidin 0.25 mg per g and lidocaine hydrochloride 50 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous cream	f	2	f	1999-06-18	9003387	\N	\N	17546
acetaminophen 500 mg and pamabrom 25 mg and pyrilamine maleate 15 mg oral tablet	f	4	f	1999-06-22	9003388	\N	\N	17547
NA 19000 unit per mL solution for injection	f	3	f	1999-06-22	9003389	\N	\N	17548
diphtheria toxoid 2 lf per 0.5 mL and filamentous haemagglutinin 5 mcg per 0.5 mL and fimbriae types 2 and 3 (fim) 5 mcg per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 2.5 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL suspension for injection	f	1	t	1999-06-23	9003390	\N	\N	17549
eptifibatide 0.75 mg per mL solution for injection	f	2	f	1999-06-23	9003391	\N	\N	17550
eptifibatide 2 mg per mL solution for injection	f	2	f	1999-06-23	9003392	\N	\N	17551
permethrin 5 % cutaneous cream	f	1	f	1999-07-01	9003393	\N	\N	17552
triclosan 0.2 % cutaneous liquid	f	2	f	1999-07-01	9003394	\N	\N	17553
antithrombin iii (human) 1100 unit per vial and water 20 mL per vial NA	f	1	f	1999-07-05	9003395	\N	\N	17554
antithrombin iii (human) 1100 unit per vial and water 20 mL per vial powder for solution for injection	f	1	f	1999-07-05	9003396	\N	\N	17555
antithrombin iii (human) 550 unit per vial and water 10 mL per vial NA	f	1	f	1999-07-05	9003397	\N	\N	17556
antithrombin iii (human) 550 unit per vial and water 10 mL per vial powder for solution for injection	f	1	f	1999-07-05	9003398	\N	\N	17557
imiquimod 5 % cutaneous cream	f	2	f	1999-07-05	9003399	\N	\N	17558
insulin lispro 25 unit per mL and insulin lispro protamine suspension 75 unit per mL suspension for injection	f	2	f	1999-07-05	9003400	\N	\N	17559
pinaverium bromide 100 mg oral tablet	f	1	f	1999-07-05	9003401	\N	\N	17560
midazolam 1 mg per mL solution for injection	f	6	f	1999-07-21	9003402	\N	\N	17561
midazolam 5 mg per mL solution for injection	f	6	f	1999-07-21	9003403	\N	\N	17562
somatropin 5 mg and water 1 mL powder for solution for injection	f	1	f	1999-07-28	9003404	\N	\N	17563
carbetocin 100 mcg per mL solution for injection	f	1	f	1999-08-01	9003405	\N	\N	17564
octinoxate 6 % and zinc oxide 3 % lotion	f	1	f	1999-08-01	9003406	\N	\N	17565
ondansetron (ondansetron hydrochloride dihydrate) 2 mg per mL solution for injection	f	14	f	1999-08-01	9003407	\N	\N	17566
xylometazoline hydrochloride 0.05 % nasal spray	f	1	f	1999-08-09	9003408	\N	\N	17567
rabies vaccine inactivated (human diploid-cell culture) 2.5 unit per vial powder for solution for injection	f	1	f	1999-08-13	9003409	\N	\N	17568
tolnaftate 10 mg per mL cutaneous liquid	f	1	f	1999-08-18	9003410	\N	\N	17569
trastuzumab 440 mg per vial powder for solution for injection	f	1	f	1999-08-23	9003411	\N	\N	17570
bezafibrate 200 mg oral tablet	f	1	f	1999-09-01	9003413	\N	\N	17571
dimethicone 5 % and menthol 0.15 % lotion	f	1	f	1999-09-01	9003414	\N	\N	17572
dimethicone 5 % and menthol 0.5 % lotion	f	1	f	1999-09-01	9003415	\N	\N	17573
cefuroxime (cefuroxime axetil) 125 mg per 5 mL powder for oral solution	f	1	f	1999-09-13	9003416	\N	\N	17574
leuprolide acetate 11.25 mg per vial powder for prolonged-release suspension for injection	f	1	f	1999-09-13	9003417	\N	\N	17575
leuprolide acetate 30 mg per vial powder for prolonged-release suspension for injection	f	1	f	1999-09-13	9003418	\N	\N	17576
fosfomycin (fosfomycin tromethamine) 3 g per pck oral powder	f	1	f	1999-09-15	9003419	\N	\N	17577
busulfan 6 mg per mL solution for injection	f	1	f	1999-09-23	9003420	\N	\N	17578
interferon alfa-2b 15000000 unit per mL solution for injection	f	1	f	1999-09-23	9003421	\N	\N	17579
interferon alfa-2b 25000000 unit per mL solution for injection	f	1	f	1999-09-23	9003422	\N	\N	17580
interferon alfa-2b 50000000 unit per mL solution for injection	f	1	f	1999-09-23	9003423	\N	\N	17581
clobetasone butyrate 0.05 % cutaneous cream	f	1	f	1999-09-27	9003424	\N	\N	17582
triclosan 0.5 % cutaneous spray	f	2	f	1999-09-30	9003425	\N	\N	17583
somatropin 5 mg per vial powder for solution for injection	f	1	f	1999-10-26	9003426	\N	\N	17584
tizanidine (tizanidine hydrochloride) 4 mg oral tablet	f	2	f	1999-10-29	9003427	\N	\N	17585
octinoxate 3 % cutaneous emulsion	f	1	f	1999-11-01	9003428	\N	\N	17586
alcohol anhydrous 70 % and chlorhexidine gluconate 0.5 % cutaneous liquid	f	1	f	1999-11-05	9003429	\N	\N	17587
white petrolatum 47 % and zinc oxide 40 % cutaneous ointment	f	1	f	1999-11-06	9003430	\N	\N	17588
acetaminophen 650 mg prolonged-release oral tablet	f	9	f	1999-11-10	9003431	\N	\N	17589
temozolomide 100 mg oral capsule	f	4	f	1999-11-12	9003432	\N	\N	17590
temozolomide 20 mg oral capsule	f	4	f	1999-11-12	9003433	\N	\N	17591
temozolomide 250 mg oral capsule	f	4	f	1999-11-12	9003434	\N	\N	17592
temozolomide 5 mg oral capsule	f	4	f	1999-11-12	9003435	\N	\N	17593
coal tar 1.25 % cutaneous gel	f	1	f	1999-11-30	9003436	\N	\N	17594
zanamivir 5 mg inhalation powder	f	1	f	1999-12-07	9003437	\N	\N	17595
zanamivir 5 mg oral powder	f	1	f	1999-12-07	9003438	\N	\N	17596
biotin 10 mcg and choline bitartrate 70 mg and chromium (chromium hvp chelate) 20 mcg and dl-methionine 25 mg and d-pantothenic acid (calcium d-pantothenate) 50 mg and folic acid 0.04 mg and inositol 5 mg and iodine (potassium iodide) 0.025 mg and magnesium (magnesium oxide) 40 mg and manganese (manganese gluconate) 0.5 mg and nicotinamide 5 mg and nicotinic acid 5 mg and potassium (potassium chloride, potassium citrate) 40 mg and selenium (selenium hvp chelate) 25 mcg and vitamin a (retinol palmitate) 4000 unit and vitamin b12 (cyanocobalamin) 25 mcg and vitamin b1 (thiamine hydrochloride) 20 mg and vitamin b2 (riboflavin) 5 mg and vitamin b6 (pyridoxine hydrochloride) 15 mg and vitamin c (ascorbic acid) 300 mg and vitamin c (calcium ascorbate) 100 mg and vitamin e (d-alpha tocopheryl acetate) 65 unit and zinc (zinc gluconate) 3 mg oral tablet	f	1	t	1999-12-13	9003439	\N	\N	17597
petrolatum 95.96 % cutaneous cream	f	1	f	1999-12-15	9003440	\N	\N	17598
white petrolatum 69 % and zinc oxide 15 % cutaneous ointment	f	1	f	1999-12-15	9003441	\N	\N	17599
mycophenolate mofetil (mycophenolate mofetil hydrochloride) 500 mg per vial powder for solution for injection	f	1	f	1999-12-20	9003442	\N	\N	17600
tobramycin (tobramycin sulfate) 10 mg per mL solution for injection	f	2	f	1999-12-20	9003443	\N	\N	17601
epoetin alfa 40000 unit per mL solution for injection	f	1	f	1999-12-21	9003444	\N	\N	17602
oseltamivir (oseltamivir phosphate) 75 mg oral capsule	f	2	f	1999-12-23	9003445	\N	\N	17603
pyrithione zinc 1.8 % shampoo	f	1	f	1999-12-24	9003446	\N	\N	17604
lidocaine hydrochloride 50 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL otic drops	f	1	f	1999-12-29	9003447	\N	\N	17605
vitamin d2 50000 unit oral capsule	f	2	f	1999-12-30	9003448	\N	\N	17606
cefoxitin (cefoxitin sodium) 10 g per vial powder for solution for injection	f	1	f	2000-01-01	9003449	\N	\N	17607
octinoxate 3 % and octisalate 3 % and titanium dioxide 2 % cutaneous cream	f	1	f	2000-01-01	9003450	\N	\N	17608
calcium chloride 257 mg per l and icodextrin 75 g per l and magnesium chloride 51 mg per l and sodium chloride 5.35 g per l and sodium lactate 4.48 g per l solution for peritoneal dialysis	f	1	f	2000-01-20	9003451	\N	\N	17609
inosine pranobex 500 mg oral tablet	f	1	f	2000-01-25	9003452	\N	\N	17610
vecuronium bromide 20 mg per vial powder for solution for injection	f	1	f	2000-01-28	9003453	\N	\N	17611
sodium carboxymethyl cellulose 5 mg per mL ophthalmic drops	f	1	f	2000-01-31	9003454	\N	\N	17612
bismuth subsalicylate 35.2 mg per mL oral liquid	f	1	f	2000-02-01	9003455	\N	\N	17613
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % cutaneous liquid	f	2	f	2000-02-02	9003456	\N	\N	17614
polymyxin b sulfate 10000 unit per mL and trimethoprim (trimethoprim sulfate) 1 mg per mL ophthalmic drops	f	2	f	2000-02-03	9003457	\N	\N	17615
gramicidin 0.025 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL ophthalmic drops	f	1	f	2000-02-12	9003458	\N	\N	17616
gramicidin 0.025 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL otic drops	f	1	f	2000-02-12	9003459	\N	\N	17617
bismuth subsalicylate 262 mg and calcium carbonate 350 mg oral tablet	f	1	f	2000-02-18	9003460	\N	\N	17618
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % cutaneous liquid	f	1	f	2000-02-23	9003461	\N	\N	17619
avobenzone 3 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 2.2 % lotion	f	1	f	2000-02-23	9003462	\N	\N	17620
octinoxate 7.5 % and oxybenzone 6 % and titanium dioxide 4 % cutaneous cream	f	2	f	2000-02-23	9003463	\N	\N	17621
buserelin (buserelin acetate) 9.45 mg per imp implant	f	1	f	2000-02-24	9003464	\N	\N	17622
levonorgestrel 0.75 mg oral tablet	f	3	f	2000-02-24	9003465	\N	\N	17623
dextromethorphan hydrobromide 15 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL syrup	f	2	f	2000-02-29	9003466	\N	\N	17624
nedocromil sodium 2 % ophthalmic drops	f	1	f	2000-02-29	9003467	\N	\N	17625
fosphenytoin sodium 75 mg per mL solution for injection	f	1	f	2000-03-01	9003468	\N	\N	17626
methylprednisolone (methylprednisolone sodium succinate) 125 mg per vial powder for solution for injection	f	2	f	2000-03-01	9003469	\N	\N	17627
methylprednisolone (methylprednisolone sodium succinate) 40 mg per vial powder for solution for injection	f	2	f	2000-03-01	9003470	\N	\N	17628
flunisolide 0.25 mg per mL nasal spray	f	1	f	2000-03-10	9003471	\N	\N	17629
rituximab 10 mg per mL solution for injection	f	1	f	2000-03-20	9003472	\N	\N	17630
rosiglitazone (rosiglitazone maleate) 2 mg oral tablet	f	2	f	2000-03-21	9003473	\N	\N	17631
rosiglitazone (rosiglitazone maleate) 4 mg oral tablet	f	2	f	2000-03-21	9003474	\N	\N	17632
rosiglitazone (rosiglitazone maleate) 8 mg oral tablet	f	2	f	2000-03-21	9003475	\N	\N	17633
octinoxate 7.5 % lotion	f	1	f	2000-03-23	9003476	\N	\N	17634
benzocaine 18 % and tetracaine hydrochloride 2 % cutaneous spray	f	1	f	2000-03-29	9003477	\N	\N	17635
leflunomide 100 mg oral tablet	f	1	f	2000-03-29	9003478	\N	\N	17636
leflunomide 10 mg oral tablet	f	8	f	2000-03-29	9003479	\N	\N	17637
leflunomide 20 mg oral tablet	f	8	f	2000-03-29	9003480	\N	\N	17638
triclosan 1 % lotion	f	1	f	2000-04-01	9003481	\N	\N	17639
NA 600 mg per vial powder for solution for injection	f	1	f	2000-04-04	9003482	\N	\N	17640
octinoxate 7.5 % and oxybenzone 2 % cutaneous stick	f	3	f	2000-04-06	9003484	\N	\N	17642
acetylsalicylic acid 25 mg and dipyridamole 200 mg oral capsule	f	1	f	2000-04-17	9003485	\N	\N	17643
acetylsalicylic acid 25 mg and dipyridamole 200 mg prolonged-release oral capsule	f	1	f	2000-04-17	9003486	\N	\N	17644
mineral oil 7 % and petrolatum 10 % cutaneous cream	f	1	f	2000-04-17	9003487	\N	\N	17645
cytomegalovirus immune globulin (human) 50 mg per mL solution for injection	f	1	f	2000-04-25	9003488	\N	\N	17646
petrolatum 1000 g per kg cutaneous paste	f	1	f	2000-04-28	9003489	\N	\N	17647
calamine 3 % and pramoxine hydrochloride 1 % lotion	f	1	f	2000-05-01	9003490	\N	\N	17648
nabumetone 750 mg oral tablet	f	1	f	2000-05-18	9003491	\N	\N	17649
estradiol 0.51 mg and norethindrone acetate 4.8 mg transdermal patch	f	1	f	2000-05-25	9003492	\N	\N	17650
estradiol 0.62 mg and norethindrone acetate 2.7 mg transdermal patch	f	1	f	2000-05-25	9003493	\N	\N	17651
vecuronium bromide 10 mg per vial powder for solution for injection	f	1	f	2000-06-01	9003494	\N	\N	17652
amylase 113400 unit and lipase 20880 unit and protease 112500 unit oral tablet	f	1	f	2000-06-02	9003495	\N	\N	17653
imiglucerase 400 unit per vial powder for solution for injection	f	1	f	2000-06-14	9003496	\N	\N	17654
triclosan 0.19 % cutaneous liquid	f	1	f	2000-06-19	9003497	\N	\N	17655
verteporfin 15 mg per vial powder for solution for injection	f	1	f	2000-06-26	9003498	\N	\N	17656
cabergoline 0.5 mg oral tablet	f	3	f	2000-06-30	9003499	\N	\N	17657
vancomycin (vancomycin hydrochloride) 10 g per vial powder for solution for injection	f	6	f	2000-07-10	9003500	\N	\N	17658
octinoxate 7.5 % and oxybenzone 2.5 % cutaneous stick	f	13	f	2000-07-12	9003501	\N	\N	17659
dipivefrin hydrochloride 0.1 % ophthalmic drops	f	1	f	2000-07-17	9003502	\N	\N	17660
guaifenesin 200 mg per 15 mL syrup	f	1	f	2000-08-01	9003503	\N	\N	17661
ketotifen (ketotifen fumarate) 0.25 mg per mL ophthalmic drops	f	2	f	2000-08-01	9003504	\N	\N	17662
anethole trithione 25 mg oral tablet	f	1	f	2000-08-02	9003505	\N	\N	17663
potassium chloride 14.9 mg per mL solution for injection	f	1	f	2000-08-10	9003506	\N	\N	17664
potassium chloride 29.8 mg per mL solution for injection	f	1	f	2000-08-10	9003507	\N	\N	17665
potassium chloride 7.46 mg per mL solution for injection	f	1	f	2000-08-10	9003508	\N	\N	17666
acetaminophen 500 mg and pseudoephedrine hydrochloride 60 mg oral tablet	f	2	f	2000-08-15	9003509	\N	\N	17667
exemestane 25 mg oral tablet	f	5	f	2000-08-17	9003510	\N	\N	17668
chloroxylenol 0.3 % cutaneous liquid	f	4	f	2000-08-18	9003511	\N	\N	17669
desmopressin acetate 10 mcg per spray nasal spray	f	1	f	2000-08-18	9003512	\N	\N	17670
triclosan 0.1 % cutaneous liquid	f	7	f	2000-08-21	9003513	\N	\N	17671
cyclophosphamide 50 mg oral tablet	f	1	f	2000-08-22	9003514	\N	\N	17672
standardized perennial rye grass pollen 10000 unit per mL solution for injection	f	2	f	2000-08-29	9003515	\N	\N	17673
vitamin b12 100 mcg per mL solution for injection	f	1	f	2000-08-29	9003516	\N	\N	17674
coal tar 0.5 % shampoo	f	1	f	2000-09-01	9003517	\N	\N	17675
cyclophosphamide 25 mg oral tablet	f	1	f	2000-09-01	9003518	\N	\N	17676
standardized orchard grass pollen 100000 unit per mL solution for injection	f	3	f	2000-09-06	9003519	\N	\N	17677
acetic acid 10.8 g per l and calcium chloride 6.24 g per l and dextrose 90 g per l and magnesium chloride 1.61 g per l and potassium chloride 13.42 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2000-09-08	9003520	\N	\N	17678
eprosartan (eprosartan mesylate) 400 mg oral tablet	f	1	f	2000-09-08	9003521	\N	\N	17679
standardized kentucky blue/june grass pollen 100000 unit per mL solution for injection	f	3	f	2000-09-26	9003522	\N	\N	17680
standardized kentucky blue/june grass pollen 10000 unit per mL solution for injection	f	1	f	2000-09-26	9003523	\N	\N	17681
bismuth subsalicylate 262 mg and calcium carbonate 675 mg oral tablet	f	1	f	2000-09-27	9003524	\N	\N	17682
standardized meadow fescue grass pollen 100000 unit per mL solution for injection	f	3	f	2000-10-03	9003525	\N	\N	17683
loxapine (loxapine succinate) 2.5 mg oral tablet	f	1	f	2000-10-05	9003526	\N	\N	17684
sweet vernal grass 100000 unit per mL solution for injection	f	1	f	2000-10-18	9003527	\N	\N	17685
pyrithione zinc 0.2 % cutaneous spray	f	1	f	2000-10-19	9003528	\N	\N	17686
basiliximab 20 mg per vial powder for solution for injection	f	1	f	2000-10-23	9003529	\N	\N	17687
cyclophosphamide 500 mg per vial powder for solution for injection	f	1	f	2000-10-26	9003530	\N	\N	17688
riluzole 50 mg oral tablet	f	3	f	2000-10-26	9003531	\N	\N	17689
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 2.5 mg kit	f	1	f	2000-10-30	9003532	\N	\N	17690
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 2.5 mg oral tablet	f	1	f	2000-10-30	9003533	\N	\N	17691
standardized perennial rye grass pollen 100000 unit per mL solution for injection	f	3	f	2000-10-30	9003534	\N	\N	17692
standardized redtop grass pollen 100000 unit per mL solution for injection	f	3	f	2000-10-30	9003535	\N	\N	17693
standardized sweet vernal grass pollen 100000 unit per mL solution for injection	f	2	f	2000-10-30	9003536	\N	\N	17694
standardized timothy grass pollen 100000 unit per mL solution for injection	f	3	f	2000-10-30	9003537	\N	\N	17695
oxygen 99.2 % medicinal gas	f	1	f	2000-11-01	9003538	\N	\N	17696
biotin 20 mcg per vial and dexpanthenol 5 mg per vial and folic acid 140 mcg per vial and nicotinamide 17 mg per vial and pyridoxine hydrochloride 1 mg per vial and vitamin a 2300 unit per vial and vitamin b12 (cyanocobalamin) 1 mcg per vial and vitamin b1 (thiamine hydrochloride) 1.2 mg per vial and vitamin b2 (riboflavin-5-phosphate) 1.4 mg per vial and vitamin c (ascorbic acid) 80 mg per vial and vitamin d 400 unit per vial and vitamin e (dl-alpha tocopheryl acetate) 7 unit per vial and vitamin k1 0.2 mg per vial solution for injection	f	1	t	2000-11-07	9003539	\N	\N	17697
standardized orchard grass pollen 10000 unit per mL solution for injection	f	1	f	2000-11-07	9003540	\N	\N	17698
bismuth subsalicylate 35 mg per mL oral suspension	f	1	f	2000-11-21	9003541	\N	\N	17699
cyclophosphamide 200 mg per vial powder for solution for injection	f	1	f	2000-11-26	9003542	\N	\N	17700
NA 0.1 mg per mL solution for injection	f	1	f	2000-11-28	9003543	\N	\N	17701
bupivacaine hydrochloride 7.5 mg per mL solution for injection	f	2	f	2000-12-01	9003544	\N	\N	17702
phentolamine mesylate 10 mg per mL solution for injection	f	1	f	2000-12-18	9003546	\N	\N	17704
gentamicin (gentamicin sulfate) 40 mg per mL solution for injection	f	2	f	2000-12-20	9003547	\N	\N	17705
cytarabine 10 mg per mL suspension for injection	f	1	f	2000-12-29	9003548	\N	\N	17706
calcium chloride 5.145 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL solution for haemodialysis	f	1	f	2001-01-01	9003549	\N	\N	17707
calcium chloride 5.145 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL solution for injection	f	1	f	2001-01-01	9003550	\N	\N	17708
trimethoprim 100 mg oral tablet	f	1	f	2001-01-01	9003551	\N	\N	17709
chlorhexidine gluconate 2 % cutaneous solution	f	4	f	2001-01-03	9003552	\N	\N	17710
cimetidine (cimetidine hydrochloride) 300 mg per 5 mL oral liquid	f	1	f	2001-01-05	9003553	\N	\N	17711
fexofenadine hydrochloride 120 mg oral tablet	f	1	f	2001-01-09	9003554	\N	\N	17712
ifosfamide 3 g per vial powder for solution for injection	f	1	f	2001-01-25	9003555	\N	\N	17713
amikacin (amikacin sulfate) 250 mg per mL solution for injection	f	1	f	2001-01-29	9003556	\N	\N	17714
octinoxate 7.5 % and octisalate 3 % and oxybenzone 3 % cutaneous ointment	f	1	f	2001-02-01	9003557	\N	\N	17715
bacitracin (bacitracin zinc) 400 unit per g and hydrocortisone 10 mg per g and neomycin (neomycin sulfate) 3.5 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g ophthalmic ointment	f	1	f	2001-02-14	9003558	\N	\N	17716
lactulose 667 mg per mL oral liquid	f	1	f	2001-02-19	9003559	\N	\N	17717
alfacalcidol 2 mcg per mL solution for injection	f	1	f	2001-02-20	9003560	\N	\N	17718
epoetin alfa 6000 unit per 0.6 mL solution for injection	f	1	f	2001-02-20	9003561	\N	\N	17719
epoetin alfa 8000 unit per 0.8 mL solution for injection	f	1	f	2001-02-20	9003562	\N	\N	17720
levonorgestrel 52 mg intrauterine delivery system	f	1	f	2001-02-22	9003563	\N	\N	17721
orphenadrine citrate 100 mg prolonged-release oral tablet	f	1	f	2001-02-27	9003564	\N	\N	17722
chloroxylenol 1 % cutaneous liquid	f	3	f	2001-03-01	9003565	\N	\N	17723
zolmitriptan 2.5 mg orodispersible tablet	f	12	f	2001-03-05	9003566	\N	\N	17724
mesna 100 mg per mL oral solution	f	2	f	2001-03-06	9003567	\N	\N	17725
mesna 100 mg per mL solution for injection	f	3	f	2001-03-06	9003568	\N	\N	17726
dibucaine hydrochloride 5 mg per g and esculin 10 mg per g and framycetin sulfate 10 mg per g and hydrocortisone 5 mg per g rectal ointment	f	3	f	2001-03-09	9003569	\N	\N	17727
lopinavir 80 mg per mL and ritonavir 20 mg per mL oral solution	f	1	f	2001-03-09	9003570	\N	\N	17728
pamabrom 50 mg oral tablet	f	1	f	2001-03-12	9003571	\N	\N	17729
etanercept 25 mg and water 1 mL NA	f	1	f	2001-03-14	9003572	\N	\N	17730
etanercept 25 mg and water 1 mL powder for solution for injection	f	1	f	2001-03-14	9003573	\N	\N	17731
etanercept 25 mg and water 1 mL solution for injection	f	1	f	2001-03-14	9003574	\N	\N	17732
octinoxate 2 % and padimate o 1.4 % cutaneous spray	f	1	f	2001-03-15	9003575	\N	\N	17733
ifosfamide 1 g per vial powder for solution for injection	f	2	f	2001-03-20	9003576	\N	\N	17734
prednicarbate 0.1 % cutaneous cream	f	1	f	2001-03-21	9003577	\N	\N	17735
prednicarbate 0.1 % cutaneous ointment	f	1	f	2001-03-21	9003578	\N	\N	17736
standardized bermuda grass pollen 10000 unit per mL solution for injection	f	1	f	2001-03-26	9003579	\N	\N	17737
fomepizole 1 g per mL solution for injection	f	2	f	2001-03-30	9003580	\N	\N	17738
allergen extract - alum precipitated 10000 unit per mL solution for injection	f	1	f	2001-04-01	9003581	\N	\N	17739
allergen extract - alum precipitated 1000 unit per mL solution for injection	f	1	f	2001-04-01	9003582	\N	\N	17740
allergen extract - alum precipitated 100 unit per mL solution for injection	f	1	f	2001-04-01	9003583	\N	\N	17741
allergen extract - diagnostic 0 unit per mL cutaneous liquid	f	1	f	2001-04-01	9003584	\N	\N	17742
allergen extract - diagnostic 0 unit per mL solution for injection	f	1	f	2001-04-01	9003585	\N	\N	17743
allergenic extracts 0 unit per mL solution for injection	f	1	f	2001-04-01	9003586	\N	\N	17744
linezolid 600 mg oral tablet	f	3	f	2001-04-06	9003587	\N	\N	17745
avobenzone 3 % and hydroquinone 4 % and octinoxate 7.5 % cutaneous cream	f	1	f	2001-04-09	9003588	\N	\N	17746
hydroquinone 4 % cutaneous cream	f	3	f	2001-04-09	9003589	\N	\N	17747
hepatitis b surface antigen (recombinant) 10 mcg per mL solution for injection	f	1	f	2001-04-11	9003590	\N	\N	17748
standardized meadow fescue grass pollen 10000 unit per mL solution for injection	f	1	f	2001-04-11	9003591	\N	\N	17749
sweet vernal grass 10000 unit per mL solution for injection	f	1	f	2001-04-11	9003592	\N	\N	17750
NA 40 mg per mL intravesical solution	f	1	f	2001-04-23	9003593	\N	\N	17751
acetylcysteine 200 mg per mL inhalation solution	f	1	f	2001-04-27	9003594	\N	\N	17752
acetylcysteine 200 mg per mL oral solution	f	1	f	2001-04-27	9003595	\N	\N	17753
acetylcysteine 200 mg per mL solution for injection	f	2	f	2001-04-27	9003596	\N	\N	17754
framycetin sulfate 12.5 mg per mL and gramicidin 0.05 mg per mL and phenylephrine hydrochloride 2.5 mg per mL nasal spray	f	1	f	2001-05-04	9003597	\N	\N	17755
framycetin sulfate 15 mg per g and gramicidin 50 mcg per g cutaneous ointment	f	1	f	2001-05-04	9003598	\N	\N	17756
calcium carbonate 800 mg and famotidine 10 mg and magnesium hydroxide 165 mg chewable tablet	f	1	f	2001-05-14	9003599	\N	\N	17757
sirolimus 1 mg per mL oral solution	f	1	f	2001-05-15	9003600	\N	\N	17758
eprosartan (eprosartan mesylate) 600 mg oral tablet	f	1	f	2001-05-25	9003601	\N	\N	17759
oxaprozin 600 mg oral tablet	f	1	f	2001-05-29	9003602	\N	\N	17760
calcium chloride 20 mg per 100 mL and potassium chloride 179 mg per 100 mL and sodium chloride 600 mg per 100 mL and sodium lactate 310 mg per 100 mL solution for injection	f	1	f	2001-05-31	9003603	\N	\N	17761
mepivacaine hydrochloride 1 % solution for injection	f	2	f	2001-06-01	9003604	\N	\N	17762
chloroxylenol 0.5 % cutaneous solution	f	1	f	2001-06-04	9003605	\N	\N	17763
chloroxylenol 1.25 % cutaneous solution	f	1	f	2001-06-04	9003606	\N	\N	17764
iron (iron sucrose) 20 mg per mL solution for injection	f	1	f	2001-06-05	9003607	\N	\N	17765
linezolid 2 mg per mL solution for injection	f	3	f	2001-06-07	9003608	\N	\N	17766
standardized redtop grass pollen 10000 unit per mL solution for injection	f	1	f	2001-06-11	9003609	\N	\N	17767
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % pad	f	1	f	2001-06-14	9003610	\N	\N	17768
infliximab 100 mg per vial powder for solution for injection	f	3	f	2001-06-14	9003611	\N	\N	17769
phentolamine mesylate 5 mg per mL solution for injection	f	1	f	2001-06-15	9003612	\N	\N	17770
misoprostol 100 mcg oral tablet	f	2	f	2001-06-18	9003613	\N	\N	17771
misoprostol 200 mcg oral tablet	f	2	f	2001-06-18	9003614	\N	\N	17772
avobenzone 3 % and octocrylene 10 % lotion	f	1	f	2001-06-19	9003615	\N	\N	17773
corynebacterium diphtheriae crm-197 protein 20 mcg per 0.5 mL and pneumococcal polysaccharide serotype 14 2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 18c 2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 19f 2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 23f 2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 4 2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 6b 4 mcg per 0.5 mL and pneumococcal polysaccharide serotype 9v 2 mcg per 0.5 mL suspension for injection	f	1	t	2001-06-20	9003616	\N	\N	17774
entacapone 200 mg oral tablet	f	4	f	2001-06-21	9003617	\N	\N	17775
bupivacaine hydrochloride 2.5 mg per mL and epinephrine bitartrate 9.1 mcg per mL solution for injection	f	1	f	2001-07-15	9003618	\N	\N	17776
bupivacaine hydrochloride 5 mg per mL and epinephrine bitartrate 9.1 mcg per mL solution for injection	f	1	f	2001-07-15	9003619	\N	\N	17777
mepivacaine hydrochloride 20 mg per mL solution for injection	f	1	f	2001-07-15	9003620	\N	\N	17778
tetracaine hydrochloride 20 mg per 2 mL powder for solution for injection	f	1	f	2001-07-15	9003621	\N	\N	17779
ceftazidime (ceftazidime pentahydrate) 1 g per vial powder for solution for injection	f	2	f	2001-07-18	9003622	\N	\N	17780
brompheniramine maleate 2 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL oral liquid	f	3	f	2001-07-23	9003623	\N	\N	17781
brompheniramine maleate 2 mg per 5 mL and dextromethorphan hydrobromide 10 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL oral liquid	f	3	f	2001-07-25	9003624	\N	\N	17782
mineral oil light 100 % cutaneous liquid	f	1	f	2001-07-27	9003625	\N	\N	17783
phenylephrine hydrochloride 10 mg per 1 mL solution for injection	f	1	f	2001-07-30	9003626	\N	\N	17784
trimethoprim 200 mg oral tablet	f	1	f	2001-07-30	9003627	\N	\N	17785
sufentanil (sufentanil citrate) 50 mcg per mL solution for injection	f	2	f	2001-08-01	9003628	\N	\N	17786
tretinoin 0.1 % cutaneous gel	f	1	f	2001-08-01	9003629	\N	\N	17787
tripelennamine hydrochloride 2 % cutaneous cream	f	1	f	2001-08-01	9003630	\N	\N	17788
framycetin sulfate 5 mg per g ophthalmic ointment	f	1	f	2001-08-03	9003631	\N	\N	17789
framycetin sulfate 5 mg per mL ophthalmic drops	f	1	f	2001-08-03	9003632	\N	\N	17790
gadoversetamide 330.9 mg per mL solution for injection	f	1	f	2001-08-20	9003633	\N	\N	17791
deferoxamine mesylate 2 g per vial powder for solution for injection	f	2	f	2001-08-21	9003634	\N	\N	17792
caspofungin (caspofungin acetate) 50 mg per vial powder for solution for injection	f	2	f	2001-08-23	9003635	\N	\N	17793
diluent 3.15 mL and somatropin 12 mg powder for solution for injection	f	1	f	2001-08-28	9003636	\N	\N	17794
diluent 3.15 mL and somatropin 12 mg solution for injection	f	1	f	2001-08-28	9003637	\N	\N	17795
pamidronate disodium 3 mg per mL solution for injection	f	4	f	2001-08-31	9003638	\N	\N	17796
pamidronate disodium 6 mg per mL solution for injection	f	4	f	2001-08-31	9003639	\N	\N	17797
pamidronate disodium 9 mg per mL solution for injection	f	4	f	2001-08-31	9003640	\N	\N	17798
tazarotene 0.05 % cutaneous cream	f	1	f	2001-08-31	9003641	\N	\N	17799
tazarotene 0.1 % cutaneous cream	f	1	f	2001-08-31	9003642	\N	\N	17800
acetaminophen 650 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck oral powder	f	1	f	2001-09-01	9003643	\N	\N	17801
benzoyl peroxide 5 % and clindamycin (clindamycin phosphate) 1 % cutaneous gel	f	3	f	2001-09-04	9003644	\N	\N	17802
brompheniramine maleate 2 mg per 5 mL and codeine phosphate 10 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2001-09-05	9003645	\N	\N	17803
brompheniramine maleate 2 mg per 5 mL and guaifenesin 100 mg per 5 mL and hydrocodone bitartrate 1.8 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2001-09-06	9003646	\N	\N	17804
misoprostol 0.1 mg oral tablet	f	1	f	2001-09-20	9003647	\N	\N	17805
misoprostol 0.2 mg oral tablet	f	1	f	2001-09-20	9003648	\N	\N	17806
methacholine chloride 1280 mg per vial powder for nebuliser solution	f	1	f	2001-09-24	9003649	\N	\N	17807
diluent 3.15 mL and somatropin 6 mg powder for solution for injection	f	1	f	2001-09-25	9003650	\N	\N	17808
diluent 3.15 mL and somatropin 6 mg solution for injection	f	1	f	2001-09-25	9003651	\N	\N	17809
standardized timothy grass pollen 10000 unit per mL solution for injection	f	2	f	2001-09-26	9003652	\N	\N	17810
brompheniramine maleate 2 mg per 5 mL and codeine phosphate 10 mg per 5 mL and guaifenesin 100 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2001-09-28	9003653	\N	\N	17811
miconazole nitrate 4 % vaginal cream	f	1	f	2001-10-10	9003654	\N	\N	17812
streptomycin (streptomycin sulfate) 1 g per vial powder for solution for injection	f	1	f	2001-10-15	9003655	\N	\N	17813
ceftazidime (ceftazidime pentahydrate) 6 g per vial powder for solution for injection	f	2	f	2001-10-16	9003656	\N	\N	17814
follitropin beta 833 unit per mL solution for injection	f	1	f	2001-10-18	9003657	\N	\N	17815
tenecteplase 50 mg per vial powder for solution for injection	f	1	f	2001-10-18	9003658	\N	\N	17816
caspofungin (caspofungin acetate) 70 mg per vial powder for solution for injection	f	2	f	2001-10-23	9003659	\N	\N	17817
follitropin beta 100 unit per 0.5 mL solution for injection	f	1	f	2001-10-24	9003660	\N	\N	17818
follitropin beta 50 unit per 0.5 mL solution for injection	f	1	f	2001-10-24	9003661	\N	\N	17819
lamivudine 150 mg and zidovudine 300 mg and NA 300 mg oral tablet	f	2	f	2001-10-29	9003662	\N	\N	17820
paclitaxel (taxus canadensis) 6 mg per mL solution for injection	f	1	f	2001-10-31	9003663	\N	\N	17821
acetylsalicylic acid 81 mg chewable tablet	f	3	f	2001-11-01	9003664	\N	\N	17822
floctafenine 200 mg oral tablet	f	1	f	2001-11-14	9003665	\N	\N	17823
floctafenine 400 mg oral tablet	f	1	f	2001-11-14	9003666	\N	\N	17824
sodium carboxymethyl cellulose 10 mg per mL ophthalmic drops	f	1	f	2001-11-19	9003667	\N	\N	17825
sevelamer hydrochloride 800 mg oral tablet	f	1	f	2001-11-21	9003668	\N	\N	17826
avobenzone 2 % and octinoxate 7.5 % and oxybenzone 4.5 % cutaneous cream	f	1	f	2001-11-23	9003669	\N	\N	17827
betamethasone (betamethasone dipropionate) 0.5 mg per g and calcipotriol 50 mcg per g cutaneous ointment	f	1	f	2001-11-29	9003670	\N	\N	17828
mitoxantrone (mitoxantrone hydrochloride) 2 mg per mL solution for injection	f	3	f	2001-12-03	9003671	\N	\N	17829
betamethasone (betamethasone sodium phosphate) 1 mg per mL and gentamicin (gentamicin sulfate) 3 mg per mL ophthalmic drops	f	1	f	2001-12-04	9003672	\N	\N	17830
betamethasone (betamethasone sodium phosphate) 1 mg per mL and gentamicin (gentamicin sulfate) 3 mg per mL otic drops	f	1	f	2001-12-04	9003673	\N	\N	17831
bosentan (bosentan monohydrate) 125 mg oral tablet	f	6	f	2001-12-14	9003674	\N	\N	17832
bosentan (bosentan monohydrate) 62.5 mg oral tablet	f	6	f	2001-12-14	9003675	\N	\N	17833
midazolam (midazolam hydrochloride) 1 mg per mL solution for injection	f	1	f	2001-12-17	9003676	\N	\N	17834
midazolam (midazolam hydrochloride) 5 mg per mL solution for injection	f	1	f	2001-12-17	9003677	\N	\N	17835
laronidase 0.58 mg per mL solution for injection	f	1	f	2004-08-12	9003931	\N	\N	17836
NA 50 mg per vial powder for solution for injection	f	1	f	2001-12-20	9003678	\N	\N	17837
doxorubicin hydrochloride 2 mg per mL powder for suspension for infusion	f	1	f	2001-12-21	9003679	\N	\N	17838
ceftazidime (ceftazidime pentahydrate) 2 g per vial powder for solution for injection	f	2	f	2001-12-28	9003680	\N	\N	17839
acetaminophen 325 mg per 22 g and pheniramine maleate 20 mg per 22 g and phenylephrine hydrochloride 10 mg per 22 g and vitamin c (ascorbic acid) 50 mg per 22 g oral powder	f	2	f	2001-12-29	9003681	\N	\N	17840
acetaminophen 650 mg per 22 mg and pheniramine maleate 20 mg per 22 mg and phenylephrine hydrochloride 10 mg per 22 mg and vitamin c 50 mg per 22 mg oral powder	f	1	f	2001-12-29	9003682	\N	\N	17841
dextromethorphan hydrobromide 30 mg per 22 g and pheniramine maleate 20 mg per 22 g and phenylephrine hydrochloride 10 mg per 22 g powder for oral solution	f	1	f	2001-12-29	9003683	\N	\N	17842
didanosine 125 mg gastro-resistant capsule	f	1	f	2002-01-02	9003684	\N	\N	17843
didanosine 200 mg gastro-resistant capsule	f	1	f	2002-01-02	9003685	\N	\N	17844
didanosine 250 mg gastro-resistant capsule	f	1	f	2002-01-02	9003686	\N	\N	17845
didanosine 400 mg gastro-resistant capsule	f	1	f	2002-01-02	9003687	\N	\N	17846
acetaminophen 500 mg and diphenhydramine hydrochloride 12.5 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	1	f	2002-01-04	9003688	\N	\N	17847
acetaminophen 80 mg and chlorpheniramine maleate 0.5 mg and phenylephrine hydrochloride 1.25 mg oral tablet	f	1	f	2002-01-09	9003689	\N	\N	17848
desloratadine 5 mg oral tablet	f	5	f	2002-01-10	9003690	\N	\N	17849
meningococcal polysaccharide vaccine grp c 10 mcg per 0.5 mL and tetanus toxoid 20 mcg per 0.5 mL suspension for injection	f	1	f	2002-01-21	9003691	\N	\N	17850
biotin 12 mcg per mL and dexpanthenol (panthenol) 3 mg per mL and folic acid 80 mcg per mL and nicotinamide 8 mg per mL and pyridoxine hydrochloride 0.8 mg per mL and vitamin a 660 unit per mL and vitamin b12 (cyanocobalamin) 1 mcg per mL and vitamin b1 (thiamine hydrochloride) 0.6 mg per mL and vitamin b2 0.72 mg per mL and vitamin c 20 mg per mL and vitamin e (dl-alpha tocopheryl acetate) 2 unit per mL solution for injection	f	1	t	2002-01-28	9003692	\N	\N	17851
camphor 0.3 g per 100 g and glycol salicylate 1.25 g per 100 g and l-menthol 1 g per 100 g plaster	f	1	f	2002-02-01	9003693	\N	\N	17852
homosalate 14.5 % and octinoxate 7.4 % and oxybenzone 5.9 % cutaneous ointment	f	1	f	2002-02-02	9003694	\N	\N	17853
phospholipid 27 mg per mL and surfactant-associated proteins sp-b and sp-c 500 mcg per mL endotracheopulmonary instillation	f	1	f	2002-02-05	9003695	\N	\N	17854
budesonide 100 mcg and formoterol fumarate 6 mcg inhalation powder	f	1	f	2002-02-08	9003696	\N	\N	17855
budesonide 200 mcg and formoterol fumarate 6 mcg inhalation powder	f	1	f	2002-02-08	9003697	\N	\N	17856
perflutren 150 mcl per mL suspension for injection	f	1	f	2002-02-16	9003698	\N	\N	17857
lidocaine hydrochloride 2 % cutaneous liquid	f	1	f	2002-03-01	9003699	\N	\N	17858
trolamine salicylate 20 % cutaneous cream	f	2	f	2002-03-01	9003700	\N	\N	17859
avobenzone 2 % and octinoxate 8.5 % and oxybenzone 4 % lotion	f	1	f	2002-03-11	9003701	\N	\N	17860
glimepiride 1 mg oral tablet	f	3	f	2002-03-12	9003702	\N	\N	17861
glimepiride 2 mg oral tablet	f	3	f	2002-03-12	9003703	\N	\N	17862
glimepiride 4 mg oral tablet	f	3	f	2002-03-12	9003704	\N	\N	17863
octinoxate 7.5 % and oxybenzone 3 % and titanium dioxide 1 % cutaneous cream	f	1	f	2002-03-21	9003705	\N	\N	17864
oxcarbazepine 150 mg oral tablet	f	3	f	2002-04-01	9003706	\N	\N	17865
oxcarbazepine 300 mg oral tablet	f	3	f	2002-04-01	9003707	\N	\N	17866
oxcarbazepine 600 mg oral tablet	f	3	f	2002-04-01	9003708	\N	\N	17867
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % cutaneous cream	f	4	f	2002-04-08	9003709	\N	\N	17868
glatiramer acetate 20 mg per mL solution for injection	f	1	f	2002-05-01	9003710	\N	\N	17869
polycarbophil (calcium polycarbophil) 500 mg oral tablet	f	2	f	2002-05-01	9003711	\N	\N	17870
sodium hypochlorite 0.057 % cutaneous liquid	f	1	f	2002-05-01	9003712	\N	\N	17871
sodium hypochlorite 0.114 % cutaneous liquid	f	1	f	2002-05-01	9003713	\N	\N	17872
tirofiban (tirofiban hydrochloride) 5 mg per 100 mL solution for injection	f	1	f	2002-05-01	9003714	\N	\N	17873
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 5 mg kit	f	1	f	2002-05-09	9003715	\N	\N	17874
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 5 mg oral tablet	f	1	f	2002-05-09	9003716	\N	\N	17875
ipratropium bromide 0.5 mg per 2.5 mL and salbutamol (salbutamol sulfate) 2.5 mg per 2.5 mL inhalation solution	f	3	f	2002-05-14	9003717	\N	\N	17876
enoxaparin sodium 120 mg per 0.8 mL solution for injection	f	1	f	2002-05-21	9003718	\N	\N	17877
ketoconazole 2 % cutaneous cream	f	1	f	2002-05-23	9003719	\N	\N	17878
glucagon (recombinant dna origin) 1 mg per vial kit	f	1	f	2002-05-27	9003720	\N	\N	17879
glucagon (recombinant dna origin) 1 mg per vial NA	f	1	f	2002-05-27	9003721	\N	\N	17880
glucagon (recombinant dna origin) 1 mg per vial powder for solution for injection	f	1	f	2002-05-27	9003722	\N	\N	17881
anakinra 150 mg per mL solution for injection	f	1	f	2002-05-29	9003723	\N	\N	17882
vitamin c (ascorbic acid) 500 mg per mL solution for injection	f	2	f	2002-05-29	9003724	\N	\N	17883
avobenzone 2.5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % and titanium dioxide 0.8 % cutaneous cream	f	1	f	2002-06-01	9003725	\N	\N	17884
dimethicone 2 % lotion	f	1	f	2002-06-01	9003726	\N	\N	17885
sodium carboxymethyl cellulose 0.25 % ophthalmic drops	f	2	f	2002-06-01	9003727	\N	\N	17886
octinoxate 7.5 % and titanium dioxide 3 % cutaneous cream	f	1	f	2002-06-03	9003728	\N	\N	17887
NA 100 mg per mL solution for injection	f	1	f	2002-06-13	9003729	\N	\N	17888
diphenhydramine hydrochloride 6.25 mg per 5 mL syrup	f	2	f	2002-06-19	9003730	\N	\N	17889
loperamide hydrochloride 2 mg and simethicone 125 mg oral tablet	f	1	f	2002-06-20	9003731	\N	\N	17890
epoetin alfa 5000 unit per 0.5 mL solution for injection	f	1	f	2002-07-01	9003732	\N	\N	17891
trandolapril 2 mg and verapamil hydrochloride 240 mg prolonged-release oral tablet	f	1	f	2002-07-15	9003733	\N	\N	17892
trandolapril 4 mg and verapamil hydrochloride 240 mg prolonged-release oral tablet	f	1	f	2002-07-15	9003734	\N	\N	17893
valganciclovir (valganciclovir hydrochloride) 450 mg oral tablet	f	4	f	2002-07-16	9003735	\N	\N	17894
fondaparinux sodium 2.5 mg per 0.5 mL solution for injection	f	2	f	2002-07-19	9003736	\N	\N	17895
mefloquine (mefloquine hydrochloride) 250 mg oral tablet	f	1	f	2002-07-23	9003737	\N	\N	17896
methazolamide 50 mg oral tablet	f	1	f	2002-07-25	9003738	\N	\N	17897
dexamethasone (dexamethasone sodium metasulphobenzoate) 0.5 mg per mL and framycetin sulfate 5 mg per mL and gramicidin 0.05 mg per mL ophthalmic drops	f	2	f	2002-07-26	9003739	\N	\N	17898
dexamethasone (dexamethasone sodium metasulphobenzoate) 0.5 mg per mL and framycetin sulfate 5 mg per mL and gramicidin 0.05 mg per mL otic drops	f	2	f	2002-07-26	9003740	\N	\N	17899
NA 36 mg transdermal patch	f	1	f	2004-08-12	9003932	\N	\N	17900
brompheniramine maleate 4 mg per 5 mL and dextromethorphan hydrobromide 20 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL oral liquid	f	2	f	2002-08-01	9003741	\N	\N	17901
brompheniramine maleate 4 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL oral liquid	f	1	f	2002-08-01	9003742	\N	\N	17902
flunarizine (flunarizine hydrochloride) 5 mg oral capsule	f	1	f	2002-08-08	9003743	\N	\N	17903
thyrotropin alfa 0.9 mg per mL powder for solution for injection	f	1	f	2002-08-12	9003744	\N	\N	17904
ganirelix (ganirelix acetate) 250 mcg per 0.5 mL solution for injection	f	1	f	2002-08-23	9003745	\N	\N	17905
mycophenolate mofetil 200 mg per mL powder for oral suspension	f	1	f	2002-08-27	9003746	\N	\N	17906
avobenzone 1.8 % and octinoxate 7.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2002-09-01	9003747	\N	\N	17907
avobenzone 2 % and ensulizole 1 % and octisalate 4 % and octocrylene 1 % lotion	f	1	f	2002-09-01	9003748	\N	\N	17908
oxcarbazepine 60 mg per mL oral suspension	f	1	f	2002-09-05	9003749	\N	\N	17909
chlorhexidine gluconate 2 % lotion	f	1	f	2002-09-09	9003750	\N	\N	17910
acetylsalicylic acid 325 mg and citric acid 1000 mg and sodium bicarbonate 1700 mg effervescent oral tablet	f	1	f	2002-09-10	9003751	\N	\N	17911
ammonium chloride 125 mg per 5 mL and codeine phosphate 3.3 mg per 5 mL and diphenhydramine hydrochloride 12.5 mg per 5 mL syrup	f	1	f	2002-09-13	9003752	\N	\N	17912
triclosan 0.5 % cutaneous solution	f	3	f	2002-09-15	9003753	\N	\N	17913
dimenhydrinate 50 mg oral capsule	f	2	f	2002-09-23	9003754	\N	\N	17914
fludarabine phosphate 10 mg oral tablet	f	1	f	2002-09-24	9003755	\N	\N	17915
alteplase 1 mg per mL powder for solution for injection	f	1	f	2002-09-26	9003756	\N	\N	17916
palivizumab 100 mg per vial powder for solution for injection	f	1	f	2002-09-26	9003757	\N	\N	17917
palivizumab 50 mg per vial powder for solution for injection	f	1	f	2002-09-26	9003758	\N	\N	17918
octinoxate 5 % lotion	f	1	f	2002-09-30	9003759	\N	\N	17919
trimebutine maleate 100 mg oral tablet	f	1	f	2002-10-21	9003760	\N	\N	17920
hepatitis b surface antigen (recombinant) 40 mcg per mL solution for injection	f	1	f	2002-10-24	9003761	\N	\N	17921
latanoprost 50 mcg per mL and timolol (timolol maleate) 5 mg per mL ophthalmic drops	f	6	f	2002-10-24	9003762	\N	\N	17922
phenylephrine hydrochloride 1 % solution for injection	f	1	f	2002-11-01	9003763	\N	\N	17923
efavirenz 600 mg oral tablet	f	4	f	2002-11-05	9003764	\N	\N	17924
pyrithione zinc 1 g per 100 g shampoo	f	1	f	2002-11-27	9003765	\N	\N	17925
benzethonium chloride 0.1 % cutaneous liquid	f	1	f	2002-12-01	9003766	\N	\N	17926
varicella-zoster virus vaccine live attenuated (oka/merck strain) 1350 unit per 0.5 mL powder for solution for injection	f	1	f	2002-12-02	9003767	\N	\N	17927
cefuroxime (cefuroxime sodium) 750 mg per vial powder for solution for injection	f	2	f	2002-12-05	9003768	\N	\N	17928
cefuroxime (cefuroxime sodium) 7.5 g per vial powder for solution for injection	f	2	f	2002-12-05	9003769	\N	\N	17929
cefuroxime (cefuroxime sodium) 1.5 g per vial powder for solution for injection	f	2	f	2002-12-10	9003770	\N	\N	17930
lidocaine 5 % cutaneous gel	f	3	f	2002-12-17	9003771	\N	\N	17931
octinoxate 3 % and titanium dioxide 1.2 % cutaneous emulsion	f	1	f	2003-01-01	9003772	\N	\N	17932
octinoxate 6 % and oxybenzone 2 % and titanium dioxide 15 % cutaneous powder	f	1	f	2003-01-01	9003773	\N	\N	17933
dextran 70 0.1 % and glycerine 0.2 % and hypromellose 0.3 % ophthalmic drops	f	1	f	2003-01-02	9003774	\N	\N	17934
hydroquinone 4 % cutaneous gel	f	1	f	2003-01-13	9003775	\N	\N	17935
piperacillin (piperacillin sodium) 2 g per vial powder for solution for injection	f	2	f	2003-01-23	9003776	\N	\N	17936
piperacillin (piperacillin sodium) 3 g per vial powder for solution for injection	f	2	f	2003-01-23	9003777	\N	\N	17937
piperacillin (piperacillin sodium) 4 g per vial powder for solution for injection	f	2	f	2003-01-23	9003778	\N	\N	17938
hydroquinone 2 % cutaneous gel	f	1	f	2003-01-29	9003779	\N	\N	17939
ursodiol 500 mg oral tablet	f	4	f	2003-02-03	9003780	\N	\N	17940
triclosan 0.375 % cutaneous liquid	f	1	f	2003-03-04	9003781	\N	\N	17941
acetaminophen 500 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	2	f	2003-03-07	9003782	\N	\N	17942
cetirizine hydrochloride 5 mg and pseudoephedrine hydrochloride 120 mg prolonged-release oral tablet	f	1	f	2003-03-07	9003783	\N	\N	17943
docusate sodium 50 mg and sennosides 8.6 mg oral tablet	f	5	f	2003-03-07	9003784	\N	\N	17944
methacholine chloride 160 mg per vial powder for nebuliser solution	f	1	f	2003-03-12	9003785	\N	\N	17945
methacholine chloride 320 mg per vial powder for nebuliser solution	f	1	f	2003-03-12	9003786	\N	\N	17946
octinoxate 7.5 % and octisalate 5 % and octocrylene 7 % and oxybenzone 5 % cutaneous stick	f	2	f	2003-03-14	9003787	\N	\N	17947
avobenzone 2 % and ensulizole 1 % and octisalate 4 % and octocrylene 1.25 % lotion	f	1	f	2003-03-15	9003788	\N	\N	17948
pimecrolimus 1 % cutaneous cream	f	1	f	2003-03-24	9003789	\N	\N	17949
sirolimus 1 mg oral tablet	f	1	f	2003-03-25	9003790	\N	\N	17950
pramoxine hydrochloride 1 % and zinc acetate 0.1 % lotion	f	2	f	2003-04-02	9003791	\N	\N	17951
avobenzone 3 % and ensulizole 1.5 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 1 % lotion	f	1	f	2003-04-09	9003792	\N	\N	17952
hepatitis a vaccine, inactivated 80 unit per 0.5 mL suspension for injection	f	1	f	2003-04-09	9003793	\N	\N	17953
varicella-zoster virus vaccine live attenuated (oka/merck strain) 2000 unit per 0.5 mL and water 0.5 mL powder for solution for injection	f	1	f	2003-04-09	9003794	\N	\N	17954
recombinant cholera toxin b subunit 1 mg and vibrio cholerae inaba 48 classical biotype, heat inactivated 2.5e+10 unit and vibrio cholerae inaba 6973 e1 tor biotype, formalin inactivated 2.5e+10 unit and vibrio cholerae ogawa 50 classical biotype, formalin inactivated 2.5e+10 unit and vibrio cholerae ogawa 50 classical biotype, heat inactivated 2.5e+10 unit oral suspension	f	1	f	2003-04-15	9003795	\N	\N	17955
acetylsalicylic acid 80 mg oral tablet	f	5	f	2003-04-21	9003796	\N	\N	17956
pamidronate disodium 30 mg per vial powder for solution for injection	f	1	f	2003-04-23	9003797	\N	\N	17957
pamidronate disodium 90 mg per vial powder for solution for injection	f	1	f	2003-04-23	9003798	\N	\N	17958
anti-thymocyte globulin (rabbit) 25 mg per vial powder for solution for injection	f	1	f	2003-05-06	9003799	\N	\N	17959
NA 250 mg per vial powder for solution for injection	f	1	f	2003-05-08	9003800	\N	\N	17960
lidocaine 4 % cutaneous cream	f	1	f	2003-05-15	9003801	\N	\N	17961
lidocaine 5 % cutaneous cream	f	3	f	2003-05-15	9003802	\N	\N	17962
simethicone 180 mg oral tablet	f	1	f	2003-05-16	9003803	\N	\N	17963
cyproheptadine hydrochloride 2 mg per 5 mL syrup	f	1	f	2003-05-27	9003804	\N	\N	17964
acetaminophen 250 mg and dextromethorphan hydrobromide 10 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	8	f	2003-06-04	9003805	\N	\N	17965
paliperidone 3 mg prolonged-release oral tablet	f	1	f	2007-10-02	9004337	\N	\N	17966
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck oral powder	f	2	f	2003-06-18	9003806	\N	\N	17967
milrinone (milrinone lactate) 1 mg per mL solution for injection	f	2	f	2003-06-25	9003807	\N	\N	17968
allergenic extract non-pollen 40000 unit per mL solution for injection	f	3	f	2003-06-30	9003808	\N	\N	17969
allergenic extracts pollens 40000 unit per mL solution for injection	f	3	f	2003-06-30	9003809	\N	\N	17970
alcohol anhydrous 61 % and chlorhexidine gluconate 1 % lotion	f	1	f	2003-07-02	9003810	\N	\N	17971
ibuprofen 200 mg and methocarbamol 500 mg oral tablet	f	7	f	2003-07-02	9003811	\N	\N	17972
acetaminophen 500 mg per 15 mL and dextromethorphan hydrobromide 15 mg per 15 mL and guaifenesin 100 mg per 15 mL and pseudoephedrine hydrochloride 30 mg per 15 mL syrup	f	4	f	2003-07-03	9003812	\N	\N	17973
octinoxate 7.5 % and oxybenzone 2 % cutaneous emulsion	f	2	f	2003-07-18	9003813	\N	\N	17974
calcium chloride 0.507 g per l and dextrose 106.5 g per l and magnesium chloride 0.14 g per l and sodium bicarbonate 3.29 g per l and sodium chloride 8.43 g per l and sodium lactate 2.63 g per l solution for haemodialysis	f	1	t	2003-08-05	9003814	\N	\N	17975
calcium chloride 0.507 g per l and dextrose 37.5 g per l and magnesium chloride 0.14 g per l and sodium bicarbonate 3.29 g per l and sodium chloride 8.43 g per l and sodium lactate 2.63 g per l solution for haemodialysis	f	1	t	2003-08-05	9003815	\N	\N	17976
calcium chloride 0.507 g per l and dextrose 62.6 g per l and magnesium chloride 0.14 g per l and sodium bicarbonate 3.29 g per l and sodium chloride 8.43 g per l and sodium lactate 2.63 g per l solution for haemodialysis	f	1	t	2003-08-05	9003816	\N	\N	17977
cefotaxime sodium 2 g per vial powder for solution for injection	f	2	f	2003-08-11	9003817	\N	\N	17978
peginterferon alfa-2a 180 mcg per 0.5 mL solution for injection	f	1	f	2003-08-14	9003818	\N	\N	17979
peginterferon alfa-2a 180 mcg per mL solution for injection	f	1	f	2003-08-14	9003819	\N	\N	17980
enfuvirtide 108 mg per vial powder for solution for injection	f	1	f	2003-08-18	9003820	\N	\N	17981
octinoxate 7.5 g per 100 g and octisalate 5 g per 100 g and oxybenzone 5 g per 100 g cutaneous cream	f	3	f	2003-08-20	9003821	\N	\N	17982
ertapenem (ertapenem sodium) 1 g per vial powder for solution for injection	f	1	f	2003-08-27	9003822	\N	\N	17983
bacitracin 50000 unit per vial powder for cutaneous solution	f	1	f	2003-08-28	9003823	\N	\N	17984
bacitracin 50000 unit per vial powder for solution for injection	f	1	f	2003-08-28	9003824	\N	\N	17985
menotropins 75 unit per vial powder for solution for injection	f	2	f	2003-08-28	9003825	\N	\N	17986
acetylsalicylic acid 162 mg gastro-resistant tablet	f	1	f	2003-09-02	9003826	\N	\N	17987
lamivudine 300 mg oral tablet	f	3	f	2003-09-09	9003827	\N	\N	17988
disopyramide 100 mg oral capsule	f	1	f	2003-09-12	9003828	\N	\N	17989
avobenzone 2 % and octinoxate 7 % and oxybenzone 5 % cutaneous cream	f	2	f	2003-10-01	9003829	\N	\N	17990
cefotaxime sodium 1 g per vial powder for solution for injection	f	2	f	2003-10-10	9003830	\N	\N	17991
petrolatum 49.5 % and zinc oxide 40 % cutaneous ointment	f	1	f	2003-10-10	9003831	\N	\N	17992
immune globulin (human) 10 g per 100 mL solution for injection	f	2	f	2003-10-22	9003832	\N	\N	17993
octinoxate 3.4 % and octocrylene 2.2 % and oxybenzone 0.9 % cutaneous suspension	f	1	f	2003-10-25	9003833	\N	\N	17994
octinoxate 7.5 % and octocrylene 5 % and oxybenzone 2 % cutaneous cream	f	1	f	2003-10-25	9003834	\N	\N	17995
famotidine 10 mg per mL solution for injection	f	2	f	2003-10-30	9003835	\N	\N	17996
cyclophosphamide 2000 mg per vial powder for solution for injection	f	1	f	2003-11-03	9003836	\N	\N	17997
octinoxate 7.5 % and zinc oxide 3 % cutaneous cream	f	1	f	2003-11-03	9003837	\N	\N	17998
brimonidine tartrate 0.15 % ophthalmic drops	f	2	f	2003-11-05	9003838	\N	\N	17999
petrolatum 55 % cutaneous cream	f	1	f	2003-11-15	9003839	\N	\N	18000
cyclophosphamide 1000 mg per vial powder for solution for injection	f	1	f	2003-11-18	9003840	\N	\N	18001
acetaminophen 650 mg and diphenhydramine hydrochloride 50 mg and pseudoephedrine hydrochloride 60 mg oral tablet	f	1	f	2003-11-21	9003841	\N	\N	18002
acetaminophen 650 mg and dextromethorphan hydrobromide 30 mg and pseudoephedrine hydrochloride 60 mg oral tablet	f	1	f	2003-11-26	9003842	\N	\N	18003
leuprolide acetate 10.2 mg NA	f	1	f	2003-12-01	9003843	\N	\N	18004
leuprolide acetate 28.2 mg NA	f	1	f	2003-12-01	9003844	\N	\N	18005
NA 625 mg oral tablet	f	1	f	2003-12-03	9003845	\N	\N	18006
almotriptan (almotriptan malate) 12.5 mg oral tablet	f	6	f	2003-12-08	9003846	\N	\N	18007
almotriptan (almotriptan malate) 6.25 mg oral tablet	f	3	f	2003-12-08	9003847	\N	\N	18008
diluent 3.15 mL and somatropin 24 mg powder for solution for injection	f	1	f	2003-12-08	9003848	\N	\N	18009
diluent 3.15 mL and somatropin 24 mg solution for injection	f	1	f	2003-12-08	9003849	\N	\N	18010
brimonidine tartrate 0.2 % and timolol (timolol maleate) 0.5 % ophthalmic drops	f	1	f	2003-12-11	9003850	\N	\N	18011
gefitinib 250 mg oral tablet	f	1	f	2003-12-17	9003851	\N	\N	18012
follitropin alfa 5.5 mcg per vial powder for solution for injection	f	1	f	2003-12-29	9003852	\N	\N	18013
follitropin alfa 33 mcg per vial powder for solution for injection	f	1	f	2003-12-30	9003853	\N	\N	18014
follitropin alfa 77 mcg per vial powder for solution for injection	f	1	f	2003-12-30	9003854	\N	\N	18015
avobenzone 2 % and homosalate 5 % and octinoxate 7.5 % and oxybenzone 5 % cutaneous cream	f	1	f	2004-01-05	9003855	\N	\N	18016
octinoxate 5 % and titanium dioxide 2 % cutaneous powder	f	1	f	2004-01-05	9003856	\N	\N	18017
atazanavir (atazanavir sulfate) 150 mg oral capsule	f	3	f	2004-01-09	9003857	\N	\N	18018
atazanavir (atazanavir sulfate) 200 mg oral capsule	f	3	f	2004-01-09	9003858	\N	\N	18019
acetaminophen 325 mg and chlorpheniramine maleate 2 mg oral tablet	f	1	f	2004-01-12	9003859	\N	\N	18020
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg oral tablet	f	2	f	2004-01-12	9003860	\N	\N	18021
chlorpheniramine maleate 4 mg and dextromethorphan hydrobromide 30 mg oral tablet	f	2	f	2004-01-12	9003861	\N	\N	18022
hydrocortisone acetate 5 mg per g and zinc sulfate 5 mg per g cutaneous ointment	f	1	f	2004-01-14	9003862	\N	\N	18023
alcohol anhydrous 54.1 % and butanediol 5.7 % and propyl alcohol 10 % and propylene glycol 5.9 % cutaneous solution	f	1	f	2004-01-20	9003863	\N	\N	18024
hydrocortisone acetate 5 mg per g and pramoxine hydrochloride 10 mg per g and zinc sulfate 5 mg per g cutaneous ointment	f	1	f	2004-01-20	9003864	\N	\N	18025
hydrocortisone acetate 5 mg per g and pramoxine hydrochloride 10 mg per g and zinc sulfate 5 mg per g rectal ointment	f	1	f	2004-01-20	9003865	\N	\N	18026
amphetamine aspartate 1.25 mg and amphetamine sulfate 1.25 mg and dextroamphetamine saccharate 1.25 mg and dextroamphetamine sulfate 1.25 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003866	\N	\N	18027
chorionic gonadotropin 10000 unit per vial powder for solution for injection	f	1	f	2004-09-13	9003933	\N	\N	18028
amphetamine aspartate 2.5 mg and amphetamine sulfate 2.5 mg and dextroamphetamine saccharate 2.5 mg and dextroamphetamine sulfate 2.5 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003867	\N	\N	18029
amphetamine aspartate 3.75 mg and amphetamine sulfate 3.75 mg and dextroamphetamine saccharate 3.75 mg and dextroamphetamine sulfate 3.75 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003868	\N	\N	18030
amphetamine aspartate 5 mg and amphetamine sulfate 5 mg and dextroamphetamine saccharate 5 mg and dextroamphetamine sulfate 5 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003869	\N	\N	18031
amphetamine aspartate 6.25 mg and amphetamine sulfate 6.25 mg and dextroamphetamine saccharate 6.25 mg and dextroamphetamine sulfate 6.25 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003870	\N	\N	18032
amphetamine aspartate 7.5 mg and amphetamine sulfate 7.5 mg and dextroamphetamine saccharate 7.5 mg and dextroamphetamine sulfate 7.5 mg prolonged-release oral capsule	f	4	f	2004-01-30	9003871	\N	\N	18033
gadobutrol 604.72 mg per mL solution for injection	f	1	f	2004-01-30	9003872	\N	\N	18034
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL oral liquid	f	1	f	2004-02-01	9003873	\N	\N	18035
guaifenesin 600 mg and pseudoephedrine hydrochloride 120 mg prolonged-release oral tablet	f	1	f	2004-02-02	9003874	\N	\N	18036
benzethonium chloride 0.2 % cutaneous liquid	f	4	f	2004-02-09	9003875	\N	\N	18037
acetaminophen 650 mg per 24 g and chlorpheniramine maleate 4 mg per 24 g and dextromethorphan hydrobromide 20 mg per 24 g and pseudoephedrine hydrochloride 60 mg per 24 g oral powder	f	1	f	2004-02-13	9003876	\N	\N	18038
avobenzone 2 % and octisalate 5 % and octocrylene 10 % cutaneous cream	f	1	f	2004-03-01	9003877	\N	\N	18039
cetrorelix (cetrorelix acetate) 0.25 mg per vial powder for solution for injection	f	1	f	2004-03-03	9003878	\N	\N	18040
pramoxine hydrochloride 10 mg per g and zinc sulfate 5 mg per g cutaneous ointment	f	1	f	2004-03-05	9003879	\N	\N	18041
benzalkonium chloride 0.3 % cutaneous liquid	f	1	f	2004-03-09	9003880	\N	\N	18042
octinoxate 7.5 % and oxybenzone 5 % and zinc oxide 4 % cutaneous ointment	f	1	f	2004-03-12	9003881	\N	\N	18043
pegfilgrastim 10 mg per mL solution for injection	f	1	f	2004-03-12	9003882	\N	\N	18044
tenofovir disoproxil fumarate 300 mg oral tablet	f	1	f	2004-03-15	9003883	\N	\N	18045
vardenafil (vardenafil hydrochloride) 10 mg oral tablet	f	1	f	2004-03-17	9003884	\N	\N	18046
vardenafil (vardenafil hydrochloride) 20 mg oral tablet	f	1	f	2004-03-17	9003885	\N	\N	18047
vardenafil (vardenafil hydrochloride) 5 mg oral tablet	f	1	f	2004-03-17	9003886	\N	\N	18048
agalsidase alfa 1 mg per mL solution for injection	f	1	f	2004-03-18	9003887	\N	\N	18049
glycerine 0.26 % and naphazoline hydrochloride 0.012 % and zinc sulfate 0.25 % ophthalmic drops	f	1	f	2004-03-24	9003888	\N	\N	18050
polyvinyl alcohol 5 mg per mL and povidone 6 mg per mL ophthalmic drops	f	1	f	2004-03-24	9003889	\N	\N	18051
avobenzone 2.5 % and octinoxate 7.5 % and octisalate 4 % lotion	f	2	f	2004-03-25	9003890	\N	\N	18052
avobenzone 2 % and octinoxate 7.5 % and octisalate 3 % lotion	f	1	f	2004-04-01	9003891	\N	\N	18053
octinoxate 6 % and octisalate 4 % and octocrylene 8 % and oxybenzone 5 % cutaneous spray	f	1	f	2004-04-01	9003892	\N	\N	18054
octinoxate 7.5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 6 % lotion	f	1	f	2004-04-01	9003893	\N	\N	18055
fluvastatin (fluvastatin sodium) 80 mg prolonged-release oral tablet	f	1	f	2004-04-05	9003894	\N	\N	18056
agalsidase beta 35 mg per vial powder for solution for injection	f	1	f	2004-04-08	9003895	\N	\N	18057
polyethylene glycol 400 0.4 % and propylene glycol 0.3 % ophthalmic drops	f	1	f	2004-04-08	9003896	\N	\N	18058
nitrogen 99.5 % medicinal gas	f	1	f	2004-04-15	9003897	\N	\N	18059
flumazenil 0.1 mg per mL solution for injection	f	2	f	2004-04-21	9003898	\N	\N	18060
leuprolide acetate 35.8 mg NA	f	1	f	2004-04-29	9003899	\N	\N	18061
treprostinil (treprostinil sodium) 10 mg per mL solution for injection	f	1	f	2004-04-30	9003900	\N	\N	18062
treprostinil (treprostinil sodium) 1 mg per mL solution for injection	f	1	f	2004-04-30	9003901	\N	\N	18063
treprostinil (treprostinil sodium) 2.5 mg per mL solution for injection	f	1	f	2004-04-30	9003902	\N	\N	18064
treprostinil (treprostinil sodium) 5 mg per mL solution for injection	f	1	f	2004-04-30	9003903	\N	\N	18065
coal tar 0.66 % cutaneous solution	f	1	f	2004-05-01	9003904	\N	\N	18066
octinoxate 7.5 % and octisalate 2.5 % and octocrylene 2.5 % and zinc oxide 6 % lotion	f	1	f	2004-05-10	9003905	\N	\N	18067
clodronate disodium 400 mg oral capsule	f	1	f	2004-05-13	9003906	\N	\N	18068
hyprolose 5 mg ophthalmic insert	f	1	f	2004-05-25	9003907	\N	\N	18069
octinoxate 7.5 % and zinc oxide 2.85 % lotion	f	1	f	2004-05-25	9003908	\N	\N	18070
miglustat 100 mg oral capsule	f	1	f	2004-05-26	9003909	\N	\N	18071
peginterferon alfa-2a 180 mcg per 0.5 mL and ribavirin 200 mg NA	f	1	f	2004-05-26	9003910	\N	\N	18072
peginterferon alfa-2a 180 mcg per 0.5 mL and ribavirin 200 mg oral solution	f	1	f	2004-05-26	9003911	\N	\N	18073
peginterferon alfa-2a 180 mcg per 0.5 mL and ribavirin 200 mg oral tablet	f	1	f	2004-05-26	9003912	\N	\N	18074
peginterferon alfa-2a 180 mcg per 0.5 mL and ribavirin 200 mg solution for injection	f	1	f	2004-05-26	9003913	\N	\N	18075
peginterferon alfa-2a 180 mcg per mL and ribavirin 200 mg NA	f	1	f	2004-05-26	9003914	\N	\N	18076
peginterferon alfa-2a 180 mcg per mL and ribavirin 200 mg oral solution	f	1	f	2004-05-26	9003915	\N	\N	18077
peginterferon alfa-2a 180 mcg per mL and ribavirin 200 mg oral tablet	f	1	f	2004-05-26	9003916	\N	\N	18078
peginterferon alfa-2a 180 mcg per mL and ribavirin 200 mg solution for injection	f	1	f	2004-05-26	9003917	\N	\N	18079
octinoxate 4 % and titanium dioxide 3 % cutaneous emulsion	f	1	f	2004-06-01	9003918	\N	\N	18080
aminolevulinic acid hydrochloride 20 % powder for cutaneous solution	f	1	f	2004-06-03	9003919	\N	\N	18081
fulvestrant 50 mg per mL solution for injection	f	1	f	2004-06-14	9003920	\N	\N	18082
amiloride hydrochloride 5 mg oral tablet	f	1	f	2004-06-18	9003921	\N	\N	18083
bismuth subsalicylate 35 mg per mL oral liquid	f	2	f	2004-06-24	9003922	\N	\N	18084
eprosartan (eprosartan mesylate) 600 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	2004-07-06	9003923	\N	\N	18085
avobenzone 3 % and octinoxate 7 % and oxybenzone 0.4 % lotion	f	1	f	2004-07-10	9003924	\N	\N	18086
teriparatide 250 mcg per mL solution for injection	f	1	f	2004-07-15	9003925	\N	\N	18087
chlorpheniramine maleate 2 mg and ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	4	f	2004-08-02	9003926	\N	\N	18088
pemetrexed (pemetrexed disodium) 500 mg per vial powder for solution for injection	f	2	f	2004-08-03	9003927	\N	\N	18089
ibuprofen 100 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral suspension	f	1	f	2004-08-09	9003928	\N	\N	18090
somatropin 10 mg per 2 mL solution for injection	f	2	f	2004-08-09	9003929	\N	\N	18091
nelfinavir (nelfinavir mesylate) 625 mg oral tablet	f	1	f	2004-08-11	9003930	\N	\N	18092
cinacalcet (cinacalcet hydrochloride) 30 mg oral tablet	f	4	f	2004-09-16	9003934	\N	\N	18093
cinacalcet (cinacalcet hydrochloride) 60 mg oral tablet	f	4	f	2004-09-16	9003935	\N	\N	18094
cinacalcet (cinacalcet hydrochloride) 90 mg oral tablet	f	4	f	2004-09-16	9003936	\N	\N	18095
nabilone 0.5 mg oral capsule	f	5	f	2004-09-16	9003937	\N	\N	18096
agalsidase beta 5 mg per vial powder for solution for injection	f	1	f	2004-09-17	9003938	\N	\N	18097
peginterferon alfa-2b 100 mcg per 0.5 mL and ribavirin 200 mg NA	f	1	f	2004-09-17	9003939	\N	\N	18098
peginterferon alfa-2b 100 mcg per 0.5 mL and ribavirin 200 mg oral capsule	f	1	f	2004-09-17	9003940	\N	\N	18099
peginterferon alfa-2b 100 mcg per 0.5 mL and ribavirin 200 mg powder for oral solution	f	1	f	2004-09-17	9003941	\N	\N	18100
peginterferon alfa-2b 100 mcg per 0.5 mL and ribavirin 200 mg powder for solution for injection	f	1	f	2004-09-17	9003942	\N	\N	18101
peginterferon alfa-2b 120 mcg per 0.5 mL and ribavirin 200 mg NA	f	1	f	2004-09-17	9003943	\N	\N	18102
peginterferon alfa-2b 120 mcg per 0.5 mL and ribavirin 200 mg oral capsule	f	1	f	2004-09-17	9003944	\N	\N	18103
peginterferon alfa-2b 120 mcg per 0.5 mL and ribavirin 200 mg powder for oral solution	f	1	f	2004-09-17	9003945	\N	\N	18104
peginterferon alfa-2b 120 mcg per 0.5 mL and ribavirin 200 mg powder for solution for injection	f	1	f	2004-09-17	9003946	\N	\N	18105
peginterferon alfa-2b 150 mcg per 0.5 mL and ribavirin 200 mg NA	f	1	f	2004-09-17	9003947	\N	\N	18106
peginterferon alfa-2b 150 mcg per 0.5 mL and ribavirin 200 mg oral capsule	f	1	f	2004-09-17	9003948	\N	\N	18107
peginterferon alfa-2b 150 mcg per 0.5 mL and ribavirin 200 mg powder for oral solution	f	1	f	2004-09-17	9003949	\N	\N	18108
peginterferon alfa-2b 150 mcg per 0.5 mL and ribavirin 200 mg powder for solution for injection	f	1	f	2004-09-17	9003950	\N	\N	18109
peginterferon alfa-2b 80 mcg per 0.5 mL and ribavirin 200 mg NA	f	1	f	2004-09-17	9003951	\N	\N	18110
peginterferon alfa-2b 80 mcg per 0.5 mL and ribavirin 200 mg oral capsule	f	1	f	2004-09-17	9003952	\N	\N	18111
peginterferon alfa-2b 80 mcg per 0.5 mL and ribavirin 200 mg powder for oral solution	f	1	f	2004-09-17	9003953	\N	\N	18112
peginterferon alfa-2b 80 mcg per 0.5 mL and ribavirin 200 mg powder for solution for injection	f	1	f	2004-09-17	9003954	\N	\N	18113
rasburicase 1.5 mg per vial powder for solution for injection	f	1	f	2004-09-21	9003955	\N	\N	18114
terconazole 0.4 % vaginal cream	f	1	f	2004-09-21	9003956	\N	\N	18115
octinoxate 7.5 % and terephthalylidene dicamphor sulfonic acid 4 % and titanium dioxide 2.5 % cutaneous cream	f	1	f	2004-09-23	9003957	\N	\N	18116
adalimumab 40 mg per 0.8 mL solution for injection	f	1	f	2004-09-24	9003958	\N	\N	18117
gatifloxacin 0.3 % ophthalmic drops	f	1	f	2004-09-27	9003959	\N	\N	18118
avobenzone 1 % and octinoxate 7.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2004-10-01	9003960	\N	\N	18119
eletriptan (eletriptan hydrobromide) 20 mg oral tablet	f	5	f	2004-10-13	9003961	\N	\N	18120
eletriptan (eletriptan hydrobromide) 40 mg oral tablet	f	5	f	2004-10-13	9003962	\N	\N	18121
zoledronic acid (zoledronic acid monohydrate) 4 mg per 5 mL solution for injection	f	10	f	2004-10-14	9003963	\N	\N	18122
ethacrynic acid 25 mg oral tablet	f	1	f	2004-10-15	9003964	\N	\N	18123
imatinib (imatinib mesylate) 400 mg oral tablet	f	5	f	2004-10-25	9003965	\N	\N	18124
benzethonium chloride 0.2 % cutaneous solution	f	2	f	2004-10-27	9003966	\N	\N	18125
gadobenate dimeglumine 529 mg per mL solution for injection	f	1	f	2004-10-28	9003967	\N	\N	18126
alfentanil (alfentanil hydrochloride) 500 mcg per mL solution for injection	f	1	f	2004-11-01	9003968	\N	\N	18127
anagrelide (anagrelide hydrochloride monohydrate) 0.5 mg oral capsule	f	3	f	2004-11-05	9003969	\N	\N	18128
lidocaine hydrochloride 1 % cutaneous gel	f	2	f	2004-11-08	9003970	\N	\N	18129
etidronate disodium 200 mg oral tablet	f	1	f	2004-11-10	9003971	\N	\N	18130
voriconazole 200 mg oral tablet	f	4	f	2004-11-12	9003972	\N	\N	18131
voriconazole 200 mg per vial powder for solution for injection	f	2	f	2004-11-12	9003973	\N	\N	18132
voriconazole 50 mg oral tablet	f	4	f	2004-11-12	9003974	\N	\N	18133
dextromethorphan hydrobromide 7.5 mg orodispersible tablet	f	1	f	2004-11-19	9003975	\N	\N	18134
diphenhydramine hydrochloride 12.5 mg orodispersible tablet	f	1	f	2004-11-19	9003976	\N	\N	18135
alcohol anhydrous 65.87 % and benzalkonium chloride 0.1 % cutaneous spray	f	1	f	2004-11-20	9003977	\N	\N	18136
citric acid 12 g per pck and magnesium oxide 3.5 g per pck and sodium picosulfate 10 mg per pck powder for oral solution	f	3	f	2004-11-25	9003978	\N	\N	18137
dimethicone 6 % cutaneous cream	f	1	f	2004-11-29	9003979	\N	\N	18138
avobenzone 3 % and octinoxate 6 % and zinc oxide 6 % lotion	f	1	f	2004-11-30	9003980	\N	\N	18139
levofloxacin 250 mg oral tablet	f	7	f	2004-11-30	9003981	\N	\N	18140
levofloxacin 500 mg oral tablet	f	8	f	2004-11-30	9003982	\N	\N	18141
avobenzone 3 % and octinoxate 7.5 % and octisalate 2 % cutaneous cream	f	2	f	2004-12-01	9003983	\N	\N	18142
glycerine 0.3 % and propylene glycol 1 % ophthalmic drops	f	3	f	2004-12-01	9003984	\N	\N	18143
antihemophilic factor (human) 1200 unit per 15 mL and von willebrand factor (human) 3360 unit per 15 mL powder for solution for injection	f	1	f	2004-12-06	9003985	\N	\N	18144
antihemophilic factor (human) 300 unit per 5 mL and von willebrand factor (human) 840 unit per 5 mL powder for solution for injection	f	1	f	2004-12-06	9003986	\N	\N	18145
antihemophilic factor (human) 600 unit per 10 mL and von willebrand factor (human) 1680 unit per 10 mL powder for solution for injection	f	1	f	2004-12-06	9003987	\N	\N	18146
dimethicone 3 % wipe	f	1	f	2004-12-10	9003988	\N	\N	18147
memantine hydrochloride 10 mg oral tablet	f	11	f	2004-12-16	9003989	\N	\N	18148
acetaminophen 500 mg and pamabrom 25 mg oral tablet	f	1	f	2004-12-20	9003990	\N	\N	18149
choriogonadotropin alpha 250 mcg per 0.5 mL solution for injection	f	1	f	2004-12-20	9003991	\N	\N	18150
fosamprenavir (fosamprenavir calcium) 700 mg oral tablet	f	1	f	2004-12-22	9003992	\N	\N	18151
vinorelbine (vinorelbine tartrate) 10 mg per mL solution for injection	f	3	f	2004-12-22	9003993	\N	\N	18152
zolmitriptan 2.5 mg per spray NA	f	1	f	2004-12-23	9003994	\N	\N	18153
zolmitriptan 2.5 mg per spray nasal spray	f	1	f	2004-12-23	9003995	\N	\N	18154
zolmitriptan 5 mg per spray NA	f	1	f	2004-12-23	9003996	\N	\N	18155
zolmitriptan 5 mg per spray nasal spray	f	1	f	2004-12-23	9003997	\N	\N	18156
quinagolide (quinagolide hydrochloride) 0.025 mg oral tablet	f	1	f	2004-12-29	9003998	\N	\N	18157
quinagolide (quinagolide hydrochloride) 0.05 mg oral tablet	f	1	f	2004-12-29	9003999	\N	\N	18158
quinagolide (quinagolide hydrochloride) 0.075 mg oral tablet	f	1	f	2004-12-29	9004000	\N	\N	18159
quinagolide (quinagolide hydrochloride) 0.15 mg oral tablet	f	1	f	2004-12-29	9004001	\N	\N	18160
acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	4	f	2005-01-10	9004002	\N	\N	18161
acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	2	f	2005-01-10	9004003	\N	\N	18162
avobenzone 3 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 0.95 % cutaneous stick	f	1	f	2005-01-15	9004004	\N	\N	18163
octinoxate 4 % cutaneous cream	f	1	f	2005-01-15	9004005	\N	\N	18164
bortezomib (bortezomib mannitol boronic ester) 3.5 mg per vial powder for solution for injection	f	4	f	2005-02-01	9004006	\N	\N	18165
octinoxate 7.3 % and oxybenzone 4.5 % cutaneous suspension	f	1	f	2005-02-01	9004007	\N	\N	18166
polistes spp venom protein extract 1300 mcg per vial powder for solution for injection	f	1	f	2005-02-01	9004008	\N	\N	18167
white faced hornet venom protein 1300 mcg per vial and yellow hornet venom protein 1300 mcg per vial and yellow jacket venom protein 1300 mcg per vial powder for solution for injection	f	1	f	2005-02-01	9004009	\N	\N	18168
omalizumab 150 mg per vial powder for solution for injection	f	1	f	2005-02-03	9004010	\N	\N	18169
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2005-02-04	9004011	\N	\N	18170
paclitaxel 6 mg per mL solution for injection	f	5	f	2005-02-07	9004012	\N	\N	18171
benzethonium chloride 0.2 % and benzocaine 20 % cutaneous spray	f	1	f	2005-02-09	9004013	\N	\N	18172
dimenhydrinate 100 mg modified-release oral tablet	f	1	f	2005-02-10	9004014	\N	\N	18173
dimethicone 1 % cutaneous ointment	f	1	f	2005-02-11	9004015	\N	\N	18174
mycophenolic acid (mycophenolate sodium) 180 mg gastro-resistant tablet	f	2	f	2005-02-11	9004016	\N	\N	18175
mycophenolic acid (mycophenolate sodium) 360 mg gastro-resistant tablet	f	2	f	2005-02-11	9004017	\N	\N	18176
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % cutaneous spray	f	1	f	2005-02-22	9004018	\N	\N	18177
fosamprenavir (fosamprenavir calcium) 50 mg per mL oral suspension	f	1	f	2005-02-23	9004019	\N	\N	18178
apis mellifera venom protein extract 1300 mcg per vial powder for solution for injection	f	1	f	2005-02-28	9004020	\N	\N	18179
vespula spp venom protein extract 1300 mcg per vial powder for solution for injection	f	1	f	2005-02-28	9004021	\N	\N	18180
loratadine 10 mg and pseudoephedrine sulfate 240 mg prolonged-release oral tablet	f	1	f	2005-03-01	9004022	\N	\N	18181
iron (sodium ferric gluconate complex in sucrose injection) 12.5 mg per mL solution for injection	f	1	f	2005-03-02	9004023	\N	\N	18182
iodoform 5 % NA	f	1	f	2005-03-03	9004024	\N	\N	18183
dextran 70 0.1 % and polyethylene glycol 400 1 % and povidone 1 % and tetrahydrozoline hydrochloride 0.05 % ophthalmic drops	f	3	f	2005-03-08	9004025	\N	\N	18184
acetaminophen 250 mg and dextromethorphan hydrobromide 10 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	2	f	2005-03-15	9004026	\N	\N	18185
nicotinic acid 1000 mg prolonged-release oral tablet	f	2	f	2005-03-15	9004027	\N	\N	18186
desloratadine 0.5 mg per mL syrup	f	1	f	2005-03-21	9004028	\N	\N	18187
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL and menthol 15 mg per 5 mL syrup	f	2	f	2005-03-30	9004029	\N	\N	18188
avobenzone 2 % and octinoxate 7 % and octisalate 3 % lotion	f	2	f	2005-04-01	9004030	\N	\N	18189
avobenzone 3 % and homosalate 9 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous cream	f	1	f	2005-04-01	9004031	\N	\N	18190
cilazapril (cilazapril monohydrate) 1 mg oral tablet	f	6	f	2005-04-01	9004032	\N	\N	18191
cilazapril (cilazapril monohydrate) 2.5 mg oral tablet	f	7	f	2005-04-01	9004033	\N	\N	18192
cilazapril (cilazapril monohydrate) 5 mg oral tablet	f	6	f	2005-04-01	9004034	\N	\N	18193
octinoxate 6 % and titanium dioxide 5.3 % and zinc oxide 1.7 % lotion	f	1	f	2005-04-01	9004035	\N	\N	18194
octinoxate 7.5 % and oxybenzone 3 % and titanium dioxide 2 % and zinc oxide 3.5 % lotion	f	1	f	2005-04-01	9004036	\N	\N	18195
imatinib (imatinib mesylate) 100 mg oral tablet	f	5	f	2005-04-05	9004037	\N	\N	18196
vitamin d3 (cholecalciferol) 10000 unit oral capsule	f	1	f	2005-04-06	9004038	\N	\N	18197
avobenzone 3 % and octinoxate 7.5 % and oxybenzone 6 % and titanium dioxide 2 % cutaneous cream	f	1	f	2005-04-15	9004039	\N	\N	18198
benzalkonium chloride 0.15 % cutaneous spray	f	2	f	2005-05-01	9004040	\N	\N	18199
avobenzone 3 % and ensulizole 2 % and octocrylene 10 % and oxybenzone 2 % lotion	f	1	f	2005-05-04	9004041	\N	\N	18200
avobenzone 3 % and octocrylene 12 % and oxybenzone 1 % and titanium dioxide 2.2 % lotion	f	2	f	2005-05-04	9004042	\N	\N	18201
avobenzone 3 % and octocrylene 12 % and oxybenzone 6 % and titanium dioxide 4 % lotion	f	1	f	2005-05-04	9004043	\N	\N	18202
octinoxate 7 % and octisalate 2 % and oxybenzone 3 % and titanium dioxide 2 % cutaneous cream	f	1	f	2005-05-08	9004044	\N	\N	18203
oxybenzone 3 % and padimate o 8 % cutaneous stick	f	1	f	2005-05-15	9004045	\N	\N	18204
rabies vaccine inactivated (purified chick embryo cell culture) 2.5 unit powder for solution for injection	f	1	f	2005-05-16	9004046	\N	\N	18205
atovaquone 62.5 mg and proguanil hydrochloride 25 mg oral tablet	f	1	f	2005-05-17	9004047	\N	\N	18206
white petrolatum 30 % cutaneous cream	f	3	f	2005-05-20	9004048	\N	\N	18207
bacitracin zinc 500 unit per g and gramicidin 0.25 mg per g and lidocaine 50 mg per g and polymyxin b (polymyxin b sulfate) 10000 unit per g cutaneous ointment	f	1	f	2005-05-24	9004049	\N	\N	18208
heparin sodium 10000 unit per mL solution for injection	f	5	f	2005-05-27	9004050	\N	\N	18209
acetylsalicylic acid 325 mg and methocarbamol 400 mg oral tablet	f	1	f	2005-06-02	9004051	\N	\N	18210
triclosan 0.55 % cutaneous liquid	f	2	f	2005-06-08	9004052	\N	\N	18211
lidocaine hydrochloride 0.72 % cutaneous gel	f	1	f	2005-06-15	9004053	\N	\N	18212
cannabidiol (cannabis sativa extract) 25 mg per mL and delta-9-tetrahydrocannabinol (cannabis sativa extract) 27 mg per mL oromucosal spray	f	1	f	2005-06-22	9004054	\N	\N	18213
lutropin alfa 75 unit per vial powder for solution for injection	f	1	f	2005-06-28	9004055	\N	\N	18214
sodium bicarbonate 80.7 g per l solution for haemodialysis	f	1	f	2005-07-04	9004056	\N	\N	18215
ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	2	f	2005-07-09	9004057	\N	\N	18216
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-12	9004058	\N	\N	18217
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 13.47 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-12	9004059	\N	\N	18218
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-12	9004060	\N	\N	18219
hydroxyethyl starch 130/0.4 6 % solution for injection	f	2	f	2006-09-18	9004215	\N	\N	18220
paliperidone 6 mg prolonged-release oral tablet	f	1	f	2007-10-02	9004338	\N	\N	18221
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 49.5 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-12	9004061	\N	\N	18222
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-13	9004062	\N	\N	18223
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-13	9004063	\N	\N	18224
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-13	9004064	\N	\N	18225
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-07-13	9004065	\N	\N	18226
hydroquinone 4 % and octinoxate 7.5 % and oxybenzone 5.5 % cutaneous cream	f	1	f	2005-07-13	9004066	\N	\N	18227
erlotinib (erlotinib hydrochloride) 100 mg oral tablet	f	3	f	2005-07-19	9004067	\N	\N	18228
nitisinone 2 mg oral tablet	f	1	f	2017-01-13	9006102	\N	\N	20260
erlotinib (erlotinib hydrochloride) 150 mg oral tablet	f	3	f	2005-07-19	9004068	\N	\N	18229
avobenzone 3 % and octinoxate 7.5 % and octisalate 2 % lotion	f	2	f	2005-08-01	9004069	\N	\N	18230
dextromethorphan hydrobromide 15 mg oral capsule	f	1	f	2005-08-01	9004070	\N	\N	18231
chloroxylenol 0.3 % lotion	f	1	f	2005-08-15	9004071	\N	\N	18232
docosanol 10 % cutaneous cream	f	1	f	2005-08-15	9004072	\N	\N	18233
leuprolide acetate 58.2 mg NA	f	1	f	2005-08-15	9004073	\N	\N	18234
acetic acid 10.81 g per l and calcium chloride 5 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-08-17	9004074	\N	\N	18235
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 74.25 g per l and magnesium chloride 3.21 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	f	2005-08-17	9004075	\N	\N	18236
avobenzone 1 % and octinoxate 7.5 % and oxybenzone 2 % cutaneous stick	f	1	f	2005-08-17	9004076	\N	\N	18237
lamivudine 300 mg and NA 600 mg oral tablet	f	6	f	2005-08-17	9004077	\N	\N	18238
zoledronic acid (zoledronic acid monohydrate) 5 mg per 100 mL solution for injection	f	4	f	2005-08-22	9004078	\N	\N	18239
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2005-08-24	9004079	\N	\N	18240
epoetin alfa 20000 unit per 0.5 mL solution for injection	f	1	f	2005-08-24	9004080	\N	\N	18241
gentamicin (gentamicin sulfate) 10 mg per mL solution for injection	f	1	f	2005-08-29	9004081	\N	\N	18242
tretinoin 0.04 % cutaneous gel	f	1	f	2005-08-30	9004082	\N	\N	18243
follitropin alfa 300 unit per 0.5 mL solution for injection	f	1	f	2005-09-06	9004083	\N	\N	18244
follitropin alfa 450 unit per 0.75 mL solution for injection	f	1	f	2005-09-06	9004084	\N	\N	18245
follitropin alfa 900 unit per 1.5 mL solution for injection	f	1	f	2005-09-06	9004085	\N	\N	18246
octinoxate 7.5 % and octocrylene 8 % and titanium dioxide 3.2 % cutaneous cream	f	1	f	2005-09-07	9004086	\N	\N	18247
octinoxate 7.5 g per 100 g and octisalate 3 g per 100 g and oxybenzone 3 g per 100 g cutaneous cream	f	1	f	2005-09-08	9004087	\N	\N	18248
insulin aspart 30 % and insulin aspart protamine 70 % suspension for injection	f	1	f	2005-09-12	9004088	\N	\N	18249
acetaminophen 250 mg and dextromethorphan hydrobromide 10 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	2	f	2005-09-13	9004089	\N	\N	18250
acetaminophen 500 mg per 15 mL and chlorpheniramine maleate 2 mg per 15 mL and dextromethorphan hydrobromide 15 mg per 15 mL and guaifenesin 100 mg per 15 mL and pseudoephedrine hydrochloride 30 mg per 15 mL syrup	f	2	f	2005-09-23	9004090	\N	\N	18251
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL and menthol 15 mg per 5 mL and pseudoephedrine hydrochloride 30 mg per 5 mL syrup	f	1	f	2005-09-30	9004091	\N	\N	18252
guaifenesin 200 mg per 5 mL and menthol 15 mg per 5 mL syrup	f	1	f	2005-09-30	9004092	\N	\N	18253
triclosan 0.3 % cutaneous solution	f	8	f	2005-10-01	9004093	\N	\N	18254
benzalkonium chloride 0.15 % cutaneous liquid	f	1	f	2005-11-01	9004094	\N	\N	18255
eflornithine hydrochloride 13.9 % cutaneous cream	f	1	f	2005-11-01	9004095	\N	\N	18256
bevacizumab 25 mg per mL solution for injection	f	1	f	2005-11-02	9004096	\N	\N	18257
hepatitis a vaccine, inactivated 160 unit per 0.5 mL and salmonella typhi vi capsular polysaccharide vaccine 25 mcg per 0.5 mL solution for injection	f	1	f	2005-11-09	9004097	\N	\N	18258
hepatitis a vaccine, inactivated 160 unit per 0.5 mL and salmonella typhi vi capsular polysaccharide vaccine 25 mcg per 0.5 mL suspension for injection	f	1	f	2005-11-09	9004098	\N	\N	18259
epinephrine bitartrate 0.01 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	2005-11-15	9004099	\N	\N	18260
nitric oxide 800 ppm per cylr medicinal gas	f	3	f	2005-11-23	9004100	\N	\N	18261
tipranavir 250 mg oral capsule	f	1	f	2005-12-01	9004101	\N	\N	18262
interferon beta-1a 30 mcg per 0.5 mL solution for injection	f	1	f	2005-12-02	9004102	\N	\N	18263
avobenzone 3 % and octisalate 5 % and octocrylene 7 % lotion	f	4	f	2005-12-15	9004103	\N	\N	18264
triptorelin (triptorelin pamoate) 11.25 mg per vial powder for prolonged-release suspension for injection	f	1	f	2005-12-15	9004104	\N	\N	18265
triptorelin (triptorelin pamoate) 3.75 mg per vial powder for prolonged-release suspension for injection	f	1	f	2005-12-15	9004105	\N	\N	18266
etanercept 50 mg per mL solution for injection	f	3	f	2005-12-21	9004106	\N	\N	18267
amlodipine (amlodipine besylate) 10 mg and atorvastatin (atorvastatin calcium) 10 mg oral tablet	f	4	f	2005-12-23	9004107	\N	\N	18268
amlodipine (amlodipine besylate) 10 mg and atorvastatin (atorvastatin calcium) 20 mg oral tablet	f	4	f	2005-12-23	9004108	\N	\N	18269
amlodipine (amlodipine besylate) 10 mg and atorvastatin (atorvastatin calcium) 40 mg oral tablet	f	3	f	2005-12-23	9004109	\N	\N	18270
amlodipine (amlodipine besylate) 10 mg and atorvastatin (atorvastatin calcium) 80 mg oral tablet	f	3	f	2005-12-23	9004110	\N	\N	18271
amlodipine (amlodipine besylate) 5 mg and atorvastatin (atorvastatin calcium) 10 mg oral tablet	f	4	f	2005-12-23	9004111	\N	\N	18272
amlodipine (amlodipine besylate) 5 mg and atorvastatin (atorvastatin calcium) 20 mg oral tablet	f	4	f	2005-12-23	9004112	\N	\N	18273
amlodipine (amlodipine besylate) 5 mg and atorvastatin (atorvastatin calcium) 40 mg oral tablet	f	3	f	2005-12-23	9004113	\N	\N	18274
amlodipine (amlodipine besylate) 5 mg and atorvastatin (atorvastatin calcium) 80 mg oral tablet	f	3	f	2005-12-23	9004114	\N	\N	18275
lactic acid 0.284 g per 1000 mL and magnesium chloride 0.108 g per 1000 mL and sodium bicarbonate 58.8 g per 1000 mL and sodium chloride 6.449 g per 1000 mL solution for haemodialysis	f	1	f	2005-12-24	9004115	\N	\N	18276
lactic acid 0.284 g per 1000 mL and magnesium chloride 0.108 g per 1000 mL and sodium bicarbonate 58.8 g per 1000 mL and sodium chloride 6.449 g per 1000 mL solution for injection	f	1	f	2005-12-24	9004116	\N	\N	18277
calcium chloride 0.1838 g per l and dextrose 25 g per l and magnesium chloride 0.1017 g per l and sodium chloride 5.64 g per l and sodium lactate 3.925 g per l solution for haemodialysis	f	1	f	2006-01-03	9004117	\N	\N	18278
calcium chloride 0.1838 g per l and dextrose 46.75 g per l and magnesium chloride 0.1017 g per l and sodium chloride 5.64 g per l and sodium lactate 3.925 g per l solution for haemodialysis	f	1	f	2006-01-03	9004118	\N	\N	18279
epinephrine bitartrate 0.02 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	2006-01-09	9004119	\N	\N	18280
somatropin 8.8 mg per vial powder for solution for injection	f	1	f	2006-01-23	9004120	\N	\N	18281
pegvisomant 10 mg per vial NA	f	1	f	2006-01-24	9004121	\N	\N	18282
pegvisomant 10 mg per vial powder for solution for injection	f	1	f	2006-01-24	9004122	\N	\N	18283
pegvisomant 15 mg per vial NA	f	1	f	2006-01-24	9004123	\N	\N	18284
pegvisomant 15 mg per vial powder for solution for injection	f	1	f	2006-01-24	9004124	\N	\N	18285
pegvisomant 20 mg per vial NA	f	1	f	2006-01-24	9004125	\N	\N	18286
pegvisomant 20 mg per vial powder for solution for injection	f	1	f	2006-01-24	9004126	\N	\N	18287
octinoxate 2 % and titanium dioxide 5 % cutaneous suspension	f	1	f	2006-01-27	9004127	\N	\N	18288
chlorhexidine gluconate 2 % wipe	f	3	f	2006-02-14	9004128	\N	\N	18289
avobenzone 2 % and octisalate 5 % and octocrylene 3.5 % and oxybenzone 5 % and terephthalylidene dicamphor sulfonic acid 3 % and titanium dioxide 4.2 % lotion	f	1	t	2006-02-15	9004129	\N	\N	18290
avobenzone 3 % and octisalate 5 % and octocrylene 3.5 % and oxybenzone 5 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 3.3 % lotion	f	1	t	2006-02-15	9004130	\N	\N	18291
aluminum hydroxide 200 mg per 5 mL and magnesium hydroxide 200 mg per 5 mL and simethicone 20 mg per 5 mL oral liquid	f	1	f	2006-02-16	9004131	\N	\N	18292
aluminum hydroxide 400 mg per 5 mL and magnesium hydroxide (dried aluminum hydroxide gel) 306 mg per 5 mL and simethicone 40 mg per 5 mL oral liquid	f	1	f	2006-02-16	9004132	\N	\N	18293
calcium chloride 5.145 g per 1000 mL and dextrose anhydrous 22 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and potassium chloride 0.314 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL solution for haemodialysis	f	1	t	2006-02-21	9004133	\N	\N	18294
calcium chloride 5.145 g per 1000 mL and dextrose anhydrous 22 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and potassium chloride 0.314 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL solution for injection	f	1	t	2006-02-21	9004134	\N	\N	18295
alendronic acid (alendronate sodium) 70 mg and vitamin d3 (cholecalciferol) 2800 unit oral tablet	f	3	f	2006-03-13	9004135	\N	\N	18296
methacholine chloride 480 mg per vial powder for nebuliser solution	f	1	f	2006-03-21	9004136	\N	\N	18297
cetylpyridinium chloride 0.05 % cutaneous liquid	f	1	f	2006-03-22	9004137	\N	\N	18298
cetylpyridinium chloride 0.05 % oral liquid	f	1	f	2006-03-22	9004138	\N	\N	18299
acetic acid 10.81 g per l and calcium chloride 7.74 g per l and dextrose 99 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 268 g per l solution for haemodialysis	f	1	t	2006-03-27	9004139	\N	\N	18300
acetic acid 10.81 g per l and calcium chloride 5 g per l and dextrose 74.25 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2006-03-28	9004140	\N	\N	18301
insulin injection pork 100 unit per mL solution for injection	f	1	f	2006-04-01	9004141	\N	\N	18302
insulin isophane injection pork 100 unit per mL suspension for injection	f	1	f	2006-04-01	9004142	\N	\N	18303
acetic acid 10.81 g per l and calcium chloride 7.74 g per l and dextrose 99 g per l and magnesium chloride 3.21 g per l and potassium chloride 10.1 g per l and sodium chloride 268 g per l solution for haemodialysis	f	1	t	2006-04-02	9004143	\N	\N	18304
acetic acid 10.81 g per l and calcium chloride 5 g per l and dextrose 99 g per l and magnesium chloride 3.21 g per l and potassium chloride 6.71 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	2006-04-03	9004144	\N	\N	18305
simethicone 62.5 mg orodispersible tablet	f	1	f	2006-04-03	9004145	\N	\N	18306
trospium chloride 20 mg oral tablet	f	1	f	2006-04-04	9004146	\N	\N	18307
darifenacin (darifenacin hydrobromide) 15 mg prolonged-release oral tablet	f	1	f	2006-04-06	9004147	\N	\N	18308
darifenacin (darifenacin hydrobromide) 7.5 mg prolonged-release oral tablet	f	1	f	2006-04-06	9004148	\N	\N	18309
emtricitabine 200 mg and tenofovir disoproxil fumarate 300 mg oral tablet	f	1	f	2006-04-06	9004149	\N	\N	18310
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 74.25 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.1 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2006-04-09	9004150	\N	\N	18311
saquinavir (saquinavir mesylate) 500 mg oral tablet	f	1	f	2006-04-10	9004151	\N	\N	18312
timolol (timolol maleate) 0.5 % and travoprost 0.004 % ophthalmic drops	f	1	f	2006-04-11	9004152	\N	\N	18313
avobenzone 1.5 % and octocrylene 7 % and terephthalylidene dicamphor sulfonic acid 0.5 % and titanium dioxide 2.5 % lotion	f	1	f	2006-04-15	9004153	\N	\N	18314
avobenzone 1.5 % and octocrylene 7 % and terephthalylidene dicamphor sulfonic acid 0.5 % and titanium dioxide 3.3 % lotion	f	1	f	2006-04-15	9004154	\N	\N	18315
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2006-04-16	9004155	\N	\N	18316
acetaminophen 325 mg and phenylephrine hydrochloride 5 mg oral tablet	f	2	f	2006-04-17	9004156	\N	\N	18317
adefovir dipivoxil 10 mg oral tablet	f	2	f	2006-04-18	9004157	\N	\N	18318
acetic acid 10.81 g per l and calcium chloride 7.49 g per l and dextrose 49.5 g per l and magnesium chloride 2.12 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2006-04-28	9004158	\N	\N	18319
acetic acid 10.81 g per l and calcium chloride 7.49 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2006-05-01	9004159	\N	\N	18320
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 2.12 g per l and potassium chloride 6.7 g per l and sodium chloride 289.3 g per l solution for haemodialysis	f	1	t	2006-05-01	9004160	\N	\N	18321
maraviroc 150 mg oral tablet	f	1	f	2007-09-26	9004335	\N	\N	18322
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 74.25 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2006-05-09	9004161	\N	\N	18323
phenylephrine hydrochloride 10 mg oral tablet	f	1	f	2006-05-10	9004162	\N	\N	18324
benzalkonium chloride 0.12 % wipe	f	2	f	2006-05-15	9004163	\N	\N	18325
acetic acid 10.81 g per l and calcium chloride 7.49 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 5.02 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	2006-05-30	9004164	\N	\N	18326
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 5.02 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	2006-05-30	9004165	\N	\N	18327
ensulizole 3 % and homosalate 10 % and octinoxate 7.5 % and octocrylene 7 % and zinc oxide 8 % cutaneous cream	f	1	f	2006-06-01	9004166	\N	\N	18328
octinoxate 7.5 % and octisalate 5 % and octocrylene 7 % and oxybenzone 4 % cutaneous stick	f	1	f	2006-06-01	9004167	\N	\N	18329
white petrolatum 100 % cutaneous gel	f	2	f	2006-06-06	9004168	\N	\N	18330
acetaminophen 325 mg and doxylamine succinate 6.25 mg and phenylephrine hydrochloride 5 mg oral capsule	f	1	f	2006-06-11	9004169	\N	\N	18331
acetaminophen 325 mg and phenylephrine hydrochloride 5 mg oral capsule	f	1	f	2006-06-11	9004170	\N	\N	18332
acetaminophen 1000 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and doxylamine succinate 12.5 mg per 30 mL oral liquid	f	1	f	2006-06-12	9004171	\N	\N	18333
midodrine hydrochloride 2.5 mg oral tablet	f	1	f	2006-06-13	9004172	\N	\N	18334
midodrine hydrochloride 5 mg oral tablet	f	1	f	2006-06-13	9004173	\N	\N	18335
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 74.25 g per l and magnesium chloride 3.21 g per l and potassium chloride 5.02 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	2006-06-20	9004174	\N	\N	18336
acetaminophen 500 mg and caffeine 60 mg and pyrilamine maleate 15 mg oral tablet	f	2	f	2006-06-22	9004175	\N	\N	18337
sunitinib (sunitinib malate) 12.5 mg oral capsule	f	1	f	2006-06-22	9004176	\N	\N	18338
sunitinib (sunitinib malate) 25 mg oral capsule	f	1	f	2006-06-22	9004177	\N	\N	18339
sunitinib (sunitinib malate) 50 mg oral capsule	f	1	f	2006-06-22	9004178	\N	\N	18340
acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and phenylephrine hydrochloride 5 mg oral capsule	f	2	f	2006-06-26	9004179	\N	\N	18341
acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg oral capsule	f	2	f	2006-06-26	9004180	\N	\N	18342
octinoxate 5 % and titanium dioxide 2 % cutaneous emulsion	f	1	f	2006-07-01	9004181	\N	\N	18343
methacholine chloride 1600 mg per vial powder for nebuliser solution	f	2	f	2006-07-03	9004182	\N	\N	18344
sodium bicarbonate 6 kg per pck powder for concentrate for solution for haemodialysis	f	1	f	2006-07-03	9004183	\N	\N	18345
dextromethorphan hydrobromide 20 mg per 15 mL and phenylephrine hydrochloride 10 mg per 15 mL oral liquid	f	1	f	2006-07-10	9004184	\N	\N	18346
chlorpheniramine maleate 2 mg per 15 mL and dextromethorphan hydrobromide 15 mg per 15 mL oral liquid	f	1	f	2006-07-21	9004185	\N	\N	18347
acetaminophen 325 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 10 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2006-07-24	9004186	\N	\N	18348
acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2006-07-24	9004187	\N	\N	18349
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 10 mg and phenylephrine hydrochloride 5 mg oral tablet	f	3	f	2006-07-24	9004188	\N	\N	18350
acetaminophen 500 mg and dextromethorphan hydrobromide 10 mg and phenylephrine hydrochloride 5 mg oral tablet	f	3	f	2006-07-24	9004189	\N	\N	18351
acetaminophen 500 mg and phenylephrine hydrochloride 5 mg oral tablet	f	3	f	2006-07-24	9004190	\N	\N	18352
calcium chloride 0.1838 g per l and dextrose 16.5 g per l and magnesium chloride 0.1017 g per l and sodium chloride 5.64 g per l and sodium lactate 3.925 g per l solution for haemodialysis	f	1	f	2006-07-25	9004191	\N	\N	18353
simethicone 40 mg per mL oral suspension	f	1	f	2006-07-27	9004192	\N	\N	18354
acetaminophen 325 mg and caffeine 60 mg and pyrilamine maleate 15 mg oral tablet	f	1	f	2006-07-29	9004193	\N	\N	18355
sorafenib (sorafenib tosylate) 200 mg oral tablet	f	1	f	2006-07-31	9004194	\N	\N	18356
brompheniramine maleate 1 mg and phenylephrine hydrochloride 2.5 mg chewable tablet	f	1	f	2006-08-01	9004195	\N	\N	18357
abatacept 250 mg per vial powder for solution for injection	f	1	f	2006-08-08	9004196	\N	\N	18358
acetaminophen 325 mg per 5 mL and menthol 20 mg per 5 mL oral liquid	f	1	f	2006-08-09	9004197	\N	\N	18359
acetylsalicylic acid 81 mg oral tablet	f	1	f	2006-08-15	9004198	\N	\N	18360
recombinant human papillomavirus type 11 l1 protein 40 mcg per 0.5 mL and recombinant human papillomavirus type 16 l1 protein 40 mcg per 0.5 mL and recombinant human papillomavirus type 18 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 6 l1 protein 20 mcg per 0.5 mL suspension for injection	f	1	f	2006-08-16	9004199	\N	\N	18361
dextromethorphan hydrobromide 5 mg and phenylephrine hydrochloride 2.5 mg orodispersible tablet	f	1	f	2006-08-18	9004200	\N	\N	18362
phenylephrine hydrochloride 2.5 mg orodispersible tablet	f	1	f	2006-08-18	9004201	\N	\N	18363
cilazapril (cilazapril monohydrate) 5 mg and hydrochlorothiazide 12.5 mg oral tablet	f	2	f	2006-08-23	9004202	\N	\N	18364
acetic acid 8.11 g per l and calcium chloride 6.24 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 10.1 g per l and sodium chloride 275 g per l solution for haemodialysis	f	1	t	2006-08-28	9004203	\N	\N	18365
acetaminophen 160 mg per 5 mL and dextromethorphan hydrobromide 5 mg per 5 mL and diphenhydramine hydrochloride 6.25 mg per 5 mL oral suspension	f	3	f	2006-08-31	9004204	\N	\N	18366
acetaminophen 250 mg and guaifenesin 100 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2006-08-31	9004205	\N	\N	18367
acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2006-08-31	9004206	\N	\N	18368
acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2006-08-31	9004207	\N	\N	18369
paclitaxel 100 mg per vial powder for suspension for injection	f	1	f	2006-08-31	9004208	\N	\N	18370
isopropyl myristate 50 % cutaneous solution	f	1	f	2006-09-01	9004209	\N	\N	18371
trypan blue 0.06 % solution for injection	f	1	f	2006-09-06	9004210	\N	\N	18372
lopinavir 200 mg and ritonavir 50 mg oral tablet	f	1	f	2006-09-08	9004211	\N	\N	18373
entecavir 0.5 mg oral tablet	f	3	f	2006-09-12	9004212	\N	\N	18374
rasagiline (rasagiline mesylate) 0.5 mg oral tablet	f	3	f	2006-09-14	9004213	\N	\N	18375
rasagiline (rasagiline mesylate) 1 mg oral tablet	f	3	f	2006-09-14	9004214	\N	\N	18376
acetic acid 10.81 g per l and calcium chloride 7.74 g per l and dextrose 99 g per l and magnesium chloride 3.21 g per l and potassium chloride 3.35 g per l and sodium chloride 268 g per l solution for haemodialysis	f	1	t	2006-09-28	9004216	\N	\N	18377
avobenzone 1.5 % and octinoxate 7 % and octisalate 5 % cutaneous cream	f	1	f	2006-10-02	9004217	\N	\N	18378
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % lotion	f	1	f	2006-10-02	9004218	\N	\N	18379
antihemophilic factor (recombinant) 1000 unit per vial powder for solution for injection	f	4	f	2006-10-06	9004219	\N	\N	18380
antihemophilic factor (recombinant) 1500 unit per vial powder for solution for injection	f	1	f	2006-10-06	9004220	\N	\N	18381
white petrolatum 71.5 % cutaneous ointment	f	1	f	2006-10-13	9004221	\N	\N	18382
human-bovine rotavirus reassortant type g1 2210000 unit and human-bovine rotavirus reassortant type g2 2840000 unit and human-bovine rotavirus reassortant type g3 2220000 unit and human-bovine rotavirus reassortant type g4 2040000 unit and human-bovine rotavirus reassortant type p1(8) 2290000 unit oral solution	f	1	f	2006-10-16	9004222	\N	\N	18383
meningococcal polysaccharide-diphtheria toxoid conjugate, group a 4 mcg per 0.5 mL and meningococcal polysaccharide-diphtheria toxoid conjugate, group c 4 mcg per 0.5 mL and meningococcal polysaccharide-diphtheria toxoid conjugate, group w 135 4 mcg per 0.5 mL and meningococcal polysaccharide-diphtheria toxoid conjugate, group y 4 mcg per 0.5 mL solution for injection	f	1	f	2006-10-20	9004223	\N	\N	18384
desmopressin (desmopressin acetate) 120 mcg orodispersible tablet	f	1	f	2006-11-02	9004224	\N	\N	18385
desmopressin (desmopressin acetate) 60 mcg orodispersible tablet	f	1	f	2006-11-02	9004225	\N	\N	18386
deferasirox 125 mg dispersible oral tablet	f	3	f	2006-11-10	9004226	\N	\N	18387
deferasirox 250 mg dispersible oral tablet	f	3	f	2006-11-10	9004227	\N	\N	18388
deferasirox 500 mg dispersible oral tablet	f	3	f	2006-11-10	9004228	\N	\N	18389
ensulizole 1.8 % and octinoxate 7.5 % cutaneous cream	f	2	f	2006-11-13	9004229	\N	\N	18390
natalizumab 300 mg per 15 mL solution for injection	f	1	f	2006-11-21	9004230	\N	\N	18391
idarubicin hydrochloride 1 mg per mL solution for injection	f	3	f	2006-11-25	9004231	\N	\N	18392
avobenzone 3 % and octinoxate 7.4 % and octisalate 5 % and oxybenzone 2 % cutaneous cream	f	1	f	2006-11-28	9004232	\N	\N	18393
tigecycline 50 mg per vial powder for solution for injection	f	2	f	2006-11-30	9004233	\N	\N	18394
fludarabine phosphate 25 mg per mL solution for injection	f	2	f	2006-12-04	9004234	\N	\N	18395
acetaminophen 80 mg per 5 mL oral solution	f	2	f	2006-12-06	9004235	\N	\N	18396
alglucosidase alfa 50 mg per vial powder for solution for injection	f	1	f	2006-12-06	9004236	\N	\N	18397
lanthanum (lanthanum carbonate hydrate) 1000 mg chewable tablet	f	1	f	2006-12-06	9004237	\N	\N	18398
lanthanum (lanthanum carbonate hydrate) 250 mg chewable tablet	f	1	f	2006-12-06	9004238	\N	\N	18399
lanthanum (lanthanum carbonate hydrate) 500 mg chewable tablet	f	1	f	2006-12-06	9004239	\N	\N	18400
lanthanum (lanthanum carbonate hydrate) 750 mg chewable tablet	f	1	f	2006-12-06	9004240	\N	\N	18401
telbivudine 600 mg oral tablet	f	1	f	2006-12-14	9004241	\N	\N	18402
brompheniramine maleate 2 mg per 5 mL and dextromethorphan hydrobromide 10 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2006-12-18	9004242	\N	\N	18403
brompheniramine maleate 2 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2006-12-18	9004243	\N	\N	18404
brompheniramine maleate 4 mg per 5 mL and dextromethorphan hydrobromide 20 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL syrup	f	1	f	2006-12-18	9004244	\N	\N	18405
brompheniramine maleate 4 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL syrup	f	1	f	2006-12-18	9004245	\N	\N	18406
erlotinib (erlotinib hydrochloride) 25 mg oral tablet	f	2	f	2007-01-05	9004246	\N	\N	18407
acetic acid 10.81 g per l and calcium chloride 7.47 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2007-01-10	9004247	\N	\N	18408
insulin lispro 50 unit per mL and insulin lispro protamine suspension 50 unit per mL suspension for injection	f	2	f	2007-01-12	9004248	\N	\N	18409
avobenzone 3 % and octinoxate 7.5 % and oxybenzone 3 % cutaneous cream	f	1	f	2007-01-15	9004249	\N	\N	18410
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 2.12 g per l and sodium chloride 289.3 g per l solution for haemodialysis	f	1	f	2007-01-22	9004250	\N	\N	18411
avobenzone 3 % and octisalate 5 % and octocrylene 7 % cutaneous cream	f	3	f	2007-01-22	9004251	\N	\N	18412
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.8 % and oxybenzone 6 % lotion	f	4	f	2007-01-29	9004252	\N	\N	18413
avobenzone 3 % and homosalate 12 % and octisalate 5 % and octocrylene 1.7 % and oxybenzone 3 % lotion	f	4	f	2007-01-29	9004253	\N	\N	18414
brompheniramine maleate 4 mg per 5 mL and dextromethorphan hydrobromide 20 mg per 5 mL and phenylephrine hydrochloride 10 mg per 5 mL oral solution	f	1	f	2007-02-05	9004254	\N	\N	18415
octinoxate 7.5 % and titanium dioxide 4 % lotion	f	1	f	2007-02-06	9004255	\N	\N	18416
homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % cutaneous spray	f	3	f	2007-02-15	9004256	\N	\N	18417
homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % spray (bag-on-valve)	f	2	f	2007-02-15	9004257	\N	\N	18418
brompheniramine maleate 2 mg per 5 mL and dextromethorphan hydrobromide 10 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL oral solution	f	1	f	2007-02-20	9004258	\N	\N	18419
brompheniramine maleate 2 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL oral solution	f	1	f	2007-02-20	9004259	\N	\N	18420
lanreotide (lanreotide acetate) 120 mg solution for injection	f	1	f	2007-02-22	9004260	\N	\N	18421
lanreotide (lanreotide acetate) 60 mg solution for injection	f	1	f	2007-02-22	9004261	\N	\N	18422
lanreotide (lanreotide acetate) 90 mg solution for injection	f	1	f	2007-02-22	9004262	\N	\N	18423
ceftriaxone (ceftriaxone sodium) 0.25 g per vial powder for solution for injection	f	1	f	2007-02-23	9004263	\N	\N	18424
ceftriaxone (ceftriaxone sodium) 10 g per vial powder for solution for injection	f	5	f	2007-02-23	9004264	\N	\N	18425
ceftriaxone (ceftriaxone sodium) 1 g per vial powder for solution for injection	f	5	f	2007-02-23	9004265	\N	\N	18426
nitisinone 5 mg oral tablet	f	1	f	2017-01-13	9006103	\N	\N	20261
ceftriaxone (ceftriaxone sodium) 2 g per vial powder for solution for injection	f	4	f	2007-02-23	9004266	\N	\N	18427
avobenzone 3.5 % and drometrizole trisiloxane 3 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 3 % and titanium dioxide 4.15 % cutaneous cream	f	2	f	2007-03-01	9004267	\N	\N	18428
avobenzone 3 % and drometrizole trisiloxane 2 % and octocrylene 10 % and titanium dioxide 6.25 % cutaneous stick	f	3	f	2007-03-01	9004268	\N	\N	18429
chloroxylenol 3 % cutaneous solution	f	1	f	2007-03-01	9004269	\N	\N	18430
octinoxate 7 % cutaneous emulsion	f	1	f	2007-03-01	9004270	\N	\N	18431
maraviroc 300 mg oral tablet	f	1	f	2007-09-26	9004336	\N	\N	18432
acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and guaifenesin 200 mg and phenylephrine hydrochloride 5 mg oral tablet	f	2	f	2007-03-06	9004271	\N	\N	18433
diphenhydramine hydrochloride 2 % and zinc acetate 0.1 % cutaneous liquid	f	1	f	2007-03-09	9004272	\N	\N	18434
diphenhydramine hydrochloride 2 % and zinc acetate 0.1 % cutaneous spray	f	1	f	2007-03-09	9004273	\N	\N	18435
avobenzone 2 % and homosalate 10 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2007-03-16	9004274	\N	\N	18436
acetaminophen 1000 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and guaifenesin 200 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL syrup	f	2	f	2007-03-19	9004275	\N	\N	18437
inactivated poliomyelitis vaccine (v.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (v.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (v.c.o.) type 3 saukett 32 unit per 0.5 mL suspension for injection	f	1	f	2007-03-22	9004276	\N	\N	18438
hexylresorcinol 2.4 mg and l-menthol 4 mg lozenge	f	1	f	2007-03-23	9004277	\N	\N	18439
avobenzone 3 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % cutaneous spray	f	1	f	2007-03-27	9004278	\N	\N	18440
octinoxate 2.5 % and titanium dioxide 6.62 % cutaneous cream	f	1	f	2007-03-29	9004279	\N	\N	18441
avobenzone 2 % and homosalate 4 % and octisalate 4 % and oxybenzone 4 % and titanium dioxide 2 % lotion	f	1	f	2007-03-30	9004280	\N	\N	18442
avobenzone 5 % and homosalate 15 % and octisalate 6 % and oxybenzone 6 % and titanium dioxide 2.3 % lotion	f	2	f	2007-03-30	9004281	\N	\N	18443
octinoxate 7.5 % and zinc oxide 16.1 % cutaneous cream	f	1	f	2007-04-05	9004282	\N	\N	18444
avobenzone 3 % and homosalate 15 % and octisalate 6 % and oxybenzone 6 % and titanium dioxide 2.3 % lotion	f	1	f	2007-04-09	9004283	\N	\N	18445
dasatinib (dasatinib monohydrate) 20 mg oral tablet	f	1	f	2007-04-13	9004284	\N	\N	18446
dasatinib (dasatinib monohydrate) 50 mg oral tablet	f	1	f	2007-04-13	9004285	\N	\N	18447
dasatinib (dasatinib monohydrate) 70 mg oral tablet	f	1	f	2007-04-13	9004286	\N	\N	18448
coagulation factor ix (recombinant) 1000 unit per vial powder for solution for injection	f	1	f	2007-04-14	9004287	\N	\N	18449
coagulation factor ix (recombinant) 250 unit per vial powder for solution for injection	f	1	f	2007-04-14	9004288	\N	\N	18450
coagulation factor ix (recombinant) 500 unit per vial powder for solution for injection	f	1	f	2007-04-14	9004289	\N	\N	18451
homosalate 9 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2007-04-16	9004290	\N	\N	18452
simethicone 20 mg per 0.3 mL oral liquid	f	1	f	2007-04-19	9004291	\N	\N	18453
avobenzone 3 % and drometrizole trisiloxane 3 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 2 % and titanium dioxide 4.15 % cutaneous cream	f	1	f	2007-04-20	9004292	\N	\N	18454
chloroxylenol 0.5 % and coal tar 2.4 % and menthol 1.5 % shampoo	f	2	f	2007-04-20	9004293	\N	\N	18455
ceftriaxone (ceftriaxone sodium) 250 mg per vial powder for solution for injection	f	3	f	2007-04-30	9004294	\N	\N	18456
octinoxate 6 % and titanium dioxide 2.92 % cutaneous emulsion	f	1	f	2007-05-05	9004295	\N	\N	18457
octinoxate 7.5 % and octocrylene 1 % and oxybenzone 2 % and sulisobenzone 0.5 % and titanium dioxide 1.83 % cutaneous emulsion	f	2	f	2007-05-05	9004296	\N	\N	18458
benzalkonium chloride 0.15 % cutaneous gel	f	2	f	2007-05-07	9004297	\N	\N	18459
benazepril hydrochloride 10 mg oral tablet	f	1	f	2007-05-15	9004298	\N	\N	18460
diphtheria toxoid 2 unit per 0.5 mL and filamentous haemagglutinin 8 mcg per 0.5 mL and pertactin 2.5 mcg per 0.5 mL and pertussis toxoid 8 mcg per 0.5 mL and tetanus toxoid 20 unit per 0.5 mL suspension for injection	f	1	f	2007-05-29	9004299	\N	\N	18461
atazanavir (atazanavir sulfate) 300 mg oral capsule	f	3	f	2007-05-31	9004300	\N	\N	18462
dextromethorphan hydrobromide 10 mg lozenge	f	1	f	2007-05-31	9004301	\N	\N	18463
dyclonine hydrochloride 3 mg and menthol 6 mg lozenge	f	1	f	2007-05-31	9004302	\N	\N	18464
dyclonine hydrochloride 3 mg lozenge	f	1	f	2007-05-31	9004303	\N	\N	18465
avobenzone 2 % and octinoxate 7.5 % cutaneous cream	f	3	f	2007-06-04	9004304	\N	\N	18466
posaconazole 40 mg per mL oral suspension	f	1	f	2007-06-06	9004305	\N	\N	18467
benzoyl peroxide 2.5 % lotion	f	6	f	2007-07-03	9004306	\N	\N	18468
loperamide hydrochloride 2 mg per 15 mL oral solution	f	1	f	2007-07-11	9004307	\N	\N	18469
avobenzone 3 % and homosalate 12 % and octisalate 5 % and octocrylene 2.35 % and oxybenzone 6 % lotion	f	2	f	2007-07-13	9004308	\N	\N	18470
homosalate 9 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous spray	f	1	f	2007-07-13	9004309	\N	\N	18471
oxaliplatin 5 mg per mL solution for injection	f	8	f	2007-07-17	9004310	\N	\N	18472
adapalene 0.3 % cutaneous gel	f	1	f	2007-07-19	9004311	\N	\N	18473
octinoxate 5 % and octisalate 2 % and oxybenzone 3 % and titanium dioxide 1.8 % lotion	f	1	f	2007-07-25	9004312	\N	\N	18474
octinoxate 6 % and octisalate 2 % and oxybenzone 3.5 % lotion	f	1	f	2007-07-25	9004313	\N	\N	18475
octinoxate 7.5 % and octisalate 2 % and octocrylene 2.5 % and oxybenzone 6 % lotion	f	2	f	2007-07-25	9004314	\N	\N	18476
octinoxate 7.5 % and octisalate 2 % and oxybenzone 3.5 % and titanium dioxide 3.5 % lotion	f	1	f	2007-07-25	9004315	\N	\N	18477
octinoxate 7.5 % and octisalate 2 % and oxybenzone 5 % lotion	f	1	f	2007-07-25	9004316	\N	\N	18478
octinoxate 7 % and octisalate 4 % and octocrylene 7 % and oxybenzone 6 % lotion	f	1	f	2007-07-25	9004317	\N	\N	18479
ranibizumab 10 mg per mL solution for injection	f	2	f	2007-07-26	9004318	\N	\N	18480
acamprosate calcium 333 mg gastro-resistant tablet	f	1	f	2007-07-30	9004319	\N	\N	18481
idursulfase 2 mg per mL solution for injection	f	1	f	2007-08-01	9004320	\N	\N	18482
brexpiprazole 4 mg oral tablet	f	1	f	2017-04-19	9006158	\N	\N	20316
sodium oxybate 500 mg per mL oral solution	f	1	f	2007-08-03	9004321	\N	\N	18483
guaifenesin 100 mg per 5 mL and menthol 10 mg per 5 mL syrup	f	1	f	2007-08-07	9004322	\N	\N	18484
immune globulin (human) 10 % solution for injection	f	2	f	2007-08-08	9004323	\N	\N	18485
hepatitis b immune globulin human 312 unit per mL solution for injection	f	1	f	2007-08-13	9004324	\N	\N	18486
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 20 mg per 30 mL and phenylephrine hydrochloride 10 mg per 30 mL oral solution	f	1	f	2007-08-20	9004325	\N	\N	18487
coal tar 2 % cutaneous ointment	f	1	f	2007-08-28	9004326	\N	\N	18488
alemtuzumab 30 mg per mL solution for injection	f	1	f	2007-09-07	9004327	\N	\N	18489
triclosan 0.4 % cutaneous liquid	f	1	f	2007-09-17	9004328	\N	\N	18490
micafungin sodium 50 mg per vial powder for solution for injection	f	1	f	2007-09-18	9004329	\N	\N	18491
aprepitant 125 mg and aprepitant 80 mg kit	f	1	f	2007-09-24	9004330	\N	\N	18492
aprepitant 125 mg and aprepitant 80 mg oral capsule	f	1	f	2007-09-24	9004331	\N	\N	18493
aprepitant 125 mg oral capsule	f	1	f	2007-09-24	9004332	\N	\N	18494
aprepitant 80 mg oral capsule	f	1	f	2007-09-24	9004333	\N	\N	18495
benzalkonium chloride 0.13 % cutaneous solution	f	8	f	2007-09-25	9004334	\N	\N	18496
paliperidone 9 mg prolonged-release oral tablet	f	1	f	2007-10-02	9004339	\N	\N	18497
diphtheria toxoid 15 lf per 0.5 mL and filamentous haemagglutinin 20 mcg per 0.5 mL and fimbriae 5 mcg per 0.5 mL and haemophilus influenzae type b-prp 10 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 20 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL suspension for injection	f	1	t	2007-10-04	9004340	\N	\N	18498
enalapril sodium 4 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	2007-10-17	9004341	\N	\N	18499
octinoxate 7.5 % and octocrylene 9 % and titanium dioxide 3.24 % cutaneous emulsion	f	1	f	2007-10-18	9004342	\N	\N	18500
efavirenz 600 mg and emtricitabine 200 mg and tenofovir disoproxil fumarate 300 mg oral tablet	f	1	f	2007-10-23	9004343	\N	\N	18501
dimethicone 3.2 % wipe	f	2	f	2007-10-30	9004344	\N	\N	18502
calcium chloride 0.343 g per l and dextrose anhydrous 1.33 g per l and magnesium chloride 0.136 g per l and potassium chloride 0.398 g per l and sodium bicarbonate 12.9 g per l and sodium chloride 7.66 g per l solution for haemodialysis	f	1	t	2007-10-31	9004345	\N	\N	18503
calcium chloride 0.343 g per l and magnesium chloride 0.136 g per l and sodium bicarbonate 12.9 g per l and sodium chloride 7.66 g per l solution for haemodialysis	f	1	f	2007-10-31	9004346	\N	\N	18504
piperacillin (piperacillin sodium) 2 g per vial and tazobactam (tazobactam sodium) 0.25 g per vial powder for solution for injection	f	5	f	2007-11-05	9004347	\N	\N	18505
piperacillin (piperacillin sodium) 3 g per vial and tazobactam (tazobactam sodium) 0.375 g per vial powder for solution for injection	f	5	f	2007-11-05	9004348	\N	\N	18506
piperacillin (piperacillin sodium) 4 g per vial and tazobactam (tazobactam sodium) 0.5 g per vial powder for solution for injection	f	6	f	2007-11-05	9004349	\N	\N	18507
cetylpyridinium chloride 0.07 % gargle/mouthwash	f	3	f	2007-11-09	9004350	\N	\N	18508
octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % lotion	f	1	f	2007-11-15	9004351	\N	\N	18509
epoetin alfa 30000 unit per 0.75 mL solution for injection	f	1	f	2007-11-19	9004352	\N	\N	18510
gemcitabine (gemcitabine hydrochloride) 1 g per vial powder for solution for injection	f	4	f	2007-11-20	9004353	\N	\N	18511
gemcitabine (gemcitabine hydrochloride) 200 mg per vial powder for solution for injection	f	5	f	2007-11-20	9004354	\N	\N	18512
aliskiren (aliskiren fumarate) 150 mg oral tablet	f	1	f	2007-11-26	9004355	\N	\N	18513
raltegravir (raltegravir potassium) 400 mg oral tablet	f	1	f	2007-11-28	9004356	\N	\N	18514
aliskiren (aliskiren fumarate) 300 mg oral tablet	f	1	f	2007-11-29	9004357	\N	\N	18515
daptomycin 500 mg per vial powder for solution for injection	f	1	f	2007-12-03	9004358	\N	\N	18516
chlorhexidine gluconate 0.05 % and lidocaine hydrochloride (lidocaine hydrochloride monohydrate) 2 % cutaneous gel	f	1	f	2007-12-06	9004359	\N	\N	18517
octinoxate 7 % and oxybenzone 3 % cutaneous emulsion	f	1	f	2007-12-11	9004360	\N	\N	18518
ensulizole 2 % and octinoxate 7.5 % cutaneous cream	f	1	f	2007-12-15	9004361	\N	\N	18519
frovatriptan (frovatriptan succinate) 2.5 mg oral tablet	f	2	f	2008-01-04	9004362	\N	\N	18520
ziprasidone (ziprasidone hydrochloride monohydrate) 20 mg oral capsule	f	1	f	2008-01-04	9004363	\N	\N	18521
ziprasidone (ziprasidone hydrochloride monohydrate) 40 mg oral capsule	f	1	f	2008-01-04	9004364	\N	\N	18522
ziprasidone (ziprasidone hydrochloride monohydrate) 60 mg oral capsule	f	1	f	2008-01-04	9004365	\N	\N	18523
ziprasidone (ziprasidone hydrochloride monohydrate) 80 mg oral capsule	f	1	f	2008-01-04	9004366	\N	\N	18524
thiamazole 10 mg oral tablet	f	1	f	2008-01-07	9004367	\N	\N	18525
fluocinolone acetonide 0.01 % otic drops	f	1	f	2008-01-09	9004368	\N	\N	18526
temsirolimus 25 mg per mL solution for injection	f	1	f	2008-01-11	9004369	\N	\N	18527
nelarabine 5 mg per mL solution for injection	f	1	f	2008-01-17	9004370	\N	\N	18528
nitrogen 100 % cutaneous liquid	f	3	f	2008-01-21	9004371	\N	\N	18529
desmopressin acetate (desmopressin acetate trihydrate) 0.1 mg oral tablet	f	1	f	2008-01-23	9004372	\N	\N	18530
desmopressin acetate (desmopressin acetate trihydrate) 0.2 mg oral tablet	f	1	f	2008-01-23	9004373	\N	\N	18531
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.35 % and oxybenzone 6 % cutaneous spray	f	2	f	2008-01-28	9004374	\N	\N	18532
avobenzone 3 % and homosalate 8 % and octisalate 4 % and octocrylene 2.35 % and oxybenzone 5 % cutaneous spray	f	2	f	2008-01-28	9004375	\N	\N	18533
octinoxate 2 % and titanium dioxide 13 % cutaneous powder	f	1	f	2008-02-15	9004376	\N	\N	18534
lenalidomide 10 mg oral capsule	f	1	f	2008-02-19	9004377	\N	\N	18535
lenalidomide 5 mg oral capsule	f	1	f	2008-02-19	9004378	\N	\N	18536
avobenzone 2 % and homosalate 13 % and octisalate 5 % and octocrylene 2 % and oxybenzone 4 % lotion	f	6	f	2008-02-22	9004379	\N	\N	18537
pyrithione zinc 0.5 % lotion	f	1	f	2008-02-22	9004380	\N	\N	18538
rho d immune globulin human 1500 unit per vial solution for injection	f	1	f	2008-06-16	9004430	\N	\N	18589
avobenzone 2 % and homosalate 6.5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % cutaneous cream	f	1	f	2008-02-25	9004381	\N	\N	18539
phenobarbital sodium 120 mg per mL solution for injection	f	1	f	2008-02-29	9004382	\N	\N	18540
phenobarbital sodium 30 mg per mL solution for injection	f	1	f	2008-02-29	9004383	\N	\N	18541
piperonyl butoxide 4 % and pyrethrins 0.33 % shampoo	f	2	f	2008-03-05	9004384	\N	\N	18542
polyvinyl alcohol 0.5 % and povidone 0.6 % and tetrahydrozoline hydrochloride 0.05 % ophthalmic drops	f	1	f	2008-03-26	9004385	\N	\N	18543
etravirine 100 mg oral tablet	f	1	f	2008-03-27	9004386	\N	\N	18544
potassium chloride 150 mg per 100 mL and sodium chloride 450 mg per 100 mL solution for injection	f	1	f	2008-03-31	9004387	\N	\N	18545
avobenzone 2 % and drometrizole trisiloxane 3 % and octocrylene 10 % and terephthalylidene dicamphor sulfonic acid 2 % and titanium dioxide 5 % cutaneous cream	f	1	f	2008-04-01	9004388	\N	\N	18546
avobenzone 3 % and drometrizole trisiloxane 4 % and octocrylene 5 % and terephthalylidene dicamphor sulfonic acid 1.5 % and titanium dioxide 3.3 % cutaneous cream	f	1	f	2008-04-01	9004389	\N	\N	18547
avobenzone 3 % and drometrizole trisiloxane 4 % and octocrylene 5 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 2.9 % cutaneous cream	f	1	f	2008-04-01	9004390	\N	\N	18548
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2 % and oxybenzone 5 % spray (bag-on-valve)	f	2	f	2008-04-03	9004391	\N	\N	18549
avobenzone 3 % and homosalate 15 % and octisalate 5 % and oxybenzone 6 % spray (bag-on-valve)	f	3	f	2008-04-03	9004392	\N	\N	18550
avobenzone 5 % and homosalate 15 % and octisalate 6 % and octocrylene 4 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2008-04-03	9004393	\N	\N	18551
dextrose 5 g per 100 mL and potassium chloride 0.15 g per 100 mL and sodium chloride 0.9 g per 100 mL solution for injection	f	1	f	2008-04-07	9004394	\N	\N	18552
besifloxacin 0.6 % ophthalmic drops	f	1	f	2010-01-27	9004635	\N	\N	18553
dextrose 5 g per 100 mL and potassium chloride 0.3 g per 100 mL and sodium chloride 0.9 g per 100 mL solution for injection	f	1	f	2008-04-07	9004395	\N	\N	18554
epirubicin hydrochloride 50 mg per vial powder for solution for injection	f	1	f	2008-04-07	9004396	\N	\N	18555
potassium chloride 0.15 g per 100 mL and sodium chloride 0.9 g per 100 mL solution for injection	f	1	f	2008-04-07	9004397	\N	\N	18556
potassium chloride 0.3 g per 100 mL and sodium chloride 0.9 g per 100 mL solution for injection	f	1	f	2008-04-07	9004398	\N	\N	18557
calcium (calcium carbonate) 500 mg and etidronate disodium 400 mg oral tablet	f	3	f	2008-04-10	9004399	\N	\N	18558
bupivacaine hydrochloride 5 mg per mL and epinephrine bitartrate 0.0091 mg per mL solution for injection	f	3	f	2008-04-11	9004400	\N	\N	18559
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 99 g per l and magnesium chloride 1.61 g per l and potassium chloride 6.7 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2008-04-16	9004401	\N	\N	18560
fondaparinux sodium 10 mg per 0.8 mL solution for injection	f	1	f	2008-04-17	9004402	\N	\N	18561
fondaparinux sodium 5 mg per 0.4 mL solution for injection	f	1	f	2008-04-17	9004403	\N	\N	18562
fondaparinux sodium 7.5 mg per 0.6 mL solution for injection	f	2	f	2008-04-17	9004404	\N	\N	18563
avobenzone 2 % and homosalate 10.5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 2 % lotion	f	4	f	2008-04-21	9004405	\N	\N	18564
homosalate 8 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % lotion	f	1	f	2008-04-21	9004406	\N	\N	18565
benzethonium chloride 0.3 % wipe	f	1	f	2008-04-22	9004407	\N	\N	18566
ondansetron (ondansetron hydrochloride) 4 mg oral tablet	f	5	f	2008-04-23	9004408	\N	\N	18567
ondansetron (ondansetron hydrochloride) 8 mg oral tablet	f	5	f	2008-04-23	9004409	\N	\N	18568
antihemophilic factor (recombinant) 250 unit per vial powder for solution for injection	f	4	f	2008-04-24	9004410	\N	\N	18569
antihemophilic factor (recombinant) 500 unit per vial powder for solution for injection	f	4	f	2008-04-24	9004411	\N	\N	18570
avobenzone 3 % and drometrizole trisiloxane 2.5 % and octocrylene 7 % and terephthalylidene dicamphor sulfonic acid 0.5 % and titanium dioxide 4.15 % cutaneous cream	f	1	f	2008-04-25	9004412	\N	\N	18571
avobenzone 3 % and drometrizole trisiloxane 2 % and octocrylene 8 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 4 % lotion	f	1	f	2008-04-25	9004413	\N	\N	18572
carbidopa 12.5 mg and entacapone 200 mg and levodopa 50 mg oral tablet	f	1	f	2008-04-28	9004414	\N	\N	18573
carbidopa 25 mg and entacapone 200 mg and levodopa 100 mg oral tablet	f	1	f	2008-04-28	9004415	\N	\N	18574
carbidopa 37.5 mg and entacapone 200 mg and levodopa 150 mg oral tablet	f	1	f	2008-04-28	9004416	\N	\N	18575
antihemophilic factor (human) 1000 unit per 10 mL and human plasma proteins 15 mg per 10 mL and von willebrand factor (human) 1000 unit per 10 mL powder for solution for injection	f	1	f	2008-04-29	9004417	\N	\N	18576
antihemophilic factor (human) 500 unit per 5 mL and human plasma proteins 7.5 mg per 5 mL and von willebrand factor (human) 500 unit per 5 mL powder for solution for injection	f	1	f	2008-04-29	9004418	\N	\N	18577
avobenzone 3 % and ensulizole 1 % and homosalate 10 % and octisalate 5 % and octocrylene 2.5 % and oxybenzone 4 % cutaneous spray	f	2	t	2008-05-07	9004419	\N	\N	18578
methylnaltrexone bromide 20 mg per mL solution for injection	f	1	f	2008-05-07	9004420	\N	\N	18579
octinoxate 7.5 % and oxybenzone 4.5 % and titanium dioxide 0.5 % cutaneous cream	f	1	f	2008-05-09	9004421	\N	\N	18580
estradiol 0.5 mg and norethindrone acetate 0.1 mg oral tablet	f	1	f	2008-05-16	9004422	\N	\N	18581
estradiol 1 mg and norethindrone acetate 0.5 mg oral tablet	f	1	f	2008-05-16	9004423	\N	\N	18582
panitumumab 100 mg per 5 mL solution for injection	f	1	f	2008-05-27	9004424	\N	\N	18583
dimethicone 5 % cutaneous cream	f	1	f	2008-05-30	9004425	\N	\N	18584
measles virus vaccine live attenuated 1000 unit per 0.5 mL and mumps virus vaccine live attenuated (jeryl lynn strain) 25118.9 unit per 0.5 mL and rubella virus vaccine live attenuated (wistar ra27/3 strain) 1000 unit per 0.5 mL and varicella-zoster virus vaccine live attenuated (oka/merck strain) 1995.2623 unit per 0.5 mL powder for solution for injection	f	1	f	2008-06-04	9004426	\N	\N	18585
octinoxate 7.5 % and octisalate 3 % and oxybenzone 5.5 % cutaneous stick	f	1	f	2008-06-09	9004427	\N	\N	18586
octinoxate 7.5 % and oxybenzone 3 % lotion	f	1	f	2008-06-11	9004428	\N	\N	18587
penicillin g benzathine 1200000 unit per 2 mL suspension for injection	f	1	f	2008-06-11	9004429	\N	\N	18588
rho d immune globulin human 5000 unit per vial solution for injection	f	1	f	2008-06-16	9004431	\N	\N	18590
rho d immune globulin human 600 unit per vial solution for injection	f	1	f	2008-06-16	9004432	\N	\N	18591
ambrisentan 10 mg oral tablet	f	1	f	2008-06-24	9004433	\N	\N	18592
ambrisentan 5 mg oral tablet	f	1	f	2008-06-24	9004434	\N	\N	18593
estradiol 4.4 mg and levonorgestrel 1.39 mg transdermal patch	f	1	f	2008-06-25	9004435	\N	\N	18594
coagulation factor ii (human) 760 unit per vial and coagulation factor ix (human) 500 unit per vial and coagulation factor vii (human) 480 unit per vial and coagulation factor x (human) 600 unit per vial and protein c 620 unit per vial and protein s 640 unit per vial NA	f	1	t	2008-07-08	9004436	\N	\N	18595
coagulation factor ii (human) 760 unit per vial and coagulation factor ix (human) 500 unit per vial and coagulation factor vii (human) 480 unit per vial and coagulation factor x (human) 600 unit per vial and protein c 620 unit per vial and protein s 640 unit per vial powder for solution for injection	f	1	t	2008-07-08	9004437	\N	\N	18596
coagulation factor ix (recombinant) 2000 unit per vial powder for solution for injection	f	1	f	2008-07-12	9004438	\N	\N	18597
voriconazole 3 g per bottle powder for oral suspension	f	1	f	2008-07-17	9004439	\N	\N	18598
acetaminophen 650 mg per pck and dextromethorphan hydrobromide 20 mg per pck and phenylephrine hydrochloride 10 mg per pck powder for oral solution	f	1	f	2008-07-21	9004440	\N	\N	18599
homosalate 4.5 % and meradimate 4.8 % and octinoxate 7.4 % and octisalate 5 % and oxybenzone 5.2 % cutaneous stick	f	2	f	2008-07-22	9004441	\N	\N	18600
oxybenzone 2.5 % and padimate o 6.6 % cutaneous stick	f	2	f	2008-07-22	9004442	\N	\N	18601
alcohol anhydrous 70 % and benzalkonium chloride 0.15 % cutaneous gel	f	1	f	2008-07-23	9004443	\N	\N	18602
octinoxate 7.5 % and octisalate 4 % cutaneous gel	f	1	f	2008-07-24	9004444	\N	\N	18603
hepatitis b surface antigen (recombinant) 10 mcg per 0.5 mL suspension for injection	f	1	f	2008-07-25	9004445	\N	\N	18604
avobenzone 2 % and ensulizole 1 % and octisalate 4 % and octocrylene 1 % cutaneous suspension	f	1	f	2008-08-01	9004446	\N	\N	18605
avobenzone 2 % and octinoxate 7.5 % and octisalate 3 % and octocrylene 1.4 % and padimate o 7 % lotion	f	1	f	2008-08-01	9004447	\N	\N	18606
avobenzone 2 % and octinoxate 7.5 % and octisalate 3 % and octocrylene 1.4 % lotion	f	1	f	2008-08-01	9004448	\N	\N	18607
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 1.4 % and padimate o 8 % cutaneous spray	f	1	f	2008-08-01	9004449	\N	\N	18608
avobenzone 3 % and octinoxate 6 % and octisalate 4 % lotion	f	2	f	2008-08-01	9004450	\N	\N	18609
avobenzone 3 % and octinoxate 7.5 % and octisalate 6 % and padimate o 6 % cutaneous gel	f	1	f	2008-08-01	9004451	\N	\N	18610
lopinavir 100 mg and ritonavir 25 mg oral tablet	f	1	f	2008-08-11	9004452	\N	\N	18611
valganciclovir (valganciclovir hydrochloride) 50 mg per mL powder for oral solution	f	1	f	2008-08-13	9004453	\N	\N	18612
acetaminophen 1000 mg per 30 mL and chlorpheniramine maleate 4 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL oral liquid	f	1	f	2008-08-20	9004454	\N	\N	18613
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and pseudoephedrine hydrochloride 30 mg per 30 mL oral liquid	f	1	f	2008-08-20	9004455	\N	\N	18614
antihemophilic factor (recombinant) 2000 unit per vial powder for solution for injection	f	4	f	2008-09-04	9004456	\N	\N	18615
nabilone 0.25 mg oral capsule	f	3	f	2008-09-12	9004457	\N	\N	18616
menthol 1.25 % and trolamine salicylate 10 % and NA 0.035 % lotion	f	1	f	2008-09-15	9004458	\N	\N	18617
alendronic acid (alendronate sodium) 70 mg and vitamin d3 (cholecalciferol) 5600 unit oral tablet	f	4	f	2008-09-17	9004459	\N	\N	18618
corbadrine (corbadrine hydrochloride) 0.05 mg per mL and mepivacaine hydrochloride 20 mg per mL solution for injection	f	1	f	2008-09-17	9004460	\N	\N	18619
fludarabine phosphate 50 mg per vial powder for solution for injection	f	1	f	2008-09-22	9004461	\N	\N	18620
insulin glulisine (recombinant dna origin) 100 unit per mL solution for injection	f	3	f	2008-09-22	9004462	\N	\N	18621
coal tar 1 % shampoo	f	1	f	2008-09-30	9004463	\N	\N	18622
nilotinib (nilotinib hydrochloride monohydrate) 200 mg oral capsule	f	1	f	2008-09-30	9004464	\N	\N	18623
lenalidomide 15 mg oral capsule	f	1	f	2008-10-10	9004465	\N	\N	18624
lenalidomide 25 mg oral capsule	f	1	f	2008-10-10	9004466	\N	\N	18625
drospirenone 1 mg and estradiol 1 mg oral tablet	f	1	f	2008-10-20	9004467	\N	\N	18626
octinoxate 7.5 % and titanium dioxide 7.8 % and zinc oxide 4.8 % cutaneous cream	f	2	f	2008-10-22	9004468	\N	\N	18627
benzalkonium chloride 0.1 % cutaneous solution	f	13	f	2008-10-24	9004469	\N	\N	18628
cetuximab 2 mg per mL solution for injection	f	1	f	2008-10-28	9004470	\N	\N	18629
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % lotion	f	2	f	2008-11-26	9004471	\N	\N	18630
epinephrine 0.01 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	2	f	2008-12-01	9004472	\N	\N	18631
oseltamivir (oseltamivir phosphate) 30 mg oral capsule	f	1	f	2008-12-01	9004473	\N	\N	18632
avobenzone 3 % and octinoxate 7 % and octocrylene 6 % lotion	f	1	f	2008-12-04	9004474	\N	\N	18633
diphtheria toxoid 25 lf per 0.5 mL and filamentous haemagglutinin 25 mcg per 0.5 mL and haemophilus influenzae type b-prp 10 mcg per 0.5 mL and hepatitis b surface antigen (recombinant) 10 mcg per 0.5 mL and inactivated poliovirus type i 40 unit per 0.5 mL and inactivated poliovirus type ii 8 unit per 0.5 mL and inactivated poliovirus type iii 32 unit per 0.5 mL and pertactin 8 mcg per 0.5 mL and pertussis toxoid 25 mcg per 0.5 mL and tetanus toxoid 10 lf per 0.5 mL and tetanus toxoid adsorbed 40 mcg per 0.5 mL suspension for injection	f	1	t	2008-12-04	9004475	\N	\N	18634
oseltamivir (oseltamivir phosphate) 45 mg oral capsule	f	1	f	2008-12-08	9004476	\N	\N	18635
polyethylene glycol 3350 1 g per g powder for oral solution	f	3	f	2008-12-10	9004477	\N	\N	18636
bismuth subsalicylate 17.5 mg per mL oral liquid	f	1	f	2008-12-12	9004478	\N	\N	18637
alcohol anhydrous 70 % and chlorhexidine gluconate 4 % cutaneous spray	f	1	f	2008-12-15	9004479	\N	\N	18638
rotavirus vaccine (rix4414 strain), live, oral, attenuated (human) 1000000 ccid50 per mL oral suspension	f	1	f	2008-12-16	9004480	\N	\N	18639
octinoxate 6.4 % and oxybenzone 5.4 % cutaneous ointment	f	1	f	2008-12-28	9004481	\N	\N	18640
alcohol anhydrous 70 % and benzalkonium chloride 0.15 % cutaneous liquid	f	1	f	2009-01-02	9004482	\N	\N	18641
ustekinumab 45 mg per 0.5 mL solution for injection	f	1	f	2009-01-05	9004483	\N	\N	18642
lidocaine hydrochloride 2 % solution for injection	f	1	f	2009-01-09	9004484	\N	\N	18643
pemetrexed (pemetrexed disodium) 100 mg per vial powder for solution for injection	f	1	f	2009-01-09	9004485	\N	\N	18644
alcohol anhydrous 70 % per mL and benzalkonium chloride 0.15 % per mL wipe	f	1	f	2009-01-20	9004486	\N	\N	18645
diphenhydramine citrate 38 mg oral tablet	f	1	f	2009-01-20	9004487	\N	\N	18646
octinoxate 7.5 % and octisalate 5 % and octocrylene 7 % and oxybenzone 6 % and titanium dioxide 5.7 % lotion	f	1	f	2009-01-21	9004488	\N	\N	18647
avobenzone 2 % and octisalate 3 % and octocrylene 3 % lotion	f	1	f	2009-01-22	9004489	\N	\N	18648
bacitracin zinc 500 unit per g and gramicidin 0.25 mg per g and lidocaine 50 mg per g and polymyxin b sulfate 10000 unit per g cutaneous ointment	f	1	f	2009-01-23	9004490	\N	\N	18649
moroctocog alfa 1000 unit per vial NA	f	1	f	2009-01-23	9004491	\N	\N	18650
moroctocog alfa 1000 unit per vial powder for solution for injection	f	1	f	2009-01-23	9004492	\N	\N	18651
moroctocog alfa 2000 unit per vial NA	f	1	f	2009-01-23	9004493	\N	\N	18652
moroctocog alfa 2000 unit per vial powder for solution for injection	f	1	f	2009-01-23	9004494	\N	\N	18653
moroctocog alfa 250 unit per vial NA	f	1	f	2009-01-23	9004495	\N	\N	18654
moroctocog alfa 250 unit per vial powder for solution for injection	f	1	f	2009-01-23	9004496	\N	\N	18655
moroctocog alfa 500 unit per vial NA	f	1	f	2009-01-23	9004497	\N	\N	18656
moroctocog alfa 500 unit per vial powder for solution for injection	f	1	f	2009-01-23	9004498	\N	\N	18657
alcohol anhydrous 70 % per mL and benzalkonium chloride 0.15 % per mL cutaneous spray	f	1	f	2009-01-24	9004499	\N	\N	18658
sodium carboxymethyl cellulose 0.5 % and sodium carboxymethyl cellulose 1 % NA	f	1	f	2009-01-27	9004500	\N	\N	18659
sodium carboxymethyl cellulose 0.5 % and sodium carboxymethyl cellulose 1 % ophthalmic drops	f	1	f	2009-01-27	9004501	\N	\N	18660
betamethasone (betamethasone dipropionate) 0.5 mg per g and calcipotriol (calcipotriol monohydrate) 50 mcg per g cutaneous gel	f	1	f	2009-01-28	9004502	\N	\N	18661
avobenzone 2.1 % and homosalate 9.1 % and octisalate 3.5 % and octocrylene 1.4 % and oxybenzone 2.8 % cutaneous spray	f	1	f	2009-02-02	9004503	\N	\N	18662
avobenzone 2 % and homosalate 15 % and octisalate 5 % and oxybenzone 4 % spray (bag-on-valve)	f	9	f	2009-02-02	9004504	\N	\N	18663
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % cutaneous spray	f	5	f	2009-02-02	9004505	\N	\N	18664
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % spray (bag-on-valve)	f	10	f	2009-02-02	9004506	\N	\N	18665
ensulizole 2 % and octinoxate 5 % and octocrylene 3 % cutaneous cream	f	1	f	2009-02-02	9004507	\N	\N	18666
octinoxate 7.5 % and titanium dioxide 1 % lotion	f	1	f	2009-02-02	9004508	\N	\N	18667
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % lotion	f	15	f	2009-02-03	9004509	\N	\N	18668
triclosan 1 % cutaneous liquid	f	1	f	2009-02-04	9004510	\N	\N	18669
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 4 % cutaneous cream	f	2	f	2009-02-06	9004511	\N	\N	18670
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 5 % cutaneous cream	f	3	f	2009-02-06	9004512	\N	\N	18671
octinoxate 7 % and titanium dioxide 2 % cutaneous cream	f	1	f	2009-02-06	9004513	\N	\N	18672
antazoline phosphate 0.51 % and naphazoline hydrochloride 0.051 % ophthalmic drops	f	1	f	2009-02-09	9004514	\N	\N	18673
granisetron (granisetron hydrochloride) 1 mg oral tablet	f	2	f	2009-02-20	9004515	\N	\N	18674
granisetron (granisetron hydrochloride) 1 mg per mL solution for injection	f	3	f	2009-02-20	9004516	\N	\N	18675
temozolomide 140 mg oral capsule	f	4	f	2009-02-21	9004517	\N	\N	18676
chlorhexidine gluconate 2 % and isopropyl alcohol 70 % swab	f	2	f	2009-02-24	9004518	\N	\N	18677
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 1.8 % lotion	f	2	f	2009-03-02	9004519	\N	\N	18678
dimethicone 5 % and menthol 0.5 % and pramoxine hydrochloride 1 % lotion	f	1	f	2009-03-05	9004520	\N	\N	18679
benzalkonium chloride 0.13 % per mL and pramoxine hydrochloride 1 % per mL cutaneous spray	f	1	f	2009-03-12	9004521	\N	\N	18680
avobenzone 4 % and drometrizole trisiloxane 1.5 % and octisalate 5 % and octocrylene 3.5 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 2.6 % cutaneous spray	f	1	t	2009-03-13	9004522	\N	\N	18681
avobenzone 3 % and homosalate 2 % and octisalate 5 % and octocrylene 2.7 % cutaneous cream	f	1	f	2009-03-17	9004523	\N	\N	18682
darunavir (darunavir ethanolate) 600 mg oral tablet	f	1	f	2009-03-17	9004524	\N	\N	18683
octinoxate 7.5 % and titanium dioxide 1.4 % cutaneous cream	f	1	f	2009-03-17	9004525	\N	\N	18684
cefepime (cefepime hydrochloride) 2 g per vial powder for solution for injection	f	1	f	2009-03-19	9004526	\N	\N	18685
avobenzone 3 % and octinoxate 6 % and octisalate 2.5 % cutaneous cream	f	1	f	2009-03-28	9004527	\N	\N	18686
homosalate 6 % and meradimate 4 % and octinoxate 7.5 % and oxybenzone 5 % cutaneous stick	f	1	f	2009-04-03	9004528	\N	\N	18687
octinoxate 7.5 % and titanium dioxide 4.37 % lotion	f	1	f	2009-04-03	9004529	\N	\N	18688
octinoxate 7.5 % and titanium dioxide 4.79 % lotion	f	1	f	2009-04-03	9004530	\N	\N	18689
octinoxate 7.5 % and titanium dioxide 5.12 % lotion	f	1	f	2009-04-13	9004531	\N	\N	18690
romiplostim 250 mcg per 0.5 mL powder for solution for injection	f	1	f	2009-04-15	9004532	\N	\N	18691
romiplostim 500 mcg per mL powder for solution for injection	f	1	f	2009-04-15	9004533	\N	\N	18692
octinoxate 7.5 % and titanium dioxide 5.02 % lotion	f	1	f	2009-04-17	9004534	\N	\N	18693
somatropin 10 mg per 1.5 mL solution for injection	f	2	f	2009-04-20	9004535	\N	\N	18694
somatropin 5 mg per 1.5 mL solution for injection	f	2	f	2009-04-20	9004536	\N	\N	18695
avobenzone 3 % and homosalate 3 % and octisalate 5 % and octocrylene 2.6 % lotion	f	1	f	2009-04-29	9004537	\N	\N	18696
octinoxate 7.5 % and oxybenzone 2.5 % cutaneous liquid	f	1	f	2009-04-30	9004538	\N	\N	18697
avobenzone 2 % and octocrylene 10 % and oxybenzone 6 % cutaneous stick	f	3	f	2009-05-01	9004539	\N	\N	18698
avobenzone 3 % and homosalate 3 % and octisalate 5 % and octocrylene 2.6 % cutaneous cream	f	1	f	2009-05-04	9004540	\N	\N	18699
dasatinib (dasatinib monohydrate) 100 mg oral tablet	f	1	f	2009-05-04	9004541	\N	\N	18700
desmopressin (desmopressin acetate) 240 mcg orodispersible tablet	f	1	f	2009-05-05	9004542	\N	\N	18701
eplerenone 50 mg oral tablet	f	1	f	2009-05-05	9004543	\N	\N	18702
lidocaine hydrochloride 5 % and menthol 1 % cutaneous cream	f	1	f	2009-05-05	9004544	\N	\N	18703
eplerenone 25 mg oral tablet	f	1	f	2009-05-08	9004545	\N	\N	18704
octinoxate 7.5 % and titanium dioxide 4.19 % lotion	f	1	f	2009-05-13	9004546	\N	\N	18705
interferon beta-1a 132 mcg per 1.5 mL solution for injection	f	1	f	2009-05-14	9004547	\N	\N	18706
interferon beta-1a 66 mcg per 1.5 mL solution for injection	f	1	f	2009-05-14	9004548	\N	\N	18707
avobenzone 3 % and homosalate 13 % and octisalate 5 % and octocrylene 7 % and oxybenzone 4 % lotion	f	2	f	2009-05-15	9004549	\N	\N	18708
dimethicone 1 % and zinc oxide 12 % cutaneous cream	f	2	f	2009-05-20	9004550	\N	\N	18709
eculizumab 10 mg per mL solution for injection	f	1	f	2009-05-25	9004551	\N	\N	18710
avobenzone 3 % and drometrizole trisiloxane 4.5 % and octisalate 5 % and octocrylene 2.5 % and terephthalylidene dicamphor sulfonic acid 1.5 % and titanium dioxide 5.85 % lotion	f	3	t	2009-05-27	9004552	\N	\N	18711
triclosan 0.25 % cutaneous liquid	f	1	f	2009-05-31	9004553	\N	\N	18712
lapatinib (lapatinib ditosylate monohydrate) 250 mg oral tablet	f	1	f	2009-06-05	9004554	\N	\N	18713
calcium (calcium carbonate) 500 mg and etidronate disodium 400 mg kit	f	1	f	2009-06-15	9004555	\N	\N	18714
methyl aminolevulinate (methyl aminolevulinate hydrochloride) 168 mg per g cutaneous cream	f	1	f	2009-06-16	9004556	\N	\N	18715
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.2 % and oxybenzone 5 % cutaneous cream	f	2	f	2009-06-22	9004557	\N	\N	18716
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % lotion	f	1	f	2009-06-22	9004558	\N	\N	18717
golimumab 50 mg per 0.5 mL solution for injection	f	2	f	2009-06-22	9004559	\N	\N	18718
levofloxacin 750 mg oral tablet	f	6	f	2009-06-24	9004560	\N	\N	18719
loteprednol etabonate 0.2 % ophthalmic drops	f	1	f	2009-06-24	9004561	\N	\N	18720
loteprednol etabonate 0.5 % ophthalmic drops	f	1	f	2009-06-24	9004562	\N	\N	18721
vorinostat 100 mg oral capsule	f	1	f	2009-06-29	9004563	\N	\N	18722
cladribine 1 mg per mL solution for injection	f	1	f	2009-06-30	9004564	\N	\N	18723
homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and titanium dioxide 2.3 % lotion	f	1	f	2009-07-08	9004565	\N	\N	18724
avobenzone 0.1 % and octinoxate 7.5 % and octisalate 0.5 % and oxybenzone 3 % cutaneous spray	f	1	f	2009-07-13	9004566	\N	\N	18725
avobenzone 3 % and ensulizole 2 % and enzacamene 3 % and octinoxate 6 % cutaneous cream	f	1	f	2009-07-13	9004567	\N	\N	18726
avobenzone 3 % and ensulizole 3.5 % and octinoxate 7.1 % and octocrylene 6 % and oxybenzone 4 % and titanium dioxide 7.5 % cutaneous cream	f	1	t	2009-07-13	9004568	\N	\N	18727
dextromethorphan hydrobromide 15 mg per 5 mL and guaifenesin 200 mg per 5 mL and menthol 15 mg per 5 mL oral solution	f	1	f	2009-07-21	9004569	\N	\N	18728
guaifenesin 200 mg per 5 mL and menthol 15 mg per 5 mL oral solution	f	1	f	2009-07-21	9004570	\N	\N	18729
incobotulinumtoxina 100 unit per vial powder for solution for injection	f	2	f	2009-07-21	9004571	\N	\N	18730
acetaminophen 650 mg per 15 mL and chlorpheniramine maleate 4 mg per 15 mL and dextromethorphan hydrobromide 30 mg per 15 mL oral liquid	f	1	f	2009-07-23	9004572	\N	\N	18731
acetaminophen 650 mg per 15 mL oral liquid	f	1	f	2009-07-23	9004573	\N	\N	18732
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.6 % lotion	f	2	f	2009-07-23	9004574	\N	\N	18733
nimodipine 30 mg oral tablet	f	1	f	2009-07-24	9004575	\N	\N	18734
avobenzone 2 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % lotion	f	3	f	2009-07-28	9004576	\N	\N	18735
gramicidin 0.25 mg per g and lidocaine hydrochloride 50 mg per g and polymyxin b sulfate 10000 unit per g cutaneous cream	f	3	f	2009-07-30	9004577	\N	\N	18736
standardized kentucky blue/june grass pollen 20000 unit per mL and standardized orchard grass pollen 20000 unit per mL and standardized redtop grass pollen 20000 unit per mL and standardized sweet vernal grass pollen 20000 unit per mL and standardized timothy grass pollen 20000 unit per mL solution for injection	f	1	f	2009-07-30	9004578	\N	\N	18737
octinoxate 6 % and zinc oxide 5 % cutaneous cream	f	2	f	2009-08-01	9004579	\N	\N	18738
avobenzone 3 % and octisalate 5 % and octocrylene 2.7 % cutaneous cream	f	8	f	2009-08-03	9004580	\N	\N	18739
avobenzone 3 % and ensulizole 2 % and homosalate 8 % and octocrylene 2.25 % lotion	f	1	f	2009-08-04	9004581	\N	\N	18740
acetylcysteine 200 mg per mL inhalation vapour (liquid)	f	1	f	2009-08-18	9004582	\N	\N	18741
acetylcysteine 200 mg per mL oral liquid	f	1	f	2009-08-18	9004583	\N	\N	18742
hydroquinone 4 % and octocrylene 4 % and oxybenzone 4 % and padimate o 8 % cutaneous cream	f	1	f	2009-08-19	9004584	\N	\N	18743
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 20 mg per 30 mL and phenylephrine hydrochloride 10 mg per 30 mL oral liquid	f	1	f	2009-08-23	9004585	\N	\N	18744
timolol (timolol maleate) 0.5 % and NA 1 % ophthalmic drops	f	1	f	2009-08-25	9004586	\N	\N	18745
certolizumab pegol 200 mg per mL solution for injection	f	1	f	2009-08-31	9004587	\N	\N	18746
water 1 mL solution for injection	f	1	f	2009-08-31	9004588	\N	\N	18747
polyethylene glycol 3350 100 % powder for oral solution	f	7	f	2009-09-17	9004589	\N	\N	18748
dextromethorphan hydrobromide 10 mg per 15 mL and guaifenesin 200 mg per 15 mL oral liquid	f	1	f	2009-09-18	9004590	\N	\N	18749
guaifenesin 200 mg per 15 mL oral liquid	f	1	f	2009-09-18	9004591	\N	\N	18750
bismuth subsalicylate 262 mg and calcium carbonate 350 mg chewable tablet	f	2	f	2009-09-24	9004592	\N	\N	18751
dronedarone (dronedarone hydrochloride) 400 mg oral tablet	f	1	f	2009-09-28	9004593	\N	\N	18752
gemcitabine (gemcitabine hydrochloride) 2 g per vial powder for solution for injection	f	2	f	2009-10-01	9004594	\N	\N	18753
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.2 % and oxybenzone 5 % lotion	f	1	f	2009-10-06	9004595	\N	\N	18754
avobenzone 3 % and octinoxate 7.5 % and octocrylene 2 % and oxybenzone 3 % cutaneous emulsion	f	1	f	2009-10-08	9004596	\N	\N	18755
octinoxate 7.5 % and zinc oxide 9 % lotion	f	4	f	2009-10-21	9004597	\N	\N	18756
avobenzone 2 % and drometrizole trisiloxane 1 % and octisalate 3.3 % and octocrylene 4.6 % cutaneous cream	f	2	f	2009-11-02	9004598	\N	\N	18757
chloroxylenol 0.6 % cutaneous solution	f	1	f	2009-11-10	9004599	\N	\N	18758
aztreonam 75 mg per vial powder for nebuliser solution	f	1	f	2009-11-11	9004600	\N	\N	18759
aliskiren (aliskiren fumarate) 150 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	2009-11-24	9004601	\N	\N	18760
aliskiren (aliskiren fumarate) 150 mg and hydrochlorothiazide 25 mg oral tablet	f	1	f	2009-11-24	9004602	\N	\N	18761
aliskiren (aliskiren fumarate) 300 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	2009-11-24	9004603	\N	\N	18762
aliskiren (aliskiren fumarate) 300 mg and hydrochlorothiazide 25 mg oral tablet	f	1	f	2009-11-24	9004604	\N	\N	18763
degarelix (degarelix acetate) 120 mg per vial powder for solution for injection	f	1	f	2009-11-24	9004605	\N	\N	18764
degarelix (degarelix acetate) 80 mg per vial powder for solution for injection	f	1	f	2009-11-24	9004606	\N	\N	18765
avobenzone 2 % and homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous cream	f	1	f	2009-12-04	9004607	\N	\N	18766
sodium bicarbonate 650 g powder for concentrate for solution for haemodialysis	f	1	f	2009-12-10	9004608	\N	\N	18767
darunavir (darunavir ethanolate) 75 mg oral tablet	f	1	f	2009-12-16	9004609	\N	\N	18768
micafungin sodium 100 mg per vial powder for solution for injection	f	1	f	2009-12-17	9004610	\N	\N	18769
sodium bicarbonate 650 g per cartridge powder for concentrate for solution for haemodialysis	f	1	f	2009-12-21	9004611	\N	\N	18770
bacitracin zinc 500 unit per g and gramicidin 0.25 mg per g and polymyxin b sulfate 10000 unit per g cutaneous ointment	f	1	f	2009-12-23	9004612	\N	\N	18771
glucagon (recombinant dna origin) (glucagon hydrochloride) 1 mg per vial kit	f	2	f	2009-12-23	9004613	\N	\N	18772
glucagon (recombinant dna origin) (glucagon hydrochloride) 1 mg per vial powder for solution for injection	f	2	f	2009-12-23	9004614	\N	\N	18773
gramicidin 0.25 mg per g and polymyxin b sulfate 10000 unit per g cutaneous cream	f	3	f	2009-12-23	9004615	\N	\N	18774
inact.japanese encephal virus(attenuat. strain sa14-14-2 produced in vero cells) 6 mcg per 0.5 mL suspension for injection	f	1	f	2009-12-29	9004616	\N	\N	18775
octinoxate 4.2 % and titanium dioxide 1 % cutaneous liquid	f	1	f	2010-01-01	9004617	\N	\N	18776
azacitidine 100 mg per vial powder for suspension for injection	f	1	f	2010-01-04	9004618	\N	\N	18777
antihemophilic factor (recombinant) 3000 unit per vial powder for solution for injection	f	3	f	2010-01-05	9004619	\N	\N	18778
avobenzone 3 % and homosalate 15 % and octisalate 5 % and oxybenzone 6 % cutaneous spray	f	2	f	2010-01-07	9004620	\N	\N	18779
brompheniramine maleate 1 mg per 5 mL and dextromethorphan hydrobromide 5 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004621	\N	\N	18780
chlorpheniramine maleate 1 mg per 5 mL and dextromethorphan hydrobromide 7.5 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004622	\N	\N	18781
chlorpheniramine maleate 1 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004623	\N	\N	18782
dextromethorphan hydrobromide 5 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004624	\N	\N	18783
diphenhydramine hydrochloride 6.25 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004625	\N	\N	18784
guaifenesin 100 mg per 5 mL oral liquid	f	1	f	2010-01-11	9004626	\N	\N	18785
triclosan 0.1 % cutaneous solution	f	4	f	2010-01-15	9004627	\N	\N	18786
everolimus 10 mg oral tablet	f	1	f	2010-01-19	9004628	\N	\N	18787
carbidopa 18.75 mg and entacapone 200 mg and levodopa 75 mg oral tablet	f	1	f	2010-01-20	9004629	\N	\N	18788
carbidopa 31.25 mg and entacapone 200 mg and levodopa 125 mg oral tablet	f	1	f	2010-01-20	9004630	\N	\N	18789
bismuth subsalicylate 262 mg chewable tablet	f	2	f	2010-01-21	9004631	\N	\N	18790
octinoxate 3 % and titanium dioxide 3.16 % cutaneous liquid	f	1	f	2010-01-22	9004632	\N	\N	18791
anidulafungin 100 mg per vial powder for solution for injection	f	1	f	2010-01-25	9004633	\N	\N	18792
chlorpheniramine maleate 1 mg per 5 mL and ibuprofen 100 mg per 5 mL and pseudoephedrine hydrochloride 15 mg per 5 mL oral suspension	f	1	f	2010-01-26	9004634	\N	\N	18793
imiquimod 3.75 % cutaneous cream	f	2	f	2010-01-27	9004636	\N	\N	18794
octinoxate 7.5 % and zinc oxide 7 % cutaneous cream	f	2	f	2010-01-29	9004637	\N	\N	18795
octocrylene 1 % and oxybenzone 0.5 % lotion	f	1	f	2010-01-29	9004638	\N	\N	18796
desloratadine 2.5 mg and pseudoephedrine sulfate 120 mg prolonged-release oral tablet	f	1	f	2010-02-01	9004639	\N	\N	18797
gadoxetate disodium 181.43 mg per mL solution for injection	f	1	f	2010-02-04	9004640	\N	\N	18798
avobenzone 3 % and octisalate 5 % and octocrylene 1.7 % and oxybenzone 3 % lotion	f	1	f	2010-02-08	9004641	\N	\N	18799
clofarabine 1 mg per mL solution for injection	f	1	f	2010-02-10	9004642	\N	\N	18800
recombinant human papillomavirus type 16 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 18 l1 protein 20 mcg per 0.5 mL suspension for injection	f	1	f	2010-02-10	9004643	\N	\N	18801
lidocaine 2.5 % and prilocaine 2.5 % cutaneous gel	f	1	f	2010-02-11	9004644	\N	\N	18802
homosalate 5 % and hydroquinone 4 % and octinoxate 7.5 % and octocrylene 2 % and oxybenzone 4 % cutaneous cream	f	1	f	2010-02-15	9004645	\N	\N	18803
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 7.5 % and oxybenzone 5 % lotion	f	1	f	2010-02-22	9004646	\N	\N	18804
octinoxate 6 % and octisalate 4 % and titanium dioxide 4.3 % cutaneous cream	f	1	f	2010-02-22	9004647	\N	\N	18805
dexmedetomidine (dexmedetomidine hydrochloride) 100 mcg per mL solution for injection	f	1	f	2010-02-24	9004648	\N	\N	18806
benzalkonium chloride 0.125 % cutaneous solution	f	2	f	2010-02-25	9004649	\N	\N	18807
chloroxylenol 1 % cutaneous gel	f	2	f	2010-02-25	9004650	\N	\N	18808
avobenzone 1.5 % and homosalate 7 % and octisalate 5 % and octocrylene 1.5 % and oxybenzone 2 % lotion	f	1	f	2010-03-01	9004651	\N	\N	18809
avobenzone 2.1 % and homosalate 10.5 % and octisalate 3.5 % and octocrylene 7 % and oxybenzone 4.2 % spray (bag-on-valve)	f	1	f	2010-03-01	9004652	\N	\N	18810
avobenzone 2 % and homosalate 10.5 % and octisalate 5 % and octocrylene 5.25 % and oxybenzone 3.5 % lotion	f	2	f	2010-03-01	9004653	\N	\N	18811
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2010-03-01	9004654	\N	\N	18812
avobenzone 3 % and homosalate 13 % and octisalate 5 % and octocrylene 8.5 % and oxybenzone 5 % lotion	f	1	f	2010-03-01	9004655	\N	\N	18813
c1 esterase inhibitor (human) 500 unit per vial NA	f	1	f	2010-10-06	9004777	\N	\N	18935
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 3 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2010-03-01	9004656	\N	\N	18814
corynebacterium diphtheriae crm-197 protein 34 mcg per 0.5 mL and pneumococcal polysaccharide serotype 1 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 14 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 18c 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 19a 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 19f 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 23f 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 3 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 4 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 5 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 6a 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 6b 4.4 mcg per 0.5 mL and pneumococcal polysaccharide serotype 7f 2.2 mcg per 0.5 mL and pneumococcal polysaccharide serotype 9v 2.2 mcg per 0.5 mL suspension for injection	f	1	t	2010-03-01	9004657	\N	\N	18815
homosalate 12.5 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 6 % lotion	f	1	f	2010-03-01	9004658	\N	\N	18816
octinoxate 2.5 % and titanium dioxide 1 % cutaneous liquid	f	1	f	2010-03-01	9004659	\N	\N	18817
octinoxate 2 % lotion	f	1	f	2010-03-04	9004660	\N	\N	18818
octinoxate 4 % and oxybenzone 2 % lotion	f	1	f	2010-03-08	9004661	\N	\N	18819
clotrimazole 1 % and fluconazole 150 mg cutaneous cream	f	3	f	2010-03-10	9004662	\N	\N	18820
clotrimazole 1 % and fluconazole 150 mg NA	f	3	f	2010-03-10	9004663	\N	\N	18821
clotrimazole 1 % and fluconazole 150 mg oral capsule	f	3	f	2010-03-10	9004664	\N	\N	18822
clotrimazole 1 % and fluconazole 150 mg vaginal cream	f	1	f	2010-03-10	9004665	\N	\N	18823
piperacillin (piperacillin sodium) 12 g per vial and tazobactam (tazobactam sodium) 1.5 g per vial powder for solution for injection	f	2	f	2010-03-10	9004666	\N	\N	18824
everolimus 5 mg oral tablet	f	1	f	2010-03-15	9004667	\N	\N	18825
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % and oxybenzone 5 % cutaneous stick	f	2	f	2010-03-19	9004668	\N	\N	18826
NA 6000 unit per vial powder for cutaneous solution	f	1	f	2010-03-24	9004669	\N	\N	18827
octinoxate 7.5 % and octisalate 5 % and zinc oxide 9 % cutaneous cream	f	1	f	2010-03-30	9004670	\N	\N	18828
benzalkonium chloride 0.13 % wipe	f	8	f	2010-04-05	9004671	\N	\N	18829
octinoxate 6 % and oxybenzone 2 % and titanium dioxide 11.7 % cutaneous powder	f	2	f	2010-04-06	9004672	\N	\N	18830
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 3 % lotion	f	2	f	2010-04-07	9004673	\N	\N	18831
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 4 % spray (bag-on-valve)	f	5	f	2010-04-07	9004674	\N	\N	18832
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 4 % lotion	f	1	f	2010-04-07	9004675	\N	\N	18833
lidocaine hydrochloride 1 % cutaneous solution	f	1	f	2010-04-08	9004676	\N	\N	18834
articaine hydrochloride 40 mg per mL and epinephrine bitartrate 0.009 mg per mL solution for injection	f	2	f	2010-04-12	9004677	\N	\N	18835
articaine hydrochloride 40 mg per mL and epinephrine bitartrate 0.018 mg per mL solution for injection	f	2	f	2010-04-12	9004678	\N	\N	18836
white petrolatum 80.3 % and zinc oxide 15 % cutaneous cream	f	1	f	2010-04-19	9004679	\N	\N	18837
canakinumab 150 mg per vial powder for solution for injection	f	1	f	2010-04-27	9004680	\N	\N	18838
avobenzone 4 % and bemotrizinol 3 % and drometrizole trisiloxane 1.5 % and octisalate 5 % and octocrylene 3.5 % and terephthalylidene dicamphor sulfonic acid 1 % and titanium dioxide 2.6 % cutaneous spray	f	1	t	2010-05-04	9004681	\N	\N	18839
octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	2	f	2010-05-06	9004682	\N	\N	18840
triclosan 0.2 % lotion	f	1	f	2010-05-06	9004683	\N	\N	18841
octinoxate 5 % and octisalate 3 % and oxybenzone 2 % lotion	f	1	f	2010-05-09	9004684	\N	\N	18842
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2 % and oxybenzone 2.5 % lotion	f	1	f	2010-05-13	9004685	\N	\N	18843
acetic acid 10.81 g per l and calcium chloride 10.25 g per l and dextrose 49.05 g per l and magnesium chloride 6.86 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004686	\N	\N	18844
acetic acid 10.81 g per l and calcium chloride 11.58 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004687	\N	\N	18845
dextromethorphan hydrobromide 15 mg per 15 mL and doxylamine succinate 6.25 mg per 15 mL oral liquid	f	1	f	2010-08-19	9004765	\N	\N	18846
acetic acid 10.81 g per l and calcium chloride 6.62 g per l and dextrose 74.28 g per l and magnesium chloride 4.57 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004688	\N	\N	18847
acetic acid 10.81 g per l and calcium chloride 6.62 g per l and dextrose 74.28 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004689	\N	\N	18848
acetic acid 10.81 g per l and calcium chloride 8.268 g per l and dextrose 49.49 g per l and magnesium chloride 6.861 g per l and potassium chloride 3.355 g per l and sodium chloride 262.99 g per l solution for haemodialysis	f	1	t	2010-05-17	9004690	\N	\N	18849
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 74.28 g per l and magnesium chloride 3.43 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2010-05-17	9004691	\N	\N	18850
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 74.28 g per l and magnesium chloride 4.57 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004692	\N	\N	18851
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 74.28 g per l and magnesium chloride 4.57 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004693	\N	\N	18852
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 74.28 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004694	\N	\N	18853
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004695	\N	\N	18854
c1 esterase inhibitor (human) 500 unit per vial powder for solution for injection	f	2	f	2010-10-06	9004778	\N	\N	18936
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004696	\N	\N	18855
acetic acid 10.81 g per l and calcium chloride 8.27 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004697	\N	\N	18856
acetic acid 10.81 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 5.03 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004698	\N	\N	18857
acetic acid 10.81 g per l and calcium chloride 9.92 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004699	\N	\N	18858
acetic acid 10.8 g per l and calcium chloride 3.31 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2010-05-17	9004700	\N	\N	18859
acetic acid 10.8 g per l and calcium chloride 6.61 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 3.36 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004701	\N	\N	18860
acetic acid 10.8 g per l and calcium chloride 6.61 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004702	\N	\N	18861
acetic acid 10.8 g per l and calcium chloride 7.44 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 3.36 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004703	\N	\N	18862
acetic acid 10.8 g per l and calcium chloride 7.44 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004704	\N	\N	18863
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004705	\N	\N	18864
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 3.36 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004706	\N	\N	18865
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 5.03 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004707	\N	\N	18866
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004708	\N	\N	18867
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 3.36 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004709	\N	\N	18868
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 8.39 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004710	\N	\N	18869
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and sodium chloride 289.3 g per l solution for haemodialysis	f	1	f	2010-05-17	9004711	\N	\N	18870
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 6.86 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004712	\N	\N	18871
acetic acid 10.8 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 6.86 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004713	\N	\N	18872
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004714	\N	\N	18873
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 3.36 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004715	\N	\N	18874
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004716	\N	\N	18875
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 3.43 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2010-05-17	9004717	\N	\N	18876
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004718	\N	\N	18877
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 6.86 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004719	\N	\N	18878
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 6.86 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004720	\N	\N	18879
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 6.86 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2010-05-17	9004721	\N	\N	18880
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004722	\N	\N	18881
acetic acid 10.8 g per l and calcium chloride 9.92 g per l and dextrose 98.99 g per l and magnesium chloride 3.43 g per l and potassium chloride 6.71 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-05-17	9004723	\N	\N	18882
acetic acid 8.1 g per l and calcium chloride 8.27 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 289.3 g per l solution for haemodialysis	f	1	t	2010-05-17	9004724	\N	\N	18883
acetic acid 8.1 g per l and calcium chloride 8.27 g per l and magnesium chloride 4.57 g per l and potassium chloride 5.03 g per l and sodium chloride 276.1 g per l solution for haemodialysis	f	1	f	2010-05-17	9004725	\N	\N	18884
acetic acid 8.1 g per l and calcium chloride 8.27 g per l and magnesium chloride 4.57 g per l and potassium chloride 8.39 g per l and sodium chloride 273.5 g per l solution for haemodialysis	f	1	f	2010-05-17	9004726	\N	\N	18885
acetic acid 8.1 g per l and calcium chloride 9.92 g per l and dextrose 49.49 g per l and magnesium chloride 4.57 g per l and potassium chloride 6.71 g per l and sodium chloride 289.3 g per l solution for haemodialysis	f	1	t	2010-05-17	9004727	\N	\N	18886
prasugrel (prasugrel hydrochloride) 10 mg oral tablet	f	1	f	2010-05-17	9004728	\N	\N	18887
octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % cutaneous cream	f	1	f	2010-05-18	9004729	\N	\N	18888
bemotrizinol 2 % and bisoctrizole 3 % and octinoxate 7.5 % cutaneous emulsion	f	1	f	2010-05-25	9004730	\N	\N	18889
bemotrizinol 3.5 % and bisoctrizole 6 % and octinoxate 7.5 % lotion	f	1	f	2010-05-26	9004731	\N	\N	18890
bemotrizinol 4.5 % and bisoctrizole 6 % and octinoxate 7.5 % cutaneous emulsion	f	1	f	2010-05-26	9004732	\N	\N	18891
tocilizumab 200 mg per 10 mL solution for injection	f	1	f	2010-05-26	9004733	\N	\N	18892
tocilizumab 400 mg per 20 mL solution for injection	f	1	f	2010-05-26	9004734	\N	\N	18893
tocilizumab 80 mg per 4 mL solution for injection	f	1	f	2010-05-26	9004735	\N	\N	18894
liraglutide 6 mg per mL solution for injection	f	2	f	2010-05-27	9004736	\N	\N	18895
white petrolatum 88.7 % and zinc oxide 5 % cutaneous cream	f	2	f	2010-05-29	9004737	\N	\N	18896
petrolatum 98.79 % cutaneous ointment	f	1	f	2010-06-04	9004738	\N	\N	18897
bisacodyl 5 mg and polyethylene glycol 3350 59.55 g per pck and potassium chloride 0.76 g per pck and sodium bicarbonate 1.69 g per pck and sodium chloride 1.46 g per pck and sodium sulfate 5.74 g per pck gastro-resistant tablet	f	1	t	2010-06-06	9004739	\N	\N	18898
bisacodyl 5 mg and polyethylene glycol 3350 59.55 g per pck and potassium chloride 0.76 g per pck and sodium bicarbonate 1.69 g per pck and sodium chloride 1.46 g per pck and sodium sulfate 5.74 g per pck kit	f	1	t	2010-06-06	9004740	\N	\N	18899
bisacodyl 5 mg and polyethylene glycol 3350 59.55 g per pck and potassium chloride 0.76 g per pck and sodium bicarbonate 1.69 g per pck and sodium chloride 1.46 g per pck and sodium sulfate 5.74 g per pck powder for oral solution	f	1	t	2010-06-06	9004741	\N	\N	18900
azelaic acid 15 % cutaneous gel	f	1	f	2010-06-15	9004742	\N	\N	18901
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 3.35 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2010-06-22	9004743	\N	\N	18902
polyethylene glycol 3350 100 % powder for oral suspension	f	1	f	2010-07-02	9004744	\N	\N	18903
sapropterin dihydrochloride 100 mg oral tablet	f	1	f	2010-07-05	9004745	\N	\N	18904
cefotaxime (cefotaxime sodium) 2 g per vial powder for solution for injection	f	1	f	2010-07-06	9004746	\N	\N	18905
cefotaxime (cefotaxime sodium) 500 mg per vial powder for solution for injection	f	1	f	2010-07-07	9004747	\N	\N	18906
paliperidone (paliperidone palmitate) 100 mg per 1 mL prolonged-release suspension for injection	f	1	f	2010-07-21	9004748	\N	\N	18907
paliperidone (paliperidone palmitate) 150 mg per 1.5 mL prolonged-release suspension for injection	f	1	f	2010-07-21	9004749	\N	\N	18908
paliperidone (paliperidone palmitate) 50 mg per 0.5 mL prolonged-release suspension for injection	f	1	f	2010-07-21	9004750	\N	\N	18909
paliperidone (paliperidone palmitate) 75 mg per 0.75 mL prolonged-release suspension for injection	f	1	f	2010-07-21	9004751	\N	\N	18910
pyrithione zinc 1 % lotion	f	2	f	2010-07-21	9004752	\N	\N	18911
corynebacterium diphtheriae crm-197 protein 47 mcg per 0.5 mL and meningococcal group a oligosaccharide 10 mcg per 0.5 mL and meningococcal group c oligosaccharide 5 mcg per 0.5 mL and meningococcal group w-135 oligosaccharide 5 mcg per 0.5 mL and meningococcal group y oligosaccharide 5 mcg per 0.5 mL powder for solution for injection	f	1	f	2010-07-29	9004753	\N	\N	18912
corynebacterium diphtheriae crm-197 protein 47 mcg per 0.5 mL and meningococcal group a oligosaccharide 10 mcg per 0.5 mL and meningococcal group c oligosaccharide 5 mcg per 0.5 mL and meningococcal group w-135 oligosaccharide 5 mcg per 0.5 mL and meningococcal group y oligosaccharide 5 mcg per 0.5 mL solution for injection	f	1	f	2010-07-29	9004754	\N	\N	18913
avobenzone 3 % and homosalate 12 % and octisalate 5 % and octocrylene 2.35 % and oxybenzone 6 % cutaneous cream	f	1	f	2010-07-30	9004755	\N	\N	18914
guaifenesin 100 mg per 5 mL and menthol 10 mg per 5 mL oral liquid	f	1	f	2010-08-02	9004756	\N	\N	18915
linezolid 3 g per bottle powder for oral suspension	f	1	f	2010-08-04	9004757	\N	\N	18916
eptacog alfa (activated) 2 mg per vial NA	f	2	f	2010-08-05	9004758	\N	\N	18917
eptacog alfa (activated) 2 mg per vial powder for solution for injection	f	2	f	2010-08-05	9004759	\N	\N	18918
trabectedin 1 mg per vial powder for solution for injection	f	1	f	2010-08-05	9004760	\N	\N	18919
octinoxate 4 % and titanium dioxide 2.64 % cutaneous emulsion	f	1	f	2010-08-10	9004761	\N	\N	18920
denosumab 60 mg per mL solution for injection	f	1	f	2010-08-12	9004762	\N	\N	18921
pazopanib (pazopanib hydrochloride) 200 mg oral tablet	f	1	f	2010-08-13	9004763	\N	\N	18922
octinoxate 3 % and titanium dioxide 3.16 % cutaneous emulsion	f	3	f	2010-08-16	9004764	\N	\N	18923
dextromethorphan hydrobromide 30 mg per 30 mL oral liquid	f	1	f	2010-08-19	9004766	\N	\N	18924
cilastatin (cilastatin sodium) 250 mg per vial and imipenem 250 mg per vial powder for solution for injection	f	2	f	2010-08-25	9004767	\N	\N	18925
eptacog alfa (activated) 1 mg per vial NA	f	2	f	2010-08-25	9004768	\N	\N	18926
eptacog alfa (activated) 1 mg per vial powder for solution for injection	f	2	f	2010-08-25	9004769	\N	\N	18927
eptacog alfa (activated) 5 mg per vial NA	f	2	f	2010-08-25	9004770	\N	\N	18928
eptacog alfa (activated) 5 mg per vial powder for solution for injection	f	2	f	2010-08-25	9004771	\N	\N	18929
white petrolatum 38 % and zinc oxide 40 % cutaneous ointment	f	1	f	2010-08-29	9004772	\N	\N	18930
cefotaxime (cefotaxime sodium) 1 g per vial powder for solution for injection	f	1	f	2010-09-16	9004773	\N	\N	18931
cyclosporine 0.05 % ophthalmic drops	f	1	f	2010-09-29	9004774	\N	\N	18932
homosalate 9.6 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous stick	f	1	f	2010-09-29	9004775	\N	\N	18933
febuxostat 80 mg oral tablet	f	1	f	2010-09-30	9004776	\N	\N	18934
octinoxate 4.09 % and oxybenzone 1.4 % cutaneous cream	f	2	f	2010-10-18	9004779	\N	\N	18937
lacosamide 100 mg oral tablet	f	1	f	2010-10-21	9004780	\N	\N	18938
lacosamide 150 mg oral tablet	f	1	f	2010-10-21	9004781	\N	\N	18939
lacosamide 200 mg oral tablet	f	1	f	2010-10-21	9004782	\N	\N	18940
lacosamide 50 mg oral tablet	f	1	f	2010-10-21	9004783	\N	\N	18941
diphtheria toxoid adsorbed 2.5 lf per 0.5 mL and filamentous haemagglutinin adsorbed 8 mcg per 0.5 mL and inactivated poliovirus type i 40 d per 0.5 mL and inactivated poliovirus type ii 8 d per 0.5 mL and inactivated poliovirus type iii 32 d per 0.5 mL and pertactin adsorbed 2.5 mcg per 0.5 mL and pertussis toxoid adsorbed 8 mcg per 0.5 mL and tetanus toxoid adsorbed 5 lf per 0.5 mL suspension for injection	f	1	t	2010-10-22	9004784	\N	\N	18942
dorzolamide (dorzolamide hydrochloride) 20 mg per mL ophthalmic drops	f	1	f	2010-10-25	9004785	\N	\N	18943
avobenzone 3 % per 50 mL and octisalate 3 % per 50 mL and octocrylene 2.7 % per 50 mL cutaneous cream	f	1	f	2010-10-30	9004786	\N	\N	18944
ensulizole 1.7 % and octinoxate 7.5 % cutaneous cream	f	1	f	2010-10-30	9004787	\N	\N	18945
benzalkonium chloride 0.15 % wipe	f	1	f	2010-11-01	9004788	\N	\N	18946
thalidomide 50 mg oral capsule	f	1	f	2010-11-01	9004789	\N	\N	18947
alitretinoin 30 mg oral capsule	f	1	f	2010-11-19	9004790	\N	\N	18948
velaglucerase alfa 400 unit per vial powder for solution for injection	f	1	f	2010-11-22	9004791	\N	\N	18949
sevelamer carbonate 800 mg oral tablet	f	1	f	2010-11-25	9004792	\N	\N	18950
somatropin 5.83 mg per mL solution for injection	f	1	f	2010-12-02	9004793	\N	\N	18951
somatropin 8 mg per mL solution for injection	f	2	f	2010-12-02	9004794	\N	\N	18952
acetazolamide (acetazolamide sodium) 500 mg per vial powder for solution for injection	f	1	f	2010-12-03	9004795	\N	\N	18953
octinoxate 7.5 % and octisalate 3 % and octocrylene 10 % and oxybenzone 6 % cutaneous suspension	f	1	f	2010-12-05	9004796	\N	\N	18954
acetaminophen 650 mg per pck and chlorpheniramine maleate 4 mg per pck and dextromethorphan hydrobromide 20 mg per pck and pseudoephedrine hydrochloride 60 mg per pck oral powder	f	1	f	2010-12-08	9004797	\N	\N	18955
diphenhydramine hydrochloride 12.5 mg oral tablet	f	1	f	2010-12-10	9004798	\N	\N	18956
ritonavir 100 mg oral tablet	f	1	f	2010-12-17	9004799	\N	\N	18957
NA 500 mcg oral tablet	f	1	f	2010-12-30	9004800	\N	\N	18958
acetylsalicylic acid 325 mg and citric acid 1000 mg and sodium bicarbonate 1916 mg effervescent oral tablet	f	1	f	2011-01-01	9004801	\N	\N	18959
avobenzone 3 % and homosalate 2 % and octisalate 4.9 % lotion	f	1	f	2011-01-01	9004802	\N	\N	18960
avobenzone 3 % and homosalate 2 % and octisalate 5 % cutaneous cream	f	1	f	2011-01-01	9004803	\N	\N	18961
avobenzone 3 % and octisalate 5 % cutaneous cream	f	7	f	2011-01-01	9004804	\N	\N	18962
octinoxate 5 % and octisalate 5 % and oxybenzone 5 % cutaneous suspension	f	1	f	2011-01-02	9004805	\N	\N	18963
octinoxate 7.5 % and octisalate 0.49 % and octocrylene 7.5 % and oxybenzone 6 % cutaneous suspension	f	1	f	2011-01-02	9004806	\N	\N	18964
diphenhydramine hydrochloride 25 mg and ibuprofen 200 mg oral capsule	f	3	f	2011-01-03	9004807	\N	\N	18965
octinoxate 5 % and octocrylene 5 % and oxybenzone 5 % cutaneous suspension	f	1	f	2011-01-04	9004808	\N	\N	18966
acetylsalicylic acid 325 mg and caffeine 32 mg oral tablet	f	1	f	2011-01-05	9004809	\N	\N	18967
alitretinoin 10 mg oral capsule	f	1	f	2011-01-11	9004810	\N	\N	18968
octinoxate 4 % and titanium dioxide 3 % cutaneous cream	f	1	f	2011-01-15	9004811	\N	\N	18969
homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 2 % cutaneous cream	f	5	f	2011-01-17	9004812	\N	\N	18970
alanine 8.24 g per l and calcium chloride 0.52 g per l and dextrose 121 g per l and glutamic acid 2.84 g per l and glycine 3.95 g per l and histidine 3.4 g per l and l-arginine 5.58 g per l and l-aspartic acid 1.65 g per l and l-isoleucine 2.84 g per l and l-leucine 3.95 g per l and l-phenylalanine 3.95 g per l and l-proline 3.4 g per l and l-threonine 2.84 g per l and l-tyrosine 0.15 g per l and l-valine 3.64 g per l and lysine (l-lysine acetate) 4.48 g per l and magnesium chloride 0.81 g per l and methionine 2.84 g per l and olive oil 32 g per l and potassium chloride 2.24 g per l and serine 2.25 g per l and sodium acetate trihydrate 1.5 g per l and sodium glycerophosphate 3.67 g per l and soybean oil 8 g per l and tryptophan 0.95 g per l emulsion for injection	f	1	t	2011-01-19	9004813	\N	\N	18971
avobenzone 2.85 % and octinoxate 7.5 % and octisalate 4.75 % and oxybenzone 4 % cutaneous cream	f	1	f	2011-01-19	9004814	\N	\N	18972
benzethonium chloride 0.2 % lotion	f	1	f	2011-01-20	9004815	\N	\N	18973
avobenzone 2.7 % and homosalate 13.5 % and octisalate 4.5 % and octocrylene 9 % and oxybenzone 5.4 % cutaneous spray	f	2	f	2011-01-26	9004816	\N	\N	18974
avobenzone 2 % and homosalate 8 % and octisalate 5 % and octocrylene 5 % lotion	f	1	f	2011-01-26	9004817	\N	\N	18975
avobenzone 0.8 % and octinoxate 4.9 % and octocrylene 5 % cutaneous cream	f	1	f	2011-02-01	9004818	\N	\N	18976
avobenzone 0.8 % and octinoxate 4.9 % and octocrylene 5 % cutaneous emulsion	f	1	f	2011-02-01	9004819	\N	\N	18977
bacitracin zinc 500 unit per g cutaneous ointment	f	2	f	2011-02-01	9004820	\N	\N	18978
dalteparin sodium 10000 unit per 0.4 mL solution for injection	f	1	f	2011-02-01	9004821	\N	\N	18979
dalteparin sodium 12500 unit per 0.5 mL solution for injection	f	1	f	2011-02-01	9004822	\N	\N	18980
dalteparin sodium 15000 unit per 0.6 mL solution for injection	f	1	f	2011-02-01	9004823	\N	\N	18981
dalteparin sodium 18000 unit per 0.72 mL solution for injection	f	1	f	2011-02-01	9004824	\N	\N	18982
dalteparin sodium 7500 unit per 0.3 mL solution for injection	f	1	f	2011-02-01	9004825	\N	\N	18983
octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % cutaneous spray	f	1	f	2011-02-01	9004826	\N	\N	18984
potassium citrate 1080 mg prolonged-release oral tablet	f	1	f	2011-02-11	9004827	\N	\N	18985
thalidomide 100 mg oral capsule	f	1	f	2011-02-17	9004828	\N	\N	18986
thalidomide 200 mg oral capsule	f	1	f	2011-02-17	9004829	\N	\N	18987
octinoxate 5.5 % and oxybenzone 2.5 % cutaneous suspension	f	1	f	2011-02-20	9004830	\N	\N	18988
avobenzone 3 % and homosalate 13 % and octisalate 5 % and octocrylene 5 % and oxybenzone 6 % lotion	f	4	f	2011-02-21	9004831	\N	\N	18989
enalapril maleate 10 mg and hydrochlorothiazide 25 mg oral tablet	f	1	f	2011-02-24	9004832	\N	\N	18990
enalapril maleate 5 mg and hydrochlorothiazide 12.5 mg oral tablet	f	1	f	2011-02-24	9004833	\N	\N	18991
tolvaptan 15 mg oral tablet	f	1	f	2011-09-22	9004930	\N	\N	19088
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 5 % lotion	f	1	f	2011-02-25	9004834	\N	\N	18992
alanine 6.41 g per l and calcium chloride 0.52 g per l and dextrose 154 g per l and glutamic acid 2.21 g per l and glycine 3.07 g per l and histidine 2.64 g per l and l-arginine 4.34 g per l and l-aspartic acid 1.28 g per l and l-isoleucine 2.21 g per l and l-leucine 3.07 g per l and l-phenylalanine 3.07 g per l and l-proline 2.64 g per l and l-threonine 2.21 g per l and l-tyrosine 0.11 g per l and l-valine 2.83 g per l and lysine (l-lysine acetate) 3.48 g per l and magnesium chloride 0.81 g per l and methionine 2.21 g per l and olive oil 32 g per l and potassium chloride 2.24 g per l and serine 1.75 g per l and sodium acetate trihydrate 1.5 g per l and sodium glycerophosphate 3.67 g per l and soybean oil 8 g per l and tryptophan 0.74 g per l emulsion for injection	f	1	t	2011-02-26	9004835	\N	\N	18993
alanine 3.66 g per l and calcium chloride 0.3 g per l and dextrose 82.5 g per l and glutamic acid 1.26 g per l and glycine 1.76 g per l and histidine 1.51 g per l and l-arginine 2.48 g per l and l-aspartic acid 0.73 g per l and l-isoleucine 1.26 g per l and l-leucine 1.76 g per l and l-phenylalanine 1.76 g per l and l-proline 1.51 g per l and l-threonine 1.26 g per l and l-tyrosine 0.06 g per l and l-valine 1.62 g per l and lysine (l-lysine acetate) 1.99 g per l and magnesium chloride 0.45 g per l and methionine 1.26 g per l and olive oil 24 g per l and potassium chloride 1.19 g per l and serine 1 g per l and sodium acetate trihydrate 1.16 g per l and sodium glycerophosphate 1.91 g per l and soybean oil 6 g per l and tryptophan 0.42 g per l emulsion for injection	f	1	t	2011-02-28	9004836	\N	\N	18994
antipyrine 54 mg per mL and benzocaine 14 mg per mL otic drops	f	1	f	2011-02-28	9004837	\N	\N	18995
alanine 8.24 g per l and dextrose 121 g per l and glutamic acid 2.84 g per l and glycine 3.95 g per l and histidine 3.4 g per l and l-arginine 5.58 g per l and l-aspartic acid 1.65 g per l and l-isoleucine 2.84 g per l and l-leucine 3.95 g per l and l-phenylalanine 3.95 g per l and l-proline 3.4 g per l and l-threonine 2.84 g per l and l-tyrosine 0.15 g per l and l-valine 3.64 g per l and lysine (l-lysine acetate) 4.48 g per l and methionine 2.84 g per l and olive oil 32 g per l and serine 2.25 g per l and soybean oil 8 g per l and tryptophan 0.95 g per l emulsion for injection	f	1	t	2011-03-01	9004838	\N	\N	18996
docetaxel 10 mg per mL solution for injection	f	2	f	2011-03-01	9004839	\N	\N	18997
fibrinogen (human) 90 mg per mL and thrombin (human) 1200 unit per mL cutaneous solution	f	1	f	2011-03-01	9004840	\N	\N	18998
fibrinogen (human) 90 mg per mL and thrombin (human) 1200 unit per mL kit	f	1	f	2011-03-01	9004841	\N	\N	18999
octinoxate 6 % and zinc oxide 6 % lotion	f	3	f	2011-03-01	9004842	\N	\N	19000
avobenzone 2 % and homosalate 10 % and octisalate 5 % and oxybenzone 3 % spray (bag-on-valve)	f	4	f	2011-03-02	9004843	\N	\N	19001
avobenzone 2 % and homosalate 15 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2011-03-02	9004844	\N	\N	19002
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 1.5 % and oxybenzone 5 % lotion	f	2	f	2011-03-02	9004845	\N	\N	19003
docusate sodium 10 mg per mL syrup	f	1	f	2011-03-03	9004846	\N	\N	19004
docusate sodium 250 mg oral capsule	f	1	f	2011-03-03	9004847	\N	\N	19005
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 5 % and oxybenzone 6 % lotion	f	3	f	2011-03-10	9004848	\N	\N	19006
formoterol fumarate 5 mcg and mometasone furoate 100 mcg pressurised inhalation	f	1	f	2011-03-10	9004849	\N	\N	19007
diphtheria toxoid 2 lf per 0.5 mL and filamentous haemagglutinin 5 mcg per 0.5 mL and fimbriae types 2 and 3 (fim) 5 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (v.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (v.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 2.5 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL suspension for injection	f	1	t	2011-03-11	9004850	\N	\N	19008
standardized kentucky blue/june grass pollen 25000 unit per mL and standardized orchard grass pollen 25000 unit per mL and standardized redtop grass pollen 25000 unit per mL and standardized timothy grass pollen 25000 unit per mL solution for injection	f	1	f	2011-03-22	9004851	\N	\N	19009
fingolimod (fingolimod hydrochloride) 0.5 mg oral capsule	f	1	f	2011-03-28	9004852	\N	\N	19010
water 10 mL per vial solution for injection	f	1	f	2011-03-28	9004853	\N	\N	19011
dasatinib (dasatinib monohydrate) 140 mg oral tablet	f	1	f	2011-03-29	9004854	\N	\N	19012
eltrombopag (eltrombopag olamine) 50 mg oral tablet	f	1	f	2011-04-01	9004855	\N	\N	19013
octinoxate 7.5 % and zinc oxide 10.5 % lotion	f	6	f	2011-04-01	9004856	\N	\N	19014
anti-inhibitor coagulant complex 3250 unit per vial and water 50 mL per vial powder for solution for injection	f	1	f	2011-04-04	9004857	\N	\N	19015
anti-inhibitor coagulant complex 3250 unit per vial and water 50 mL per vial solution for injection	f	1	f	2011-04-04	9004858	\N	\N	19016
avobenzone 2 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % lotion	f	2	f	2011-04-04	9004859	\N	\N	19017
eltrombopag (eltrombopag olamine) 25 mg oral tablet	f	1	f	2011-04-04	9004860	\N	\N	19018
fosaprepitant (fosaprepitant dimeglumine) 150 mg per vial powder for solution for injection	f	1	f	2011-04-04	9004861	\N	\N	19019
octinoxate 3.5 % and titanium dioxide 1.8 % cutaneous cream	f	1	f	2011-04-04	9004862	\N	\N	19020
avobenzone 1.5 % and ensulizole 2 % and octocrylene 2 % cutaneous cream	f	1	f	2011-04-06	9004863	\N	\N	19021
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % and oxybenzone 6 % and terephthalylidene dicamphor sulfonic acid 2 % lotion	f	3	t	2011-04-13	9004864	\N	\N	19022
glycerine 0.2 % and hypromellose 0.2 % ophthalmic drops	f	5	f	2011-04-19	9004865	\N	\N	19023
octinoxate 6 % and titanium dioxide 5.6 % lotion	f	1	f	2011-04-19	9004866	\N	\N	19024
glycerine 0.5 % and naphazoline hydrochloride 0.03 % ophthalmic drops	f	1	f	2011-04-27	9004867	\N	\N	19025
polyethylene glycol 3350 100 g per pck and potassium chloride 1.015 g per pck and sodium ascorbate 5.9 g per pck and sodium chloride 2.691 g per pck and sodium sulfate anhydrous 7.5 g per pck and vitamin c 4.7 g per pck powder for oral solution	f	1	t	2011-04-28	9004868	\N	\N	19026
cilastatin (cilastatin sodium) 500 mg and imipenem 500 mg powder for solution for injection	f	1	f	2011-05-02	9004869	\N	\N	19027
tobramycin 28 mg inhalation powder capsule	f	1	f	2011-05-12	9004870	\N	\N	19028
adapalene 0.1 % and benzoyl peroxide 2.5 % cutaneous gel	f	1	f	2011-05-13	9004871	\N	\N	19029
clindamycin phosphate 1.2 % and tretinoin 0.025 % cutaneous gel	f	1	f	2011-05-16	9004872	\N	\N	19030
tolvaptan 30 mg oral tablet	f	1	f	2011-09-22	9004931	\N	\N	19089
dextromethorphan hydrobromide 20 mg and guaifenesin 400 mg oral tablet	f	1	f	2011-05-17	9004873	\N	\N	19031
guaifenesin 200 mg oral tablet	f	1	f	2011-05-17	9004874	\N	\N	19032
guaifenesin 400 mg oral tablet	f	1	f	2011-05-17	9004875	\N	\N	19033
sodium nitroprusside 25 mg per mL solution for injection	f	1	f	2011-05-17	9004876	\N	\N	19034
irinotecan hydrochloride (irinotecan hydrochloride trihydrate) 20 mg per mL solution for injection	f	3	f	2011-05-27	9004877	\N	\N	19035
exenatide 250 mcg per mL solution for injection	f	2	f	2011-05-31	9004878	\N	\N	19036
ticagrelor 90 mg oral tablet	f	1	f	2011-06-01	9004879	\N	\N	19037
denosumab 120 mg per 1.7 mL solution for injection	f	1	f	2011-06-06	9004880	\N	\N	19038
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 6 % cutaneous cream	f	1	f	2011-06-15	9004881	\N	\N	19039
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 6 % lotion	f	1	f	2011-06-15	9004882	\N	\N	19040
acetylsalicylic acid 500 mg and caffeine 32 mg oral tablet	f	1	f	2011-06-16	9004883	\N	\N	19041
formoterol fumarate 5 mcg and mometasone furoate 200 mcg pressurised inhalation	f	1	f	2011-06-17	9004884	\N	\N	19042
calcium chloride 40 mcmol per mL and thrombin (human) 500 unit per mL and NA 3000 kiu per mL and NA 125 mg per mL cutaneous solution	f	1	f	2011-06-20	9004885	\N	\N	19043
octinoxate 6.34 % and titanium dioxide 3 % cutaneous cream	f	1	f	2011-06-22	9004886	\N	\N	19044
avobenzone 3 % and homosalate 12 % and octisalate 5 % and octocrylene 5 % and oxybenzone 3 % cutaneous cream	f	1	f	2011-06-24	9004887	\N	\N	19045
octinoxate 7.5 % and octisalate 5 % cutaneous stick	f	1	f	2011-06-30	9004888	\N	\N	19046
calcium chloride 6.24 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2011-07-04	9004889	\N	\N	19047
avobenzone 2 % and homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % lotion	f	2	f	2011-07-08	9004890	\N	\N	19048
homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % lotion	f	2	f	2011-07-08	9004891	\N	\N	19049
octinoxate 3.4 % and titanium dioxide 1 % cutaneous emulsion	f	1	f	2011-07-11	9004892	\N	\N	19050
calcium chloride 6.24 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.1 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2011-07-14	9004893	\N	\N	19051
nilotinib (nilotinib hydrochloride monohydrate) 150 mg oral capsule	f	1	f	2011-07-15	9004894	\N	\N	19052
calcium chloride 6.24 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.71 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2011-07-18	9004895	\N	\N	19053
octinoxate 7.5 % and octisalate 5 % cutaneous gel	f	1	f	2011-07-26	9004896	\N	\N	19054
abiraterone acetate 250 mg oral tablet	f	1	f	2011-07-28	9004897	\N	\N	19055
cloxacillin (cloxacillin sodium) 1000 mg per vial powder for solution for injection	f	1	f	2011-07-28	9004898	\N	\N	19056
cloxacillin (cloxacillin sodium) 2000 mg per vial powder for solution for injection	f	1	f	2011-07-28	9004899	\N	\N	19057
coagulation factor ii (human) 800 unit and coagulation factor ix (human) 620 unit and coagulation factor vii (human) 500 unit and coagulation factor x (human) 1020 unit and protein c 820 unit and protein s 680 unit powder for solution for injection	f	1	t	2011-07-28	9004900	\N	\N	19058
octinoxate 3.6 % and titanium dioxide 7.8 % cutaneous powder	f	1	f	2011-08-01	9004901	\N	\N	19059
diphenhydramine hydrochloride 12.5 mg and phenylephrine hydrochloride 5 mg orodispersible tablet	f	1	f	2011-08-02	9004902	\N	\N	19060
avobenzone 3 % and homosalate 4.7 % and octisalate 5 % and octocrylene 7 % lotion	f	1	f	2011-08-05	9004903	\N	\N	19061
everolimus 2.5 mg oral tablet	f	1	f	2011-08-05	9004904	\N	\N	19062
acetaminophen 1000 mg per 30 mL and chlorpheniramine maleate 4 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and guaifenesin 200 mg per 30 mL and pseudoephedrine hydrochloride 60 mg per 30 mL syrup	f	1	f	2011-08-08	9004905	\N	\N	19063
vitamin d3 50000 unit oral capsule	f	3	f	2011-08-09	9004906	\N	\N	19064
triclosan 0.46 % cutaneous liquid	f	1	f	2011-08-10	9004907	\N	\N	19065
amlodipine (amlodipine besylate) 10 mg and telmisartan 40 mg oral tablet	f	1	f	2011-08-11	9004908	\N	\N	19066
amlodipine (amlodipine besylate) 10 mg and telmisartan 80 mg oral tablet	f	1	f	2011-08-11	9004909	\N	\N	19067
amlodipine (amlodipine besylate) 5 mg and telmisartan 40 mg oral tablet	f	1	f	2011-08-11	9004910	\N	\N	19068
amlodipine (amlodipine besylate) 5 mg and telmisartan 80 mg oral tablet	f	1	f	2011-08-11	9004911	\N	\N	19069
benzalkonium chloride 0.133 % wipe	f	1	f	2011-08-16	9004912	\N	\N	19070
benzoyl peroxide 2.5 % cutaneous gel	f	10	f	2011-08-22	9004913	\N	\N	19071
cabazitaxel 40 mg per mL solution for injection	f	1	f	2011-08-23	9004914	\N	\N	19072
belimumab 120 mg per vial powder for solution for injection	f	1	f	2011-08-24	9004915	\N	\N	19073
belimumab 400 mg per vial powder for solution for injection	f	1	f	2011-08-24	9004916	\N	\N	19074
vardenafil (vardenafil hydrochloride) 10 mg orodispersible tablet	f	1	f	2011-08-25	9004917	\N	\N	19075
rufinamide 200 mg oral tablet	f	1	f	2011-08-29	9004918	\N	\N	19076
vitamin d3 10000 unit oral capsule	f	3	f	2011-08-29	9004919	\N	\N	19077
rilpivirine (rilpivirine hydrochloride) 25 mg oral tablet	f	1	f	2011-08-31	9004920	\N	\N	19078
rufinamide 400 mg oral tablet	f	1	f	2011-09-01	9004921	\N	\N	19079
dasatinib (dasatinib monohydrate) 80 mg oral tablet	f	1	f	2011-09-02	9004922	\N	\N	19080
linagliptin 5 mg oral tablet	f	1	f	2011-09-13	9004923	\N	\N	19081
cloxacillin (cloxacillin sodium) 500 mg per vial powder for solution for injection	f	1	f	2011-09-14	9004924	\N	\N	19082
avobenzone 2 % and octinoxate 4 % and octisalate 4 % cutaneous cream	f	1	f	2011-09-15	9004925	\N	\N	19083
avobenzone 2 % and octinoxate 7.5 % and octocrylene 1.86 % and oxybenzone 2 % cutaneous cream	f	1	f	2011-09-15	9004926	\N	\N	19084
octocrylene 2 % and titanium dioxide 2.9 % cutaneous cream	f	1	f	2011-09-15	9004927	\N	\N	19085
lacosamide 10 mg per mL solution for injection	f	1	f	2011-09-20	9004928	\N	\N	19086
benzalkonium chloride 0.12 % cutaneous gel	f	1	f	2011-09-22	9004929	\N	\N	19087
nevirapine 400 mg prolonged-release oral tablet	f	2	f	2011-09-27	9004932	\N	\N	19090
remifentanil (remifentanil hydrochloride) 1 mg per vial powder for solution for injection	f	1	f	2011-09-27	9004933	\N	\N	19091
alanine 6.41 g per l and dextrose 154 g per l and glutamic acid 2.21 g per l and glycine 3.07 g per l and histidine 2.64 g per l and l-arginine 4.34 g per l and l-aspartic acid 1.28 g per l and l-isoleucine 2.21 g per l and l-leucine 3.07 g per l and l-phenylalanine 3.07 g per l and l-proline 2.64 g per l and l-threonine 2.21 g per l and l-tyrosine 0.11 g per l and l-valine 2.83 g per l and lysine (l-lysine acetate) 3.48 g per l and methionine 2.21 g per l and olive oil 32 g per l and serine 1.75 g per l and soybean oil 8 g per l and tryptophan 0.74 g per l emulsion for injection	f	1	t	2011-09-29	9004934	\N	\N	19092
remifentanil (remifentanil hydrochloride) 2 mg per vial powder for solution for injection	f	1	f	2011-09-29	9004935	\N	\N	19093
avobenzone 2 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % cutaneous solution	f	2	f	2011-10-10	9004936	\N	\N	19094
avobenzone 2 % and octisalate 5 % and octocrylene 2.75 % cutaneous solution	f	2	f	2011-10-10	9004937	\N	\N	19095
immune globulin (human) 200 mg per mL solution for injection	f	1	f	2011-10-13	9004938	\N	\N	19096
avobenzone 2 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % cutaneous gel	f	1	f	2011-10-17	9004939	\N	\N	19097
avobenzone 2 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 0.5 % cutaneous gel	f	1	f	2011-10-17	9004940	\N	\N	19098
avobenzone 2 % and octisalate 5 % and octocrylene 2.75 % lotion	f	1	f	2011-10-17	9004941	\N	\N	19099
emtricitabine 200 mg and rilpivirine (rilpivirine hydrochloride) 25 mg and tenofovir disoproxil fumarate 300 mg oral tablet	f	1	f	2011-10-20	9004942	\N	\N	19100
rufinamide 100 mg oral tablet	f	1	f	2011-10-20	9004943	\N	\N	19101
dapsone 5 % cutaneous gel	f	1	f	2011-10-21	9004944	\N	\N	19102
dienogest 2 mg oral tablet	f	1	f	2011-10-25	9004945	\N	\N	19103
NA 4 mg oral capsule	f	1	f	2011-10-26	9004946	\N	\N	19104
NA 8 mg oral capsule	f	1	f	2011-10-26	9004947	\N	\N	19105
octinoxate 7.5 % and octisalate 4 % and oxybenzone 2.5 % and titanium dioxide 1.1 % cutaneous cream	f	7	f	2011-10-26	9004948	\N	\N	19106
diphenhydramine citrate 38 mg and ibuprofen 200 mg oral tablet	f	1	f	2011-10-27	9004949	\N	\N	19107
digoxin immune fab (ovine) 40 mg per vial powder for solution for injection	f	1	f	2011-11-04	9004950	\N	\N	19108
dutasteride 0.5 mg and tamsulosin hydrochloride 0.4 mg modified-release oral capsule	f	1	f	2011-11-17	9004951	\N	\N	19109
zolpidem tartrate 10 mg orodispersible tablet	f	3	f	2011-11-29	9004952	\N	\N	19110
octinoxate 7.5 % and octisalate 3 % cutaneous stick	f	1	f	2011-12-06	9004953	\N	\N	19111
etravirine 200 mg oral tablet	f	1	f	2011-12-12	9004954	\N	\N	19112
calcium chloride 40 mcmol per mL and thrombin (human) 500 unit per mL and NA 3000 kiu per mL and NA 125 mg per mL kit	f	1	f	2011-12-14	9004955	\N	\N	19113
calcium chloride 40 mcmol per mL and thrombin (human) 4 unit per mL and NA 3000 kiu per mL and NA 125 mg per mL cutaneous solution	f	1	f	2011-12-18	9004956	\N	\N	19114
asenapine (asenapine maleate) 10 mg sublingual tablet	f	1	f	2011-12-19	9004957	\N	\N	19115
asenapine (asenapine maleate) 5 mg sublingual tablet	f	1	f	2011-12-19	9004958	\N	\N	19116
avobenzone 3 % and octinoxate 7.49 % and octocrylene 2 % and sulisobenzone 1.5 % cutaneous emulsion	f	1	f	2011-12-22	9004959	\N	\N	19117
avobenzone 3 % and octinoxate 7.49 % and octocrylene 2 % and sulisobenzone 1 % cutaneous cream	f	1	f	2011-12-22	9004960	\N	\N	19118
octinoxate 5.49 % and titanium dioxide 4.74 % cutaneous cream	f	1	f	2011-12-22	9004961	\N	\N	19119
levofloxacin 5 mg per mL solution for injection	f	1	f	2011-12-23	9004962	\N	\N	19120
avobenzone 2 % and octocrylene 5 % and oxybenzone 3 % lotion	f	2	f	2012-01-01	9004963	\N	\N	19121
avobenzone 3 % and octocrylene 6 % and oxybenzone 4 % lotion	f	2	f	2012-01-01	9004964	\N	\N	19122
dimethicone 50 % cutaneous solution	f	1	f	2012-01-06	9004965	\N	\N	19123
avobenzone 2.5 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 7.5 % cutaneous spray	f	1	f	2012-01-09	9004966	\N	\N	19124
avobenzone 2 % and homosalate 5 % and octinoxate 7.5 % and oxybenzone 3 % cutaneous cream	f	1	f	2012-01-11	9004967	\N	\N	19125
methylprednisolone (methylprednisolone sodium succinate) 40 mg per vial kit	f	1	f	2012-01-11	9004968	\N	\N	19126
methylprednisolone (methylprednisolone sodium succinate) 40 mg per vial NA	f	1	f	2012-01-11	9004969	\N	\N	19127
prucalopride (prucalopride succinate) 1 mg oral tablet	f	1	f	2012-01-12	9004970	\N	\N	19128
prucalopride (prucalopride succinate) 2 mg oral tablet	f	1	f	2012-01-12	9004971	\N	\N	19129
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 3 % and oxybenzone 4 % cutaneous cream	f	1	f	2012-01-16	9004972	\N	\N	19130
methylprednisolone (methylprednisolone sodium succinate) 125 mg per vial kit	f	1	f	2012-01-18	9004973	\N	\N	19131
methylprednisolone (methylprednisolone sodium succinate) 125 mg per vial NA	f	1	f	2012-01-18	9004974	\N	\N	19132
avobenzone 3 % and octinoxate 5 % and octisalate 3 % lotion	f	1	f	2012-01-20	9004975	\N	\N	19133
avobenzone 2 % and homosalate 4 % and octisalate 4 % and octocrylene 2 % lotion	f	4	f	2012-01-23	9004976	\N	\N	19134
octinoxate 6.9 % and oxybenzone 4 % cutaneous ointment	f	1	f	2012-01-24	9004977	\N	\N	19135
meropenem (meropenem trihydrate) 1 g per vial powder for solution for injection	f	2	f	2012-01-26	9004978	\N	\N	19136
meropenem (meropenem trihydrate) 500 mg per vial powder for solution for injection	f	2	f	2012-01-26	9004979	\N	\N	19137
apixaban 2.5 mg oral tablet	f	1	f	2012-02-01	9004980	\N	\N	19138
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 10 % lotion	f	7	f	2012-02-06	9004981	\N	\N	19139
avobenzone 3 % and homosalate 13 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % lotion	f	2	f	2012-02-06	9004982	\N	\N	19140
colesevelam hydrochloride 625 mg oral tablet	f	1	f	2012-02-06	9004983	\N	\N	19141
avobenzone 4.5 % and bisoctrizole 6 % and octocrylene 8 % cutaneous spray	f	1	f	2012-02-08	9004984	\N	\N	19142
avobenzone 5 % and bemotrizinol 2.5 % and bisoctrizole 6 % and octocrylene 10 % cutaneous cream	f	2	f	2012-02-08	9004985	\N	\N	19143
avobenzone 5 % and drometrizole trisiloxane 1 % and homosalate 13 % and octisalate 5 % and octocrylene 7 % cutaneous spray	f	2	f	2012-02-15	9004986	\N	\N	19144
octinoxate 6 % and zinc oxide 4.5 % cutaneous cream	f	2	f	2012-06-01	9005045	\N	\N	19203
avobenzone 5 % and drometrizole trisiloxane 2 % and homosalate 15 % and octisalate 5 % and octocrylene 7 % cutaneous spray	f	1	f	2012-02-15	9004987	\N	\N	19145
ibuprofen 400.35 mg and methocarbamol 500.49 mg oral tablet	f	1	f	2012-02-21	9004988	\N	\N	19146
chlorhexidine gluconate 4 % lotion	f	1	f	2012-02-23	9004989	\N	\N	19147
NA 100 mg oral tablet	f	1	f	2012-02-23	9004990	\N	\N	19148
fampridine 10 mg prolonged-release oral tablet	f	1	f	2012-02-24	9004991	\N	\N	19149
octinoxate 5.9 % and titanium dioxide 3.5 % and zinc oxide 2.8 % cutaneous emulsion	f	1	f	2012-03-01	9004992	\N	\N	19150
octinoxate 5.9 % and titanium dioxide 3.7 % and zinc oxide 2.9 % cutaneous emulsion	f	1	f	2012-03-01	9004993	\N	\N	19151
avobenzone 3 % and homosalate 3 % and octisalate 5 % cutaneous cream	f	1	f	2012-03-05	9004994	\N	\N	19152
indacaterol (indacaterol maleate) 75 mcg inhalation powder capsule	f	1	f	2012-03-05	9004995	\N	\N	19153
vemurafenib 240 mg oral tablet	f	1	f	2012-03-05	9004996	\N	\N	19154
octinoxate 3.75 % and oxybenzone 1 % cutaneous gel	f	1	f	2012-03-07	9004997	\N	\N	19155
octinoxate 5 % cutaneous powder	f	1	f	2012-03-07	9004998	\N	\N	19156
ipilimumab 5 mg per mL solution for injection	f	1	f	2012-03-08	9004999	\N	\N	19157
acetic acid 6.82 g per l and sodium acetate 27.22 g per l solution for haemodialysis	f	1	f	2012-03-09	9005000	\N	\N	19158
calcium chloride 2.45 g per l and dextrose 9.9 g per l and magnesium chloride 1.83 g per l and potassium chloride 2.68 g per l and sodium bicarbonate 3.59 g per l and sodium chloride 4.21 g per l and sodium chloride 6.18 g per l solution for haemodialysis	f	1	t	2012-03-09	9005001	\N	\N	19159
sodium chloride 9 g per l NA	f	1	f	2012-03-09	9005002	\N	\N	19160
avobenzone 2.5 % and homosalate 9 % and octisalate 5 % and octocrylene 3 % cutaneous gel	f	1	f	2012-03-16	9005003	\N	\N	19161
avobenzone 2 % and homosalate 10 % and octisalate 5 % and octocrylene 2 % and oxybenzone 4 % lotion	f	1	f	2012-03-16	9005004	\N	\N	19162
eribulin mesylate 0.5 mg per mL solution for injection	f	1	f	2012-03-19	9005005	\N	\N	19163
ibuprofen 400 mg and methocarbamol 500 mg oral tablet	f	1	f	2012-03-20	9005006	\N	\N	19164
tapentadol (tapentadol hydrochloride) 100 mg oral tablet	f	1	f	2012-03-20	9005007	\N	\N	19165
tapentadol (tapentadol hydrochloride) 50 mg oral tablet	f	1	f	2012-03-20	9005008	\N	\N	19166
tapentadol (tapentadol hydrochloride) 75 mg oral tablet	f	1	f	2012-03-20	9005009	\N	\N	19167
plerixafor 20 mg per mL solution for injection	f	1	f	2012-03-26	9005010	\N	\N	19168
topotecan (topotecan hydrochloride) 1 mg per mL solution for injection	f	4	f	2012-03-27	9005011	\N	\N	19169
olive oil 16 % and soybean oil 4 % emulsion for injection	f	1	f	2012-03-28	9005012	\N	\N	19170
octinoxate 6.31 % and titanium dioxide 3.16 % cutaneous cream	f	1	f	2012-03-30	9005013	\N	\N	19171
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.79 % cutaneous cream	f	2	f	2012-04-02	9005014	\N	\N	19172
avobenzone 2 % and homosalate 5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 4 % lotion	f	2	f	2012-04-04	9005015	\N	\N	19173
gramicidin 0.25 mg per g and lidocaine hydrochloride 40 mg per g and polymyxin b sulfate 10000 unit per g cutaneous cream	f	2	f	2012-04-09	9005016	\N	\N	19174
moroctocog alfa 1000 unit powder for solution for injection	f	1	f	2012-04-13	9005017	\N	\N	19175
octinoxate 3 % lotion	f	1	f	2012-04-13	9005018	\N	\N	19176
darunavir (darunavir ethanolate) 150 mg oral tablet	f	1	f	2012-04-16	9005019	\N	\N	19177
avobenzone 3 % and homosalate 13 % and octisalate 5 % and octocrylene 8 % and oxybenzone 6 % cutaneous cream	f	1	f	2012-04-17	9005020	\N	\N	19178
avobenzone 3 % and homosalate 6 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % cutaneous cream	f	1	f	2012-04-17	9005021	\N	\N	19179
fesoterodine fumarate 4 mg prolonged-release oral tablet	f	1	f	2012-04-19	9005022	\N	\N	19180
fesoterodine fumarate 8 mg prolonged-release oral tablet	f	1	f	2012-04-19	9005023	\N	\N	19181
benzalkonium chloride 0.13 % cutaneous spray	f	1	f	2012-04-24	9005024	\N	\N	19182
diphenhydramine hydrochloride 2 % cutaneous spray	f	1	f	2012-04-24	9005025	\N	\N	19183
lidocaine hydrochloride 0.5 % cutaneous spray	f	1	f	2012-04-24	9005026	\N	\N	19184
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	3	t	2012-04-25	9005027	\N	\N	19185
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	3	t	2012-04-25	9005028	\N	\N	19186
epinephrine racemic 0.005 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	2012-04-25	9005029	\N	\N	19187
octinoxate 7.49 % and oxybenzone 2 % and titanium dioxide 2.6 % lotion	f	1	f	2012-04-25	9005030	\N	\N	19188
vitamin d 10000 unit oral tablet	f	2	f	2012-05-02	9005031	\N	\N	19189
polymyxin b (polymyxin b sulfate) 50 mg per vial powder for ophthalmic drops	f	1	f	2012-05-03	9005032	\N	\N	19190
polymyxin b (polymyxin b sulfate) 50 mg per vial powder for solution for injection	f	1	f	2012-05-03	9005033	\N	\N	19191
acetaminophen 500 mg and acetaminophen 500 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	2	f	2012-05-05	9005034	\N	\N	19192
acetaminophen 500 mg and acetaminophen 500 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	2	f	2012-05-05	9005035	\N	\N	19193
moroctocog alfa 2000 unit powder for solution for injection	f	1	f	2012-05-08	9005036	\N	\N	19194
moroctocog alfa 3000 unit powder for solution for injection	f	1	f	2012-05-08	9005037	\N	\N	19195
crizotinib 200 mg oral capsule	f	1	f	2012-05-10	9005038	\N	\N	19196
crizotinib 250 mg oral capsule	f	1	f	2012-05-10	9005039	\N	\N	19197
avobenzone 3 % and octisalate 5 % and octocrylene 2.7 % lotion	f	1	f	2012-05-15	9005040	\N	\N	19198
avobenzone 3 % and ensulizole 2 % and octocrylene 2.75 % lotion	f	1	f	2012-05-20	9005041	\N	\N	19199
lidocaine hydrochloride 20 mg per g cutaneous gel	f	1	f	2012-05-25	9005042	\N	\N	19200
octinoxate 7 % lotion	f	2	f	2012-05-30	9005043	\N	\N	19201
human plasma proteins 14 g per 200 mL solution for injection	f	1	f	2012-05-31	9005044	\N	\N	19202
octinoxate 2.9 % and titanium dioxide 1.6 % cutaneous emulsion	f	1	f	2012-06-08	9005046	\N	\N	19204
avobenzone 1 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % cutaneous cream	f	1	f	2012-06-11	9005047	\N	\N	19205
octinoxate 5 % and oxybenzone 1.5 % cutaneous powder	f	1	f	2012-06-13	9005048	\N	\N	19206
octinoxate 7.5 % and octocrylene 7 % and oxybenzone 2 % cutaneous stick	f	1	f	2012-06-14	9005049	\N	\N	19207
avobenzone 2.5 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2 % cutaneous cream	f	1	f	2012-06-15	9005050	\N	\N	19208
octinoxate 6 % and oxybenzone 2 % lotion	f	1	f	2012-06-15	9005051	\N	\N	19209
acetaminophen 500 mg and acetaminophen 500 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	1	f	2012-06-18	9005052	\N	\N	19210
acetaminophen 500 mg and acetaminophen 500 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	1	f	2012-06-18	9005053	\N	\N	19211
avobenzone 2 % and ensulizole 2 % and octocrylene 3 % cutaneous cream	f	2	f	2012-06-18	9005054	\N	\N	19212
avobenzone 1.5 % and octinoxate 2.5 % cutaneous cream	f	1	f	2012-06-19	9005055	\N	\N	19213
fidaxomicin 200 mg oral tablet	f	1	f	2012-06-21	9005056	\N	\N	19214
acetaminophen 500 mg and acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	2	t	2012-06-28	9005057	\N	\N	19215
acetaminophen 500 mg and acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	2	t	2012-06-28	9005058	\N	\N	19216
incobotulinumtoxina 50 unit per vial powder for solution for injection	f	1	f	2012-07-04	9005059	\N	\N	19217
octinoxate 7.5 % cutaneous cream	f	5	f	2012-07-04	9005060	\N	\N	19218
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and doxylamine succinate 12.5 mg per 30 mL oral liquid	f	1	f	2012-07-09	9005061	\N	\N	19219
tobramycin 40 mg per mL solution for injection	f	2	f	2012-07-18	9005062	\N	\N	19220
amylmetacresol 0.6 mg and dichlorobenzyl alcohol 1.2 mg and menthol 8 mg lozenge	f	3	f	2012-07-19	9005063	\N	\N	19221
amylmetacresol 0.6 mg and dichlorobenzyl alcohol 1.2 mg lozenge	f	6	f	2012-07-19	9005064	\N	\N	19222
avobenzone 2.5 % and octinoxate 2.5 % cutaneous cream	f	1	f	2012-07-19	9005065	\N	\N	19223
ruxolitinib (ruxolitinib phosphate) 15 mg oral tablet	f	1	f	2012-07-19	9005066	\N	\N	19224
ruxolitinib (ruxolitinib phosphate) 20 mg oral tablet	f	1	f	2012-07-19	9005067	\N	\N	19225
ruxolitinib (ruxolitinib phosphate) 5 mg oral tablet	f	1	f	2012-07-19	9005068	\N	\N	19226
hydrocortisone acetate 0.5 % and zinc sulfate monohydrate 0.5 % cutaneous ointment	f	1	f	2012-07-23	9005069	\N	\N	19227
hydrocortisone acetate 0.5 % and zinc sulfate monohydrate 0.5 % rectal ointment	f	1	f	2012-07-23	9005070	\N	\N	19228
silicon dioxide 5 % and sodium fluoride 0.243 % and triclosan 0.3 % toothpaste	f	2	f	2012-07-23	9005071	\N	\N	19229
dalteparin sodium 2500 unit per mL solution for injection	f	1	f	2012-07-25	9005072	\N	\N	19230
temozolomide 180 mg oral capsule	f	1	f	2012-07-25	9005073	\N	\N	19231
grass pollen allergen extract 100 unit sublingual tablet	f	1	f	2012-07-26	9005074	\N	\N	19232
grass pollen allergen extract 300 unit sublingual tablet	f	1	f	2012-07-26	9005075	\N	\N	19233
octinoxate 7.5 % and oxybenzone 2.5 % cutaneous gel	f	1	f	2012-07-30	9005076	\N	\N	19234
octinoxate 6 % and oxybenzone 2 % cutaneous cream	f	1	f	2012-08-07	9005077	\N	\N	19235
palonosetron (palonosetron hydrochloride) 0.5 mg oral capsule	f	1	f	2012-08-07	9005078	\N	\N	19236
triptorelin acetate 0.1 mg per mL solution for injection	f	1	f	2012-08-09	9005079	\N	\N	19237
NA 1000 mg per 50 mL solution for injection	f	1	f	2012-08-13	9005080	\N	\N	19238
NA 100 mg per 5 mL solution for injection	f	1	f	2012-08-13	9005081	\N	\N	19239
acetaminophen 325 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	2	t	2012-08-14	9005082	\N	\N	19240
acetaminophen 325 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	2	t	2012-08-14	9005083	\N	\N	19241
axitinib 1 mg oral tablet	f	1	f	2012-08-17	9005084	\N	\N	19242
axitinib 5 mg oral tablet	f	1	f	2012-08-17	9005085	\N	\N	19243
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	1	t	2012-08-28	9005086	\N	\N	19244
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	1	t	2012-08-28	9005087	\N	\N	19245
non pollen 40000 unit per mL solution for injection	f	1	f	2012-08-29	9005088	\N	\N	19246
octinoxate 7.5 % and zinc oxide 15 % cutaneous emulsion	f	1	f	2012-08-31	9005089	\N	\N	19247
avobenzone 2 % and homosalate 5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 4 % cutaneous cream	f	1	f	2012-09-01	9005090	\N	\N	19248
avobenzone 2 % and octinoxate 5 % lotion	f	1	f	2012-09-01	9005091	\N	\N	19249
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % cutaneous cream	f	3	f	2012-09-01	9005092	\N	\N	19250
avobenzone 3 % and octinoxate 7.5 % lotion	f	1	f	2012-09-01	9005093	\N	\N	19251
octinoxate 6 % and zinc oxide 4.5 % lotion	f	1	f	2012-09-01	9005094	\N	\N	19252
octinoxate 3 % and titanium dioxide 1.4 % cutaneous cream	f	1	f	2012-09-02	9005095	\N	\N	19253
lurasidone hydrochloride 80 mg oral tablet	f	1	f	2012-09-05	9005096	\N	\N	19254
lurasidone hydrochloride 120 mg oral tablet	f	1	f	2012-09-06	9005097	\N	\N	19255
lurasidone hydrochloride 40 mg oral tablet	f	1	f	2012-09-06	9005098	\N	\N	19256
loratadine 10 mg oral capsule	f	3	f	2012-09-07	9005099	\N	\N	19257
enalaprilat 1.25 mg per 1 mL solution for injection vial	f	1	f	2012-09-10	9005100	\N	\N	19258
ustekinumab 90 mg per 1 mL solution for injection	f	1	f	2013-01-07	9005150	\N	\N	19308
oseltamivir (oseltamivir phosphate) 6 mg per mL powder for oral suspension	f	1	f	2012-09-10	9005101	\N	\N	19259
enoxaparin sodium 80 mg per 0.8 mL solution for injection	f	1	f	2012-09-11	9005102	\N	\N	19260
bendamustine hydrochloride 100 mg per vial powder for solution for injection	f	1	f	2012-09-12	9005103	\N	\N	19261
bendamustine hydrochloride 25 mg per vial powder for solution for injection	f	1	f	2012-09-12	9005104	\N	\N	19262
acetaminophen 650 mg and acetaminophen 650 mg and dextromethorphan hydrobromide 30 mg and diphenhydramine hydrochloride 50 mg and pseudoephedrine hydrochloride 60 mg and pseudoephedrine hydrochloride 60 mg kit	f	1	t	2012-09-13	9005105	\N	\N	19263
acetaminophen 650 mg and acetaminophen 650 mg and dextromethorphan hydrobromide 30 mg and diphenhydramine hydrochloride 50 mg and pseudoephedrine hydrochloride 60 mg and pseudoephedrine hydrochloride 60 mg oral tablet	f	1	t	2012-09-13	9005106	\N	\N	19264
fluocinolone acetonide 0.59 mg intravitreal implant	f	1	f	2012-09-13	9005107	\N	\N	19265
avobenzone 3 % and octisalate 5 % and octocrylene 5 % and terephthalylidene dicamphor sulfonic acid 1 % cutaneous cream	f	2	f	2012-09-19	9005108	\N	\N	19266
octinoxate 5 % and titanium dioxide 8 % cutaneous cream	f	1	f	2012-09-19	9005109	\N	\N	19267
pyrithione zinc 0.5 % cutaneous suspension	f	1	f	2012-09-28	9005110	\N	\N	19268
octinoxate 7.5 % and octisalate 3.5 % and titanium dioxide 1.7 % cutaneous cream	f	4	f	2012-10-01	9005111	\N	\N	19269
acetaminophen 500 mg and diphenhydramine hydrochloride 25 mg oral tablet	f	1	f	2012-10-02	9005112	\N	\N	19270
acetaminophen 325 mg per 5 mL and diphenhydramine hydrochloride 25 mg per 5 mL and menthol 20 mg per 5 mL oral liquid	f	1	f	2012-10-04	9005113	\N	\N	19271
acetaminophen 325 mg per 5 mL and guaifenesin 200 mg per 5 mL and menthol 20 mg per 5 mL oral liquid	f	1	f	2012-10-04	9005114	\N	\N	19272
avobenzone 1 % and octinoxate 6.75 % cutaneous stick	f	1	f	2012-10-15	9005115	\N	\N	19273
hydroxocobalamin 5 g per vial powder for solution for injection	f	1	f	2012-10-19	9005116	\N	\N	19274
nitrogen 99.5 % cutaneous liquid	f	1	f	2012-10-23	9005117	\N	\N	19275
diphtheria toxoid 30 unit per 0.5 mL and filamentous haemagglutinin 25 mcg per 0.5 mL and haemophilus influenzae type b-prp and tetanus toxoid conjugate (prp-t) 10 mcg per 0.5 mL and inactivated poliovirus type i 40 unit per 0.5 mL and inactivated poliovirus type ii 8 unit per 0.5 mL and inactivated poliovirus type iii 32 unit per 0.5 mL and pertactin 8 mcg per 0.5 mL and pertussis toxoid 25 mcg per 0.5 mL and tetanus toxoid 40 unit per 0.5 mL suspension for injection	f	1	t	2012-10-25	9005118	\N	\N	19276
diphtheria toxoid 30 unit per 0.5 mL and filamentous haemagglutinin 25 mcg per 0.5 mL and inactivated poliovirus type i 40 unit per 0.5 mL and inactivated poliovirus type ii 8 unit per 0.5 mL and inactivated poliovirus type iii 32 unit per 0.5 mL and pertactin 8 mcg per 0.5 mL and pertussis toxoid 25 mcg per 0.5 mL and tetanus toxoid 40 unit per 0.5 mL suspension for injection	f	1	t	2012-10-25	9005119	\N	\N	19277
fluconazole 150 mg and miconazole nitrate 2 % cutaneous cream	f	1	f	2012-10-25	9005120	\N	\N	19278
fluconazole 150 mg and miconazole nitrate 2 % kit	f	1	f	2012-10-25	9005121	\N	\N	19279
fluconazole 150 mg and miconazole nitrate 2 % NA	f	1	f	2012-10-25	9005122	\N	\N	19280
fluconazole 150 mg and miconazole nitrate 2 % oral capsule	f	1	f	2012-10-25	9005123	\N	\N	19281
haemophilus influenzae type b-prp and tetanus toxoid conjugate (prp-t) 10 mcg per 0.5 mL powder for solution for injection	f	1	f	2012-10-25	9005124	\N	\N	19282
lidocaine hydrochloride 5 mg per mL solution for injection	f	1	f	2012-10-29	9005125	\N	\N	19283
azilsartan medoxomil (azilsartan medoxomil potassium) 40 mg oral tablet	f	1	f	2012-11-08	9005126	\N	\N	19284
azilsartan medoxomil (azilsartan medoxomil potassium) 80 mg oral tablet	f	1	f	2012-11-08	9005127	\N	\N	19285
darunavir (darunavir ethanolate) 800 mg oral tablet	f	1	f	2012-11-09	9005128	\N	\N	19286
enoxaparin sodium 60 mg per 0.6 mL solution for injection	f	1	f	2012-11-13	9005129	\N	\N	19287
ensulizole 3 % cutaneous emulsion	f	2	f	2012-11-13	9005130	\N	\N	19288
NA 0.9 mg per vial powder for solution for injection	f	1	f	2012-11-14	9005131	\N	\N	19289
avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octocrylene 2.75 % cutaneous cream	f	2	f	2012-11-16	9005132	\N	\N	19290
minoxidil 5 % cutaneous foam	f	2	f	2012-11-19	9005133	\N	\N	19291
octinoxate 7.5 % and octisalate 4 % and oxybenzone 2.5 % and titanium dioxide 1.1 % lotion	f	1	f	2012-11-19	9005134	\N	\N	19292
ivacaftor 150 mg oral tablet	f	1	f	2012-11-27	9005135	\N	\N	19293
avobenzone 1 % and octinoxate 3.5 % and octisalate 3.5 % and octocrylene 1 % lotion	f	1	f	2012-12-01	9005136	\N	\N	19294
octinoxate 7.5 % and octisalate 5 % and titanium dioxide 6.5 % cutaneous cream	f	1	f	2012-12-03	9005137	\N	\N	19295
enoxaparin sodium 150 mg per mL solution for injection	f	1	f	2012-12-07	9005138	\N	\N	19296
acetaminophen 250 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	1	t	2012-12-10	9005139	\N	\N	19297
acetaminophen 250 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral capsule	f	1	t	2012-12-10	9005140	\N	\N	19298
calcium chloride 7.47 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 3.35 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2012-12-20	9005141	\N	\N	19299
cobicistat 150 mg and elvitegravir 150 mg and emtricitabine 200 mg and tenofovir disoproxil fumarate 300 mg oral tablet	f	1	f	2012-12-20	9005142	\N	\N	19300
apixaban 5 mg oral tablet	f	1	f	2012-12-21	9005143	\N	\N	19301
avobenzone 1 % and octocrylene 7.4 % and oxybenzone 3 % cutaneous spray	f	1	f	2013-01-01	9005144	\N	\N	19302
avobenzone 2 % and homosalate 5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % cutaneous cream	f	1	f	2013-01-01	9005145	\N	\N	19303
avobenzone 3 % and homosalate 9 % and octisalate 4.5 % and octocrylene 2.4 % cutaneous spray	f	1	f	2013-01-01	9005146	\N	\N	19304
avobenzone 3 % and octocrylene 10 % and oxybenzone 5 % cutaneous spray	f	1	f	2013-01-01	9005147	\N	\N	19305
ensulizole 2.5 % and octinoxate 7.5 % and oxybenzone 4 % lotion	f	2	f	2013-01-04	9005148	\N	\N	19306
benzoyl peroxide 2.5 % cutaneous solution	f	1	f	2013-01-07	9005149	\N	\N	19307
doxepin (doxepin hydrochloride) 3 mg oral tablet	f	1	f	2013-01-08	9005151	\N	\N	19309
doxepin (doxepin hydrochloride) 6 mg oral tablet	f	1	f	2013-01-08	9005152	\N	\N	19310
pirfenidone 267 mg oral capsule	f	1	f	2013-01-08	9005153	\N	\N	19311
sodium thiosulfate 250 mg per mL solution for injection	f	2	f	2013-01-08	9005154	\N	\N	19312
chloroxylenol 0.65 % cutaneous solution	f	1	f	2013-01-10	9005155	\N	\N	19313
glycopyrronium (glycopyrronium bromide) 50 mcg inhalation powder capsule	f	1	f	2013-01-14	9005156	\N	\N	19314
avobenzone 2.7 % and homosalate 8 % and octisalate 5 % and octocrylene 3.5 % and oxybenzone 4 % lotion	f	1	f	2013-01-15	9005157	\N	\N	19315
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 4.5 % and oxybenzone 4 % lotion	f	2	f	2013-01-15	9005158	\N	\N	19316
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 4 % and oxybenzone 6 % lotion	f	2	f	2013-01-15	9005159	\N	\N	19317
avobenzone 3 % and homosalate 8 % and octisalate 5 % and octocrylene 4 % and oxybenzone 4 % lotion	f	2	f	2013-01-15	9005160	\N	\N	19318
avobenzone 3 % and octisalate 2 % and octocrylene 4 % cutaneous cream	f	5	f	2013-01-15	9005161	\N	\N	19319
chlorhexidine gluconate 2 % and isopropyl alcohol 70 % wipe	f	1	f	2013-01-16	9005162	\N	\N	19320
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 6 % and oxybenzone 5 % lotion	f	1	f	2013-01-28	9005163	\N	\N	19321
avobenzone 3 % and homosalate 8 % and octisalate 4 % and octocrylene 4 % and oxybenzone 5 % lotion	f	1	f	2013-01-28	9005164	\N	\N	19322
avobenzone 3 % and octinoxate 6 % and octocrylene 1 % cutaneous cream	f	1	f	2013-01-28	9005165	\N	\N	19323
zolpidem tartrate 5 mg orodispersible tablet	f	3	f	2013-01-28	9005166	\N	\N	19324
avobenzone 2 % and ensulizole 1.5 % and octisalate 5 % and octocrylene 1.3 % lotion	f	3	f	2013-01-29	9005167	\N	\N	19325
catridecacog 15 mg per vial powder for solution for injection	f	1	f	2013-01-30	9005168	\N	\N	19326
vancomycin (vancomycin hydrochloride) 1000 mg per vial powder for solution for injection	f	1	f	2013-01-30	9005169	\N	\N	19327
fibrinogen (human) 1000 mg per vial powder for solution for injection	f	1	f	2013-01-31	9005170	\N	\N	19328
octinoxate 7.5 % and titanium dioxide 1.7 % lotion	f	1	f	2013-02-01	9005171	\N	\N	19329
homosalate 10 % and oxybenzone 2 % spray (bag-on-valve)	f	1	f	2013-02-03	9005172	\N	\N	19330
avobenzone 3 % and homosalate 2 % and octisalate 5 % and octocrylene 7 % lotion	f	1	f	2013-02-04	9005173	\N	\N	19331
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 30 mg per 30 mL and doxylamine succinate 12.5 mg per 30 mL oral solution	f	1	f	2013-02-06	9005174	\N	\N	19332
avobenzone 2.7 % and homosalate 13.5 % and octisalate 4.5 % and octocrylene 9 % and oxybenzone 5.4 % cutaneous foam	f	1	f	2013-02-06	9005175	\N	\N	19333
calcium chloride 0.245 g per l and dextrose 18.2 g per l and magnesium chloride 0.068 g per l and sodium bicarbonate 9.29 g per l and sodium chloride 19.95 g per l and sodium lactate 6.73 g per l solution for haemodialysis	f	1	t	2013-02-06	9005176	\N	\N	19334
calcium chloride 0.245 g per l and dextrose 30.3 g per l and magnesium chloride 0.068 g per l and sodium bicarbonate 9.29 g per l and sodium chloride 19.95 g per l and sodium lactate 6.73 g per l solution for haemodialysis	f	1	t	2013-02-06	9005177	\N	\N	19335
calcium chloride 0.245 g per l and dextrose 51.5 g per l and magnesium chloride 0.068 g per l and sodium bicarbonate 9.29 g per l and sodium chloride 19.95 g per l and sodium lactate 6.73 g per l solution for haemodialysis	f	1	t	2013-02-06	9005178	\N	\N	19336
ondansetron 4 mg orodispersible film	f	1	f	2013-02-08	9005179	\N	\N	19337
ondansetron 8 mg orodispersible film	f	1	f	2013-02-08	9005180	\N	\N	19338
avobenzone 3 % and octinoxate 4 % cutaneous ointment	f	1	f	2013-02-11	9005181	\N	\N	19339
raltegravir (raltegravir potassium) 100 mg chewable tablet	f	1	f	2013-02-11	9005182	\N	\N	19340
raltegravir (raltegravir potassium) 25 mg chewable tablet	f	1	f	2013-02-11	9005183	\N	\N	19341
coagulation factor ix (recombinant) 3000 unit per vial powder for solution for injection	f	1	f	2013-02-12	9005184	\N	\N	19342
abobotulinumtoxina 300 unit per vial powder for solution for injection	f	2	f	2013-02-19	9005185	\N	\N	19343
avobenzone 3 % and homosalate 4 % and octisalate 4.5 % and octocrylene 2.6 % lotion	f	8	f	2013-02-19	9005186	\N	\N	19344
brentuximab vedotin 50 mg per vial powder for solution for injection	f	1	f	2013-02-19	9005187	\N	\N	19345
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % lotion	f	3	f	2013-02-20	9005188	\N	\N	19346
octinoxate 5 % cutaneous emulsion	f	1	f	2013-02-20	9005189	\N	\N	19347
calcium chloride 7.47 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.1 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2013-02-21	9005190	\N	\N	19348
calcium chloride 7.47 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 6.71 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2013-02-21	9005191	\N	\N	19349
acetic acid 10.81 g per l and calcium chloride 5 g per l and dextrose 74.25 g per l and magnesium chloride 2.14 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	f	2013-02-25	9005192	\N	\N	19350
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % cutaneous cream	f	1	f	2013-03-01	9005193	\N	\N	19351
avobenzone 3 % and octisalate 5 % and octocrylene 8.5 % cutaneous cream	f	1	f	2013-03-01	9005194	\N	\N	19352
calcium chloride 6.24 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and potassium chloride 13.47 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2013-03-01	9005195	\N	\N	19353
drospirenone 3 mg and ethinyl estradiol 0.02 mg and levomefolate calcium 0.451 mg and levomefolate calcium 0.451 mg oral tablet	f	1	f	2013-03-01	9005196	\N	\N	19354
calcium chloride 6.24 g per l and citric acid 6.91 g per l and dextrose 49.5 g per l and magnesium chloride 2.14 g per l and sodium acetate 1.11 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2013-03-04	9005197	\N	\N	19355
octinoxate 5.99 % and titanium dioxide 0.54 % cutaneous powder	f	1	f	2013-03-04	9005198	\N	\N	19356
glycerine 1 % and polysorbate 80 0.5 % and sodium carboxymethyl cellulose 0.5 % ophthalmic drops	f	2	f	2013-03-06	9005199	\N	\N	19357
simeprevir (simeprevir sodium) 150 mg oral capsule	f	1	f	2013-11-25	9005370	\N	\N	19530
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 3 % cutaneous cream	f	1	f	2013-03-18	9005200	\N	\N	19358
gemcitabine (gemcitabine hydrochloride) 38 mg per mL solution for injection	f	2	f	2013-03-20	9005201	\N	\N	19359
octinoxate 7.5 % and octisalate 5 % and octocrylene 10 % and oxybenzone 5 % cutaneous stick	f	1	f	2013-03-20	9005202	\N	\N	19360
azilsartan medoxomil (azilsartan medoxomil potassium) 40 mg and chlorthalidone 12.5 mg oral tablet	f	1	f	2013-03-21	9005203	\N	\N	19361
azilsartan medoxomil (azilsartan medoxomil potassium) 40 mg and chlorthalidone 25 mg oral tablet	f	1	f	2013-03-21	9005204	\N	\N	19362
azilsartan medoxomil (azilsartan medoxomil potassium) 80 mg and chlorthalidone 12.5 mg oral tablet	f	1	f	2013-03-21	9005205	\N	\N	19363
ingenol mebutate 0.015 % cutaneous gel	f	1	f	2013-03-21	9005206	\N	\N	19364
ingenol mebutate 0.05 % cutaneous gel	f	1	f	2013-03-21	9005207	\N	\N	19365
calcium chloride 7.45 g per vial powder for concentrate for solution for haemodialysis	f	1	f	2013-03-26	9005208	\N	\N	19366
mirabegron 25 mg prolonged-release oral tablet	f	1	f	2013-03-28	9005209	\N	\N	19367
mirabegron 50 mg prolonged-release oral tablet	f	1	f	2013-03-28	9005210	\N	\N	19368
nebivolol (nebivolol hydrochloride) 10 mg oral tablet	f	1	f	2013-04-02	9005211	\N	\N	19369
nebivolol (nebivolol hydrochloride) 20 mg oral tablet	f	1	f	2013-04-02	9005212	\N	\N	19370
nebivolol (nebivolol hydrochloride) 2.5 mg oral tablet	f	1	f	2013-04-02	9005213	\N	\N	19371
nebivolol (nebivolol hydrochloride) 5 mg oral tablet	f	1	f	2013-04-02	9005214	\N	\N	19372
regorafenib 40 mg oral tablet	f	1	f	2013-04-02	9005215	\N	\N	19373
cloxacillin (cloxacillin sodium) 10 g per vial powder for solution for injection	f	1	f	2013-04-03	9005216	\N	\N	19374
immune globulin (human) 100 mg per mL solution for injection	f	2	f	2013-04-04	9005217	\N	\N	19375
avobenzone 3.5 % and drometrizole trisiloxane 2.5 % and homosalate 10 % and octisalate 5 % and octocrylene 6.5 % and terephthalylidene dicamphor sulfonic acid 0.5 % lotion	f	2	t	2013-04-08	9005218	\N	\N	19376
avobenzone 4 % and drometrizole trisiloxane 2.5 % and homosalate 10 % and octisalate 5 % and octocrylene 7 % and terephthalylidene dicamphor sulfonic acid 0.5 % lotion	f	3	t	2013-04-08	9005219	\N	\N	19377
dimethyl fumarate 120 mg gastro-resistant capsule	f	1	f	2013-04-12	9005220	\N	\N	19378
linagliptin 2.5 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2013-04-17	9005221	\N	\N	19379
linagliptin 2.5 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2013-04-17	9005222	\N	\N	19380
linagliptin 2.5 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2013-04-17	9005223	\N	\N	19381
epoprostenol (epoprostenol sodium) 0.5 mg powder for solution for injection	f	1	f	2013-04-24	9005224	\N	\N	19382
epoprostenol (epoprostenol sodium) 1.5 mg powder for solution for injection	f	1	f	2013-04-24	9005225	\N	\N	19383
NA 500 unit per vial NA	f	2	f	2015-12-11	9005824	\N	\N	19384
avobenzone 3 % and drometrizole trisiloxane 2.5 % and homosalate 10 % and octisalate 5 % and octocrylene 5.5 % and terephthalylidene dicamphor sulfonic acid 0.5 % lotion	f	3	t	2013-04-26	9005226	\N	\N	19385
metformin hydrochloride 1000 mg and saxagliptin (saxagliptin hydrochloride) 2.5 mg oral tablet	f	1	f	2013-04-26	9005227	\N	\N	19386
metformin hydrochloride 500 mg and saxagliptin (saxagliptin hydrochloride) 2.5 mg oral tablet	f	1	f	2013-04-26	9005228	\N	\N	19387
metformin hydrochloride 850 mg and saxagliptin (saxagliptin hydrochloride) 2.5 mg oral tablet	f	1	f	2013-04-26	9005229	\N	\N	19388
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 6 % lotion	f	2	f	2013-04-29	9005230	\N	\N	19389
avobenzone 3 % and homosalate 8 % and octisalate 4 % and octocrylene 2.35 % and oxybenzone 5 % cutaneous emulsion	f	1	f	2013-04-29	9005231	\N	\N	19390
avobenzone 3 % and ensulizole 3 % and octocrylene 6 % and oxybenzone 5 % cutaneous cream	f	1	f	2013-05-01	9005232	\N	\N	19391
avobenzone 3 % and ensulizole 3 % and octocrylene 8 % and oxybenzone 5 % cutaneous cream	f	1	f	2013-05-01	9005233	\N	\N	19392
avobenzone 3 % and homosalate 10 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 5 % cutaneous spray	f	1	t	2013-05-01	9005234	\N	\N	19393
stiripentol 250 mg oral capsule	f	1	f	2013-05-01	9005235	\N	\N	19394
stiripentol 250 mg per pck powder for oral suspension	f	1	f	2013-05-01	9005236	\N	\N	19395
stiripentol 500 mg oral capsule	f	1	f	2013-05-01	9005237	\N	\N	19396
stiripentol 500 mg per pck powder for oral suspension	f	1	f	2013-05-01	9005238	\N	\N	19397
avobenzone 2.5 % and octinoxate 2.5 % lotion	f	1	f	2013-05-06	9005239	\N	\N	19398
isotretinoin 20 mg oral capsule	f	1	f	2013-05-07	9005240	\N	\N	19399
isotretinoin 30 mg oral capsule	f	1	f	2013-05-07	9005241	\N	\N	19400
fish oil 3 % and medium chain triglycerides (mct) 6 % and olive oil 5 % and soybean oil 6 % emulsion for injection	f	1	f	2013-05-08	9005242	\N	\N	19401
pertuzumab 420 mg per 14 mL solution for injection	f	1	f	2013-05-08	9005243	\N	\N	19402
abatacept 125 mg per mL solution for injection	f	1	f	2013-05-09	9005244	\N	\N	19403
octinoxate 8.5 % and oxybenzone 1.5 % cutaneous cream	f	1	f	2013-05-09	9005245	\N	\N	19404
pertuzumab 420 mg per 14 mL and trastuzumab 440 mg per vial NA	f	1	f	2013-05-09	9005246	\N	\N	19405
pertuzumab 420 mg per 14 mL and trastuzumab 440 mg per vial powder for solution for injection	f	1	f	2013-05-09	9005247	\N	\N	19406
pertuzumab 420 mg per 14 mL and trastuzumab 440 mg per vial solution for injection	f	1	f	2013-05-09	9005248	\N	\N	19407
perampanel 12 mg oral tablet	f	1	f	2013-05-17	9005249	\N	\N	19408
octinoxate 7.5 % and octisalate 5 % and titanium dioxide 5.2 % and zinc oxide 3.2 % cutaneous cream	f	2	f	2013-05-20	9005250	\N	\N	19409
avobenzone 2.85 % and homosalate 8 % and octinoxate 7.5 % and octisalate 4.75 % and octocrylene 2.56 % and oxybenzone 4.75 % spray (bag-on-valve)	f	1	t	2013-05-27	9005251	\N	\N	19410
avobenzone 2.8 % and homosalate 8 % and octisalate 4.75 % and octocrylene 2.5 % and oxybenzone 4.75 % lotion	f	1	f	2013-05-27	9005252	\N	\N	19411
benzalkonium chloride 0.13 % and lidocaine 4 % cutaneous cream	f	1	f	2013-05-27	9005253	\N	\N	19412
choriogonadotropin alpha 250 mcg per cartridge solution for injection	f	1	f	2013-05-28	9005254	\N	\N	19413
pasireotide (pasireotide diaspartate) 0.3 mg per mL solution for injection	f	1	f	2013-11-26	9005371	\N	\N	19531
pasireotide (pasireotide diaspartate) 0.6 mg per mL solution for injection	f	1	f	2013-11-26	9005372	\N	\N	19532
adenine 0.03 g per 100 mL and citric acid monohydrate 0.042 g per 100 mL and dextrose 1.1 g per 100 mL and sodium chloride 0.41 g per 100 mL and sodium citrate dihydrate 0.588 g per 100 mL and sodium phosphate monobasic, monohydrate 0.276 g per 100 mL NA	f	1	t	2013-05-31	9005255	\N	\N	19414
benzoyl peroxide 5 % cutaneous solution	f	1	f	2013-06-01	9005256	\N	\N	19415
avobenzone 3 % and octinoxate 7.5 % and octisalate 3.5 % cutaneous ointment	f	1	f	2013-06-03	9005257	\N	\N	19416
cefazolin (cefazolin sodium) 100 g powder for solution for injection	f	1	f	2013-06-03	9005258	\N	\N	19417
homosalate 10 % and octisalate 5 % and octocrylene 5 % and titanium dioxide 4.5 % cutaneous cream	f	1	f	2013-06-03	9005259	\N	\N	19418
perampanel 10 mg oral tablet	f	1	f	2013-06-03	9005260	\N	\N	19419
avobenzone 1.9 % and octocrylene 9.4 % cutaneous cream	f	2	f	2013-06-05	9005261	\N	\N	19420
enzalutamide 40 mg oral capsule	f	1	f	2013-06-07	9005262	\N	\N	19421
white petrolatum 99.6 % cutaneous ointment	f	1	f	2013-06-08	9005263	\N	\N	19422
octinoxate 7.5 % and octisalate 5 % and titanium dioxide 11.2 % and zinc oxide 6.3 % cutaneous cream	f	1	f	2013-06-10	9005264	\N	\N	19423
etravirine 25 mg oral tablet	f	1	f	2013-06-14	9005265	\N	\N	19424
avobenzone 2.5 % and drometrizole trisiloxane 4 % and octocrylene 7 % cutaneous stick	f	1	f	2013-06-18	9005266	\N	\N	19425
ensulizole 2 % and octocrylene 7 % lotion	f	1	f	2013-06-18	9005267	\N	\N	19426
octinoxate 7.5 % and octisalate 3 % and octocrylene 10 % and oxybenzone 5 % cutaneous cream	f	2	f	2013-06-18	9005268	\N	\N	19427
perampanel 2 mg oral tablet	f	1	f	2013-06-19	9005269	\N	\N	19428
perampanel 4 mg oral tablet	f	1	f	2013-06-19	9005270	\N	\N	19429
perampanel 6 mg oral tablet	f	1	f	2013-06-19	9005271	\N	\N	19430
perampanel 8 mg oral tablet	f	1	f	2013-06-19	9005272	\N	\N	19431
octinoxate 4 % and titanium dioxide 2.37 % cutaneous emulsion	f	1	f	2013-06-21	9005273	\N	\N	19432
avobenzone 3 % and homosalate 6 % and octisalate 5 % and octocrylene 7 % cutaneous cream	f	1	f	2013-06-25	9005274	\N	\N	19433
rotigotine 2 mg per 24 hour transdermal patch	f	1	f	2013-06-27	9005275	\N	\N	19434
rotigotine 4 mg per 24 hour transdermal patch	f	1	f	2013-06-27	9005276	\N	\N	19435
rotigotine 6 mg per 24 hour transdermal patch	f	1	f	2013-06-27	9005277	\N	\N	19436
rotigotine 8 mg per 24 hour transdermal patch	f	1	f	2013-06-27	9005278	\N	\N	19437
avobenzone 3 % and homosalate 2.7 % and octisalate 5 % and octocrylene 7 % cutaneous cream	f	1	f	2013-07-01	9005279	\N	\N	19438
avobenzone 3 % and homosalate 7 % and octisalate 5 % and octocrylene 5 % lotion	f	1	f	2013-07-02	9005280	\N	\N	19439
avobenzone 4.5 % and ensulizole 2.5 % and homosalate 9 % and octisalate 4.5 % and octocrylene 4.5 % cutaneous cream	f	1	f	2013-07-02	9005281	\N	\N	19440
loperamide hydrochloride 2 mg oral capsule	f	1	f	2013-07-02	9005282	\N	\N	19441
ensulizole 4 % and octinoxate 7.5 % and octisalate 5 % and zinc oxide 4.9 % cutaneous cream	f	1	f	2013-07-04	9005283	\N	\N	19442
ulipristal acetate 5 mg oral tablet	f	1	f	2013-07-04	9005284	\N	\N	19443
calcium chloride 4.63 g per l and dextrose 23.1 g per l and magnesium chloride 2.13 g per l and potassium chloride 1.57 g per l and sodium chloride 122.64 g per l and sodium lactate 156.88 g per l solution for haemodialysis	f	1	t	2013-07-05	9005285	\N	\N	19444
avobenzone 2.2 % and octinoxate 7.5 % lotion	f	1	f	2013-07-08	9005286	\N	\N	19445
avobenzone 3 % and octinoxate 7.5 % cutaneous ointment	f	1	f	2013-07-08	9005287	\N	\N	19446
octinoxate 7.5 % and titanium dioxide 8.35 % cutaneous cream	f	1	f	2013-07-18	9005288	\N	\N	19447
water 2 mL per vial solution for injection	f	1	f	2013-07-18	9005289	\N	\N	19448
avobenzone 2.85 % and octinoxate 7.5 % and octisalate 4.75 % lotion	f	1	f	2013-07-22	9005290	\N	\N	19449
avobenzone 2 % and octinoxate 7.11 % and octisalate 4.75 % cutaneous cream	f	1	f	2013-07-22	9005291	\N	\N	19450
octinoxate 4.9 % and titanium dioxide 2.9 % cutaneous emulsion	f	1	f	2013-07-22	9005292	\N	\N	19451
acyclovir 5 % and hydrocortisone 1 % cutaneous cream	f	1	f	2013-07-26	9005293	\N	\N	19452
desmopressin (desmopressin acetate) 25 mcg orodispersible tablet	f	1	f	2013-07-31	9005294	\N	\N	19453
octinoxate 7.5 % and octisalate 4 % and oxybenzone 3.5 % cutaneous cream	f	1	f	2013-08-01	9005295	\N	\N	19454
guanfacine (guanfacine hydrochloride) 1 mg prolonged-release oral tablet	f	1	f	2013-08-06	9005296	\N	\N	19455
guanfacine (guanfacine hydrochloride) 2 mg prolonged-release oral tablet	f	1	f	2013-08-06	9005297	\N	\N	19456
guanfacine (guanfacine hydrochloride) 3 mg prolonged-release oral tablet	f	1	f	2013-08-06	9005298	\N	\N	19457
guanfacine (guanfacine hydrochloride) 4 mg prolonged-release oral tablet	f	1	f	2013-08-06	9005299	\N	\N	19458
avobenzone 2 % and octisalate 5 % and octocrylene 1.85 % spray (bag-on-valve)	f	1	f	2013-08-08	9005300	\N	\N	19459
avobenzone 3 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % spray (bag-on-valve)	f	3	f	2013-08-08	9005301	\N	\N	19460
benzoyl peroxide 2.5 % and benzoyl peroxide 2.5 % cutaneous gel	f	2	f	2013-08-08	9005302	\N	\N	19461
benzoyl peroxide 2.5 % and benzoyl peroxide 2.5 % kit	f	3	f	2013-08-08	9005303	\N	\N	19462
vismodegib 150 mg oral capsule	f	1	f	2013-08-09	9005304	\N	\N	19463
darbepoetin alfa 25 mcg per mL solution for injection	f	1	f	2013-08-16	9005305	\N	\N	19464
avobenzone 3 % and homosalate 9 % and octisalate 4 % and octocrylene 2.7 % and oxybenzone 4 % cutaneous cream	f	1	f	2013-08-18	9005306	\N	\N	19465
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 6 % spray (bag-on-valve)	f	2	f	2013-08-20	9005307	\N	\N	19466
avobenzone 3 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 4 % cutaneous spray	f	1	f	2013-08-20	9005308	\N	\N	19467
benzoyl peroxide 3 % and clindamycin (clindamycin phosphate) 1 % cutaneous gel	f	1	f	2013-08-20	9005309	\N	\N	19468
lidocaine hydrochloride 1 % spray (bag-on-valve)	f	1	f	2013-08-20	9005310	\N	\N	19469
meningococcal polysaccharide antigen group a 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group c 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group w-135 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group y 5 mcg per 0.5 mL and tetanus toxoid 44 mcg per 0.5 mL kit	f	1	f	2013-08-22	9005311	\N	\N	19470
pasireotide (pasireotide diaspartate) 0.9 mg per mL solution for injection	f	1	f	2013-11-28	9005373	\N	\N	19533
lidocaine hydrochloride 4 % cutaneous solution	f	1	f	2014-02-20	9005434	\N	\N	19594
meningococcal polysaccharide antigen group a 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group c 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group w-135 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group y 5 mcg per 0.5 mL and tetanus toxoid 44 mcg per 0.5 mL powder for solution for injection	f	1	f	2013-08-22	9005312	\N	\N	19471
dabrafenib (dabrafenib mesylate) 50 mg oral capsule	f	1	f	2013-08-28	9005313	\N	\N	19472
dabrafenib (dabrafenib mesylate) 75 mg oral capsule	f	1	f	2013-08-28	9005314	\N	\N	19473
octinoxate 7.4 % and zinc oxide 6.5 % lotion	f	1	f	2013-08-28	9005315	\N	\N	19474
trametinib 0.5 mg oral tablet	f	1	f	2013-08-28	9005316	\N	\N	19475
trametinib 2 mg oral tablet	f	1	f	2013-08-28	9005317	\N	\N	19476
avobenzone 2.5 % and octinoxate 7.4 % and octocrylene 2 % cutaneous cream	f	2	f	2013-09-01	9005318	\N	\N	19477
arsenic trioxide 1 mg per mL solution for injection	f	1	f	2013-09-09	9005319	\N	\N	19478
somatropin 20 mg per 2 mL solution for injection	f	1	f	2013-09-09	9005320	\N	\N	19479
somatropin 5 mg per 2 mL solution for injection	f	1	f	2013-09-09	9005321	\N	\N	19480
chlorhexidine gluconate 2 % and isopropyl alcohol 70 % medicated sponge	f	1	f	2013-09-11	9005322	\N	\N	19481
octinoxate 2.4 % and titanium dioxide 2.3 % cutaneous cream	f	1	f	2013-09-12	9005323	\N	\N	19482
aclidinium bromide 400 mcg per actuation inhalation powder	f	1	f	2013-09-13	9005324	\N	\N	19483
avobenzone 2.5 % and octinoxate 7.4 % and octocrylene 2 % and oxybenzone 1 % cutaneous cream	f	1	f	2013-09-16	9005325	\N	\N	19484
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % lotion	f	1	f	2013-09-16	9005326	\N	\N	19485
somatropin 0.6 mg powder for solution for injection	f	1	f	2013-09-18	9005327	\N	\N	19486
somatropin 0.8 mg powder for solution for injection	f	1	f	2013-09-18	9005328	\N	\N	19487
somatropin 12 mg per pen powder for solution for injection	f	1	f	2013-09-18	9005329	\N	\N	19488
somatropin 1.2 mg powder for solution for injection	f	1	f	2013-09-18	9005330	\N	\N	19489
somatropin 1.4 mg powder for solution for injection	f	1	f	2013-09-18	9005331	\N	\N	19490
somatropin 1.6 mg powder for solution for injection	f	1	f	2013-09-18	9005332	\N	\N	19491
somatropin 1.8 mg powder for solution for injection	f	1	f	2013-09-18	9005333	\N	\N	19492
somatropin 1 mg powder for solution for injection	f	1	f	2013-09-18	9005334	\N	\N	19493
somatropin 2 mg powder for solution for injection	f	1	f	2013-09-18	9005335	\N	\N	19494
somatropin 5.3 mg per pen powder for solution for injection	f	1	f	2013-09-18	9005336	\N	\N	19495
gemcitabine (gemcitabine hydrochloride) 40 mg per mL solution for injection	f	1	f	2013-09-24	9005337	\N	\N	19496
riociguat 0.5 mg oral tablet	f	1	f	2013-09-25	9005338	\N	\N	19497
riociguat 1.5 mg oral tablet	f	1	f	2013-09-25	9005339	\N	\N	19498
riociguat 1 mg oral tablet	f	1	f	2013-09-25	9005340	\N	\N	19499
riociguat 2.5 mg oral tablet	f	1	f	2013-09-25	9005341	\N	\N	19500
riociguat 2 mg oral tablet	f	1	f	2013-09-25	9005342	\N	\N	19501
sodium bicarbonate 720 g per cartridge powder for concentrate for solution for haemodialysis	f	1	f	2013-09-26	9005343	\N	\N	19502
avobenzone 3 % and homosalate 9.5 % and octisalate 4.75 % and octocrylene 2.8 % and oxybenzone 6 % lotion	f	2	f	2013-09-27	9005344	\N	\N	19503
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % cutaneous cream	f	1	f	2013-09-30	9005345	\N	\N	19504
octinoxate 4.9 % and titanium dioxide 1.9 % cutaneous cream	f	1	f	2013-09-30	9005346	\N	\N	19505
avobenzone 3 % and octinoxate 7.5 % and oxybenzone 1 % cutaneous cream	f	1	f	2013-10-01	9005347	\N	\N	19506
avobenzone 3 % and octinoxate 7.5 % and oxybenzone 1 % lotion	f	1	f	2013-10-01	9005348	\N	\N	19507
octinoxate 4.1 % and titanium dioxide 1.4 % and zinc oxide 1.5 % cutaneous cream	f	1	f	2013-10-01	9005349	\N	\N	19508
octinoxate 7.5 % and octisalate 4.4 % and titanium dioxide 3.5 % and zinc oxide 2.2 % cutaneous cream	f	1	f	2013-10-01	9005350	\N	\N	19509
golimumab 100 mg per 1 mL solution for injection	f	2	f	2013-10-03	9005351	\N	\N	19510
trastuzumab emtansine 20 mg per mL powder for solution for injection	f	1	f	2013-10-09	9005352	\N	\N	19511
acetaminophen 325 mg per 4.7 g and pheniramine maleate 20 mg per 4.7 g and phenylephrine hydrochloride 10 mg per 4.7 g powder for oral solution	f	1	f	2013-10-10	9005353	\N	\N	19512
lenalidomide 2.5 mg oral capsule	f	1	f	2016-12-20	9006081	\N	\N	19513
acetaminophen 650 mg per 5 g and pheniramine maleate 20 mg per 5 g and phenylephrine hydrochloride 10 mg per 5 g powder for oral solution	f	1	f	2013-10-10	9005354	\N	\N	19514
triptorelin (triptorelin pamoate) 22.5 mg per vial powder for prolonged-release suspension for injection	f	1	f	2013-10-16	9005355	\N	\N	19515
sodium bicarbonate 1250 g per cartridge powder for concentrate for solution for haemodialysis	f	1	f	2013-10-22	9005356	\N	\N	19516
octinoxate 7.5 % and titanium dioxide 7.1 % cutaneous emulsion	f	1	f	2013-10-29	9005357	\N	\N	19517
levonorgestrel 13.5 mg intrauterine delivery system	f	1	f	2013-10-30	9005358	\N	\N	19518
darbepoetin alfa 500 mcg per mL solution for injection	f	4	f	2013-11-04	9005359	\N	\N	19519
rifaximin 550 mg oral tablet	f	1	f	2013-11-07	9005360	\N	\N	19520
dolutegravir (dolutegravir sodium) 50 mg oral tablet	f	1	f	2013-11-08	9005361	\N	\N	19521
acetaminophen 325 mg and guaifenesin 200 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2013-11-12	9005362	\N	\N	19522
calcium chloride 4.63 g per l and dextrose 23.1 g per l and magnesium chloride 2.13 g per l and potassium chloride 3.14 g per l and sodium chloride 116.6 g per l and sodium lactate 176.5 g per l solution for haemodialysis	f	1	t	2013-11-13	9005363	\N	\N	19523
benzoyl peroxide 5 % and salicylic acid 2 % cutaneous liquid	f	1	f	2013-11-15	9005364	\N	\N	19524
benzoyl peroxide 5 % and salicylic acid 2 % kit	f	1	f	2013-11-15	9005365	\N	\N	19525
benzoyl peroxide 5 % and salicylic acid 2 % lotion	f	1	f	2013-11-15	9005366	\N	\N	19526
teriflunomide 14 mg oral tablet	f	1	f	2013-11-15	9005367	\N	\N	19527
ocriplasmin 2.5 mg per mL solution for injection	f	1	f	2013-11-20	9005368	\N	\N	19528
coagulation factor ii (human) 1600 unit and coagulation factor ix (human) 1240 unit and coagulation factor vii (human) 1000 unit and coagulation factor x (human) 2040 unit and protein c 1640 unit and protein s 1360 unit powder for solution for injection	f	1	t	2013-11-21	9005369	\N	\N	19529
ulipristal acetate 30 mg oral tablet	f	1	f	2015-09-01	9005765	\N	\N	19925
fluticasone furoate 100 mcg and vilanterol (vilanterol trifenatate) 25 mcg inhalation powder	f	1	f	2013-11-29	9005374	\N	\N	19534
avobenzone 3 % and octisalate 5 % and octocrylene 5 % cutaneous cream	f	1	f	2013-12-09	9005375	\N	\N	19535
bacitracin 500 unit per g and polymyxin b sulfate 10000 unit per g cutaneous ointment	f	1	f	2013-12-09	9005376	\N	\N	19536
methoxsalen 20 mcg per mL NA	f	1	f	2013-12-09	9005377	\N	\N	19537
darbepoetin alfa 100 mcg per mL solution for injection	f	3	f	2013-12-11	9005378	\N	\N	19538
avobenzone 1.9 % and octocrylene 9.4 % lotion	f	1	f	2013-12-12	9005379	\N	\N	19539
golimumab 50 mg per 4 mL solution for injection	f	1	f	2013-12-12	9005380	\N	\N	19540
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous cream	f	2	f	2013-12-16	9005381	\N	\N	19541
rotigotine 1 mg per 24 hour transdermal patch	f	1	f	2013-12-19	9005382	\N	\N	19542
rotigotine 3 mg per 24 hour transdermal patch	f	1	f	2013-12-19	9005383	\N	\N	19543
amylase 30000 unit and lipase 6000 unit and protease 19000 unit oral capsule	f	1	f	2013-12-20	9005384	\N	\N	19544
calcium chloride 4.63 g per l and dextrose 23.1 g per l and magnesium chloride 2.13 g per l and potassium chloride 1.57 g per l and sodium chloride 116.6 g per l and sodium lactate 176.5 g per l solution for haemodialysis	f	3	t	2013-12-20	9005385	\N	\N	19545
aflibercept 40 mg per mL solution for injection	f	1	f	2013-12-23	9005386	\N	\N	19546
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % cutaneous cream	f	1	f	2014-01-01	9005387	\N	\N	19547
galsulfase 1 mg per mL solution for injection	f	1	f	2014-01-01	9005388	\N	\N	19548
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % and oxybenzone 3 % lotion	f	1	f	2014-01-06	9005389	\N	\N	19549
sofosbuvir 400 mg oral tablet	f	1	f	2014-01-06	9005390	\N	\N	19550
avobenzone 2.5 % and bemotrizinol 0.5 % and octisalate 5 % and octocrylene 5 % cutaneous stick	f	1	f	2014-01-13	9005391	\N	\N	19551
avobenzone 2.5 % and homosalate 5 % and octisalate 4 % and octocrylene 3 % and oxybenzone 4 % lotion	f	2	f	2014-01-13	9005392	\N	\N	19552
avobenzone 2.7 % and homosalate 4 % and octisalate 4.5 % and octocrylene 6 % and oxybenzone 4.5 % lotion	f	1	f	2014-01-13	9005393	\N	\N	19553
octinoxate 4 % and titanium dioxide 1.26 % lotion	f	1	f	2014-01-13	9005394	\N	\N	19554
magnesium hydroxide 200 mg and simethicone 25 mg and NA 200 mg chewable tablet	f	1	f	2014-01-14	9005395	\N	\N	19555
standardized timothy grass pollen 2800 unit orodispersible tablet	f	1	f	2014-01-14	9005396	\N	\N	19556
macitentan 10 mg oral tablet	f	1	f	2014-01-15	9005397	\N	\N	19557
cytarabine 20 mg per mL solution for injection	f	1	f	2014-01-16	9005398	\N	\N	19558
homosalate 7 % and octinoxate 7 % and octocrylene 2 % and oxybenzone 4.7 % and titanium dioxide 2.15 % cutaneous cream	f	1	f	2014-01-16	9005399	\N	\N	19559
tolnaftate 1 % cutaneous solution	f	1	f	2014-01-16	9005400	\N	\N	19560
vitamin d (vitamin d3) 10000 unit oral tablet	f	1	f	2014-01-16	9005401	\N	\N	19561
afatinib (afatinib dimaleate) 20 mg oral tablet	f	1	f	2014-01-17	9005402	\N	\N	19562
afatinib (afatinib dimaleate) 30 mg oral tablet	f	1	f	2014-01-17	9005403	\N	\N	19563
afatinib (afatinib dimaleate) 40 mg oral tablet	f	1	f	2014-01-17	9005404	\N	\N	19564
cetylpyridinium chloride 0.075 % and sodium fluoride 0.05 % gargle/mouthwash	f	1	f	2014-01-20	9005405	\N	\N	19565
cisatracurium (cisatracurium besylate) 2 mg per mL solution for injection	f	3	f	2014-01-20	9005406	\N	\N	19566
homosalate 10 % and meradimate 5 % and octinoxate 5 % and octocrylene 2 % and zinc oxide 6.3 % lotion	f	1	f	2014-01-22	9005407	\N	\N	19567
octinoxate 4 % and titanium dioxide 5.2 % cutaneous cream	f	1	f	2014-01-22	9005408	\N	\N	19568
octinoxate 3.75 % and oxybenzone 1 % and titanium dioxide 3.55 % cutaneous cream	f	1	f	2014-01-24	9005409	\N	\N	19569
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.8 % and oxybenzone 6 % lotion	f	2	f	2014-01-27	9005410	\N	\N	19570
darbepoetin alfa 200 mcg per mL solution for injection	f	4	f	2014-01-27	9005411	\N	\N	19571
avobenzone 2.7 % and homosalate 9 % and octisalate 4.5 % lotion	f	1	f	2014-01-28	9005412	\N	\N	19572
alemtuzumab 12 mg per 1.2 mL solution for injection	f	1	f	2014-01-29	9005413	\N	\N	19573
dextrose (dextrose monohydrate) 50 mg per mL solution for injection	f	1	f	2014-01-29	9005414	\N	\N	19574
ensulizole 2 % and octinoxate 7.5 % and octisalate 4.5 % and titanium dioxide 2.38 % and zinc oxide 4.85 % lotion	f	1	f	2014-01-31	9005415	\N	\N	19575
avobenzone 2.5 % and homosalate 5 % and octocrylene 4 % lotion	f	1	f	2014-02-01	9005416	\N	\N	19576
avobenzone 2.5 % and octinoxate 5.9 % and octocrylene 2 % cutaneous cream	f	1	f	2014-02-01	9005417	\N	\N	19577
avobenzone 2.7 % and homosalate 8 % and octisalate 4.5 % and octocrylene 5 % lotion	f	2	f	2014-02-01	9005418	\N	\N	19578
avobenzone 2 % and homosalate 5.5 % and octisalate 4.5 % and octocrylene 4 % lotion	f	3	f	2014-02-01	9005419	\N	\N	19579
avobenzone 3 % and homosalate 8 % and octocrylene 4 % lotion	f	1	f	2014-02-01	9005420	\N	\N	19580
octinoxate 7.5 % and octisalate 4 % and oxybenzone 2.5 % and titanium dioxide 1.1 % and zinc oxide 3.3 % cutaneous cream	f	2	f	2014-02-01	9005421	\N	\N	19581
dimethyl fumarate 240 mg gastro-resistant capsule	f	1	f	2014-02-04	9005422	\N	\N	19582
lidocaine hydrochloride 2 % cutaneous cream	f	1	f	2014-02-04	9005423	\N	\N	19583
romidepsin 10 mg per vial NA	f	1	f	2014-02-05	9005424	\N	\N	19584
romidepsin 10 mg per vial powder for solution for injection	f	1	f	2014-02-05	9005425	\N	\N	19585
avobenzone 3 % and homosalate 10 % and octisalate 4.5 % and octocrylene 9 % and oxybenzone 5 % spray (bag-on-valve)	f	2	f	2014-02-07	9005426	\N	\N	19586
avobenzone 3 % and homosalate 13 % and octisalate 4.5 % and octocrylene 9 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2014-02-07	9005427	\N	\N	19587
avobenzone 3 % and homosalate 10 % and octisalate 4.5 % and octocrylene 4 % and oxybenzone 4 % spray (bag-on-valve)	f	1	f	2014-02-12	9005428	\N	\N	19588
avobenzone 3 % and octisalate 5 % and octocrylene 3 % cutaneous cream	f	1	f	2014-02-15	9005429	\N	\N	19589
homosalate 5 % and octinoxate 6.5 % and oxybenzone 1.2 % cutaneous cream	f	1	f	2014-02-16	9005430	\N	\N	19590
NA 0.05 % ophthalmic drops	f	1	f	2014-02-19	9005431	\N	\N	19591
avobenzone 3 % and homosalate 5 % and octocrylene 2.7 % lotion	f	1	f	2014-02-20	9005432	\N	\N	19592
chlorhexidine gluconate 2 % medicated sponge	f	1	f	2014-02-20	9005433	\N	\N	19593
avobenzone 3 % and drometrizole trisiloxane 0.5 % and homosalate 10 % and octisalate 5 % and octocrylene 4 % and terephthalylidene dicamphor sulfonic acid 0.5 % lotion	f	1	t	2014-02-24	9005435	\N	\N	19595
avobenzone 3 % and drometrizole trisiloxane 2.5 % and homosalate 10 % and octisalate 5 % and octocrylene 5.5 % and terephthalylidene dicamphor sulfonic acid 0.5 % cutaneous cream	f	1	t	2014-02-24	9005436	\N	\N	19596
pomalidomide 1 mg oral capsule	f	1	f	2014-02-24	9005437	\N	\N	19597
pomalidomide 2 mg oral capsule	f	1	f	2014-02-24	9005438	\N	\N	19598
pomalidomide 3 mg oral capsule	f	1	f	2014-02-24	9005439	\N	\N	19599
pomalidomide 4 mg oral capsule	f	1	f	2014-02-24	9005440	\N	\N	19600
outer membrane vesicles (neisseria meningitidis group b nz98/254 strain) 25 mcg per 0.5 mL and recombinant neisseria meningitidis group b fhbp fusion protein 50 mcg per 0.5 mL and recombinant neisseria meningitidis group b nada protein 50 mcg per 0.5 mL and recombinant neisseria meningitidis group b nhba fusion protein 50 mcg per 0.5 mL suspension for injection	f	1	f	2014-02-26	9005441	\N	\N	19601
avobenzone 2.96 % and homosalate 8.78 % and octisalate 4.88 % and octocrylene 5.92 % cutaneous spray	f	1	f	2014-03-01	9005442	\N	\N	19602
avobenzone 3 % and homosalate 10.72 % and octisalate 3.21 % and octocrylene 6 % and oxybenzone 3.86 % cutaneous spray	f	1	f	2014-03-01	9005443	\N	\N	19603
avobenzone 2 % and ensulizole 1 % and octisalate 4 % and octocrylene 2 % cutaneous cream	f	2	f	2014-03-02	9005444	\N	\N	19604
avobenzone 1 % and octocrylene 0.85 % and oxybenzone 0.5 % cutaneous gel	f	1	f	2014-03-03	9005445	\N	\N	19605
avobenzone 2.9 % and homosalate 12 % and octocrylene 2.7 % lotion	f	1	f	2014-03-03	9005446	\N	\N	19606
avobenzone 2 % and octisalate 5 % and octocrylene 1.85 % lotion	f	1	f	2014-03-03	9005447	\N	\N	19607
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 4 % lotion	f	3	f	2014-03-03	9005448	\N	\N	19608
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.75 % cutaneous foam	f	1	f	2014-03-03	9005449	\N	\N	19609
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.75 % lotion	f	1	f	2014-03-03	9005450	\N	\N	19610
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.8 % cutaneous cream	f	1	f	2014-03-03	9005451	\N	\N	19611
avobenzone 3 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % lotion	f	3	f	2014-03-03	9005452	\N	\N	19612
diphenhydramine hydrochloride 12.5 mg per 5 mL and phenylephrine hydrochloride 5 mg per 5 mL syrup	f	1	f	2014-03-03	9005453	\N	\N	19613
insulin biosynthetic human br 100 unit per mL solution for injection	f	1	f	2014-03-03	9005454	\N	\N	19614
octinoxate 5.5 % and titanium dioxide 4.7 % cutaneous cream	f	1	f	2014-03-03	9005455	\N	\N	19615
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 9 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2014-03-05	9005456	\N	\N	19616
avobenzone 3 % and homosalate 12 % and octinoxate 5 % and octisalate 5 % and octocrylene 5 % and oxybenzone 6 % spray (bag-on-valve)	f	3	t	2014-03-05	9005457	\N	\N	19617
avobenzone 3 % and homosalate 2.4 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 7.5 % and oxybenzone 4 % spray (bag-on-valve)	f	1	t	2014-03-05	9005458	\N	\N	19618
avobenzone 3 % and octinoxate 2.5 % and octisalate 2 % and octocrylene 5 % and oxybenzone 1.5 % spray (bag-on-valve)	f	1	f	2014-03-05	9005459	\N	\N	19619
glycopyrronium (glycopyrronium bromide) 50 mcg and indacaterol (indacaterol maleate) 110 mcg inhalation powder capsule	f	1	f	2014-03-05	9005460	\N	\N	19620
glycopyrronium (glycopyrronium bromide) 50 mcg and indacaterol (indacaterol maleate) 110 mcg NA	f	1	f	2014-03-05	9005461	\N	\N	19621
petrolatum 95.7 % cutaneous ointment	f	1	f	2014-03-06	9005462	\N	\N	19622
avobenzone 2 % and homosalate 10 % and octisalate 5 % and octocrylene 2 % and oxybenzone 5 % spray (bag-on-valve)	f	3	f	2014-03-11	9005463	\N	\N	19623
avobenzone 3 % and octinoxate 4 % lotion	f	5	f	2014-03-11	9005464	\N	\N	19624
darbepoetin alfa 40 mcg per mL solution for injection	f	1	f	2014-03-12	9005465	\N	\N	19625
vitamin b12 1000 mcg per mL solution for injection	f	2	f	2014-03-12	9005466	\N	\N	19626
lurasidone hydrochloride 60 mg oral tablet	f	1	f	2014-03-14	9005467	\N	\N	19627
umeclidinium (umeclidinium bromide) 62.5 mcg and vilanterol (vilanterol trifenatate) 25 mcg inhalation powder	f	1	f	2014-03-14	9005468	\N	\N	19628
white petrolatum 72 % and zinc oxide 15 % cutaneous ointment	f	1	f	2014-03-14	9005469	\N	\N	19629
octinoxate 7 % and octisalate 3 % and titanium dioxide 6.6 % cutaneous cream	f	1	f	2014-03-17	9005470	\N	\N	19630
avobenzone 2.85 % and homosalate 7 % and octinoxate 7 % and oxybenzone 4 % cutaneous cream	f	1	f	2014-03-18	9005471	\N	\N	19631
avobenzone 2.85 % and homosalate 8 % and octinoxate 5 % and oxybenzone 4 % lotion	f	2	f	2014-03-18	9005472	\N	\N	19632
avobenzone 3 % and homosalate 12 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 7 % lotion	f	2	f	2014-03-18	9005473	\N	\N	19633
avobenzone 0.75 % and octinoxate 2 % lotion	f	5	f	2014-03-20	9005474	\N	\N	19634
avobenzone 2.5 % and octinoxate 2 % and octocrylene 6 % cutaneous stick	f	1	f	2014-03-24	9005475	\N	\N	19635
bosutinib 500 mg oral tablet	f	1	f	2014-03-24	9005476	\N	\N	19636
brimonidine (brimonidine tartrate) 0.33 % cutaneous gel	f	1	f	2014-03-24	9005477	\N	\N	19637
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % and oxybenzone 6 % cutaneous stick	f	1	f	2014-03-25	9005478	\N	\N	19638
docetaxel 20 mg per 0.72 mL solution for injection	f	1	f	2014-03-28	9005479	\N	\N	19639
docetaxel 80 mg per 2.88 mL solution for injection	f	1	f	2014-03-28	9005480	\N	\N	19640
lidocaine 0.7 % and menthol 0.2 % cutaneous gel	f	1	f	2014-03-28	9005481	\N	\N	19641
avobenzone 3 % and avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.75 % and octocrylene 2.79 % cutaneous cream	f	1	t	2014-03-31	9005482	\N	\N	19642
avobenzone 3 % and avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.75 % and octocrylene 2.79 % kit	f	1	t	2014-03-31	9005483	\N	\N	19643
avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octocrylene 2.75 % kit	f	1	f	2014-03-31	9005484	\N	\N	19644
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.79 % kit	f	1	f	2014-03-31	9005485	\N	\N	19645
avobenzone 2.5 % and octinoxate 7.4 % and octocrylene 2 % cutaneous emulsion	f	1	f	2014-04-01	9005486	\N	\N	19646
factor xiii 1250 unit per vial powder for solution for injection	f	1	f	2014-04-03	9005487	\N	\N	19647
factor xiii 250 unit per vial powder for solution for injection	f	1	f	2014-04-03	9005488	\N	\N	19648
avobenzone 2.5 % and homosalate 2.5 % and octisalate 5 % and octocrylene 10 % lotion	f	1	f	2014-04-07	9005489	\N	\N	19649
avobenzone 3 % and octocrylene 7 % and oxybenzone 3 % cutaneous cream	f	1	f	2014-04-07	9005490	\N	\N	19650
lurasidone hydrochloride 20 mg oral tablet	f	1	f	2014-04-09	9005491	\N	\N	19651
tapentadol (tapentadol hydrochloride) 100 mg prolonged-release oral tablet	f	1	f	2014-04-16	9005492	\N	\N	19652
tapentadol (tapentadol hydrochloride) 150 mg prolonged-release oral tablet	f	1	f	2014-04-16	9005493	\N	\N	19653
tapentadol (tapentadol hydrochloride) 200 mg prolonged-release oral tablet	f	1	f	2014-04-16	9005494	\N	\N	19654
tapentadol (tapentadol hydrochloride) 250 mg prolonged-release oral tablet	f	1	f	2014-04-16	9005495	\N	\N	19655
tapentadol (tapentadol hydrochloride) 50 mg prolonged-release oral tablet	f	1	f	2014-04-16	9005496	\N	\N	19656
gemcitabine (gemcitabine hydrochloride) 100 mg per mL solution for injection	f	1	f	2014-04-17	9005497	\N	\N	19657
avobenzone 3 % and drometrizole trisiloxane 2 % and homosalate 15 % and octisalate 5 % and octocrylene 7 % cutaneous spray	f	2	f	2014-04-24	9005498	\N	\N	19658
avobenzone 3 % and homosalate 6.5 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 2 % lotion	f	1	f	2014-04-24	9005499	\N	\N	19659
bosutinib 100 mg oral tablet	f	1	f	2014-04-24	9005500	\N	\N	19660
ensulizole 1 % and octinoxate 7.5 % and zinc oxide 3 % lotion	f	1	f	2014-04-24	9005501	\N	\N	19661
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % lotion	f	1	f	2014-04-28	9005502	\N	\N	19662
linaclotide 145 mcg oral capsule	f	1	f	2014-04-29	9005503	\N	\N	19663
NA 12 unit orodispersible tablet	f	1	f	2014-04-29	9005504	\N	\N	19664
alogliptin (alogliptin benzoate) 12.5 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2014-04-30	9005505	\N	\N	19665
alogliptin (alogliptin benzoate) 12.5 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2014-04-30	9005506	\N	\N	19666
alogliptin (alogliptin benzoate) 12.5 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2014-04-30	9005507	\N	\N	19667
alogliptin (alogliptin benzoate) 12.5 mg oral tablet	f	1	f	2014-04-30	9005508	\N	\N	19668
alogliptin (alogliptin benzoate) 6.25 mg oral tablet	f	1	f	2014-04-30	9005509	\N	\N	19669
avobenzone 2 % and homosalate 10 % and octisalate 5 % and octocrylene 4 % and oxybenzone 5 % lotion	f	1	f	2014-04-30	9005510	\N	\N	19670
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2 % and oxybenzone 4 % cutaneous spray	f	1	f	2014-04-30	9005511	\N	\N	19671
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 4 % and oxybenzone 5 % cutaneous spray	f	1	f	2014-04-30	9005512	\N	\N	19672
avobenzone 3 % and homosalate 12 % and octisalate 5 % and octocrylene 7 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2014-05-01	9005513	\N	\N	19673
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 7 % and oxybenzone 6 % spray (bag-on-valve)	f	1	f	2014-05-01	9005514	\N	\N	19674
octinoxate 7.5 % and octisalate 5 % and oxybenzone 3 % and titanium dioxide 5.74 % cutaneous cream	f	1	f	2014-05-05	9005515	\N	\N	19675
lomitapide (lomitapide mesylate) 10 mg oral capsule	f	1	f	2014-05-06	9005516	\N	\N	19676
lomitapide (lomitapide mesylate) 20 mg oral capsule	f	1	f	2014-05-06	9005517	\N	\N	19677
lomitapide (lomitapide mesylate) 5 mg oral capsule	f	1	f	2014-05-06	9005518	\N	\N	19678
measles virus vaccine live attenuated (edmonston b strain) 3 log10 tcid50 per 0.5 mL and mumps virus vaccine live attenuated (jeryl lynn strain) 4.3 log10 tcid50 per 0.5 mL and rubella virus vaccine live attenuated (wistar ra27/3 strain) 3 log10 tcid50 per 0.5 mL and varicella-zoster virus vaccine live attenuated (oka/merck strain) 3.99 log10 pfu per 0.5 mL powder for solution for injection	f	1	f	2014-05-09	9005519	\N	\N	19679
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 4.75 % and oxybenzone 4.5 % lotion	f	1	f	2014-05-12	9005520	\N	\N	19680
alogliptin (alogliptin benzoate) 25 mg oral tablet	f	1	f	2014-05-13	9005521	\N	\N	19681
avobenzone 2.8 % and octisalate 4.75 % and octocrylene 2.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2014-05-14	9005522	\N	\N	19682
posaconazole 100 mg gastro-resistant tablet	f	1	f	2014-05-21	9005523	\N	\N	19683
chlorpheniramine maleate 2 mg and ibuprofen 200 mg and ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg kit	f	2	f	2014-05-23	9005524	\N	\N	19684
chlorpheniramine maleate 2 mg and ibuprofen 200 mg and ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg oral tablet	f	2	f	2014-05-23	9005525	\N	\N	19685
varicella-zoster virus vaccine live attenuated (oka/merck strain) 19400 pfu per 0.65 mL powder for suspension for injection	f	1	f	2014-05-26	9005526	\N	\N	19686
canagliflozin 300 mg oral tablet	f	1	f	2014-05-28	9005527	\N	\N	19687
avobenzone 2 % and octinoxate 7.5 % and octisalate 4 % and octocrylene 1.5 % and oxybenzone 4 % cutaneous spray	f	1	f	2014-05-30	9005528	\N	\N	19688
tocilizumab 162 mg per 0.9 mL solution for injection	f	1	f	2014-05-30	9005529	\N	\N	19689
avobenzone 1.2 % and octisalate 1.4 % and octocrylene 1.4 % cutaneous spray	f	1	f	2014-06-01	9005530	\N	\N	19690
avobenzone 1.5 % and octisalate 3 % and octocrylene 2 % cutaneous spray	f	1	f	2014-06-01	9005531	\N	\N	19691
NA 0.3 % ophthalmic drops	f	1	f	2014-06-01	9005532	\N	\N	19692
diphenhydramine hydrochloride 25 mg and ibuprofen 200 mg and ibuprofen 200 mg kit	f	1	f	2014-06-02	9005533	\N	\N	19693
diphenhydramine hydrochloride 25 mg and ibuprofen 200 mg and ibuprofen 200 mg oral capsule	f	1	f	2014-06-02	9005534	\N	\N	19694
standardized kentucky blue/june grass pollen 100000 unit per mL and standardized meadow fescue grass pollen 100000 unit per mL and standardized orchard grass pollen 100000 unit per mL and standardized perennial rye grass pollen 100000 unit per mL and standardized redtop grass pollen 100000 unit per mL and standardized sweet vernal grass pollen 100000 unit per mL and standardized timothy grass pollen 100000 unit per mL solution for injection	f	1	t	2014-06-02	9005535	\N	\N	19695
canagliflozin 100 mg oral tablet	f	1	f	2014-06-03	9005536	\N	\N	19696
tofacitinib (tofacitinib citrate) 5 mg oral tablet	f	1	f	2014-06-03	9005537	\N	\N	19697
ceftriaxone (ceftriaxone sodium) 100 g powder for solution for injection	f	1	f	2014-06-05	9005538	\N	\N	19698
pyrithione zinc 0.95 % cutaneous suspension	f	1	f	2014-06-07	9005539	\N	\N	19699
avobenzone 2.5 % and octinoxate 6 % and octocrylene 1.85 % cutaneous stick	f	1	f	2014-06-20	9005540	\N	\N	19700
avobenzone 3 % and homosalate 2 % and octisalate 5 % and octocrylene 5.5 % cutaneous cream	f	1	f	2014-06-25	9005541	\N	\N	19701
avobenzone 3 % and homosalate 10 % and octisalate 4.5 % and octocrylene 5.5 % and oxybenzone 5 % lotion	f	1	f	2014-06-30	9005542	\N	\N	19702
avobenzone 3 % and homosalate 10 % and octisalate 5 % lotion	f	1	f	2014-07-01	9005543	\N	\N	19703
avobenzone 3 % and octisalate 5 % cutaneous emulsion	f	1	f	2014-07-01	9005544	\N	\N	19704
petrolatum 80.3 % and zinc oxide 15 % cutaneous cream	f	1	f	2014-07-01	9005545	\N	\N	19705
octinoxate 6.8 % and oxybenzone 3 % cutaneous stick	f	1	f	2014-07-02	9005546	\N	\N	19706
avobenzone 3 % and octinoxate 7.14 % and octisalate 4.75 % and oxybenzone 4 % cutaneous cream	f	1	f	2014-07-03	9005547	\N	\N	19707
sinecatechins 10 % cutaneous ointment	f	1	f	2014-07-04	9005548	\N	\N	19708
benzoyl peroxide 4 % lotion	f	1	f	2014-07-10	9005549	\N	\N	19709
icatibant (icatibant acetate) 10 mg per mL solution for injection	f	1	f	2014-07-14	9005550	\N	\N	19710
ribavirin 400 mg oral tablet	f	2	f	2014-07-14	9005551	\N	\N	19711
ribavirin 600 mg oral tablet	f	2	f	2014-07-14	9005552	\N	\N	19712
octinoxate 7.5 % and titanium dioxide 1.9 % cutaneous emulsion	f	1	f	2014-07-15	9005553	\N	\N	19713
efinaconazole 10 % cutaneous solution	f	1	f	2014-07-21	9005554	\N	\N	19714
octinoxate 7.5 % and titanium dioxide 5 % and zinc oxide 0.99 % cutaneous cream	f	1	f	2014-07-21	9005555	\N	\N	19715
bisacodyl 5 mg suppository	f	1	f	2014-07-22	9005556	\N	\N	19716
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 4 % lotion	f	1	f	2014-08-04	9005557	\N	\N	19717
dextromethorphan hydrobromide 5 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL syrup	f	1	f	2014-08-05	9005558	\N	\N	19718
diphenhydramine hydrochloride 6.25 mg per 5 mL and phenylephrine hydrochloride 2.5 mg per 5 mL syrup	f	1	f	2014-08-05	9005559	\N	\N	19719
darunavir (darunavir ethanolate) 100 mg per mL oral suspension	f	1	f	2014-08-06	9005560	\N	\N	19720
eslicarbazepine acetate 200 mg oral tablet	f	1	f	2014-08-07	9005561	\N	\N	19721
eslicarbazepine acetate 400 mg oral tablet	f	1	f	2014-08-07	9005562	\N	\N	19722
eslicarbazepine acetate 600 mg oral tablet	f	1	f	2014-08-07	9005563	\N	\N	19723
eslicarbazepine acetate 800 mg oral tablet	f	1	f	2014-08-07	9005564	\N	\N	19724
frovatriptan (frovatriptan succinate monohydrate) 2.5 mg oral tablet	f	1	f	2014-08-11	9005565	\N	\N	19725
bismuth subsalicylate 17.6 mg per mL oral suspension	f	1	f	2014-08-13	9005566	\N	\N	19726
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 3.5 % cutaneous cream	f	1	f	2014-08-14	9005567	\N	\N	19727
acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and guaifenesin 200 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2014-08-15	9005568	\N	\N	19728
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 20 mg per 30 mL and doxylamine succinate 12.5 mg per 30 mL and phenylephrine hydrochloride 10 mg per 30 mL oral liquid	f	1	f	2014-08-15	9005569	\N	\N	19729
acetaminophen 650 mg per 30 mL and dextromethorphan hydrobromide 20 mg per 30 mL and guaifenesin 400 mg per 30 mL and phenylephrine hydrochloride 10 mg per 30 mL oral liquid	f	1	f	2014-08-15	9005570	\N	\N	19730
aluminum hydroxide (dried aluminum hydroxide gel) 306 mg per 5 mL and magnesium hydroxide 400 mg per 5 mL and simethicone 40 mg per 5 mL oral liquid	f	1	f	2014-08-15	9005571	\N	\N	19731
diphenhydramine hydrochloride 50 mg per 30 mL oral liquid	f	2	f	2014-08-15	9005572	\N	\N	19732
somatropin 15 mg per 1.5 mL solution for injection	f	1	f	2014-08-15	9005573	\N	\N	19733
lidocaine hydrochloride 4 % cutaneous gel	f	1	f	2014-08-18	9005574	\N	\N	19734
lidocaine hydrochloride 4 % cutaneous spray	f	1	f	2014-08-18	9005575	\N	\N	19735
elosulfase alfa 1 mg per mL solution for injection	f	1	f	2014-08-27	9005576	\N	\N	19736
avobenzone 2.7 % and octinoxate 3 % and octocrylene 3 % cutaneous stick	f	1	f	2014-08-28	9005577	\N	\N	19737
cobicistat 150 mg and darunavir (darunavir ethanolate) 800 mg oral tablet	f	1	f	2014-08-28	9005578	\N	\N	19738
octinoxate 7.5 % and octisalate 3 % and titanium dioxide 8 % lotion	f	1	f	2014-08-28	9005579	\N	\N	19739
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 3 % lotion	f	3	f	2014-09-01	9005580	\N	\N	19740
octinoxate 2.2 % and titanium dioxide 1.4 % cutaneous emulsion	f	1	f	2014-09-01	9005581	\N	\N	19741
homosalate 7 % and octinoxate 2.5 % and oxybenzone 2 % and titanium dioxide 4.1 % cutaneous cream	f	1	f	2014-09-02	9005582	\N	\N	19742
taliglucerase alfa 200 unit per vial powder for solution for injection	f	1	f	2014-09-08	9005583	\N	\N	19743
entecavir 1 mg oral tablet	f	1	f	2014-09-10	9005584	\N	\N	19744
ipratropium bromide 20 mcg per actuation and salbutamol (salbutamol sulfate) 100 mcg per actuation inhalation solution	f	1	f	2014-09-16	9005585	\N	\N	19745
octinoxate 3 % and octisalate 3.5 % and octocrylene 4.5 % and titanium dioxide 6.2 % cutaneous cream	f	1	f	2014-09-17	9005586	\N	\N	19746
phentolamine mesylate 0.4 mg per 1.7 mL solution for injection	f	1	f	2014-09-17	9005587	\N	\N	19747
standardized kentucky blue/june grass pollen 10000 unit per mL and standardized meadow fescue grass pollen 10000 unit per mL and standardized orchard grass pollen 10000 unit per mL and standardized perennial rye grass pollen 10000 unit per mL and standardized redtop grass pollen 10000 unit per mL and standardized sweet vernal grass pollen 10000 unit per mL and standardized timothy grass pollen 10000 unit per mL solution for injection	f	1	t	2014-09-25	9005588	\N	\N	19748
avobenzone 2.8 % and octinoxate 7 % and octisalate 4.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2014-09-29	9005589	\N	\N	19749
lidocaine hydrochloride 2 % cutaneous solution	f	1	f	2014-09-29	9005590	\N	\N	19750
tinzaparin sodium 12000 unit per 0.6 mL solution for injection	f	1	f	2014-09-30	9005591	\N	\N	19751
tinzaparin sodium 16000 unit per 0.8 mL solution for injection	f	1	f	2014-09-30	9005592	\N	\N	19752
tinzaparin sodium 8000 unit per 0.4 mL solution for injection	f	1	f	2014-09-30	9005593	\N	\N	19753
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.6 % and oxybenzone 6 % lotion	f	2	f	2014-10-01	9005594	\N	\N	19754
fluorouracil 5 g per 100 mL solution for injection	f	1	f	2014-10-01	9005595	\N	\N	19755
pyrithione zinc 0.5 % shampoo	f	4	f	2014-10-01	9005596	\N	\N	19756
acetaminophen 1000 mg per pck and dextromethorphan hydrobromide 30 mg per pck and pseudoephedrine hydrochloride 60 mg per pck powder for oral solution	f	1	f	2014-10-06	9005597	\N	\N	19757
influenza virus type a (h1n1) 32000000 ffu per 0.2 mL and influenza virus type a (h3n2) 32000000 ffu per 0.2 mL and influenza virus type b (victoria) 32000000 ffu per 0.2 mL and influenza virus type b (yamagata) 32000000 ffu per 0.2 mL nasal spray	f	1	f	2014-10-10	9005598	\N	\N	19758
ledipasvir 90 mg and sofosbuvir 400 mg oral tablet	f	1	f	2014-10-16	9005599	\N	\N	19759
octinoxate 7.5 % and octisalate 3.6 % and zinc oxide 4.3 % cutaneous cream	f	2	f	2014-10-17	9005600	\N	\N	19760
octinoxate 7.5 % and zinc oxide 9 % cutaneous cream	f	1	f	2014-10-17	9005601	\N	\N	19761
dolutegravir (dolutegravir sodium) 50 mg and lamivudine 300 mg and NA 600 mg oral tablet	f	1	f	2014-10-22	9005602	\N	\N	19762
homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 3 % and titanium dioxide 1.9 % cutaneous cream	f	1	f	2014-10-27	9005603	\N	\N	19763
vortioxetine (vortioxetine hydrobromide) 10 mg oral tablet	f	1	f	2014-10-28	9005604	\N	\N	19764
vortioxetine (vortioxetine hydrobromide) 20 mg oral tablet	f	1	f	2014-10-28	9005605	\N	\N	19765
vortioxetine (vortioxetine hydrobromide) 5 mg oral tablet	f	1	f	2014-10-28	9005606	\N	\N	19766
loteprednol etabonate 0.5 % ophthalmic ointment	f	1	f	2014-10-29	9005607	\N	\N	19767
avobenzone 3 % and octisalate 5 % and octocrylene 5.15 % cutaneous stick	f	1	f	2014-11-01	9005608	\N	\N	19768
desmopressin (desmopressin acetate) 50 mcg orodispersible tablet	f	1	f	2014-11-17	9005609	\N	\N	19769
ibrutinib 140 mg oral capsule	f	1	f	2014-11-19	9005610	\N	\N	19770
octinoxate 4.5 % and zinc oxide 0.1 % lotion	f	1	f	2014-11-24	9005611	\N	\N	19771
posaconazole 18 mg per mL solution for injection	f	1	f	2014-11-24	9005612	\N	\N	19772
apremilast 10 mg and apremilast 20 mg and apremilast 30 mg kit	f	1	f	2014-11-27	9005613	\N	\N	19773
apremilast 10 mg and apremilast 20 mg and apremilast 30 mg oral tablet	f	1	f	2014-11-27	9005614	\N	\N	19774
everolimus 2 mg dispersible oral tablet	f	1	f	2014-11-28	9005615	\N	\N	19775
everolimus 3 mg dispersible oral tablet	f	1	f	2014-11-28	9005616	\N	\N	19776
everolimus 5 mg dispersible oral tablet	f	1	f	2014-11-28	9005617	\N	\N	19777
obinutuzumab 25 mg per mL solution for injection	f	1	f	2014-11-28	9005618	\N	\N	19778
apremilast 30 mg oral tablet	f	1	f	2014-12-01	9005619	\N	\N	19779
avobenzone 1.8 % and homosalate 7 % and octocrylene 5 % lotion	f	1	f	2014-12-01	9005620	\N	\N	19780
avobenzone 2 % and homosalate 7 % and octocrylene 5 % cutaneous spray	f	3	f	2014-12-01	9005621	\N	\N	19781
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % cutaneous spray	f	2	f	2014-12-01	9005622	\N	\N	19782
octinoxate 5 % and titanium dioxide 3.9 % lotion	f	1	f	2014-12-01	9005623	\N	\N	19783
acetaminophen 650 mg and diphenhydramine hydrochloride 25 mg and phenylephrine hydrochloride 10 mg oral powder	f	2	f	2014-12-04	9005624	\N	\N	19784
linaclotide 290 mcg oral capsule	f	1	f	2014-12-17	9005625	\N	\N	19785
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 2.5 % lotion	f	1	f	2014-12-22	9005626	\N	\N	19786
helium 70 % and oxygen 30 % medicinal gas	f	1	f	2014-12-22	9005627	\N	\N	19787
avobenzone 1.25 % and octisalate 5 % and octocrylene 1.1 % cutaneous cream	f	2	f	2014-12-24	9005628	\N	\N	19788
ensulizole 2 % and octinoxate 7.4 % and titanium dioxide 7.2 % cutaneous cream	f	1	f	2014-12-29	9005629	\N	\N	19789
octinoxate 2.9 % and octocrylene 3 % and zinc oxide 10.6 % cutaneous cream	f	1	f	2014-12-29	9005630	\N	\N	19790
octinoxate 4.9 % and octocrylene 3 % and zinc oxide 12.5 % lotion	f	1	f	2014-12-29	9005631	\N	\N	19791
avobenzone 3 % and homosalate 9 % and octisalate 4.5 % and octocrylene 6 % lotion	f	2	f	2015-01-01	9005632	\N	\N	19792
dasabuvir (dasabuvir sodium monohydrate) 250 mg and ombitasvir 12.5 mg and paritaprevir 75 mg and ritonavir 50 mg kit	f	1	f	2015-01-06	9005633	\N	\N	19793
dasabuvir (dasabuvir sodium monohydrate) 250 mg and ombitasvir 12.5 mg and paritaprevir 75 mg and ritonavir 50 mg oral tablet	f	1	f	2015-01-06	9005634	\N	\N	19794
avobenzone 2 % and homosalate 3 % and octinoxate 4 % lotion	f	1	f	2015-01-12	9005635	\N	\N	19795
avobenzone 2 % and homosalate 4 % and octisalate 4 % and octocrylene 2 % cutaneous cream	f	4	f	2015-01-12	9005636	\N	\N	19796
avobenzone 2.85 % and octinoxate 6.75 % and octisalate 4.5 % and octocrylene 2 % and oxybenzone 5.4 % cutaneous stick	f	1	f	2015-01-15	9005637	\N	\N	19797
dapagliflozin (dapagliflozin propanediol monohydrate) 10 mg oral tablet	f	1	f	2015-01-16	9005638	\N	\N	19798
dapagliflozin (dapagliflozin propanediol monohydrate) 5 mg oral tablet	f	1	f	2015-01-16	9005639	\N	\N	19799
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 4 % and oxybenzone 6 % cutaneous spray	f	2	f	2015-01-19	9005640	\N	\N	19800
avobenzone 3 % and homosalate 8 % and octisalate 4 % and octocrylene 2 % and oxybenzone 5 % cutaneous spray	f	1	f	2015-01-19	9005641	\N	\N	19801
avobenzone 3 % and homosalate 8 % and octisalate 5 % and octocrylene 4 % and oxybenzone 5 % cutaneous spray	f	1	f	2015-01-19	9005642	\N	\N	19802
atropine sulfate 0.5 mg per 5 mL solution for injection	f	1	f	2015-01-20	9005643	\N	\N	19803
atropine sulfate 1 mg per 5 mL solution for injection	f	1	f	2015-01-20	9005644	\N	\N	19804
sodium phenylbutyrate 483 mg per g granules for oral suspension	f	1	f	2015-01-27	9005645	\N	\N	19805
avobenzone 0.5 % and octisalate 1 % and octocrylene 0.5 % lotion	f	1	f	2015-02-01	9005646	\N	\N	19806
avobenzone 1.5 % and homosalate 15 % and octisalate 5 % and octocrylene 1.2 % and oxybenzone 6 % lotion	f	1	f	2015-02-01	9005647	\N	\N	19807
avobenzone 1.5 % and octisalate 4.5 % and octocrylene 2 % lotion	f	1	f	2015-02-01	9005648	\N	\N	19808
avobenzone 2.7 % and homosalate 9 % and octisalate 4.5 % and octocrylene 6 % cutaneous spray	f	1	f	2015-02-01	9005649	\N	\N	19809
avobenzone 2 % and homosalate 5.5 % and octisalate 4.5 % and octocrylene 4 % cutaneous spray	f	2	f	2015-02-01	9005650	\N	\N	19810
avobenzone 2 % and homosalate 7 % and octocrylene 1.5 % and oxybenzone 3 % cutaneous spray	f	2	f	2015-02-01	9005651	\N	\N	19811
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 3 % and oxybenzone 4 % cutaneous spray	f	2	f	2015-02-01	9005652	\N	\N	19812
avobenzone 3 % and homosalate 9 % and octocrylene 2.7 % cutaneous cream	f	1	f	2015-02-01	9005653	\N	\N	19813
octinoxate 7.5 % and octisalate 2 % and titanium dioxide 1.6 % cutaneous cream	f	1	f	2015-02-01	9005654	\N	\N	19814
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.6 % lotion	f	2	f	2015-02-02	9005655	\N	\N	19815
avobenzone 3 % and homosalate 2.5 % and octisalate 5 % and octocrylene 2.7 % cutaneous cream	f	2	f	2015-02-02	9005656	\N	\N	19816
avobenzone 3 % and homosalate 2.5 % and octisalate 5 % and octocrylene 2.7 % kit	f	2	f	2015-02-02	9005657	\N	\N	19817
benzoyl peroxide 2.5 % cutaneous cream	f	1	f	2015-02-02	9005658	\N	\N	19818
benzoyl peroxide 2.5 % kit	f	1	f	2015-02-02	9005659	\N	\N	19819
homosalate 10 % and octisalate 5 % and octocrylene 5 % and titanium dioxide 1.6 % cutaneous cream	f	1	f	2015-02-02	9005660	\N	\N	19820
octinoxate 7.5 % and octisalate 5 % and zinc oxide 14.55 % lotion	f	2	f	2015-02-03	9005661	\N	\N	19821
octinoxate 7.5 % and octisalate 2 % and titanium dioxide 5.2 % and zinc oxide 6 % cutaneous cream	f	1	f	2015-02-06	9005662	\N	\N	19822
brimonidine tartrate 0.2 % and NA 1 % ophthalmic drops	f	1	f	2015-02-17	9005663	\N	\N	19823
ribavirin 200 mg oral tablet	f	2	f	2015-02-17	9005664	\N	\N	19824
docetaxel 20 mg per mL solution for injection	f	1	f	2015-02-27	9005665	\N	\N	19825
avobenzone 1.2 % and homosalate 10 % and octisalate 5 % and octocrylene 0.8 % and oxybenzone 4 % lotion	f	1	f	2015-03-01	9005666	\N	\N	19826
avobenzone 3 % and homosalate 10 % and octocrylene 6 % lotion	f	3	f	2015-03-01	9005667	\N	\N	19827
avobenzone 3 % and octocrylene 5 % cutaneous spray	f	1	f	2015-03-01	9005668	\N	\N	19828
octinoxate 7 % and titanium dioxide 4.15 % and zinc oxide 9.8 % lotion	f	1	f	2015-03-01	9005669	\N	\N	19829
memantine hydrochloride 5 mg oral tablet	f	1	f	2015-03-02	9005670	\N	\N	19830
siltuximab 100 mg per vial powder for solution for injection	f	1	f	2015-03-03	9005671	\N	\N	19831
siltuximab 400 mg per vial powder for solution for injection	f	1	f	2015-03-03	9005672	\N	\N	19832
cetylpyridinium chloride 0.07 % mouthwash	f	1	f	2015-03-05	9005673	\N	\N	19833
avobenzone 2 % and homosalate 15 % and octinoxate 7.5 % and octisalate 5 % cutaneous stick	f	2	f	2015-03-16	9005674	\N	\N	19834
avobenzone 2 % and homosalate 5 % and octisalate 2 % and octocrylene 1.85 % and oxybenzone 3 % lotion	f	1	f	2015-03-16	9005675	\N	\N	19835
avobenzone 2 % and homosalate 6 % and octisalate 2 % and octocrylene 1.85 % and oxybenzone 2 % spray (bag-on-valve)	f	1	f	2015-03-16	9005676	\N	\N	19836
avobenzone 3 % and homosalate 10 % and octisalate 3 % and octocrylene 2.75 % and oxybenzone 3 % spray (bag-on-valve)	f	1	f	2015-03-16	9005677	\N	\N	19837
avobenzone 3 % and homosalate 5 % and octisalate 3 % and octocrylene 2.75 % and oxybenzone 4 % lotion	f	1	f	2015-03-16	9005678	\N	\N	19838
octinoxate 7.4 % and octocrylene 3 % and titanium dioxide 1.4 % and zinc oxide 16.4 % cutaneous cream	f	1	f	2015-03-16	9005679	\N	\N	19839
octinoxate 7.4 % and octocrylene 3 % and titanium dioxide 1.4 % and zinc oxide 16.4 % lotion	f	1	f	2015-03-16	9005680	\N	\N	19840
dimethicone 1 % and zinc oxide 1 % cutaneous cream	f	1	f	2015-03-17	9005681	\N	\N	19841
recombinant human papillomavirus type 11 l1 protein 40 mcg per 0.5 mL and recombinant human papillomavirus type 16 l1 protein 60 mcg per 0.5 mL and recombinant human papillomavirus type 18 l1 protein 40 mcg per 0.5 mL and recombinant human papillomavirus type 31 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 33 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 45 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 52 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 58 l1 protein 20 mcg per 0.5 mL and recombinant human papillomavirus type 6 l1 protein 30 mcg per 0.5 mL suspension for injection	f	1	t	2015-03-18	9005682	\N	\N	19842
vancomycin hydrochloride 250 mg oral capsule	f	1	f	2015-03-18	9005683	\N	\N	19843
dalteparin sodium 3500 unit per 0.28 mL solution for injection	f	1	f	2015-03-25	9005684	\N	\N	19844
diphenhydramine hydrochloride 50 mg per 30 mL oral solution	f	2	f	2015-03-30	9005685	\N	\N	19845
azelastine hydrochloride 137 mcg per actuation and fluticasone propionate 50 mcg per actuation nasal spray	f	1	f	2015-03-31	9005686	\N	\N	19846
avobenzone 2.5 % and octinoxate 7.4 % and octocrylene 3 % lotion	f	1	f	2015-04-01	9005687	\N	\N	19847
avobenzone 3 % and homosalate 5 % and octocrylene 2.7 % cutaneous cream	f	2	f	2015-04-01	9005688	\N	\N	19848
octinoxate 5 % and titanium dioxide 1.52 % cutaneous emulsion	f	1	f	2015-04-01	9005689	\N	\N	19849
colesevelam hydrochloride 3.75 g per pck powder for oral suspension	f	1	f	2015-04-02	9005690	\N	\N	19850
octinoxate 7.5 % and octisalate 2.5 % and octocrylene 2.5 % and zinc oxide 7 % lotion	f	1	f	2015-04-02	9005691	\N	\N	19851
avobenzone 1.25 % and octisalate 5 % and octocrylene 1.1 % lotion	f	1	f	2015-04-06	9005692	\N	\N	19852
avobenzone 3 % and bemotrizinol 2 % and bisoctrizole 4 % and octocrylene 9 % and titanium dioxide 2.6 % lotion	f	1	f	2015-04-07	9005693	\N	\N	19853
avobenzone 3 % and bemotrizinol 2 % and bisoctrizole 4 % and octocrylene 9 % and titanium dioxide 3.4 % lotion	f	1	f	2015-04-07	9005694	\N	\N	19854
octinoxate 3.9 % and titanium dioxide 6.1 % and zinc oxide 3.8 % cutaneous emulsion	f	1	f	2015-04-08	9005695	\N	\N	19855
secukinumab 150 mg per mL solution for injection	f	1	f	2015-04-10	9005696	\N	\N	19856
avobenzone 3 % and homosalate 10 % and octocrylene 5 % cutaneous cream	f	1	f	2015-04-13	9005697	\N	\N	19857
octinoxate 7.5 % and titanium dioxide 1.6 % and zinc oxide 17.1 % cutaneous cream	f	1	f	2015-04-13	9005698	\N	\N	19858
avobenzone 1.5 % and octisalate 5 % and octocrylene 3 % and oxybenzone 4 % lotion	f	3	f	2015-04-15	9005699	\N	\N	19859
ruxolitinib (ruxolitinib phosphate) 10 mg oral tablet	f	1	f	2015-04-15	9005700	\N	\N	19860
idelalisib 100 mg oral tablet	f	1	f	2015-04-21	9005701	\N	\N	19861
idelalisib 150 mg oral tablet	f	1	f	2015-04-21	9005702	\N	\N	19862
vedolizumab 300 mg per vial powder for solution for injection	f	1	f	2015-04-21	9005703	\N	\N	19863
avobenzone 1.5 % and octisalate 5 % and octocrylene 3 % and oxybenzone 4 % cutaneous cream	f	1	f	2015-04-23	9005704	\N	\N	19864
avobenzone 2.8 % and homosalate 9.5 % and octinoxate 7.5 % and octocrylene 2.56 % and oxybenzone 4.75 % lotion	f	2	f	2015-04-23	9005705	\N	\N	19865
umeclidinium (umeclidinium bromide) 62.5 mcg inhalation powder	f	1	f	2015-04-27	9005706	\N	\N	19866
deferiprone 1000 mg oral tablet	f	1	f	2015-04-28	9005707	\N	\N	19867
ceritinib 150 mg oral capsule	f	1	f	2015-04-29	9005708	\N	\N	19868
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 3 % cutaneous cream	f	2	f	2015-05-01	9005709	\N	\N	19869
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % and oxybenzone 5 % cutaneous spray	f	1	f	2015-05-01	9005710	\N	\N	19870
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.7 % lotion	f	1	f	2015-05-01	9005711	\N	\N	19871
avobenzone 2.24 % and homosalate 8 % and octisalate 2.4 % and octocrylene 4.48 % and oxybenzone 2.88 % lotion	f	1	f	2015-05-04	9005712	\N	\N	19872
avobenzone 3 % and homosalate 10.72 % and octisalate 3.21 % and octocrylene 6 % and oxybenzone 3.86 % lotion	f	2	f	2015-05-04	9005713	\N	\N	19873
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 5 % and oxybenzone 6 % and terephthalylidene dicamphor sulfonic acid 2 % cutaneous spray	f	2	t	2015-05-04	9005714	\N	\N	19874
octinoxate 7.5 % and octisalate 2 % and titanium dioxide 5.3 % lotion	f	1	f	2015-05-04	9005715	\N	\N	19875
c1 esterase inhibitor (human) 1500 unit per vial NA	f	1	f	2015-05-06	9005716	\N	\N	19876
c1 esterase inhibitor (human) 1500 unit per vial powder for solution for injection	f	1	f	2015-05-06	9005717	\N	\N	19877
ensulizole 2 % and octinoxate 5.5 % and oxybenzone 0.5 % and titanium dioxide 0.84 % and zinc oxide 9.8 % cutaneous cream	f	1	f	2015-05-06	9005718	\N	\N	19878
avobenzone 2.9 % and homosalate 8 % and octinoxate 5 % and oxybenzone 4 % cutaneous cream	f	1	f	2015-05-07	9005719	\N	\N	19879
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 5 % cutaneous cream	f	1	f	2015-05-11	9005720	\N	\N	19880
glycerine 0.9 % and sodium carboxymethyl cellulose 0.5 % ophthalmic drops	f	1	f	2015-05-15	9005721	\N	\N	19881
ivermectin 1 % cutaneous cream	f	1	f	2015-05-25	9005722	\N	\N	19882
olodaterol (olodaterol hydrochloride) 2.5 mcg per actuation and tiotropium (tiotropium bromide) 2.5 mcg per actuation inhalation solution	f	1	f	2015-05-29	9005723	\N	\N	19883
octinoxate 5 % and titanium dioxide 3.1 % and zinc oxide 2.1 % cutaneous liquid	f	1	f	2015-06-01	9005724	\N	\N	19884
octinoxate 75 mg per mL and octisalate 50 mg per mL and titanium dioxide 30 mg per mL and zinc oxide 70 mg per mL cutaneous cream	f	2	f	2015-06-01	9005725	\N	\N	19885
pembrolizumab 50 mg per vial powder for solution for injection	f	1	f	2015-06-01	9005726	\N	\N	19886
tolvaptan 15 mg and tolvaptan 45 mg oral tablet	f	1	f	2015-06-01	9005727	\N	\N	19887
tolvaptan 30 mg and tolvaptan 60 mg oral tablet	f	1	f	2015-06-01	9005728	\N	\N	19888
tolvaptan 30 mg and tolvaptan 90 mg oral tablet	f	1	f	2015-06-01	9005729	\N	\N	19889
ceftazidime (ceftazidime pentahydrate) 3 g per vial powder for solution for injection	f	1	f	2015-06-08	9005730	\N	\N	19890
modified vaccinia virus (ankara-bavarian nordic) 50000000 ccid50 per 0.5 mL suspension for injection	f	1	f	2015-06-15	9005731	\N	\N	19891
tesamorelin (tesamorelin acetate) 1 mg per vial NA	f	1	f	2015-06-23	9005732	\N	\N	19892
tesamorelin (tesamorelin acetate) 1 mg per vial powder for solution for injection	f	1	f	2015-06-23	9005733	\N	\N	19893
octinoxate 4.49 % and oxybenzone 2 % and zinc oxide 20.9 % cutaneous emulsion	f	1	f	2015-06-24	9005734	\N	\N	19894
loteprednol etabonate 0.5 % ophthalmic gel	f	1	f	2015-06-25	9005735	\N	\N	19895
nintedanib (nintedanib esilate) 100 mg oral capsule	f	1	f	2015-06-29	9005736	\N	\N	19896
nintedanib (nintedanib esilate) 150 mg oral capsule	f	1	f	2015-06-29	9005737	\N	\N	19897
octinoxate 7.5 % and zinc oxide 9 % kit	f	1	f	2015-07-03	9005738	\N	\N	19898
acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and doxylamine succinate 6.25 mg and phenylephrine hydrochloride 5 mg oral tablet	f	1	f	2015-07-08	9005739	\N	\N	19899
aclidinium bromide 400 mcg per actuation and formoterol fumarate 12 mcg per actuation inhalation powder	f	1	f	2015-07-09	9005740	\N	\N	19900
octinoxate 6.6 % and oxybenzone 3 % cutaneous stick	f	2	f	2015-07-13	9005741	\N	\N	19901
avobenzone 2 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 10 % cutaneous cream	f	1	f	2015-07-18	9005742	\N	\N	19902
levonorgestrel 1.5 mg oral tablet	f	3	f	2015-07-23	9005743	\N	\N	19903
octinoxate 7.5 % cutaneous stick	f	2	f	2015-07-30	9005744	\N	\N	19904
vitamin d3 2000 unit oral capsule	f	1	f	2015-07-31	9005745	\N	\N	19905
vitamin d3 25000 unit oral capsule	f	1	f	2015-07-31	9005746	\N	\N	19906
acetaminophen 650 mg per pck and diphenhydramine hydrochloride 25 mg per pck and phenylephrine hydrochloride 10 mg per pck oral powder	f	1	f	2015-08-04	9005747	\N	\N	19907
pasireotide (pasireotide pamoate) 40 mg per vial kit	f	1	f	2015-08-04	9005748	\N	\N	19908
pasireotide (pasireotide pamoate) 40 mg per vial powder for suspension for injection	f	1	f	2015-08-04	9005749	\N	\N	19909
pasireotide (pasireotide pamoate) 60 mg per vial kit	f	1	f	2015-08-04	9005750	\N	\N	19910
pasireotide (pasireotide pamoate) 60 mg per vial powder for suspension for injection	f	1	f	2015-08-04	9005751	\N	\N	19911
coagulation factor ii (human) 1520 unit per vial and coagulation factor ix (human) 1000 unit per vial and coagulation factor vii (human) 960 unit per vial and coagulation factor x (human) 1200 unit per vial and protein c 1240 unit per vial and protein s 1280 unit per vial NA	f	1	t	2015-08-11	9005752	\N	\N	19912
coagulation factor ii (human) 1520 unit per vial and coagulation factor ix (human) 1000 unit per vial and coagulation factor vii (human) 960 unit per vial and coagulation factor x (human) 1200 unit per vial and protein c 1240 unit per vial and protein s 1280 unit per vial powder for solution for injection	f	1	t	2015-08-11	9005753	\N	\N	19913
empagliflozin 10 mg oral tablet	f	1	f	2015-08-11	9005754	\N	\N	19914
empagliflozin 25 mg oral tablet	f	1	f	2015-08-11	9005755	\N	\N	19915
varicella zoster immune globulin human 125 unit per vial solution for injection	f	1	f	2015-08-14	9005756	\N	\N	19916
chloroxylenol 3 % cutaneous liquid	f	1	f	2015-08-18	9005757	\N	\N	19917
octinoxate 3 % and titanium dioxide 4.35 % cutaneous liquid	f	1	f	2015-08-20	9005758	\N	\N	19918
chloroxylenol 1.75 % cutaneous solution	f	1	f	2015-08-21	9005759	\N	\N	19919
ponatinib (ponatinib hydrochloride) 15 mg oral tablet	f	1	f	2015-08-21	9005760	\N	\N	19920
octinoxate 7.5 % and zinc oxide 10.5 % kit	f	4	f	2015-08-24	9005761	\N	\N	19921
benzoyl peroxide 5 % kit	f	1	f	2015-08-25	9005762	\N	\N	19922
naloxegol (naloxegol oxalate) 12.5 mg oral tablet	f	1	f	2015-08-27	9005763	\N	\N	19923
naloxegol (naloxegol oxalate) 25 mg oral tablet	f	1	f	2015-08-27	9005764	\N	\N	19924
carglumic acid 200 mg orodispersible tablet	f	1	f	2015-09-08	9005766	\N	\N	19926
daclatasvir (daclatasvir dihydrochloride) 30 mg oral tablet	f	1	f	2015-09-08	9005767	\N	\N	19927
daclatasvir (daclatasvir dihydrochloride) 60 mg oral tablet	f	1	f	2015-09-08	9005768	\N	\N	19928
ensulizole 2 % and octinoxate 5 % and zinc oxide 5.49 % cutaneous cream	f	1	f	2015-09-08	9005769	\N	\N	19929
chlorhexidine gluconate 2 % swab	f	1	f	2015-09-10	9005770	\N	\N	19930
ramucirumab 10 mg per mL solution for injection	f	1	f	2015-09-10	9005771	\N	\N	19931
piperacillin (piperacillin sodium) 36 g per vial and tazobactam (tazobactam sodium) 4.5 g per vial powder for solution for injection	f	1	f	2015-09-11	9005772	\N	\N	19932
haemagglutinin-strain a(h1n1) 30 mcg per mL and haemagglutinin-strain a(h3n2) 30 mcg per mL and haemagglutinin-strain b (victoria) 30 mcg per mL and haemagglutinin-strain b (yamagata) 30 mcg per mL suspension for injection	f	1	f	2015-09-14	9005773	\N	\N	19933
ivacaftor 50 mg granules for oral suspension	f	1	f	2015-09-14	9005774	\N	\N	19934
ivacaftor 75 mg granules for oral suspension	f	1	f	2015-09-14	9005775	\N	\N	19935
NA 500 unit per vial powder for solution for injection	f	2	f	2015-12-11	9005825	\N	\N	19936
hexaminolevulinate hydrochloride 100 mg per vial NA	f	1	f	2015-12-14	9005826	\N	\N	19937
hexaminolevulinate hydrochloride 100 mg per vial powder for solution for injection	f	1	f	2015-12-14	9005827	\N	\N	19938
octinoxate 3 % and titanium dioxide 1.75 % cutaneous emulsion	f	1	f	2015-12-16	9005828	\N	\N	19939
alanine 0.71 g per 100 mL and arginine 0.61 g per 100 mL and calcium chloride 0.028 g per 100 mL and dextrose 12.7 g per 100 mL and fish oil 0.57 g per 100 mL and glycine 0.56 g per 100 mL and histidine 0.15 g per 100 mL and isoleucine 0.25 g per 100 mL and leucine 0.38 g per 100 mL and lysine (lysine acetate) 0.34 g per 100 mL and magnesium sulfate 0.061 g per 100 mL and medium chain triglycerides (mct) 1.14 g per 100 mL and methionine 0.22 g per 100 mL and nitrogen 0.8 g per 100 mL and olive oil 0.95 g per 100 mL and phenylalanine 0.26 g per 100 mL and potassium chloride 0.23 g per 100 mL and proline 0.57 g per 100 mL and serine 0.33 g per 100 mL and sodium acetate trihydrate 0.17 g per 100 mL and sodium glycerophosphate 0.21 g per 100 mL and soybean oil 1.14 g per 100 mL and taurine 0.05 g per 100 mL and threonine 0.22 g per 100 mL and tryptophan 0.1 g per 100 mL and tyrosine 0.02 g per 100 mL and valine 0.31 g per 100 mL and zinc sulfate heptahydrate 0.00066 g per 100 mL emulsion for injection	f	1	t	2015-09-15	9005776	\N	\N	19940
alanine 0.71 g per 100 mL and arginine 0.61 g per 100 mL and dextrose 12.7 g per 100 mL and fish oil 0.57 g per 100 mL and glycine 0.56 g per 100 mL and histidine 0.15 g per 100 mL and isoleucine 0.25 g per 100 mL and leucine 0.38 g per 100 mL and lysine (lysine acetate) 0.34 g per 100 mL and medium chain triglycerides (mct) 1.14 g per 100 mL and methionine 0.22 g per 100 mL and nitrogen 0.8 g per 100 mL and olive oil 0.95 g per 100 mL and phenylalanine 0.26 g per 100 mL and proline 0.57 g per 100 mL and serine 0.33 g per 100 mL and soybean oil 1.14 g per 100 mL and taurine 0.05 g per 100 mL and threonine 0.22 g per 100 mL and tryptophan 0.1 g per 100 mL and tyrosine 0.02 g per 100 mL and valine 0.31 g per 100 mL emulsion for injection	f	1	t	2015-09-15	9005777	\N	\N	19941
octinoxate 5 % and titanium dioxide 3.1 % and zinc oxide 2.1 % cutaneous cream	f	1	f	2015-09-15	9005778	\N	\N	19942
hypromellose 0.3 % ophthalmic drops	f	1	f	2015-09-16	9005779	\N	\N	19943
collagen 2.1 mg per sq cm and fibrinogen (human) 5.5 mg per sq cm and thrombin (human) 2 unit per sq cm cutaneous patch	f	1	f	2015-09-18	9005780	\N	\N	19944
bromfenac (bromfenac sodium sesquihydrate) 0.07 % ophthalmic drops	f	1	f	2015-09-25	9005781	\N	\N	19945
peginterferon beta-1a 63 mcg per 0.5 mL and peginterferon beta-1a 94 mcg per 0.5 mL NA	f	1	f	2015-09-25	9005782	\N	\N	19946
peginterferon beta-1a 63 mcg per 0.5 mL and peginterferon beta-1a 94 mcg per 0.5 mL solution for injection	f	1	f	2015-09-25	9005783	\N	\N	19947
evolocumab 140 mg per mL solution for injection	f	1	f	2015-09-28	9005784	\N	\N	19948
lenalidomide 20 mg oral capsule	f	1	f	2015-09-28	9005785	\N	\N	19949
lidocaine 7 % and tetracaine 7 % cutaneous cream	f	1	f	2015-09-28	9005786	\N	\N	19950
peginterferon beta-1a 125 mcg per 0.5 mL solution for injection	f	1	f	2015-09-29	9005787	\N	\N	19951
tolnaftate 1 % cutaneous foam	f	1	f	2015-09-30	9005788	\N	\N	19952
fluticasone furoate 200 mcg and vilanterol (vilanterol trifenatate) 25 mcg inhalation powder	f	1	f	2015-10-02	9005789	\N	\N	19953
corynebacterium diphtheriae crm-197 protein 25 mcg per 0.5 mL and meningococcal group c oligosaccharide 10 mcg per 0.5 mL suspension for injection	f	1	f	2015-10-07	9005790	\N	\N	19954
octinoxate 7.5 % and oxybenzone 2.5 % and zinc oxide 4 % lotion	f	1	f	2015-10-08	9005791	\N	\N	19955
haemagglutinin-strain a(h1n1) 15 mcg per 0.5 mL and haemagglutinin-strain a(h3n2) 15 mcg per 0.5 mL and haemagglutinin-strain b (victoria) 15 mcg per 0.5 mL and haemagglutinin-strain b (yamagata) 15 mcg per 0.5 mL suspension for injection	f	1	f	2015-10-14	9005792	\N	\N	19956
octinoxate 7.49 % and titanium dioxide 3.84 % cutaneous cream	f	1	f	2015-10-14	9005793	\N	\N	19957
asfotase alfa 40 mg per mL solution for injection	f	3	f	2015-10-20	9005794	\N	\N	19958
vitamin d3 5000 unit oral capsule	f	1	f	2015-10-20	9005795	\N	\N	19959
nivolumab 10 mg per mL solution for injection	f	2	f	2015-10-23	9005796	\N	\N	19960
epinephrine 0.005 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	2015-10-28	9005797	\N	\N	19961
NA 5 mg per vial NA	f	1	f	2015-10-28	9005798	\N	\N	19962
NA 5 mg per vial powder for solution for injection	f	1	f	2015-10-28	9005799	\N	\N	19963
benzalkonium chloride 0.13 % lotion	f	1	f	2015-11-02	9005800	\N	\N	19964
ensulizole 2 % and octinoxate 7.5 % and oxybenzone 3 % cutaneous cream	f	2	f	2015-11-03	9005801	\N	\N	19965
haemagglutinin-strain a(h1n1) 7.5 mcg per 0.25 mL and haemagglutinin-strain a(h3n2) 7.5 mcg per 0.25 mL and haemagglutinin-strain b 7.5 mcg per 0.25 mL suspension for injection	f	1	f	2015-11-05	9005802	\N	\N	19966
octinoxate 7.5 % and titanium dioxide 1.5 % cutaneous cream	f	1	f	2015-11-05	9005803	\N	\N	19967
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.5 g per l and magnesium chloride 1.61 g per l and potassium chloride 5.03 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2015-11-06	9005804	\N	\N	19968
octinoxate 4.9 % cutaneous stick	f	1	f	2015-11-09	9005805	\N	\N	19969
cetylpyridinium chloride 0.075 % gargle/mouthwash	f	1	f	2016-02-01	9005869	\N	\N	20028
amlodipine (amlodipine besylate) 2.5 mg and perindopril arginine 3.5 mg oral tablet	f	1	f	2016-04-05	9005925	\N	\N	20084
standardized kentucky blue/june grass pollen 100000 unit per mL and standardized orchard grass pollen 100000 unit per mL and standardized redtop grass pollen 100000 unit per mL and standardized timothy grass pollen 100000 unit per mL solution for injection	f	1	f	2015-11-10	9005806	\N	\N	19970
NA 103 mg and NA 97 mg oral tablet	f	1	f	2015-11-13	9005807	\N	\N	19971
NA 26 mg and NA 24 mg oral tablet	f	1	f	2015-11-13	9005808	\N	\N	19972
NA 51 mg and NA 49 mg oral tablet	f	1	f	2015-11-13	9005809	\N	\N	19973
amylase 5100 unit per 100 mg and lipase 5000 unit per 100 mg and protease 320 unit per 100 mg granules for oral suspension	f	1	f	2015-11-18	9005810	\N	\N	19974
levomilnacipran (levomilnacipran hydrochloride) 20 mg prolonged-release oral capsule	f	1	f	2015-11-19	9005811	\N	\N	19975
levomilnacipran (levomilnacipran hydrochloride) 40 mg prolonged-release oral capsule	f	1	f	2015-11-19	9005812	\N	\N	19976
dulaglutide 1.5 mg per 0.5 mL solution for injection	f	1	f	2015-11-24	9005813	\N	\N	19977
ombitasvir 12.5 mg and paritaprevir 75 mg and ritonavir 50 mg oral tablet	f	1	f	2015-11-24	9005814	\N	\N	19978
octinoxate 7.49 % and titanium dioxide 3.2 % and zinc oxide 15.2 % cutaneous cream	f	1	f	2015-11-30	9005815	\N	\N	19979
entecavir (entecavir monohydrate) 0.5 mg oral tablet	f	1	f	2015-12-01	9005816	\N	\N	19980
acetic acid 10.81 g per l and calcium chloride 7.49 g per l and dextrose 49.49 g per l and magnesium chloride 2.14 g per l and potassium chloride 10.06 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2015-12-02	9005817	\N	\N	19981
avobenzone 3 % and homosalate 10 % and octisalate 4.55 % and octocrylene 8 % lotion	f	2	f	2015-12-03	9005818	\N	\N	19982
octinoxate 7.5 % and oxybenzone 0.5 % cutaneous cream	f	1	f	2015-12-03	9005819	\N	\N	19983
acetic acid 10.81 g per l and calcium chloride 6.24 g per l and dextrose 49.49 g per l and magnesium chloride 2.14 g per l and potassium chloride 13.42 g per l and sodium chloride 263 g per l solution for haemodialysis	f	1	t	2015-12-10	9005820	\N	\N	19984
benzoyl peroxide 2.5 % and benzoyl peroxide 2.5 % lotion	f	1	f	2015-12-10	9005821	\N	\N	19985
NA 2000 unit per vial NA	f	2	f	2015-12-11	9005822	\N	\N	19986
NA 2000 unit per vial powder for solution for injection	f	2	f	2015-12-11	9005823	\N	\N	19987
octinoxate 4 % and titanium dioxide 4.38 % cutaneous emulsion	f	1	f	2015-12-21	9005829	\N	\N	19988
simoctocog alfa 1000 unit per vial and water 2.5 mL NA	f	1	f	2015-12-22	9005830	\N	\N	19989
simoctocog alfa 1000 unit per vial and water 2.5 mL powder for solution for injection	f	1	f	2015-12-22	9005831	\N	\N	19990
simoctocog alfa 2000 unit per vial and water 2.5 mL NA	f	1	f	2015-12-22	9005832	\N	\N	19991
simoctocog alfa 2000 unit per vial and water 2.5 mL powder for solution for injection	f	1	f	2015-12-22	9005833	\N	\N	19992
simoctocog alfa 250 unit per vial and water 2.5 mL NA	f	1	f	2015-12-22	9005834	\N	\N	19993
simoctocog alfa 250 unit per vial and water 2.5 mL powder for solution for injection	f	1	f	2015-12-22	9005835	\N	\N	19994
simoctocog alfa 500 unit per vial and water 2.5 mL NA	f	1	f	2015-12-22	9005836	\N	\N	19995
simoctocog alfa 500 unit per vial and water 2.5 mL powder for solution for injection	f	1	f	2015-12-22	9005837	\N	\N	19996
prilocaine hydrochloride 40 mg per mL solution for injection	f	1	f	2015-12-23	9005838	\N	\N	19997
avobenzone 2.85 % and ensulizole 2.5 % and homosalate 9 % and octisalate 4.5 % and octocrylene 7 % cutaneous cream	f	1	f	2016-01-02	9005839	\N	\N	19998
acetic acid 36 g per l and calcium chloride 44.1 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 44.7 g per l solution for haemodialysis	f	1	f	2016-01-04	9005840	\N	\N	19999
adapalene 0.3 % and benzoyl peroxide 2.5 % cutaneous gel	f	1	f	2016-01-04	9005841	\N	\N	20000
avobenzone 1.5 % and homosalate 3 % and octisalate 4.5 % and octocrylene 3 % lotion	f	2	f	2016-01-04	9005842	\N	\N	20001
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 6 % cutaneous spray	f	2	f	2016-01-04	9005843	\N	\N	20002
avobenzone 3 % and homosalate 4 % and octisalate 4.5 % and octocrylene 2.6 % cutaneous cream	f	3	f	2016-01-04	9005844	\N	\N	20003
telavancin (telavancin hydrochloride) 750 mg per vial powder for solution for injection	f	1	f	2016-01-06	9005845	\N	\N	20004
ponatinib (ponatinib hydrochloride) 45 mg oral tablet	f	1	f	2016-01-07	9005846	\N	\N	20005
dimethicone 10 % and white petrolatum 68.4 % cutaneous ointment	f	1	f	2016-01-08	9005847	\N	\N	20006
dulaglutide 0.75 mg per 0.5 mL solution for injection	f	1	f	2016-01-08	9005848	\N	\N	20007
avobenzone 3 % and homosalate 15 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.4 % cutaneous spray	f	1	f	2016-01-11	9005849	\N	\N	20008
ceftolozane (ceftolozane sulfate) 1 g per vial and tazobactam (tazobactam sodium) 0.5 g per vial powder for solution for injection	f	1	f	2016-01-12	9005850	\N	\N	20009
NA 1000 unit per vial NA	f	2	f	2016-01-15	9005851	\N	\N	20010
NA 1000 unit per vial powder for solution for injection	f	2	f	2016-01-15	9005852	\N	\N	20011
NA 1500 unit per vial NA	f	1	f	2016-01-15	9005853	\N	\N	20012
NA 1500 unit per vial powder for solution for injection	f	1	f	2016-01-15	9005854	\N	\N	20013
NA 250 unit per vial NA	f	1	f	2016-01-15	9005855	\N	\N	20014
NA 250 unit per vial powder for solution for injection	f	1	f	2016-01-15	9005856	\N	\N	20015
NA 3000 unit per vial NA	f	2	f	2016-01-15	9005857	\N	\N	20016
NA 3000 unit per vial powder for solution for injection	f	2	f	2016-01-15	9005858	\N	\N	20017
NA 750 unit per vial NA	f	1	f	2016-01-15	9005859	\N	\N	20018
NA 750 unit per vial powder for solution for injection	f	1	f	2016-01-15	9005860	\N	\N	20019
avobenzone 2 % and octisalate 4 % and octocrylene 3 % and oxybenzone 2.2 % lotion	f	1	f	2016-01-18	9005861	\N	\N	20020
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % and oxybenzone 3 % cutaneous stick	f	1	f	2016-01-18	9005862	\N	\N	20021
elbasvir 50 mg and grazoprevir 100 mg oral tablet	f	1	f	2016-01-25	9005863	\N	\N	20022
deoxycholic acid 10 mg per mL solution for injection	f	1	f	2016-01-27	9005864	\N	\N	20023
ivacaftor 125 mg and lumacaftor 200 mg oral tablet	f	1	f	2016-01-27	9005865	\N	\N	20024
filgrastim (r-methug-csf) 600 mcg per mL solution for injection	f	2	f	2016-01-28	9005866	\N	\N	20025
pasireotide (pasireotide pamoate) 20 mg per vial kit	f	1	f	2016-01-28	9005867	\N	\N	20026
pasireotide (pasireotide pamoate) 20 mg per vial powder for suspension for injection	f	1	f	2016-01-28	9005868	\N	\N	20027
cobicistat 150 mg and elvitegravir 150 mg and emtricitabine 200 mg and tenofovir alafenamide (tenofovir alafenamide hemifumarate) 10 mg oral tablet	f	1	f	2016-02-03	9005870	\N	\N	20029
tobramycin (tobramycin sulfate) 60 mg per mL inhalation solution	f	1	f	2016-02-03	9005871	\N	\N	20030
avobenzone 1.36 % and octocrylene 6.12 % and oxybenzone 2.04 % cutaneous spray	f	1	f	2016-02-04	9005872	\N	\N	20031
dapagliflozin (dapagliflozin propanediol monohydrate) 5 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2016-02-08	9005873	\N	\N	20032
dapagliflozin (dapagliflozin propanediol monohydrate) 5 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2016-02-08	9005874	\N	\N	20033
octinoxate 7.5 % and octisalate 5 % and octocrylene 8 % and zinc oxide 9.9 % lotion	f	2	f	2016-02-09	9005875	\N	\N	20034
atazanavir (atazanavir sulfate) 300 mg and cobicistat 150 mg oral tablet	f	1	f	2016-02-11	9005876	\N	\N	20035
carfilzomib 60 mg per vial powder for solution for injection	f	1	f	2016-02-11	9005877	\N	\N	20036
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 7 % lotion	f	4	f	2016-02-15	9005878	\N	\N	20037
avobenzone 3 % and octisalate 5 % and octocrylene 5 % lotion	f	4	f	2016-02-15	9005879	\N	\N	20038
homosalate 4 g per 100 g and octocrylene 4 g per 100 g and oxybenzone 1.5 g per 100 g and titanium dioxide 10.9 g per 100 g cutaneous emulsion	f	1	f	2016-02-15	9005880	\N	\N	20039
exenatide 2 mg NA	f	1	f	2016-02-16	9005881	\N	\N	20040
asfotase alfa 100 mg per mL solution for injection	f	1	f	2016-02-17	9005882	\N	\N	20041
acetic acid 36 g per l and calcium chloride 44.1 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 29.8 g per l solution for haemodialysis	f	1	f	2016-02-18	9005883	\N	\N	20042
acetic acid 36 g per l and calcium chloride 44.1 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 14.9 g per l solution for haemodialysis	f	1	f	2016-02-19	9005884	\N	\N	20043
fluorouracil 0.5 % and salicylic acid 10 % cutaneous solution	f	1	f	2016-02-19	9005885	\N	\N	20044
sugammadex (sugammadex sodium) 100 mg per mL solution for injection	f	1	f	2016-02-19	9005886	\N	\N	20045
acetic acid 36 g per l and calcium chloride 36.8 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 29.8 g per l solution for haemodialysis	f	1	f	2016-02-22	9005887	\N	\N	20046
acetic acid 36 g per l and calcium chloride 36.8 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 44.7 g per l solution for haemodialysis	f	1	f	2016-02-22	9005888	\N	\N	20047
avobenzone 2.24 % and drometrizole trisiloxane 0.5 % and homosalate 8 % and octisalate 2.4 % and octocrylene 4.48 % and oxybenzone 2.88 % lotion	f	1	t	2016-02-22	9005889	\N	\N	20048
avobenzone 3 % and drometrizole trisiloxane 0.5 % and homosalate 10.72 % and octisalate 3.21 % and octocrylene 6 % and oxybenzone 3.86 % lotion	f	2	t	2016-02-22	9005890	\N	\N	20049
octinoxate 2.9 % and titanium dioxide 7.2 % cutaneous stick	f	1	f	2016-02-22	9005891	\N	\N	20050
octocrylene 1 g per 100 g and oxybenzone 0.5 g per 100 g lotion	f	1	f	2016-02-22	9005892	\N	\N	20051
sodium bicarbonate 720 g per cartridge and sodium chloride 1200 g per cartridge NA	f	1	f	2016-02-22	9005893	\N	\N	20052
sodium bicarbonate 720 g per cartridge and sodium chloride 1200 g per cartridge powder for concentrate for solution for haemodialysis	f	1	f	2016-02-22	9005894	\N	\N	20053
diphenhydramine hydrochloride 25 mg and naproxen sodium 220 mg oral tablet	f	1	f	2016-02-24	9005895	\N	\N	20054
avobenzone 3 % and bemotrizinol 2.5 % and bisoctrizole 2 % and octisalate 5 % and octocrylene 9 % lotion	f	1	f	2016-03-01	9005896	\N	\N	20055
avobenzone 3 % and bemotrizinol 2 % and bisoctrizole 4 % and octocrylene 9 % and titanium dioxide 3.4 % cutaneous emulsion	f	2	f	2016-03-01	9005897	\N	\N	20056
lanolin 3 % and mineral oil 3 % and white petrolatum 94 % ophthalmic ointment	f	1	f	2016-03-01	9005898	\N	\N	20057
avobenzone 2.96 % and homosalate 8.78 % and octisalate 4.88 % and octocrylene 5.92 % and terephthalylidene dicamphor sulfonic acid 0.5 % lotion	f	1	f	2016-03-07	9005899	\N	\N	20058
octinoxate 7.5 % cutaneous liquid	f	1	f	2016-03-08	9005900	\N	\N	20059
avobenzone 3 g per 100 g and homosalate 15 g per 100 g and octisalate 5 g per 100 g and oxybenzone 6 g per 100 g spray (bag-on-valve)	f	1	f	2016-03-09	9005901	\N	\N	20060
nitric oxide 100 ppm per cylr medicinal gas	f	2	f	2016-03-10	9005902	\N	\N	20061
pegvisomant 25 mg per vial NA	f	1	f	2016-03-10	9005903	\N	\N	20062
pegvisomant 25 mg per vial powder for solution for injection	f	1	f	2016-03-10	9005904	\N	\N	20063
pegvisomant 30 mg per vial NA	f	1	f	2016-03-10	9005905	\N	\N	20064
pegvisomant 30 mg per vial powder for solution for injection	f	1	f	2016-03-10	9005906	\N	\N	20065
mepolizumab 144 mg per vial powder for solution for injection	f	1	f	2016-03-14	9005907	\N	\N	20066
octinoxate 7.4 % and octocrylene 5 % and titanium dioxide 11.8 % cutaneous powder	f	1	f	2016-03-14	9005908	\N	\N	20067
avobenzone 2 % and octinoxate 4.9 % and octocrylene 5 % and oxybenzone 2 % cutaneous cream	f	1	f	2016-03-17	9005909	\N	\N	20068
blinatumomab 38.5 mcg per vial powder for solution for injection	f	1	f	2016-03-17	9005910	\N	\N	20069
filgrastim (r-methug-csf) 300 mcg per 0.5 mL solution for injection	f	1	f	2016-03-17	9005911	\N	\N	20070
octinoxate 6 % and titanium dioxide 3.5 % cutaneous liquid	f	1	f	2016-03-18	9005912	\N	\N	20071
deferiprone 500 mg oral tablet	f	1	f	2016-03-21	9005913	\N	\N	20072
avobenzone 2 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 0.5 % cutaneous spray	f	1	f	2016-03-23	9005914	\N	\N	20073
deferasirox 180 mg oral tablet	f	1	f	2016-03-24	9005915	\N	\N	20074
deferasirox 360 mg oral tablet	f	1	f	2016-03-24	9005916	\N	\N	20075
deferasirox 90 mg oral tablet	f	1	f	2016-03-24	9005917	\N	\N	20076
octinoxate 6 % cutaneous powder	f	1	f	2016-03-29	9005918	\N	\N	20077
lenvatinib (lenvatinib mesylate) 10 mg oral capsule	f	1	f	2016-03-31	9005919	\N	\N	20078
lenvatinib (lenvatinib mesylate) 14 mg oral capsule	f	1	f	2016-03-31	9005920	\N	\N	20079
lenvatinib (lenvatinib mesylate) 20 mg oral capsule	f	1	f	2016-03-31	9005921	\N	\N	20080
lenvatinib (lenvatinib mesylate) 24 mg oral capsule	f	1	f	2016-03-31	9005922	\N	\N	20081
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 5 % lotion	f	1	f	2016-04-01	9005923	\N	\N	20082
amlodipine (amlodipine besylate) 10 mg and perindopril arginine 14 mg oral tablet	f	1	f	2016-04-05	9005924	\N	\N	20083
amlodipine (amlodipine besylate) 5 mg and perindopril arginine 7 mg oral tablet	f	1	f	2016-04-05	9005926	\N	\N	20085
everolimus 7.5 mg oral tablet	f	1	f	2016-04-05	9005927	\N	\N	20086
cobimetinib (cobimetinib fumarate) 20 mg oral tablet	f	1	f	2016-04-06	9005928	\N	\N	20087
avobenzone 3 % and octisalate 3 % and octocrylene 4 % cutaneous suspension	f	1	f	2016-04-07	9005929	\N	\N	20088
avobenzone 2.8 g per 100 g and octocrylene 2.2 g per 100 g and oxybenzone 2 g per 100 g liquid	f	1	f	2016-04-15	9005930	\N	\N	20089
avobenzone 2.5 % and homosalate 8 % and octisalate 5 % and octocrylene 2.2 % cutaneous stick	f	1	f	2016-04-19	9005931	\N	\N	20090
avobenzone 2 % and homosalate 7 % and octisalate 4 % and octocrylene 1.7 % lotion	f	1	f	2016-04-19	9005932	\N	\N	20091
avobenzone 3 % and homosalate 2.5 % and octisalate 5 % and octocrylene 2.7 % cutaneous stick	f	2	f	2016-04-19	9005933	\N	\N	20092
palbociclib 100 mg oral capsule	f	1	f	2016-04-19	9005934	\N	\N	20093
palbociclib 125 mg oral capsule	f	1	f	2016-04-19	9005935	\N	\N	20094
avobenzone 3 % and homosalate 10 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2 % and oxybenzone 6 % lotion	f	1	t	2016-04-20	9005936	\N	\N	20095
palbociclib 75 mg oral capsule	f	1	f	2016-04-20	9005937	\N	\N	20096
selexipag 1000 mcg oral tablet	f	1	f	2016-04-21	9005938	\N	\N	20097
selexipag 1200 mcg oral tablet	f	1	f	2016-04-21	9005939	\N	\N	20098
selexipag 1400 mcg oral tablet	f	1	f	2016-04-21	9005940	\N	\N	20099
selexipag 1600 mcg oral tablet	f	1	f	2016-04-21	9005941	\N	\N	20100
selexipag 200 mcg oral tablet	f	1	f	2016-04-21	9005942	\N	\N	20101
selexipag 400 mcg oral tablet	f	1	f	2016-04-21	9005943	\N	\N	20102
selexipag 600 mcg oral tablet	f	1	f	2016-04-21	9005944	\N	\N	20103
selexipag 800 mcg oral tablet	f	1	f	2016-04-21	9005945	\N	\N	20104
asunaprevir 100 mg oral capsule	f	1	f	2016-04-22	9005946	\N	\N	20105
avobenzone 2.5 % and octinoxate 7.4 % and octocrylene 2 % and oxybenzone 1 % cutaneous emulsion	f	1	f	2016-04-22	9005947	\N	\N	20106
levomilnacipran (levomilnacipran hydrochloride) 120 mg prolonged-release oral capsule	f	1	f	2016-04-22	9005948	\N	\N	20107
levomilnacipran (levomilnacipran hydrochloride) 80 mg prolonged-release oral capsule	f	1	f	2016-04-22	9005949	\N	\N	20108
glycerine 1 % and sodium carboxymethyl cellulose 0.5 % ophthalmic drops	f	1	f	2016-04-26	9005950	\N	\N	20109
alirocumab 150 mg per mL solution for injection	f	2	f	2016-04-29	9005951	\N	\N	20110
octinoxate 4.9 % and octocrylene 3 % and oxybenzone 1 % and zinc oxide 15.4 % cutaneous cream	f	1	f	2016-04-29	9005952	\N	\N	20111
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 2.6 % cutaneous gel	f	1	f	2016-05-01	9005953	\N	\N	20112
avobenzone 3 % and homosalate 5 % and octisalate 4.5 % and octocrylene 2.8 % cutaneous cream	f	2	f	2016-05-01	9005954	\N	\N	20113
brivaracetam 100 mg oral tablet	f	1	f	2016-05-02	9005955	\N	\N	20114
brivaracetam 10 mg oral tablet	f	1	f	2016-05-02	9005956	\N	\N	20115
brivaracetam 25 mg oral tablet	f	1	f	2016-05-02	9005957	\N	\N	20116
brivaracetam 50 mg oral tablet	f	1	f	2016-05-02	9005958	\N	\N	20117
brivaracetam 75 mg oral tablet	f	1	f	2016-05-02	9005959	\N	\N	20118
avobenzone 3 % and homosalate 10 % and octocrylene 2.7 % lotion	f	1	f	2016-05-03	9005960	\N	\N	20119
avobenzone 2 % and homosalate 7.5 % and octisalate 5 % and octocrylene 2.75 % and oxybenzone 2 % cutaneous spray	f	1	f	2016-05-04	9005961	\N	\N	20120
dexmedetomidine (dexmedetomidine hydrochloride) 4 mcg per mL solution for injection	f	1	f	2016-05-09	9005962	\N	\N	20121
avobenzone 3 % and octinoxate 7.5 % and octocrylene 10 % and oxybenzone 5 % lotion	f	1	f	2016-05-11	9005963	\N	\N	20122
octinoxate 7.5 % and octisalate 5 % and zinc oxide 9.9 % lotion	f	2	f	2016-05-12	9005964	\N	\N	20123
avobenzone 2.54 % and octinoxate 6 % cutaneous cream	f	1	f	2016-05-15	9005965	\N	\N	20124
avobenzone 2.5 % and homosalate 3 % and octinoxate 7.5 % lotion	f	1	f	2016-05-15	9005966	\N	\N	20125
avobenzone 2.5 % and homosalate 4 % and octinoxate 7 % and octisalate 5 % cutaneous cream	f	1	f	2016-05-15	9005967	\N	\N	20126
avobenzone 2.5 % and homosalate 7 % and octinoxate 7.5 % and octisalate 5 % lotion	f	1	f	2016-05-15	9005968	\N	\N	20127
avobenzone 2.5 % and octinoxate 4.5 % lotion	f	1	f	2016-05-15	9005969	\N	\N	20128
avobenzone 2.5 % and octinoxate 4 % cutaneous cream	f	1	f	2016-05-15	9005970	\N	\N	20129
olaparib 50 mg oral capsule	f	1	f	2016-05-16	9005971	\N	\N	20130
alirocumab 75 mg per mL solution for injection	f	2	f	2016-05-18	9005972	\N	\N	20131
cocoa butter 88.44 % and phenylephrine hydrochloride 0.25 % suppository	f	1	f	2016-05-20	9005973	\N	\N	20132
idarucizumab 50 mg per mL solution for injection	f	1	f	2016-05-24	9005974	\N	\N	20133
octinoxate 3.5 % and titanium dioxide 4.3 % lotion	f	1	f	2016-05-24	9005975	\N	\N	20134
octinoxate 7.5 % and zinc oxide 2.4 % cutaneous stick	f	1	f	2016-05-24	9005976	\N	\N	20135
NA 24000 unit per vial powder for cutaneous solution	f	1	f	2016-05-27	9005977	\N	\N	20136
avobenzone 3 % and homosalate 10 % and octinoxate 7.5 % and octisalate 5 % and oxybenzone 4 % lotion	f	1	f	2016-05-30	9005978	\N	\N	20137
emtricitabine 200 mg and tenofovir alafenamide (tenofovir alafenamide hemifumarate) 10 mg oral tablet	f	1	f	2016-06-03	9005979	\N	\N	20138
emtricitabine 200 mg and tenofovir alafenamide (tenofovir alafenamide hemifumarate) 25 mg oral tablet	f	1	f	2016-06-03	9005980	\N	\N	20139
acetaminophen 325 mg oral capsule	f	2	f	2016-06-08	9005981	\N	\N	20140
ticagrelor 60 mg oral tablet	f	1	f	2016-06-13	9005982	\N	\N	20141
magnesium chloride 3.05 g per l and sodium bicarbonate 2.12 g per l and sodium chloride 7.14 g per l solution for haemodialysis	f	1	f	2016-06-18	9005983	\N	\N	20142
magnesium chloride 3.05 g per l and sodium bicarbonate 2.12 g per l and sodium chloride 7.14 g per l solution for injection	f	1	f	2016-06-18	9005984	\N	\N	20143
canagliflozin 150 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2016-06-28	9005985	\N	\N	20144
canagliflozin 150 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2016-06-28	9005986	\N	\N	20145
canagliflozin 150 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2016-06-28	9005987	\N	\N	20146
canagliflozin 50 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2016-06-28	9005988	\N	\N	20147
canagliflozin 50 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2016-06-28	9005989	\N	\N	20148
canagliflozin 50 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2016-06-28	9005990	\N	\N	20149
avobenzone 2.5 % and homosalate 4 % and octinoxate 7.5 % and octisalate 5 % cutaneous cream	f	1	f	2016-06-30	9005991	\N	\N	20150
antihemophilic factor (recombinant) 1000 unit per vial NA	f	1	f	2016-07-06	9005992	\N	\N	20151
antihemophilic factor (recombinant) 500 unit per vial NA	f	1	f	2016-07-06	9005993	\N	\N	20152
octinoxate 6 % and titanium dioxide 6 % lotion	f	1	f	2016-07-11	9005994	\N	\N	20153
daratumumab 100 mg per 5 mL solution for injection	f	1	f	2016-07-12	9005995	\N	\N	20154
daratumumab 400 mg per 20 mL solution for injection	f	1	f	2016-07-12	9005996	\N	\N	20155
avobenzone 3 % and octinoxate 4.5 % and octisalate 5 % and octocrylene 7.5 % lotion	f	1	f	2016-07-14	9005997	\N	\N	20156
antihemophilic factor (recombinant) 2000 unit per vial NA	f	1	f	2016-07-15	9005998	\N	\N	20157
beta-carotene 1.6 mg and calcium (calcium carbonate) 300 mg and copper (cupric oxide) 2 mg and d-pantothenic acid (calcium d-pantothenate) 5 mg and folic acid 1.1 mg and iodine (potassium iodide) 0.15 mg and iron (ferrous fumarate) 35 mg and magnesium (magnesium oxide) 50 mg and nicotinamide 20 mg and vitamin b12 (cyanocobalamin) 12 mcg and vitamin b1 (thiamine mononitrate) 3 mg and vitamin b2 (riboflavin) 3.4 mg and vitamin b6 (pyridoxine hydrochloride) 10 mg and vitamin c (ascorbic acid) 120 mg and vitamin d3 (cholecalciferol) 600 unit and vitamin e (dl-alpha tocopheryl acetate) 13.8 mg and zinc (zinc oxide) 15 mg oral tablet	f	1	t	2016-07-15	9005999	\N	\N	20158
potassium acetate 39.2 % solution for injection	f	1	f	2016-07-18	9006000	\N	\N	20159
osimertinib (osimertinib mesylate) 40 mg oral tablet	f	1	f	2016-07-19	9006001	\N	\N	20160
osimertinib (osimertinib mesylate) 80 mg oral tablet	f	1	f	2016-07-19	9006002	\N	\N	20161
antihemophilic factor (recombinant) 250 unit per vial NA	f	1	f	2016-07-20	9006003	\N	\N	20162
sodium nitrite 30 mg per mL solution for injection	f	1	f	2016-07-20	9006004	\N	\N	20163
octinoxate 4.4 % and titanium dioxide 1.2 % cutaneous cream	f	1	f	2016-07-25	9006005	\N	\N	20164
paliperidone (paliperidone palmitate) 175 mg per 0.875 mL prolonged-release suspension for injection	f	1	f	2016-07-25	9006006	\N	\N	20165
paliperidone (paliperidone palmitate) 263 mg per 1.315 mL prolonged-release suspension for injection	f	1	f	2016-07-25	9006007	\N	\N	20166
paliperidone (paliperidone palmitate) 350 mg per 1.75 mL prolonged-release suspension for injection	f	1	f	2016-07-25	9006008	\N	\N	20167
paliperidone (paliperidone palmitate) 525 mg per 2.625 mL prolonged-release suspension for injection	f	1	f	2016-07-25	9006009	\N	\N	20168
homosalate 7 % and octinoxate 7.5 % and octocrylene 7.5 % and titanium dioxide 4 % and zinc oxide 7 % cutaneous stick	f	1	f	2016-07-26	9006010	\N	\N	20169
octinoxate 7.5 % and octisalate 5 % and octocrylene 7 % and zinc oxide 10 % lotion	f	1	f	2016-07-26	9006011	\N	\N	20170
octinoxate 7.5 % and octocrylene 7.5 % and zinc oxide 8 % lotion	f	1	f	2016-07-26	9006012	\N	\N	20171
deferiprone 100 mg per mL oral solution	f	1	f	2016-07-28	9006013	\N	\N	20172
avobenzone 2 % and octinoxate 7.5 % and octisalate 3 % and oxybenzone 3 % cutaneous cream	f	1	f	2016-08-01	9006014	\N	\N	20173
avobenzone 3 % and homosalate 10 % and octinoxate 5 % and octisalate 5 % and octocrylene 10 % cutaneous spray	f	1	f	2016-08-01	9006015	\N	\N	20174
coal tar 10 % cutaneous solution	f	1	f	2016-08-01	9006016	\N	\N	20175
sofosbuvir 400 mg and velpatasvir 100 mg oral tablet	f	1	f	2016-08-02	9006017	\N	\N	20176
empagliflozin 12.5 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2016-08-03	9006018	\N	\N	20177
empagliflozin 12.5 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2016-08-03	9006019	\N	\N	20178
empagliflozin 12.5 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2016-08-03	9006020	\N	\N	20179
empagliflozin 5 mg and metformin hydrochloride 1000 mg oral tablet	f	1	f	2016-08-03	9006021	\N	\N	20180
empagliflozin 5 mg and metformin hydrochloride 500 mg oral tablet	f	1	f	2016-08-03	9006022	\N	\N	20181
empagliflozin 5 mg and metformin hydrochloride 850 mg oral tablet	f	1	f	2016-08-03	9006023	\N	\N	20182
glycine 94 mg per vial and sodium chloride 73.3 mg per vial and water 50 mL per vial solution for injection	f	1	f	2016-08-04	9006024	\N	\N	20183
guaifenesin 600 mg modified-release oral tablet	f	1	f	2016-08-05	9006025	\N	\N	20184
sodium bicarbonate 900 g per cartridge powder for concentrate for solution for haemodialysis	f	1	f	2016-08-08	9006026	\N	\N	20185
ixekizumab 80 mg per mL solution for injection	f	2	f	2016-08-11	9006027	\N	\N	20186
avobenzone 2 % and octisalate 5 % and octocrylene 3 % cutaneous stick	f	1	f	2016-08-17	9006028	\N	\N	20187
antihemophilic factor (recombinant) 3000 unit per vial NA	f	1	f	2016-08-18	9006029	\N	\N	20188
adenine 0.169 g per l and dextrose 9 g per l and mannitol 5.25 g per l and sodium chloride 8.77 g per l NA	f	1	f	2016-08-22	9006030	\N	\N	20189
citric acid 3.27 g per l and dextrose 25.5 g per l and sodium citrate dihydrate 26.3 g per l and sodium phosphate monobasic 2.51 g per l NA	f	1	f	2016-08-22	9006031	\N	\N	20190
glatiramer acetate 40 mg per mL solution for injection	f	1	f	2016-08-26	9006032	\N	\N	20191
beta-carotene 1.6 mg and calcium (calcium carbonate) 300 mg and copper (cupric oxide) 2 mg and d-pantothenic acid (calcium d-pantothenate) 5 mg and folic acid 5 mg and iodine (potassium iodide) 0.15 mg and iron (ferrous fumarate) 35 mg and magnesium (magnesium oxide) 50 mg and nicotinamide 20 mg and vitamin b12 (cyanocobalamin) 12 mcg and vitamin b1 (thiamine mononitrate) 3 mg and vitamin b2 (riboflavin) 3.4 mg and vitamin b6 (pyridoxine hydrochloride) 10 mg and vitamin c (ascorbic acid) 120 mg and vitamin d3 (cholecalciferol) 600 unit and vitamin e (dl-alpha tocopheryl acetate) 13.8 mg and zinc (zinc oxide) 15 mg oral tablet	f	1	t	2016-08-28	9006033	\N	\N	20192
acetic acid 36 g per l and calcium chloride 36.8 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 14.9 g per l solution for haemodialysis	f	1	f	2016-09-07	9006034	\N	\N	20193
calcium chloride 0.221 g per l and dextrose 1.1 g per l and magnesium chloride 0.102 g per l and potassium chloride 0.075 g per l and sodium chloride 5.552 g per l and sodium lactate 8.408 g per l solution for haemodialysis	f	1	t	2016-09-15	9006035	\N	\N	20194
calcium chloride 0.221 g per l and dextrose 1.1 g per l and magnesium chloride 0.102 g per l and potassium chloride 0.075 g per l and sodium chloride 5.844 g per l and sodium lactate 7.473 g per l solution for haemodialysis	f	1	t	2016-09-15	9006036	\N	\N	20195
avobenzone 2.04 % and homosalate 6.8 % and octisalate 3.06 % and octocrylene 6.12 % and oxybenzone 1.36 % cutaneous spray	f	1	f	2017-01-13	9006101	\N	\N	20259
calcium chloride 0.221 g per l and dextrose 1.1 g per l and magnesium chloride 0.102 g per l and potassium chloride 0.15 g per l and sodium chloride 5.552 g per l and sodium lactate 8.408 g per l solution for haemodialysis	f	1	t	2016-09-15	9006037	\N	\N	20196
octinoxate 7 % and octisalate 4.5 % and titanium dioxide 4.2 % lotion	f	1	f	2016-09-15	9006038	\N	\N	20197
avobenzone 3 % and octisalate 5 % and octocrylene 7.5 % cutaneous suspension	f	1	f	2016-09-19	9006039	\N	\N	20198
ixazomib (ixazomib citrate) 2.3 mg oral capsule	f	1	f	2016-09-21	9006040	\N	\N	20199
ixazomib (ixazomib citrate) 3 mg oral capsule	f	1	f	2016-09-21	9006041	\N	\N	20200
ixazomib (ixazomib citrate) 4 mg oral capsule	f	1	f	2016-09-21	9006042	\N	\N	20201
abiraterone acetate 500 mg oral tablet	f	1	f	2016-09-22	9006043	\N	\N	20202
sulfur hexafluoride 8 mcl per mL powder for suspension for injection	f	1	f	2016-09-22	9006044	\N	\N	20203
avobenzone 2.6 % and octinoxate 6 % cutaneous cream	f	1	f	2016-09-30	9006045	\N	\N	20204
avobenzone 3 % and homosalate 8 % and octisalate 4 % and octocrylene 2 % and titanium dioxide 0.1 % lotion	f	2	f	2016-09-30	9006046	\N	\N	20205
avobenzone 3 % and octisalate 2 % and octocrylene 4 % cutaneous suspension	f	1	f	2016-10-04	9006047	\N	\N	20206
octinoxate 7.5 % and titanium dioxide 1.9 % lotion	f	1	f	2016-10-05	9006048	\N	\N	20207
octinoxate 7 % and octisalate 4.5 % and titanium dioxide 7.8 % and zinc oxide 1.9 % cutaneous liquid	f	1	f	2016-10-05	9006049	\N	\N	20208
avobenzone 3 % and homosalate 8 % and octisalate 4.5 % and octocrylene 6 % lotion	f	1	f	2016-10-06	9006050	\N	\N	20209
alectinib (alectinib hydrochloride) 150 mg oral capsule	f	1	f	2016-10-14	9006051	\N	\N	20210
nitisinone 10 mg oral capsule	f	2	f	2016-10-20	9006052	\N	\N	20211
nitisinone 2 mg oral capsule	f	2	f	2016-10-20	9006053	\N	\N	20212
nitisinone 5 mg oral capsule	f	2	f	2016-10-20	9006054	\N	\N	20213
avobenzone 3 % and homosalate 5 % and octisalate 5 % and octocrylene 7 % cutaneous cream	f	1	f	2016-10-24	9006055	\N	\N	20214
venetoclax 100 mg oral tablet	f	1	f	2016-10-31	9006056	\N	\N	20215
venetoclax 10 mg and venetoclax 100 mg and venetoclax 50 mg kit	f	1	f	2016-10-31	9006057	\N	\N	20216
venetoclax 10 mg and venetoclax 100 mg and venetoclax 50 mg oral tablet	f	1	f	2016-10-31	9006058	\N	\N	20217
venetoclax 10 mg oral tablet	f	1	f	2016-10-31	9006059	\N	\N	20218
venetoclax 50 mg oral tablet	f	1	f	2016-10-31	9006060	\N	\N	20219
glycerol phenylbutyrate 1.1 g per mL oral liquid	f	1	f	2016-11-03	9006061	\N	\N	20220
palivizumab 100 mg per mL solution for injection	f	1	f	2016-11-03	9006062	\N	\N	20221
palivizumab 50 mg per 0.5 mL solution for injection	f	1	f	2016-11-03	9006063	\N	\N	20222
phenylephrine hydrochloride 50 mcg per mL solution for injection	f	1	f	2016-11-04	9006064	\N	\N	20223
betamethasone (betamethasone dipropionate) 0.5 mg per g and calcipotriol (calcipotriol monohydrate) 50 mcg per g cutaneous foam	f	1	f	2016-11-11	9006065	\N	\N	20224
adalimumab 40 mg per 0.4 mL solution for injection	f	2	f	2016-11-14	9006066	\N	\N	20225
avobenzone 2 % and octinoxate 7.5 % and oxybenzone 3 % cutaneous stick	f	1	f	2016-11-14	9006067	\N	\N	20226
heparin sodium 5000 unit per 0.5 mL solution for injection	f	1	f	2016-11-17	9006068	\N	\N	20227
rituximab 120 mg per mL solution for injection	f	1	f	2016-11-22	9006069	\N	\N	20228
filgrastim (r-methug-csf) 480 mcg per 0.8 mL solution for injection	f	1	f	2016-11-28	9006070	\N	\N	20229
antihemophilic factor (recombinant) porcine sequence 500 unit per mL powder for solution for injection	f	1	f	2016-11-30	9006071	\N	\N	20230
bilastine 20 mg oral tablet	f	1	f	2016-12-02	9006072	\N	\N	20231
avobenzone 3 % and octinoxate 2.9 % and octisalate 5 % and octocrylene 2.2 % lotion	f	3	f	2016-12-04	9006073	\N	\N	20232
octinoxate 3.4 % cutaneous stick	f	1	f	2016-12-09	9006074	\N	\N	20233
levofloxacin 240 mg per 2.4 mL inhalation solution	f	1	f	2016-12-12	9006075	\N	\N	20234
octinoxate 4.9 % and titanium dioxide 15 % cutaneous liquid	f	1	f	2016-12-15	9006076	\N	\N	20235
nitisinone 10 mg oral tablet	f	1	f	2016-12-19	9006077	\N	\N	20236
poractant alfa 80 mg per mL endotracheopulmonary instillation	f	1	f	2016-12-19	9006078	\N	\N	20237
reslizumab 10 mg per mL solution for injection	f	1	f	2016-12-19	9006079	\N	\N	20238
bazedoxifene (bazedoxifene acetate) 20 mg and conjugated estrogens 0.45 mg modified-release oral tablet	f	1	f	2016-12-20	9006080	\N	\N	20239
empagliflozin 10 mg and linagliptin 5 mg oral tablet	f	1	f	2016-12-21	9006082	\N	\N	20240
empagliflozin 25 mg and linagliptin 5 mg oral tablet	f	1	f	2016-12-21	9006083	\N	\N	20241
ustekinumab 5 mg per mL solution for injection	f	1	f	2016-12-21	9006084	\N	\N	20242
cholestyramine resin 4 g powder for oral suspension	f	1	f	2016-12-23	9006085	\N	\N	20243
avobenzone 2.9 % and homosalate 3 % and octinoxate 7.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2017-01-01	9006086	\N	\N	20244
avobenzone 2.9 % and homosalate 5 % and octinoxate 5.5 % and oxybenzone 1 % cutaneous cream	f	2	f	2017-01-01	9006087	\N	\N	20245
avobenzone 1.5 % and homosalate 5 % and octocrylene 3.5 % cutaneous spray	f	1	f	2017-01-03	9006088	\N	\N	20246
avobenzone 2.2 % and homosalate 5.9 % and octisalate 4.5 % and octocrylene 4.4 % cutaneous cream	f	1	f	2017-01-03	9006089	\N	\N	20247
avobenzone 2.2 % and homosalate 7 % and octocrylene 4.2 % lotion	f	1	f	2017-01-03	9006090	\N	\N	20248
avobenzone 2.5 % and homosalate 3 % and octinoxate 7.5 % and oxybenzone 3.5 % cutaneous cream	f	1	f	2017-01-03	9006091	\N	\N	20249
avobenzone 2 % and octocrylene 3 % and oxybenzone 2 % lotion	f	1	f	2017-01-03	9006092	\N	\N	20250
avobenzone 3 % and homosalate 9 % and octisalate 4 % and octocrylene 5 % lotion	f	1	f	2017-01-03	9006093	\N	\N	20251
octinoxate 7.4 % and octocrylene 3 % and titanium dioxide 1.5 % and zinc oxide 19.3 % cutaneous emulsion	f	1	f	2017-01-03	9006094	\N	\N	20252
panitumumab 400 mg per 20 mL solution for injection	f	1	f	2017-01-03	9006095	\N	\N	20253
levonorgestrel 19.5 mg intrauterine delivery system	f	1	f	2017-01-10	9006096	\N	\N	20254
mifepristone 200 mg and misoprostol 200 mcg buccal tablet	f	1	f	2017-01-10	9006097	\N	\N	20255
mifepristone 200 mg and misoprostol 200 mcg kit	f	1	f	2017-01-10	9006098	\N	\N	20256
mifepristone 200 mg and misoprostol 200 mcg oral tablet	f	1	f	2017-01-10	9006099	\N	\N	20257
avobenzone 3 % and octisalate 5 % and octocrylene 7.5 % cutaneous cream	f	1	f	2017-01-11	9006100	\N	\N	20258
rupatadine (rupatadine fumarate) 10 mg oral tablet	f	1	f	2017-01-16	9006104	\N	\N	20262
avobenzone 3 % and homosalate 10 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 10 % spray (bag-on-valve)	f	1	f	2017-01-17	9006105	\N	\N	20263
avobenzone 3 % and homosalate 10 % and octisalate 4.5 % and octocrylene 8 % lotion	f	1	f	2017-01-17	9006106	\N	\N	20264
avobenzone 3 % and homosalate 5 % and octocrylene 4 % lotion	f	1	f	2017-01-17	9006107	\N	\N	20265
avobenzone 3 % and homosalate 9 % and octocrylene 5 % lotion	f	1	f	2017-01-17	9006108	\N	\N	20266
avobenzone 3 % and homosalate 10 % and octisalate 4.55 % and octocrylene 9 % and oxybenzone 5 % lotion	f	2	f	2017-01-18	9006109	\N	\N	20267
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 2.5 % and oxybenzone 5 % cutaneous spray	f	1	f	2017-01-20	9006110	\N	\N	20268
octinoxate 7.4 % and octocrylene 3 % and titanium dioxide 4.6 % cutaneous cream	f	1	f	2017-01-20	9006111	\N	\N	20269
rupatadine (rupatadine fumarate) 1 mg per mL oral solution	f	1	f	2017-01-20	9006112	\N	\N	20270
avobenzone 3 % and octisalate 4.5 % and octocrylene 7 % and oxybenzone 4 % cutaneous spray	f	1	f	2017-01-26	9006113	\N	\N	20271
avobenzone 2 % and octisalate 4.5 % and octocrylene 7 % cutaneous spray	f	1	f	2017-01-27	9006114	\N	\N	20272
avobenzone 3 % and octisalate 4.5 % and octocrylene 9 % and oxybenzone 6 % cutaneous spray	f	1	f	2017-01-27	9006115	\N	\N	20273
benzoyl peroxide 2.5 % and benzoyl peroxide 3.5 % cutaneous gel	f	1	f	2017-01-30	9006116	\N	\N	20274
benzoyl peroxide 2.5 % and benzoyl peroxide 3.5 % cutaneous paste	f	1	f	2017-01-30	9006117	\N	\N	20275
benzoyl peroxide 2.5 % and benzoyl peroxide 3.5 % kit	f	1	f	2017-01-30	9006118	\N	\N	20276
benzoyl peroxide 2.5 % and benzoyl peroxide 5 % cutaneous gel	f	1	f	2017-01-30	9006119	\N	\N	20277
benzoyl peroxide 2.5 % and benzoyl peroxide 5 % kit	f	1	f	2017-01-30	9006120	\N	\N	20278
benzoyl peroxide 2.5 % and benzoyl peroxide 5 % lotion	f	1	f	2017-01-30	9006121	\N	\N	20279
benzoyl peroxide 3.5 % cutaneous paste	f	1	f	2017-01-30	9006122	\N	\N	20280
petrolatum 60.1 % cutaneous ointment	f	1	f	2017-02-01	9006123	\N	\N	20281
clotrimazole 1 % and fluconazole 150 mg kit	f	2	f	2017-02-03	9006124	\N	\N	20282
octinoxate 7.4 % and octocrylene 3 % and zinc oxide 16.4 % cutaneous cream	f	1	f	2017-02-03	9006125	\N	\N	20283
carfilzomib 30 mg per vial powder for solution for injection	f	1	f	2017-02-06	9006126	\N	\N	20284
sarilumab 200 mg per 1.14 mL solution for injection	f	1	f	2017-02-08	9006127	\N	\N	20285
carfilzomib 10 mg per vial powder for solution for injection	f	1	f	2017-02-13	9006128	\N	\N	20286
alanine 440 mg per 100 mL and arginine 380 mg per 100 mL and calcium chloride 18 mg per 100 mL and dextrose 7.1 g per 100 mL and fish oil 420 mg per 100 mL and glycine 350 mg per 100 mL and histidine 93 mg per 100 mL and isoleucine 160 mg per 100 mL and leucine 230 mg per 100 mL and lysine (lysine acetate) 210 mg per 100 mL and magnesium sulfate 38 mg per 100 mL and medium chain triglycerides (mct) 850 mg per 100 mL and methionine 130 mg per 100 mL and olive oil 700 mg per 100 mL and phenylalanine 160 mg per 100 mL and potassium chloride 140 mg per 100 mL and proline 350 mg per 100 mL and serine 210 mg per 100 mL and sodium acetate trihydrate 110 mg per 100 mL and sodium glycerophosphate 130 mg per 100 mL and soybean oil 850 mg per 100 mL and taurine 32 mg per 100 mL and threonine 140 mg per 100 mL and tryptophan 63 mg per 100 mL and tyrosine 12 mg per 100 mL and valine 200 mg per 100 mL and zinc sulfate heptahydrate 0.4 mg per 100 mL emulsion for injection	f	1	t	2017-02-14	9006129	\N	\N	20287
homosalate 4 % and octocrylene 4 % and oxybenzone 1.5 % and titanium dioxide 8.4 % cutaneous emulsion	f	1	f	2017-02-15	9006130	\N	\N	20288
nitisinone 20 mg oral capsule	f	1	f	2017-02-17	9006131	\N	\N	20289
avobenzone 2.5 % and octinoxate 4.9 % and octocrylene 3 % and oxybenzone 2 % cutaneous stick	f	1	f	2017-02-20	9006132	\N	\N	20290
abobotulinumtoxina 500 unit per vial powder for solution for injection	f	1	f	2017-02-27	9006133	\N	\N	20291
chloroxylenol 1 % cutaneous solution	f	1	f	2017-02-28	9006134	\N	\N	20292
avobenzone 3 % and homosalate 7.5 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 10 % cutaneous spray	f	1	f	2017-03-01	9006135	\N	\N	20293
avobenzone 3 % and drometrizole trisiloxane 0.5 % and homosalate 15 % and octisalate 5 % and octocrylene 3 % lotion	f	1	f	2017-03-02	9006136	\N	\N	20294
ivabradine (ivabradine hydrochloride) 5 mg oral tablet	f	1	f	2017-03-17	9006137	\N	\N	20295
ivabradine (ivabradine hydrochloride) 7.5 mg oral tablet	f	1	f	2017-03-17	9006138	\N	\N	20296
emtricitabine 200 mg and rilpivirine (rilpivirine hydrochloride) 25 mg and tenofovir alafenamide (tenofovir alafenamide hemifumarate) 25 mg oral tablet	f	1	f	2017-03-20	9006139	\N	\N	20297
octinoxate 7.5 % and octisalate 5 % and oxybenzone 6 % and zinc oxide 7 % cutaneous cream	f	1	f	2017-03-20	9006140	\N	\N	20298
acetic acid 36 g per l and calcium chloride 36.8 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 37.3 g per l solution for haemodialysis	f	1	f	2017-03-21	9006141	\N	\N	20299
acetic acid 36 g per l and calcium chloride 51.5 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 29.8 g per l solution for haemodialysis	f	1	f	2017-03-21	9006142	\N	\N	20300
avobenzone 3 % and homosalate 10 % and octisalate 5 % and octocrylene 10 % and titanium dioxide 0.8965 % lotion	f	1	f	2017-03-22	9006143	\N	\N	20301
bepotastine besilate 1.5 % ophthalmic drops	f	1	f	2017-03-23	9006144	\N	\N	20302
sarilumab 150 mg per 1.14 mL solution for injection	f	1	f	2017-03-29	9006145	\N	\N	20303
daclizumab beta 150 mg per mL solution for injection	f	1	f	2017-03-30	9006146	\N	\N	20304
evolocumab 120 mg per mL solution for injection	f	1	f	2017-04-04	9006147	\N	\N	20305
propiverine hydrochloride 5 mg oral tablet	f	1	f	2017-04-13	9006148	\N	\N	20306
nonacog gamma 1000 unit per vial NA	f	1	f	2017-04-18	9006149	\N	\N	20307
nonacog gamma 1000 unit per vial powder for solution for injection	f	1	f	2017-04-18	9006150	\N	\N	20308
nonacog gamma 2000 unit per vial NA	f	1	f	2017-04-18	9006151	\N	\N	20309
nonacog gamma 2000 unit per vial powder for solution for injection	f	1	f	2017-04-18	9006152	\N	\N	20310
brexpiprazole 0.25 mg oral tablet	f	1	f	2017-04-19	9006153	\N	\N	20311
brexpiprazole 0.5 mg oral tablet	f	1	f	2017-04-19	9006154	\N	\N	20312
brexpiprazole 1 mg oral tablet	f	1	f	2017-04-19	9006155	\N	\N	20313
brexpiprazole 2 mg oral tablet	f	1	f	2017-04-19	9006156	\N	\N	20314
brexpiprazole 3 mg oral tablet	f	1	f	2017-04-19	9006157	\N	\N	20315
acetic acid 36 g per l and calcium chloride 44.1 g per l and dextrose 220 g per l and magnesium chloride 20.3 g per l and potassium chloride 59.6 g per l solution for haemodialysis	f	1	f	2017-04-21	9006159	\N	\N	20317
eluxadoline 100 mg oral tablet	f	1	f	2017-04-24	9006160	\N	\N	20318
eluxadoline 75 mg oral tablet	f	1	f	2017-04-24	9006161	\N	\N	20319
octinoxate 7 % cutaneous liquid	f	1	f	2017-04-24	9006162	\N	\N	20320
edoxaban (edoxaban tosylate) 15 mg oral tablet	f	1	f	2017-04-25	9006163	\N	\N	20321
edoxaban (edoxaban tosylate) 30 mg oral tablet	f	1	f	2017-04-25	9006164	\N	\N	20322
edoxaban (edoxaban tosylate) 60 mg oral tablet	f	1	f	2017-04-25	9006165	\N	\N	20323
dimethicone 1.3 % cutaneous cream	f	1	f	2017-04-28	9006166	\N	\N	20324
atezolizumab 60 mg per mL solution for injection	f	1	f	2017-05-02	9006167	\N	\N	20325
nonacog gamma 500 unit per vial NA	f	1	f	2017-05-02	9006168	\N	\N	20326
nonacog gamma 500 unit per vial powder for solution for injection	f	1	f	2017-05-02	9006169	\N	\N	20327
ivacaftor 125 mg and lumacaftor 100 mg oral tablet	f	1	f	2017-05-03	9006170	\N	\N	20328
ciprofloxacin (ciprofloxacin hydrochloride) 0.3 % and fluocinolone acetonide 0.025 % otic drops	f	1	f	2017-05-08	9006171	\N	\N	20329
propiverine hydrochloride 30 mg modified-release oral capsule	f	1	f	2017-05-08	9006172	\N	\N	20330
propiverine hydrochloride 45 mg modified-release oral capsule	f	1	f	2017-05-08	9006173	\N	\N	20331
octinoxate 7.5 % and octisalate 4.5 % and titanium dioxide 4.6 % and zinc oxide 5 % cutaneous cream	f	1	f	2017-05-14	9006174	\N	\N	20332
avobenzone 3 % and homosalate 10 % and octisalate 4.5 % cutaneous spray	f	1	f	2017-05-15	9006175	\N	\N	20333
homosalate 6 % and octinoxate 7.5 % and octisalate 5 % and zinc oxide 10 % lotion	f	1	f	2017-05-23	9006176	\N	\N	20334
octinoxate 7.5 % and octisalate 3 % and titanium dioxide 3.5 % and zinc oxide 8 % lotion	f	1	f	2017-05-23	9006177	\N	\N	20335
octinoxate 7.5 % and octisalate 3 % and zinc oxide 8 % lotion	f	1	f	2017-05-23	9006178	\N	\N	20336
avobenzone 3 % and homosalate 10 % and octinoxate 5 % and octisalate 5 % and octocrylene 3 % lotion	f	1	f	2017-05-25	9006179	\N	\N	20337
avobenzone 3 % and homosalate 15 % and octisalate 5 % and octocrylene 10 % cutaneous cream	f	1	f	2017-05-25	9006180	\N	\N	20338
obeticholic acid 10 mg oral tablet	f	1	f	2017-05-26	9006181	\N	\N	20339
obeticholic acid 5 mg oral tablet	f	1	f	2017-05-26	9006182	\N	\N	20340
vitamin a (retinyl palmitate) 100000 unit and vitamin e (dl-alpha tocopheryl acetate) 20 unit oral capsule	f	1	f	2017-05-26	9006183	\N	\N	20341
vitamin a (retinyl palmitate) 200000 unit and vitamin e (dl-alpha tocopheryl acetate) 40 unit oral capsule	f	1	f	2017-05-26	9006184	\N	\N	20342
bacitracin zinc 500 unit per g and polymyxin b sulfate 10000 unit per g ophthalmic ointment	f	1	f	2017-05-31	9006185	\N	\N	20343
benzoyl peroxide 5 % cutaneous ointment	f	1	f	2017-05-31	9006186	\N	\N	20344
avobenzone 3 % and homosalate 11.7 % and octisalate 4.5 % and octocrylene 4.5 % and oxybenzone 5.4 % lotion	f	1	f	2017-06-01	9006187	\N	\N	20345
gramicidin 0.025 mg per mL and polymyxin b sulfate 10000 unit per mL ophthalmic drops	f	1	f	2017-06-01	9006188	\N	\N	20346
gramicidin 0.025 mg per mL and polymyxin b sulfate 10000 unit per mL otic drops	f	1	f	2017-06-01	9006189	\N	\N	20347
pegaspargase 750 unit per mL solution for injection	f	1	f	2017-06-01	9006190	\N	\N	20348
ensulizole 2.5 % and octinoxate 7.5 % and oxybenzone 4 % cutaneous cream	f	1	f	2017-06-05	9006191	\N	\N	20349
octinoxate 7.5 % and oxybenzone 3 % cutaneous emulsion	f	1	f	2017-06-05	9006192	\N	\N	20350
avobenzone 2.8 % and octocrylene 2.2 % and oxybenzone 2 % cutaneous spray	f	1	f	2017-06-09	9006193	\N	\N	20351
dolutegravir (dolutegravir sodium) 10 mg oral tablet	f	1	f	2017-06-20	9006194	\N	\N	20352
dolutegravir (dolutegravir sodium) 25 mg oral tablet	f	1	f	2017-06-20	9006195	\N	\N	20353
tenofovir alafenamide (tenofovir alafenamide hemifumarate) 25 mg oral tablet	f	1	f	2017-06-20	9006196	\N	\N	20354
omalizumab 75 mg per 0.5 mL solution for injection	f	1	f	2017-06-28	9006197	\N	\N	20355
penicillin v potassium 300 mg per 5 mL powder for oral solution	t	2	f	1977-12-31	9006198	\N	\N	20356
codeine phosphate 10 mg per 5 mL oral solution	t	1	f	1978-12-31	9006199	\N	\N	20357
epinephrine 0.09 mg per 0.3 mL solution for injection syringe	t	1	f	1980-12-31	9006200	\N	\N	20358
alcohol anhydrous 0.25 mL per 5 mL and doxylamine succinate 6 mg per 5 mL and etafedrin hydrochloride 16.65 mg per 5 mL and hydrocodone bitartrate 1.65 mg per 5 mL and sodium citrate 200 mg per 5 mL syrup	t	2	f	1983-12-31	9006201	\N	\N	20359
ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and norethindrone 0.75 mg and norethindrone 1 mg and norethindrone 0.5 mg oral tablet	t	1	t	1983-12-31	9006202	\N	\N	20360
epinephrine 0.045 mg per 0.3 mL solution for injection syringe	t	2	f	1984-12-31	9006203	\N	\N	20361
hydromorphone hydrochloride 10 mg per mL solution for injection 50 mL vial	t	2	f	1984-12-31	9006204	\N	\N	20362
penicillin v potassium 125 mg per 5 mL powder for oral solution	t	1	f	1985-12-31	9006205	\N	\N	20363
penicillin v potassium 300 mg oral tablet	t	1	f	1985-12-31	9006206	\N	\N	20364
codeine phosphate 25 mg per 5 mL syrup	t	1	f	1986-12-18	9006207	\N	\N	20365
meperidine hydrochloride 10 mg per mL solution for injection 30 mL vial	t	1	f	1986-12-31	9006208	\N	\N	20366
ethinyl estradiol 30 mcg and ethinyl estradiol 40 mcg and ethinyl estradiol 30 mcg and levonorgestrel 125 mcg and levonorgestrel 50 mcg and levonorgestrel 75 mcg oral tablet	t	1	t	1987-12-31	9006209	\N	\N	20367
ethinyl estradiol 30 mcg and ethinyl estradiol 40 mcg and ethinyl estradiol 30 mcg and levonorgestrel 50 mcg and levonorgestrel 75 mcg and levonorgestrel 125 mcg oral tablet	t	1	t	1987-12-31	9006210	\N	\N	20368
morphine sulfate 250 mg per 5 mL solution for injection vial	t	1	f	1987-12-31	9006211	\N	\N	20369
morphine sulfate 500 mg per 10 mL solution for injection vial	t	1	f	1987-12-31	9006212	\N	\N	20370
morphine sulfate 50 mg per 1 mL solution for injection vial	t	1	f	1987-12-31	9006213	\N	\N	20371
morphine sulfate 50 mg per mL solution for injection 50 mL vial	t	3	f	1987-12-31	9006214	\N	\N	20372
nitroglycerin 500 mg per 10 mL solution for injection vial	t	2	f	1988-12-31	9006215	\N	\N	20373
dexamethasone phosphate (dexamethasone sodium phosphate) 1 mg per mL ophthalmic/otic drops	t	1	f	1989-12-31	9006216	\N	\N	20374
dexamethasone (dexamethasone sodium phosphate) 10 mg per 1 mL solution for injection	t	1	f	1990-12-31	9006217	\N	\N	20375
folic acid 50 mg per 10 mL and folic acid 50 mg per 10 mL solution for injection vial	t	1	f	1990-12-31	9006218	\N	\N	20376
morphine sulfate 50 mg per mL solution for injection 20 mL vial	t	1	f	1990-12-31	9006219	\N	\N	20377
nitroglycerin 100 mg per 10 mL solution for injection vial	t	1	f	1990-12-31	9006220	\N	\N	20378
furosemide 6250 mg per 25 mL solution for injection vial	t	2	f	1991-12-31	9006221	\N	\N	20379
mometasone furoate 0.1 % lotion	t	2	f	1991-12-31	9006222	\N	\N	20380
acetaminophen 500 mg and caffeine 15 mg and codeine phosphate 8 mg oral tablet	t	1	f	1992-12-31	9006223	\N	\N	20381
hydrocortisone acetate 2.5 % ophthalmic ointment	t	1	f	1992-12-31	9006224	\N	\N	20382
morphine sulfate 10 mg per 10 mL solution for injection vial	t	1	f	1992-12-31	9006225	\N	\N	20383
morphine sulfate 1 mg per mL solution for injection 50 mL vial	t	2	f	1992-12-31	9006226	\N	\N	20384
morphine sulfate 2 mg per 1 mL solution for injection vial	t	2	f	1992-12-31	9006227	\N	\N	20385
morphine sulfate 2 mg per mL solution for injection 50 mL vial	t	2	f	1992-12-31	9006228	\N	\N	20386
morphine sulfate 5 mg per 5 mL solution for injection vial	t	2	f	1992-12-31	9006229	\N	\N	20387
morphine sulfate 5 mg per mL solution for injection 30 mL vial	t	1	f	1992-12-31	9006230	\N	\N	20388
vitamin d3 (cholecalciferol) 10000 unit oral tablet	t	4	f	1992-12-31	9006231	\N	\N	20389
ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and ethinyl estradiol 0.035 mg and norgestimate 0.215 mg and norgestimate 0.25 mg and norgestimate 0.18 mg oral tablet	t	1	t	1993-12-31	9006232	\N	\N	20390
amoxicillin 25 mg per mL oral suspension	t	1	f	1994-12-31	9006233	\N	\N	20391
amoxicillin 50 mg per mL oral suspension	t	1	f	1994-12-31	9006234	\N	\N	20392
dexamethasone sodium phosphate 0.1 % ophthalmic/otic drops	t	1	f	1994-12-31	9006235	\N	\N	20393
digoxin 1 mg per 2 mL solution for injection ampoule	t	1	f	1994-12-31	9006236	\N	\N	20394
epinephrine 1 mg per 1 mL solution for injection	t	1	f	1994-12-31	9006237	\N	\N	20395
salbutamol (salbutamol sulfate) 5 mg per mL nebuliser solution 10 mL bottle	t	2	f	1994-12-31	9006238	\N	\N	20396
cefprozil 125 mg per 5 mL oral suspension	t	4	f	1995-12-31	9006239	\N	\N	20397
cefprozil 250 mg per 5 mL oral suspension	t	4	f	1995-12-31	9006240	\N	\N	20398
clarithromycin 125 mg per 5 mL oral suspension	t	3	f	1995-12-31	9006241	\N	\N	20399
hydromorphone hydrochloride 1000 mg per 50 mL solution for injection vial	t	1	f	1995-12-31	9006242	\N	\N	20400
hydromorphone hydrochloride 100 mg per 5 mL solution for injection vial	t	1	f	1995-12-31	9006243	\N	\N	20401
hydromorphone hydrochloride 20 mg per 1 mL solution for injection vial	t	1	f	1995-12-31	9006244	\N	\N	20402
hydromorphone hydrochloride 50 mg per mL solution for injection 50 mL vial	t	1	f	1995-12-31	9006245	\N	\N	20403
mesalazine 1 g per 100 mL rectal suspension	t	1	f	1995-12-31	9006246	\N	\N	20404
mesalazine 4 g per 100 mL rectal suspension	t	1	f	1995-12-31	9006247	\N	\N	20405
nifedipine 10 mg prolonged-release oral tablet	t	1	f	1995-12-31	9006248	\N	\N	20406
oxybutynin chloride 5 mg per 5 mL syrup	t	3	f	1996-09-04	9006249	\N	\N	20407
azithromycin 100 mg per 5 mL oral suspension	t	4	f	1996-09-26	9006250	\N	\N	20408
azithromycin 200 mg per 5 mL oral suspension	t	4	f	1996-09-26	9006251	\N	\N	20409
naproxen 125 mg per 5 mL oral suspension	t	1	f	1996-12-31	9006252	\N	\N	20410
triamcinolone acetonide 20 mg per 1 mL suspension for injection vial	t	1	f	1997-01-20	9006253	\N	\N	20411
sumatriptan (sumatriptan hemisulfate) 20 mg per actuation nasal spray	t	1	f	1997-02-19	9006254	\N	\N	20412
sumatriptan (sumatriptan hemisulfate) 5 mg per actuation nasal spray	t	1	f	1997-02-19	9006255	\N	\N	20413
benztropine mesylate 2 mg per 5 mL oral solution	t	1	f	1997-08-20	9006256	\N	\N	20414
acyclovir (acyclovir sodium) 500 mg per 20 mL solution for injection vial	t	1	f	1998-03-18	9006257	\N	\N	20415
ciprofloxacin 500 mg per 5 mL oral suspension	t	1	f	1998-09-15	9006258	\N	\N	20416
mometasone furoate 50 mcg per actuation nasal spray	t	3	f	1998-09-15	9006259	\N	\N	20417
epinephrine racemic 2.25 % inhalation solution	t	1	f	1998-10-02	9006260	\N	\N	20418
amoxicillin 200 mg per 5 mL and clavulanic acid (potassium clavulanate) 28.5 mg per 5 mL oral suspension	t	1	f	1998-10-29	9006261	\N	\N	20419
amoxicillin 400 mg per 5 mL and clavulanic acid (potassium clavulanate) 57 mg per 5 mL oral suspension	t	2	f	1998-10-29	9006262	\N	\N	20420
clindamycin (clindamycin phosphate) 150 mg per mL solution for injection 120 mL vial	t	1	f	1999-01-19	9006263	\N	\N	20421
clindamycin (clindamycin phosphate) 150 mg per mL solution for injection 60 mL vial	t	1	f	1999-01-19	9006264	\N	\N	20422
dexamethasone phosphate (dexamethasone sodium phosphate) 4 mg per 1 mL solution for injection vial	t	1	f	1999-04-01	9006265	\N	\N	20423
dexamethasone phosphate (dexamethasone sodium phosphate) 10 mg per 1 mL solution for injection vial	t	1	f	1999-06-30	9006266	\N	\N	20424
sumatriptan (sumatriptan succinate) 6 mg per 0.5 mL solution for injection 0.5 mL syringe	t	2	f	1999-08-30	9006267	\N	\N	20425
NA 0.5 % NA	f	1	f	1994-12-31	9006338	\N	\N	20426
fluticasone propionate 100 mcg per actuation and salmeterol (salmeterol xinafoate) 50 mcg per actuation inhalation powder	t	1	f	1999-09-24	9006268	\N	\N	20427
fluticasone propionate 250 mcg per actuation and salmeterol (salmeterol xinafoate) 50 mcg per actuation inhalation powder	t	1	f	1999-09-24	9006269	\N	\N	20428
fluticasone propionate 500 mcg per actuation and salmeterol (salmeterol xinafoate) 50 mcg per actuation inhalation powder	t	1	f	1999-09-24	9006270	\N	\N	20429
meperidine hydrochloride 100 mg per mL solution for injection 20 mL vial	t	1	f	2000-05-01	9006271	\N	\N	20430
ranitidine (ranitidine hydrochloride) 100 mg per 2 mL solution for injection vial	t	2	f	2000-05-01	9006272	\N	\N	20431
doxycycline (doxycycline hyclate) 8.8 % periodontal gel	t	1	f	2001-01-31	9006273	\N	\N	20432
hydromorphone hydrochloride 10000 mg per 10 mL solution for injection vial	t	1	f	2001-12-10	9006274	\N	\N	20433
fluticasone propionate 125 mcg per actuation and salmeterol (salmeterol xinafoate) 25 mcg per actuation pressurised inhalation	t	1	f	2001-12-21	9006275	\N	\N	20434
fluticasone propionate 250 mcg per actuation and salmeterol (salmeterol xinafoate) 25 mcg per actuation pressurised inhalation	t	1	f	2001-12-21	9006276	\N	\N	20435
clarithromycin 250 mg per 5 mL oral suspension	t	3	f	2002-05-28	9006277	\N	\N	20436
ibuprofen 50 mg chewable tablet	t	1	f	2003-05-14	9006279	\N	\N	20437
ranitidine (ranitidine hydrochloride) 75 mg per 5 mL oral solution	t	2	f	2004-09-08	9006280	\N	\N	20438
risperidone 25 mg per vial NA	t	1	f	2004-09-08	9006281	\N	\N	20439
risperidone 37.5 mg per vial NA	t	1	f	2004-09-08	9006282	\N	\N	20440
risperidone 50 mg per vial NA	t	1	f	2004-09-08	9006283	\N	\N	20441
azithromycin (azithromycin hemiethanolate) 100 mg per 5 mL oral suspension	t	2	f	2006-04-19	9006284	\N	\N	20442
azithromycin (azithromycin hemiethanolate) 200 mg per 5 mL oral suspension	t	2	f	2006-04-19	9006285	\N	\N	20443
varenicline (varenicline tartrate) 0.5 mg and varenicline (varenicline tartrate) 1 mg NA	t	1	f	2007-10-02	9006286	\N	\N	20444
risperidone 12.5 mg per vial NA	t	1	f	2007-10-24	9006287	\N	\N	20445
vitamin d3 (cholecalciferol) 50000 unit oral capsule	t	3	f	2011-08-09	9006288	\N	\N	20446
oxybutynin chloride 10 % cutaneous gel	t	1	f	2011-10-27	9006289	\N	\N	20447
ibuprofen 400 mg per 4 mL solution for injection vial	t	1	f	2012-06-15	9006290	\N	\N	20448
ibuprofen 800 mg per 8 mL solution for injection vial	t	1	f	2012-06-15	9006291	\N	\N	20449
dexamethasone phosphate (dexamethasone sodium phosphate) 10 mg per 1 mL solution for injection	t	1	f	2013-05-08	9006292	\N	\N	20450
furosemide 40 mg per 2 mL solution for injection ampoule	t	1	f	2013-08-22	9006293	\N	\N	20451
aripiprazole 300 mg per vial NA	t	1	f	2014-03-27	9006294	\N	\N	20452
aripiprazole 400 mg per vial NA	t	1	f	2014-03-27	9006295	\N	\N	20453
vitamin d3 (cholecalciferol) 2000 unit oral capsule	t	1	f	2015-07-31	9006296	\N	\N	20454
vitamin d3 (cholecalciferol) 25000 unit oral capsule	t	1	f	2015-07-31	9006297	\N	\N	20455
vitamin d3 (cholecalciferol) 5000 unit oral capsule	t	1	f	2015-10-20	9006298	\N	\N	20456
betamethasone valerate 1 % cutaneous patch	t	1	f	2016-04-05	9006299	\N	\N	20457
epinephrine (epinephrine bitartrate) 0.01 mg per mL and lidocaine hydrochloride 10 mg per mL solution for injection	f	1	f	1954-12-31	9006300	\N	\N	20458
epinephrine (epinephrine bitartrate) 5 mcg per mL and lidocaine hydrochloride 10 mg per mL solution for injection	f	1	f	1954-12-31	9006301	\N	\N	20459
lidocaine hydrochloride 20 mg per mL NA	f	1	f	1954-12-31	9006302	\N	\N	20460
methylprednisolone acetate 40 mg per mL NA	f	2	f	1960-12-31	9006303	\N	\N	20461
sodium polystyrene sulfonate 100 % powder for oral/rectal suspension	f	2	f	1961-12-31	9006304	\N	\N	20462
NA 100 m per mL powder for solution for injection	f	1	f	1964-12-31	9006305	\N	\N	20463
water 100 % NA	f	1	f	1964-12-31	9006306	\N	\N	20464
epinephrine (epinephrine bitartrate) 5 mcg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	1965-12-31	9006307	\N	\N	20465
sodium chloride 9 mg per mL NA	f	1	f	1966-12-31	9006308	\N	\N	20466
NA 0.5 % and NA 0.05 % cutaneous cream	f	1	f	1967-12-31	9006309	\N	\N	20467
methylprednisolone acetate 80 mg per mL NA	f	2	f	1969-12-31	9006310	\N	\N	20468
iodine (ethiodized oil) 380 mg per g NA	f	1	f	1977-12-31	9006311	\N	\N	20469
bismuth subgallate 200 mg chewable tablet	f	1	f	1978-12-31	9006312	\N	\N	20470
calcium polystyrene sulfonate 999 mg per g powder for oral/rectal suspension	f	1	f	1979-12-31	9006313	\N	\N	20471
modified ragweed tyrosine adsorbate 210 unit per mL and modified ragweed tyrosine adsorbate 500 unit per mL and modified ragweed tyrosine adsorbate 1400 unit per mL and modified ragweed tyrosine adsorbate 4300 unit per mL solution for injection	f	1	f	1979-12-31	9006314	\N	\N	20472
aloe 2 g per 100 mL and benzoin 10 g per 100 mL and myroxylon balsamum 4 g per 100 mL and storax 8 g per 100 mL inhalation solution	f	1	f	1982-12-31	9006315	\N	\N	20473
benzocaine 20 % and cetylpyridinium chloride 0.1 % oromucosal solution	f	1	f	1982-12-31	9006316	\N	\N	20474
deoxycholic acid 30 mg and NA 30 mg and NA 150 mg oral tablet	f	1	f	1983-12-31	9006317	\N	\N	20475
miconazole nitrate 400 mg and miconazole nitrate 2 % NA	f	1	f	1986-12-31	9006318	\N	\N	20476
sodium polystyrene sulfonate 94.3 mg per g powder for oral/rectal suspension	f	1	f	1988-12-31	9006319	\N	\N	20477
gramicidin 0.025 mg per mL and neomycin (neomycin sulfate) 1.75 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL ophthalmic/otic drops	f	1	f	1989-12-31	9006320	\N	\N	20478
tolnaftate 1 % NA	f	1	f	1989-12-31	9006321	\N	\N	20479
cefixime 100 mg per 5 mL oral suspension	f	1	f	1990-12-31	9006322	\N	\N	20480
cetrimonium bromide 0.5 % NA	f	1	f	1990-12-31	9006323	\N	\N	20481
acetaminophen 80 mg per mL NA	f	1	f	1991-12-31	9006324	\N	\N	20482
lidocaine 2.5 % and prilocaine 2.5 % cutaneous cream	f	1	f	1991-12-31	9006325	\N	\N	20483
NA 40 mg per mL NA	f	1	f	1992-11-19	9006326	\N	\N	20484
acetaminophen 80 mg per 1 mL NA	f	1	f	1992-12-31	9006327	\N	\N	20485
chloramphenicol 10 mg per g and hydrocortisone acetate 10 mg per g ophthalmic/otic ointment	f	1	f	1992-12-31	9006328	\N	\N	20486
chloramphenicol 2 mg per mL and hydrocortisone acetate 10 mg per mL ophthalmic/otic drops	f	1	f	1992-12-31	9006329	\N	\N	20487
haemophilus influenzae type b-prp 10 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL NA	f	1	f	1992-12-31	9006330	\N	\N	20488
chlorhexidine acetate 10 % NA	f	1	f	1993-12-31	9006331	\N	\N	20489
cholestyramine resin 4 g per 5 g oral suspension	f	1	f	1993-12-31	9006332	\N	\N	20490
cromolyn sodium 1 % nebuliser solution	f	1	f	1993-12-31	9006333	\N	\N	20491
isoflurane 99.9 % NA	f	1	f	1993-12-31	9006334	\N	\N	20492
levocabastine (levocabastine hydrochloride) 0.5 mg per mL NA	f	1	f	1993-12-31	9006335	\N	\N	20493
budesonide 2.3 mg and sodium chloride 115 mL NA	f	1	f	1994-12-31	9006336	\N	\N	20494
calcium chloride 0.48 mg per mL and magnesium chloride 0.3 mg per mL and potassium chloride 0.75 mg per mL and sodium acetate 3.9 mg per mL and sodium chloride 6.4 mg per mL and sodium citrate 1.7 mg per mL irrigation solution	f	1	t	1994-12-31	9006337	\N	\N	20495
polysorbate 80 0.8 % NA	f	1	f	1994-12-31	9006339	\N	\N	20496
lidocaine 0.5 % NA	f	1	f	1995-03-17	9006340	\N	\N	20497
chlorhexidine gluconate 0.5 % and isopropyl alcohol 70 % NA	f	1	f	1995-12-31	9006341	\N	\N	20498
gelatin 13.3 % and pectin 13.3 % and sodium carboxymethyl cellulose 13.3 % NA	f	1	f	1995-12-31	9006342	\N	\N	20499
methylprednisolone acetate 20 mg per mL NA	f	1	f	1995-12-31	9006343	\N	\N	20500
sodium citrate 90 mg per mL and sodium lauryl sulfoacetate 9 mg per mL and sorbitol 625 mg per mL NA	f	1	f	1995-12-31	9006344	\N	\N	20501
cholestyramine resin 4 g per 9 g oral suspension	f	1	f	1996-03-15	9006345	\N	\N	20502
chlorhexidine gluconate 0.12 % NA	f	2	f	1996-10-30	9006346	\N	\N	20503
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck NA	f	1	f	1996-11-26	9006347	\N	\N	20504
acetaminophen 500 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin c 50 mg per pck NA	f	1	f	1996-11-26	9006348	\N	\N	20505
benzydamine hydrochloride 1.5 mg per mL NA	f	2	f	1996-12-02	9006349	\N	\N	20506
ribavirin 6 g per vial NA	f	1	f	1996-12-05	9006350	\N	\N	20507
dibucaine hydrochloride 0.5 % and esculin 1 % and framycetin sulfate 1 % and hydrocortisone (hydrocortisone acetate) 0.5 % suppository	f	1	f	1996-12-30	9006351	\N	\N	20508
alteplase 100 mg and water 100 mL NA	f	1	f	1996-12-31	9006352	\N	\N	20509
dibucaine hydrochloride 0.5 % and esculin 1 % and framycetin sulfate 1 % and hydrocortisone 0.5 % suppository	f	3	f	1997-01-23	9006353	\N	\N	20510
dibucaine hydrochloride 0.5 % and esculin 1 % and framycetin sulfate 1 % and hydrocortisone (hydrocortisone acetate) 0.5 % rectal ointment	f	1	f	1997-02-03	9006354	\N	\N	20511
interferon alfa-2b 10000000 unit per vial and water 1 mL per vial NA	f	1	f	1997-03-12	9006355	\N	\N	20512
cetrimide 150 mg per 100 g and lidocaine 15 g per 100 g NA	f	1	f	1997-03-26	9006356	\N	\N	20513
cromolyn sodium 2 % NA	f	1	f	1997-07-28	9006357	\N	\N	20514
chorionic gonadotropin 10000 unit per vial and water 10 mL per vial NA	f	1	f	1997-08-13	9006358	\N	\N	20515
diphtheria toxoid 15 lf per 0.5 mL and filamentous haemagglutinin 20 mcg per 0.5 mL and fimbriae 5 mcg per 0.5 mL and haemophilus influenzae type b-prp 10 mcg per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 1 mahoney 40 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 2 mef1 8 unit per 0.5 mL and inactivated poliomyelitis vaccine (d.c.o.) type 3 saukett 32 unit per 0.5 mL and pertactin 3 mcg per 0.5 mL and pertussis toxoid 20 mcg per 0.5 mL and tetanus protein 30 mcg per 0.5 mL and tetanus toxoid 5 lf per 0.5 mL NA	f	1	t	1997-08-14	9006359	\N	\N	20516
anti-inhibitor coagulant complex 1200 unit per vial and water 20 mL per vial NA	f	1	f	1997-10-27	9006360	\N	\N	20517
bleomycin (bleomycin sulfate) 15 unit per vial NA	f	1	f	1998-03-12	9006361	\N	\N	20518
bacitracin zinc 500 unit per g and polymyxin b sulfate 10000 unit per g NA	f	1	f	1998-04-06	9006362	\N	\N	20519
alteplase 50 mg and water 50 mL NA	f	1	f	1998-04-12	9006363	\N	\N	20520
amoxicillin 500 mg and clarithromycin 500 mg and lansoprazole 30 mg NA	f	1	f	1998-08-18	9006364	\N	\N	20521
gramicidin 0.025 mg per mL and polymyxin b (polymyxin b sulfate) 10000 unit per mL ophthalmic/otic drops	f	1	f	2000-02-12	9006365	\N	\N	20522
acetylsalicylic acid 25 mg and dipyridamole 200 mg NA	f	1	f	2000-04-17	9006366	\N	\N	20523
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 2.5 mg NA	f	1	f	2000-10-30	9006367	\N	\N	20524
calcium chloride 5.145 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL NA	f	1	f	2001-01-01	9006368	\N	\N	20525
dibucaine hydrochloride 0.5 % and esculin 1 % and framycetin sulfate 1 % and hydrocortisone 0.5 % rectal ointment	f	3	f	2001-03-09	9006369	\N	\N	20526
acetylcysteine 200 mg per mL NA	f	2	f	2001-04-27	9006370	\N	\N	20527
diluent 3.15 mL and somatropin 12 mg NA	f	1	f	2001-08-28	9006371	\N	\N	20528
diluent 3.15 mL and somatropin 6 mg NA	f	1	f	2001-09-25	9006372	\N	\N	20529
conjugated estrogens 0.625 mg and medroxyprogesterone acetate 5 mg NA	f	1	f	2002-05-09	9006373	\N	\N	20530
dexamethasone (dexamethasone sodium metasulphobenzoate) 0.5 mg per mL and framycetin sulfate 5 mg per mL and gramicidin 0.05 mg per mL ophthalmic/otic drops	f	2	f	2002-07-26	9006374	\N	\N	20531
mycophenolate mofetil 200 mg per mL oral suspension	f	1	f	2002-08-27	9006375	\N	\N	20532
alteplase 2 mg per vial powder for solution for injection	f	1	f	2002-09-26	9006376	\N	\N	20533
diluent 3.15 mL and somatropin 24 mg NA	f	1	f	2003-12-08	9006377	\N	\N	20534
hepatitis a vaccine, inactivated 160 unit per 0.5 mL and salmonella typhi vi capsular polysaccharide vaccine 25 mcg per 0.5 mL NA	f	1	f	2005-11-09	9006378	\N	\N	20535
lactic acid 0.284 g per 1000 mL and magnesium chloride 0.108 g per 1000 mL and sodium bicarbonate 58.8 g per 1000 mL and sodium chloride 6.449 g per 1000 mL NA	f	1	f	2005-12-24	9006379	\N	\N	20536
calcium chloride 5.145 g per 1000 mL and dextrose anhydrous 22 g per 1000 mL and lactic acid 5.4 g per 1000 mL and magnesium chloride 2.033 g per 1000 mL and potassium chloride 0.314 g per 1000 mL and sodium bicarbonate 3.09 g per 1000 mL and sodium chloride 6.45 g per 1000 mL NA	f	1	t	2006-02-21	9006380	\N	\N	20537
cetylpyridinium chloride 0.05 % NA	f	1	f	2006-03-22	9006381	\N	\N	20538
aprepitant 125 mg and aprepitant 80 mg NA	f	1	f	2007-09-24	9006382	\N	\N	20539
voriconazole 3 g per bottle oral suspension	f	1	f	2008-07-17	9006383	\N	\N	20540
calcium (calcium carbonate) 500 mg and etidronate disodium 400 mg NA	f	1	f	2009-06-15	9006384	\N	\N	20541
glucagon (recombinant dna origin) (glucagon hydrochloride) 1 mg per vial NA	f	2	f	2009-12-23	9006385	\N	\N	20542
bisacodyl 5 mg and polyethylene glycol 3350 59.55 g per pck and potassium chloride 0.76 g per pck and sodium bicarbonate 1.69 g per pck and sodium chloride 1.46 g per pck and sodium sulfate 5.74 g per pck NA	f	1	t	2010-06-06	9006386	\N	\N	20543
polyethylene glycol 3350 100 % oral suspension	f	1	f	2010-07-02	9006387	\N	\N	20544
corynebacterium diphtheriae crm-197 protein 47 mcg per 0.5 mL and meningococcal group a oligosaccharide 10 mcg per 0.5 mL and meningococcal group c oligosaccharide 5 mcg per 0.5 mL and meningococcal group w-135 oligosaccharide 5 mcg per 0.5 mL and meningococcal group y oligosaccharide 5 mcg per 0.5 mL NA	f	1	f	2010-07-29	9006388	\N	\N	20545
linezolid 3 g per bottle oral suspension	f	1	f	2010-08-04	9006389	\N	\N	20546
fibrinogen (human) 90 mg per mL and thrombin (human) 1200 unit per mL NA	f	1	f	2011-03-01	9006390	\N	\N	20547
anti-inhibitor coagulant complex 3250 unit per vial and water 50 mL per vial NA	f	1	f	2011-04-04	9006391	\N	\N	20548
calcium chloride 40 mcmol per mL and thrombin (human) 500 unit per mL and NA 125 mg per mL and NA 3000 kiu per mL kit	f	1	f	2011-12-14	9006392	\N	\N	20549
NA 500 mg per vial powder for solution for injection	f	1	f	2017-05-29	9006441	\N	\N	20599
calcium chloride 2.45 g per l and dextrose 9.9 g per l and magnesium chloride 1.83 g per l and potassium chloride 2.68 g per l and sodium bicarbonate 3.59 g per l and sodium chloride 6.18 g per l and sodium chloride 4.21 g per l solution for haemodialysis	f	1	t	2012-03-09	9006393	\N	\N	20550
ethinyl estradiol 0.035 mg and norethindrone 500 mcg oral tablet with lactose oral tablet	t	2	f	1974-12-31	9006450	\N	\N	20551
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	3	t	2012-04-25	9006394	\N	\N	20552
epinephrine (epinephrine bitartrate) 0.005 mg per mL and lidocaine hydrochloride 20 mg per mL solution for injection	f	1	f	2012-04-25	9006395	\N	\N	20553
polymyxin b (polymyxin b sulfate) 50 mg per vial NA	f	1	f	2012-05-03	9006396	\N	\N	20554
acetaminophen 500 mg and acetaminophen 500 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	2	f	2012-05-05	9006397	\N	\N	20555
acetaminophen 500 mg and acetaminophen 500 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	1	f	2012-06-18	9006398	\N	\N	20556
acetaminophen 500 mg and acetaminophen 500 mg and chlorpheniramine maleate 2 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	2	t	2012-06-28	9006399	\N	\N	20557
acetaminophen 325 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 15 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	2	t	2012-08-14	9006400	\N	\N	20558
acetaminophen 500 mg and acetaminophen 500 mg and dextromethorphan hydrobromide 15 mg and diphenhydramine hydrochloride 25 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	1	t	2012-08-28	9006401	\N	\N	20559
oseltamivir (oseltamivir phosphate) 6 mg per mL oral suspension	f	1	f	2012-09-10	9006402	\N	\N	20560
acetaminophen 650 mg and acetaminophen 650 mg and dextromethorphan hydrobromide 30 mg and diphenhydramine hydrochloride 50 mg and pseudoephedrine hydrochloride 60 mg and pseudoephedrine hydrochloride 60 mg NA	f	1	t	2012-09-13	9006403	\N	\N	20561
acetaminophen 250 mg and acetaminophen 325 mg and dextromethorphan hydrobromide 10 mg and dextromethorphan hydrobromide 15 mg and doxylamine succinate 6.25 mg and guaifenesin 100 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	1	t	2012-12-10	9006404	\N	\N	20562
stiripentol 250 mg per pck oral suspension	f	1	f	2013-05-01	9006405	\N	\N	20563
stiripentol 500 mg per pck oral suspension	f	1	f	2013-05-01	9006406	\N	\N	20564
benzoyl peroxide 2.5 % and benzoyl peroxide 2.5 % NA	f	3	f	2013-08-08	9006407	\N	\N	20565
meningococcal polysaccharide antigen group a 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group c 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group w-135 5 mcg per 0.5 mL and meningococcal polysaccharide antigen group y 5 mcg per 0.5 mL and tetanus toxoid 44 mcg per 0.5 mL NA	f	1	f	2013-08-22	9006408	\N	\N	20566
benzoyl peroxide 5 % and salicylic acid 2 % NA	f	1	f	2013-11-15	9006409	\N	\N	20567
avobenzone 3 % and avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.75 % and octocrylene 2.79 % NA	f	1	t	2014-03-31	9006410	\N	\N	20568
avobenzone 3 % and homosalate 10 % and octinoxate 4 % and octocrylene 2.75 % NA	f	1	f	2014-03-31	9006411	\N	\N	20569
avobenzone 3 % and octinoxate 7.5 % and octisalate 5 % and octocrylene 2.79 % NA	f	1	f	2014-03-31	9006412	\N	\N	20570
chlorpheniramine maleate 2 mg and ibuprofen 200 mg and ibuprofen 200 mg and pseudoephedrine hydrochloride 30 mg and pseudoephedrine hydrochloride 30 mg NA	f	2	f	2014-05-23	9006413	\N	\N	20571
diphenhydramine hydrochloride 25 mg and ibuprofen 200 mg and ibuprofen 200 mg NA	f	1	f	2014-06-02	9006414	\N	\N	20572
apremilast 10 mg and apremilast 20 mg and apremilast 30 mg NA	f	1	f	2014-11-27	9006415	\N	\N	20573
dasabuvir (dasabuvir sodium monohydrate) 250 mg and ombitasvir 12.5 mg and paritaprevir 75 mg and ritonavir 50 mg NA	f	1	f	2015-01-06	9006416	\N	\N	20574
avobenzone 3 % and homosalate 2.5 % and octisalate 5 % and octocrylene 2.7 % NA	f	2	f	2015-02-02	9006417	\N	\N	20575
benzoyl peroxide 2.5 % NA	f	2	f	2015-02-02	9006418	\N	\N	20576
colesevelam hydrochloride 3.75 g per pck oral suspension	f	1	f	2015-04-02	9006419	\N	\N	20577
tolvaptan 45 mg and tolvaptan 15 mg oral tablet	f	1	f	2015-06-01	9006420	\N	\N	20578
tolvaptan 60 mg and tolvaptan 30 mg oral tablet	f	1	f	2015-06-01	9006421	\N	\N	20579
tolvaptan 90 mg and tolvaptan 30 mg oral tablet	f	1	f	2015-06-01	9006422	\N	\N	20580
octinoxate 7.5 % and zinc oxide 9 % NA	f	1	f	2015-07-03	9006423	\N	\N	20581
pasireotide (pasireotide pamoate) 40 mg per vial NA	f	1	f	2015-08-04	9006424	\N	\N	20582
pasireotide (pasireotide pamoate) 60 mg per vial NA	f	1	f	2015-08-04	9006425	\N	\N	20583
octinoxate 7.5 % and zinc oxide 10.5 % NA	f	4	f	2015-08-24	9006426	\N	\N	20584
benzoyl peroxide 5 % NA	f	1	f	2015-08-25	9006427	\N	\N	20585
follitropin alfa 150 unit per vial and lutropin alfa 75 unit per vial NA	f	1	f	2015-10-22	9006428	\N	\N	20586
pasireotide (pasireotide pamoate) 20 mg per vial NA	f	1	f	2016-01-28	9006429	\N	\N	20587
magnesium chloride 3.05 g per l and sodium bicarbonate 2.12 g per l and sodium chloride 7.14 g per l NA	f	1	f	2016-06-18	9006430	\N	\N	20588
venetoclax 10 mg and venetoclax 50 mg and venetoclax 100 mg NA	f	1	f	2016-10-31	9006431	\N	\N	20589
cholestyramine resin 4 g oral suspension	f	1	f	2016-12-23	9006432	\N	\N	20590
mifepristone 200 mg and misoprostol 200 mcg NA	f	1	f	2017-01-10	9006433	\N	\N	20591
avobenzone 3 % and homosalate 8 % and octinoxate 7.5 % and octisalate 4.5 % and octocrylene 5 % cutaneous cream	f	1	f	2017-01-13	9006434	\N	\N	20592
benzoyl peroxide 2.5 % and benzoyl peroxide 5 % NA	f	1	f	2017-01-30	9006435	\N	\N	20593
benzoyl peroxide 3.5 % and benzoyl peroxide 2.5 % NA	f	1	f	2017-01-30	9006436	\N	\N	20594
NA 3.75 mg per mL oral solution	f	1	f	2017-03-23	9006437	\N	\N	20595
octinoxate 7 % and titanium dioxide 7.1 % and zinc oxide 4.2 % lotion	f	1	f	2017-04-05	9006438	\N	\N	20596
avobenzone 2 % and homosalate 5 % and octisalate 5 % and octocrylene 2 % cutaneous emulsion	f	1	f	2017-04-06	9006439	\N	\N	20597
NA 100 mg per vial powder for solution for injection	f	1	f	2017-05-24	9006440	\N	\N	20598
gramicidin 0.025 mg per mL and polymyxin b sulfate 10000 unit per mL ophthalmic/otic drops	f	1	f	2017-06-01	9006442	\N	\N	20600
octinoxate 7.5 % and octisalate 2 % and octocrylene 2 % and titanium dioxide 3 % and zinc oxide 3 % cutaneous cream	f	1	f	2017-06-15	9006443	\N	\N	20601
octinoxate 6.6 % and octisalate 4.4 % cutaneous stick	f	1	f	2017-06-27	9006444	\N	\N	20602
benzalkonium chloride 0.1212 % and didecyl dimethyl ammonium chloride 0.0545 % and dioctyl dimethyl ammonium chloride 0.0364 % and octyl decyl dimethyl ammonium chloride 0.0909 % NA	f	1	f	2017-06-30	9006445	\N	\N	20603
octinoxate 2.9 % and titanium dioxide 1.6 % cutaneous liquid	f	1	f	2017-07-01	9006446	\N	\N	20604
octinoxate 5 % and titanium dioxide 3.1 % and zinc oxide 2.2 % cutaneous liquid	f	1	f	2017-07-01	9006447	\N	\N	20605
octinoxate 7.5 % and titanium dioxide 3.1 % lotion	f	1	f	2017-07-03	9006448	\N	\N	20606
camphor 30 mg per g cutaneous cream	f	1	f	\N	9006449	\N	\N	20607
ethinyl estradiol 0.03 mg and norethindrone acetate 1.5 mg oral tablet	t	1	f	1974-12-31	9006451	\N	\N	20608
ethinyl estradiol 0.02 mg and norethindrone acetate 1 mg oral tablet	t	1	f	1975-12-31	9006452	\N	\N	20609
ethinyl estradiol 0.02 mg and norethindrone acetate 1 mg oral tablet with lactose oral tablet	t	1	f	1975-12-31	9006453	\N	\N	20610
ethinyl estradiol 0.03 mg and norethindrone acetate 1.5 mg oral tablet with lactose oral tablet	t	1	f	1976-12-31	9006454	\N	\N	20611
ethinyl estradiol 0.035 mg and norethindrone 1 mg oral tablet with lactose oral tablet	t	3	f	1980-12-31	9006455	\N	\N	20612
ethinyl estradiol 0.035 mg and norethindrone 500 mcg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 750 mcg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 1 mg oral tablett	t	1	t	1983-12-31	9006456	\N	\N	20613
ethinyl estradiol 0.035 mg and norethindrone 500 mcg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 750 mcg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 1 mg oral tablet with lactose oral tablet	t	1	t	1983-12-31	9006457	\N	\N	20614
ethinyl estradiol 0.03 mg and levonorgestrel 0.05 mg oral tablet with ethinyl estradiol 0.04 mg and norgestimate 0.75 mg oral tablet with ethinyl estradiol 0.03 mg and norgestimate 0.125 mg oral tablet	t	1	t	1987-12-31	9006458	\N	\N	20615
ethinyl estradiol 0.03 mg and levonorgestrel 0.05 mg oral tablet with ethinyl estradiol 0.04 mg and norgestimate 0.75 mg oral tablet with ethinyl estradiol 0.03 mg and norgestimate 0.125 mg oral tablet with lactose oral tablet	t	1	t	1987-12-31	9006459	\N	\N	20616
ethinyl estradiol 0.035 mg and norgestimate 0.25 mg oral tablet with lactose oral tablet	t	1	f	1992-12-31	9006460	\N	\N	20617
vitamin D3 (cholecalciferol) 10000 unit oral tablet	t	4	f	1992-12-31	9006461	\N	\N	20618
desogestrel 0.15 mg and ethinyl estradiol 0.03 mg oral tablet with lactose oral tablet	t	5	f	1993-12-31	9006462	\N	\N	20619
ethinyl estradiol 0.035 mg and norgestimate 0.18 mg and norgestimate 0.215 mg and norgestimate 0.25 mg oral tablet	t	1	t	1993-12-31	9006463	\N	\N	20620
ethinyl estradiol 0.035 mg and norgestimate 0.18 mg oral tablet with ethinyl estradiol 0.035 mg and norgestimate 0.215 mg oral tablet with ethinyl estradiol 0.035 mg and norgestimate 0.25 mg oral tablet with lactose oral tablet	t	1	t	1993-12-31	9006464	\N	\N	20621
ethinyl estradiol 0.035 mg and norethindrone 1mg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 500 mcg oral tablet	t	1	f	1996-08-14	9006465	\N	\N	20622
ethinyl estradiol 0.035 mg and norethindrone 1mg oral tablet with ethinyl estradiol 0.035 mg and norethindrone 500 mcg oral tablet with lactose oral tablet	t	1	f	1996-08-14	9006466	\N	\N	20623
triamcinolone hexacetonide 20 mg per 1 mL suspension for injection vial	t	1	f	1997-01-20	9006467	\N	\N	20624
clotrimazole 1 % cutaneous cream with clotrimazole 10 % vaginal cream	t	1	f	1997-06-11	9006468	\N	\N	20625
ethinyl estradiol 0.02 mg and levonorgestrel 0.1 mg oral tablet	t	4	f	1998-01-07	9006469	\N	\N	20626
ethinyl estradiol 0.02 mg and levonorgestrel 0.1 mg oral tablet with lactose oral tablet	t	4	f	1998-01-07	9006470	\N	\N	20627
ethinyl estradiol 0.035 mg per 24 hours and norelgestromin 0.02 mg per 24 hours transdermal patch	t	1	f	2003-12-24	9006471	\N	\N	20628
risperidone 25 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2004-09-08	9006473	\N	\N	20629
risperidone 50 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2004-09-08	9006474	\N	\N	20630
ethinyl estradiol 15 mcg per 24 hours and etonogestrel 120 mcg per 24 hours vaginal delivery system	t	1	f	2004-12-02	9006475	\N	\N	20631
drospirenone 3 mg and ethinyl estradiol 0.03 mg oral tablet with lactose oral tablet	t	3	f	2004-12-22	9006476	\N	\N	20632
ethinyl estradiol 0.025 mg and norgestimate 0.18 mg oral tablet with ethinyl estradiol 0.025 mg and norgestimate 0.215 mg tablet with ethinyl estradiol 0.025 mg and norgestimate 0.25 mg oral tablet	t	2	t	2005-01-27	9006477	\N	\N	20633
ethinyl estradiol 0.025 mg and norgestimate 0.18 mg oral tablet with ethinyl estradiol 0.025 mg and norgestimate 0.215 mg tablet with ethinyl estradiol 0.025 mg and norgestimate 0.25 mg oral tablet with lactose oral tablet	t	2	t	2005-01-27	9006478	\N	\N	20634
vitamin D3 (cholecalciferol) 10000 unit oral capsule	t	4	f	2005-04-06	9006479	\N	\N	20635
alendronic acid (alendronate sodium) 70 mg and vitamin D3 (cholecalciferol) 2800 unit oral tablet	t	3	f	2006-03-13	9006480	\N	\N	20636
clotrimazole 1 % cutaneous cream with clotrimazole 500 mg vaginal tablet	t	1	f	2006-05-12	9006481	\N	\N	20637
clotrimazole 1 % cutaneous cream with clotrimazole 200 mg vaginal tablet	t	1	f	2006-06-02	9006482	\N	\N	20638
desogestrel 0.1 mg and estradiol 0.025 mg oral tablet with desogestrel 0.125 mg and estradiol 0.025 mg oral tablet with desogestrel 0.15 mg and ethinyl estradiol 0.025 mg oral tablet	t	1	t	2006-06-13	9006483	\N	\N	20639
desogestrel 0.1 mg and estradiol 0.025 mg oral tablet with desogestrel 0.125 mg and estradiol 0.025 mg oral tablet with  desogestrel 0.15 mg and ethinyl estradiol 0.025 mg oral tablet with lactose oral tablet	t	1	t	2006-06-13	9006484	\N	\N	20640
ethinyl estradiol 0.03 mg and levonorgestrel 0.15 mg oral tablet with lactose oral tablet	t	3	f	2007-08-14	9006485	\N	\N	20641
risperidone 12.5 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2007-10-24	9006486	\N	\N	20642
alendronic acid (alendronate sodium) 70 mg and vitamin D3 (cholecalciferol) 5600 unit oral tablet	t	4	f	2008-09-17	9006487	\N	\N	20643
drospirenone 3 mg and ethinyl estradiol 0.02 mg oral tablet with lactose oral tablet	t	2	f	2009-01-06	9006488	\N	\N	20644
ethinyl estradiol 0.03 mg and levonorgestrel 0.15 mg oral tablet with ethinyl estradiol 0.01 mg oral tablet 	t	1	f	2011-04-18	9006489	\N	\N	20645
furosemide 250 mg per 25 mL solution for injection 25 mL vial	t	1	f	2011-06-08	9006490	\N	\N	20646
vitamin D3 (cholecalciferol) 50000 unit oral capsule	t	3	f	2011-08-09	9006491	\N	\N	20647
ethinyl estradiol 0.01 mg and norethindrone acetate 1 mg oral tablet with ethinyl estradiol 0.01 mg oral tablet with lactose oral tablet	t	1	f	2014-03-24	9006492	\N	\N	20648
aripiprazole 300 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2014-03-27	9006493	\N	\N	20649
aripiprazole 400 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2014-03-27	9006494	\N	\N	20650
naproxen (naproxen sodium, naproxen) 200 mg oral capsule	t	1	f	2015-06-19	9006495	\N	\N	20651
vitamin D3 (cholecalciferol) 2000 unit oral capsule	t	1	f	2015-07-31	9006496	\N	\N	20652
vitamin D3 (cholecalciferol) 25000 unit oral capsule	t	1	f	2015-07-31	9006497	\N	\N	20653
vitamin D3 (cholecalciferol) 5000 unit oral capsule	t	1	f	2015-10-20	9006498	\N	\N	20654
rivaroxaban 15 mg oral tablet with rivaroxaban 20 mg oral tablet	t	1	f	2015-11-02	9006499	\N	\N	20655
dexpanthenol 10 mg per mL and lidocaine hydrochloride 2 % and nicotinamide 75 mg per mL and pyridoxine hydrochloride 2 mg per mL and vitamin B1 50 mg per mL and vitamin B2 (riboflavin 5'-phosphate sodium) 7.5 mg per mL solution for injection	f	1	t	1951-12-31	9006500	\N	\N	20656
vitamin B12 1 mg per mL solution for injection	f	5	f	1978-12-31	9006501	\N	\N	20657
dexpanthenol 10 mg per mL and nicotinamide 100 mg per mL and pyridoxine hydrochloride 10 mg per mL and thiamine hydrochloride 100 mg per mL and vitamin B12 100 mcg per mL and vitamin B2 (riboflavin 5'-phosphate sodium) 10 mg per mL solution for injection	f	1	t	1979-12-31	9006502	\N	\N	20658
vitamin B2 (riboflavin 5'-phosphate sodium) 50 mg per mL solution for injection	f	1	f	1979-12-31	9006503	\N	\N	20659
vitamin B12 (cyanocobalamin) 100 mcg per mL solution for injection	f	1	f	1981-12-31	9006504	\N	\N	20660
vitamin B12 (cyanocobalamin) 1 mg per mL solution for injection	f	1	f	1981-12-31	9006505	\N	\N	20661
vitamin K1 10 mg per mL solution for injection	f	1	f	1981-12-31	9006506	\N	\N	20662
vitamin K1 2 mg per mL solution for injection	f	1	f	1981-12-31	9006507	\N	\N	20663
d-pantothenic acid (calcium d-pantothenate, riboflavin-5-phosphate) 2.6 mg per mL and nicotinamide 10 mg per mL and vitamin A 1000 unit per mL and vitamin B1 (thiamine hydrochloride) 4.5 mg per mL and vitamin B2 (riboflavin-5-phosphate) 1 mg per mL and vitamin B6 (pyridoxine hydrochloride) 1.2 mg per mL and vitamin C 100 mg per mL and vitamin D 100 unit per mL and vitamin E (dl-alpha tocopheryl acetate) 1 unit per mL solution for injection	f	1	t	1984-12-31	9006508	\N	\N	20664
vitamin E (dl-alpha tocopheryl acetate) 100 unit per mL solution for injection	f	1	f	1986-12-31	9006509	\N	\N	20665
vitamin C 500 mg per mL solution for injection	f	2	f	1987-12-31	9006510	\N	\N	20666
vitamin C (sodium ascorbate) 250 mg per mL solution for injection	f	1	f	1989-12-31	9006511	\N	\N	20667
vitamin K1 10 mg per mL emulsion for injection	f	1	f	1989-12-31	9006512	\N	\N	20668
vitamin K1 2 mg per mL emulsion for injection	f	1	f	1989-12-31	9006513	\N	\N	20669
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin C 50 mg per pck powder for oral solution	f	1	f	1993-12-30	9006514	\N	\N	20670
biotin 12 mcg per mL and dexpanthenol 3 mg per mL and folic acid 80 mcg per mL and nicotinamide 8 mg per mL and pyridoxine hydrochloride 0.8 mg per mL and vitamin A 660 unit per mL and vitamin B12 (vitamin B12) 1 mcg per mL and vitamin B1 (thiamine hydrochloride) 0.6 mg per mL and vitamin B2 (riboflavin-5-phosphate) 0.72 mg per mL and vitamin C 20 mg per mL and vitamin D 40 unit per mL and vitamin E 2 unit per mL solution for injection	f	1	t	1994-12-31	9006515	\N	\N	20671
choline 2.222 mg per mL and inositol 2.222 mg per mL and nicotinamide 1.111 mg per mL and pipradrol hydrochloride 0.044 mg per mL and pyridoxine hydrochloride 0.042 mg per mL and thiamine hydrochloride 0.222 mg per mL and vitamin B2 0.111 mg per mL oral solution	f	1	t	1995-12-31	9006516	\N	\N	20672
dextromethorphan hydrobromide 30 mg per 23 g and pheniramine maleate 20 mg per 23 g and phenylephrine hydrochloride 10 mg per 23 g and vitamin C 50 mg per 23 g powder for oral solution	f	1	f	1995-12-31	9006517	\N	\N	20673
acetaminophen 325 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin C 50 mg per pck NA	f	1	f	1996-11-26	9006518	\N	\N	20674
acetaminophen 500 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin C 50 mg per pck NA	f	1	f	1996-11-26	9006519	\N	\N	20675
acetaminophen 325 mg per 23 g and pheniramine maleate 20 mg per 23 g and phenylephrine hydrochloride 10 mg per 23 g and vitamin C 50 mg per 23 g oral powder	f	1	f	1999-01-06	9006520	\N	\N	20676
biotin 10 mcg and choline bitartrate 70 mg and chromium (chromium hvp chelate) 20 mcg and dl-methionine 25 mg and d-pantothenic acid (calcium d-pantothenate) 50 mg and folic acid 0.04 mg and inositol 5 mg and iodine (potassium iodide) 0.025 mg and magnesium (magnesium oxide) 40 mg and manganese (manganese gluconate) 0.5 mg and nicotinamide 5 mg and nicotinic acid 5 mg and potassium (potassium chloride, potassium citrate) 40 mg and selenium (selenium hvp chelate) 25 mcg and vitamin A (retinol palmitate) 4000 unit and vitamin B12 (cyanocobalamin) 25 mcg and vitamin B1 (thiamine hydrochloride) 20 mg and vitamin B2 (riboflavin) 5 mg and vitamin B6 (pyridoxine hydrochloride) 15 mg and vitamin C (ascorbic acid) 300 mg and vitamin C (calcium ascorbate) 100 mg and vitamin E (d-alpha tocopheryl acetate) 65 unit and zinc (zinc gluconate) 3 mg oral tablet	f	1	t	1999-12-13	9006521	\N	\N	20677
vitamin D2 50000 unit oral capsule	f	2	f	1999-12-30	9006522	\N	\N	20678
vitamin B12 100 mcg per mL solution for injection	f	1	f	2000-08-29	9006523	\N	\N	20679
biotin 20 mcg per vial and dexpanthenol 5 mg per vial and folic acid 140 mcg per vial and nicotinamide 17 mg per vial and pyridoxine hydrochloride 1 mg per vial and vitamin A 2300 unit per vial and vitamin B12 (cyanocobalamin) 1 mcg per vial and vitamin B1 (thiamine hydrochloride) 1.2 mg per vial and vitamin B2 (riboflavin-5-phosphate) 1.4 mg per vial and vitamin C (ascorbic acid) 80 mg per vial and vitamin D 400 unit per vial and vitamin E (dl-alpha tocopheryl acetate) 7 unit per vial and vitamin K1 0.2 mg per vial solution for injection	f	1	t	2000-11-07	9006524	\N	\N	20680
acetaminophen 650 mg per pck and pheniramine maleate 20 mg per pck and phenylephrine hydrochloride 10 mg per pck and vitamin C 50 mg per pck oral powder	f	1	f	2001-09-01	9006525	\N	\N	20681
acetaminophen 325 mg per 22 g and pheniramine maleate 20 mg per 22 g and phenylephrine hydrochloride 10 mg per 22 g and vitamin C (ascorbic acid) 50 mg per 22 g oral powder	f	2	f	2001-12-29	9006526	\N	\N	20682
acetaminophen 650 mg per 22 mg and pheniramine maleate 20 mg per 22 mg and phenylephrine hydrochloride 10 mg per 22 mg and vitamin C 50 mg per 22 mg oral powder	f	1	f	2001-12-29	9006527	\N	\N	20683
biotin 12 mcg per mL and dexpanthenol (panthenol) 3 mg per mL and folic acid 80 mcg per mL and nicotinamide 8 mg per mL and pyridoxine hydrochloride 0.8 mg per mL and vitamin A 660 unit per mL and vitamin B12 (cyanocobalamin) 1 mcg per mL and vitamin B1 (thiamine hydrochloride) 0.6 mg per mL and vitamin B2 0.72 mg per mL and vitamin C 20 mg per mL and vitamin E (dl-alpha tocopheryl acetate) 2 unit per mL solution for injection	f	1	t	2002-01-28	9006528	\N	\N	20684
vitamin C (ascorbic acid) 500 mg per mL solution for injection	f	1	f	2002-05-29	9006529	\N	\N	20685
polyethylene glycol 3350 100 g per pck and potassium chloride 1.015 g per pck and sodium ascorbate 5.9 g per pck and sodium chloride 2.691 g per pck and sodium sulfate anhydrous 7.5 g per pck and vitamin C 4.7 g per pck powder for oral solution	f	1	t	2011-04-28	9006530	\N	\N	20686
vitamin B12 1000 mcg per mL solution for injection	f	2	f	2014-03-12	9006531	\N	\N	20687
beta-carotene 1.6 mg and calcium (calcium carbonate) 300 mg and copper (cupric oxide) 2 mg and d-pantothenic acid (calcium d-pantothenate) 5 mg and folic acid 1.1 mg and iodine (potassium iodide) 0.15 mg and iron (ferrous fumarate) 35 mg and magnesium (magnesium oxide) 50 mg and nicotinamide 20 mg and vitamin B12 (cyanocobalamin) 12 mcg and vitamin B1 (thiamine mononitrate) 3 mg and vitamin B2 (riboflavin) 3.4 mg and vitamin B6 (pyridoxine hydrochloride) 10 mg and vitamin C (ascorbic acid) 120 mg and vitamin D3 (cholecalciferol) 600 unit and vitamin E (dl-alpha tocopheryl acetate) 13.8 mg and zinc (zinc oxide) 15 mg oral tablet	f	1	t	2016-07-15	9006532	\N	\N	20688
beta-carotene 1.6 mg and calcium (calcium carbonate) 300 mg and copper (cupric oxide) 2 mg and d-pantothenic acid (calcium d-pantothenate) 5 mg and folic acid 5 mg and iodine (potassium iodide) 0.15 mg and iron (ferrous fumarate) 35 mg and magnesium (magnesium oxide) 50 mg and nicotinamide 20 mg and vitamin B12 (cyanocobalamin) 12 mcg and vitamin B1 (thiamine mononitrate) 3 mg and vitamin B2 (riboflavin) 3.4 mg and vitamin B6 (pyridoxine hydrochloride) 10 mg and vitamin C (ascorbic acid) 120 mg and vitamin D3 (cholecalciferol) 600 unit and vitamin E (dl-alpha tocopheryl acetate) 13.8 mg and zinc (zinc oxide) 15 mg oral tablet	f	1	t	2016-08-28	9006533	\N	\N	20689
vitamin A (retinyl palmitate) 100000 unit and vitamin E (dl-alpha tocopheryl acetate) 20 unit oral capsule	f	1	f	2017-05-26	9006534	\N	\N	20690
vitamin A (retinyl palmitate) 200000 unit and vitamin E (dl-alpha tocopheryl acetate) 40 unit oral capsule	f	1	f	2017-05-26	9006535	\N	\N	20691
risperidone 37.5 mg per vial powder for prolonged-release suspension for injection with diluent solution	t	1	f	2004-09-08	9006472	\N	\N	20692
pentazocine (pentazocine lactate) 30 mg per 1 mL solution for injection ampoule	t	1	f	2002-11-01	9006278	\N	\N	20693
varenicline (varenicline tartrate) 0.5 mg with varenicline (varenicline tartrate) 1 mg oral tablet	t	1	f	2007-10-02	9001216	\N	\N	20694
moxifloxacin (moxifloxacin hydrochloride) 400 mg per 250 mL solution for injection 250 mL bag	t	1	f	2003-06-24	9001032	\N	\N	20695
\.


--
-- Name: ntp_table_audit_id_key; Type: CONSTRAINT; Schema: ccdd; Owner: postgres
--

-- ALTER TABLE ONLY ccdd.ntp_table
--     ADD CONSTRAINT ntp_table_audit_id_key UNIQUE (audit_id);


--
-- Name: ntp_table_ntp_code; Type: CONSTRAINT; Schema: ccdd; Owner: postgres
--

-- ALTER TABLE ONLY ccdd.ntp_table
--     ADD CONSTRAINT ntp_table_ntp_code PRIMARY KEY (ntp_code);


--
-- PostgreSQL database dump complete
--

