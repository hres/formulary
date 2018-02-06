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
-- Name: tm_table; Type: TABLE; Schema: public; Owner: postgres
--

-- CREATE TABLE ccdd.tm_table (
--     tm_code integer NOT NULL,
--     tm_formal_name text NOT NULL,
--     audit_id bigint NOT NULL
-- );


-- ALTER TABLE ccdd.tm_table OWNER TO postgres;

--
-- Data for Name: tm_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ccdd.tm_table (tm_code, tm_formal_name, audit_id) FROM stdin;
8000110	acebutolol	13893
8000023	acetaminophen and caffeine and codeine	13894
8000065	acetaminophen and codeine	13895
8000059	acetaminophen and oxycodone	13896
8000349	acetaminophen and tramadol	13897
8000095	acyclovir	13898
8000312	alendronic acid	13899
8000313	alfuzosin	13900
8000046	allopurinol	13901
8000088	alprazolam	13902
8000269	amiodarone	13903
8000024	amitriptyline	13904
8000153	amlodipine	13905
8000073	amoxicillin	13906
8000154	amoxicillin and clavulanic acid	13907
8000389	aripiprazole	13908
8000121	atenolol	13909
8000347	atomoxetine	13910
8000235	atorvastatin	13911
8000027	azathioprine	13912
8000224	azithromycin	13913
8000066	baclofen	13914
8000208	beclomethasone	13915
8000067	benztropine	13916
8000302	betahistine	13917
8000053	betamethasone (base)	13918
8000315	bimatoprost	13919
8000325	bisoprolol	13920
8000090	bromazepam	13921
8000134	budesonide	13922
8000372	buprenorphine and naloxone	13923
8000257	bupropion	13924
8000075	calcitriol	13925
8000266	candesartan	13926
8000300	candesartan and hydrochlorothiazide	13927
8000032	carbamazepine	13928
8000054	carbidopa and levodopa	13929
8000329	carvedilol	13930
8000210	cefprozil	13931
8000271	celecoxib	13932
8000040	cephalexin	13933
8000237	cetirizine	13934
8000367	ciclesonide	13935
8000230	ciclopirox	13936
8000159	ciprofloxacin	13937
8000338	ciprofloxacin and dexamethasone (base)	13938
8000267	citalopram	13939
8000160	clarithromycin	13940
8000036	clindamycin	13941
8000238	clobazam	13942
8000161	clobetasol	13943
8000061	clonazepam	13944
8000135	clonidine	13945
8000263	clopidogrel	13946
8000773	clotrimazole	13947
8000147	clozapine	13948
8000069	codeine	13949
8000047	colchicine	13950
8000196	cyclobenzaprine	13951
8000256	cyproterone and ethinyl estradiol	13952
8000378	dabigatran	13953
8000179	desogestrel and ethinyl estradiol	13954
8000385	desvenlafaxine	13955
8000028	dexamethasone (base)	13956
8000114	dexamethasone phosphate	13957
8000137	dexamethasone sodium phosphate	13958
8000394	dexlansoprazole	13959
8000162	dextroamphetamine	13960
8000048	diazepam	13961
8000082	diclofenac	13962
8000180	diclofenac and misoprostol	13963
8000198	digoxin	13964
8000122	diltiazem	13965
8000181	domperidone	13966
8000246	donepezil	13967
8000272	dorzolamide and timolol	13968
8000163	doxazosin	13969
8000117	doxycycline	13970
8000345	drospirenone and ethinyl estradiol	13971
8000375	duloxetine	13972
8000330	dutasteride	13973
8000118	enalapril	13974
8000003	epinephrine	13975
8000037	erythromycin	13976
8000346	escitalopram	13977
8000303	esomeprazole	13978
8000398	esomeprazole and naproxen	13979
8000213	estradiol	13980
8000021	conjugated estrogens	13981
8000343	ethinyl estradiol and etonogestrel	13982
8000119	ethinyl estradiol and levonorgestrel	13983
8000334	ethinyl estradiol and norelgestromin	13984
8000049	ethinyl estradiol and norethindrone	13985
8000164	ethinyl estradiol and norgestimate	13986
8000326	ezetimibe	13987
8000165	felodipine	13988
8000225	fenofibrate	13989
8000127	fentanyl	13990
8000166	finasteride	13991
8000128	fluoxetine	13992
8000091	flurazepam	13993
8000173	fluticasone	13994
8000279	fluticasone and salmeterol	13995
8000055	folic acid	13996
8000332	fosinopril	13997
8000057	furosemide	13998
8000104	fusidic acid	13999
8000200	gabapentin	14000
8000396	galantamine	14001
8000139	gliclazide	14002
8000115	glyburide	14003
8000084	haloperidol	14004
8000168	insulin isophane human	14005
8000031	hydrochlorothiazide	14006
8000284	hydrochlorothiazide and irbesartan	14007
8000201	hydrochlorothiazide and lisinopril	14008
8000229	hydrochlorothiazide and losartan	14009
8000382	hydrochlorothiazide and olmesartan	14010
8000262	hydrochlorothiazide and quinapril	14011
8000368	hydrochlorothiazide and ramipril	14012
8000301	hydrochlorothiazide and telmisartan	14013
8000092	hydrochlorothiazide and triamterene	14014
8000286	hydrochlorothiazide and valsartan	14015
8000008	hydrocortisone	14016
8000106	hydromorphone	14017
8000012	hydroxychloroquine	14018
8000009	hydroxyzine	14019
8000043	ibuprofen	14020
8000097	indapamide	14021
8000321	indapamide and perindopril	14022
8000085	indomethacin	14023
8000307	insulin aspart	14024
8000353	insulin detemir	14025
8000317	insulin glargine	14026
8000787	insulin lispro	14027
8000202	ipratropium	14028
8000259	irbesartan	14029
8000203	isosorbide mononitrate	14030
8000169	ketorolac	14031
8000214	lamotrigine	14032
8000215	lansoprazole	14033
8000244	latanoprost	14034
8000328	levetiracetam	14035
8000001	levothyroxine	14036
8000387	lisdexamfetamine	14037
8000140	lisinopril	14038
8000204	lithium (ion)	14039
8000041	lithium carbonate	14040
8000109	lorazepam	14041
8000216	losartan	14042
8000018	medroxyprogesterone	14043
8000290	meloxicam	14044
8000183	mesalazine	14045
8000184	metformin	14046
8000390	metformin and sitagliptin	14047
8000285	methadone	14048
8000217	methotrexate	14049
8000010	methylphenidate	14050
8000130	metoclopramide	14051
8000063	metoprolol	14052
8000038	metronidazole	14053
8000205	minocycline	14054
8000298	mirtazapine	14055
8000148	mometasone	14056
8000261	montelukast	14057
8000071	morphine	14058
8000291	moxifloxacin	14059
8000218	naproxen	14060
8000123	nifedipine	14061
8000050	nitrofurantoin	14062
8000044	nitroglycerin	14063
8000020	norethindrone	14064
8000026	nortriptyline	14065
8000078	nystatin	14066
8000226	olanzapine	14067
8000383	olmesartan	14068
8000251	olopatadine	14069
8000131	omeprazole	14070
8000079	oxazepam	14071
8000219	oxybutynin	14072
8000045	oxycodone	14073
8000236	pantoprazole	14074
8000185	paroxetine	14075
8000064	penicillin v	14076
8000206	perindopril	14077
8000005	phenytoin (base)	14078
8000004	phenytoin sodium	14079
8000289	pioglitazone	14080
8000253	pramipexole	14081
8000141	pravastatin	14082
8000051	prednisolone	14083
8000014	prednisone	14084
8000348	pregabalin	14085
8000107	procyclidine	14086
8000220	progesterone	14087
8000086	propranolol	14088
8000248	quetiapine	14089
8000170	quinapril	14090
8000029	quinine sulfate	14091
8000314	rabeprazole	14092
8000239	ramipril	14093
8000120	ranitidine	14094
8000273	repaglinide	14095
8000278	risedronate	14096
8000187	risperidone	14097
8000379	rivaroxaban	14098
8000287	rivastigmine	14099
8000276	rizatriptan	14100
8000322	rosuvastatin	14101
8000132	salbutamol	14102
8000391	saxagliptin	14103
8000171	sertraline	14104
8000268	sildenafil	14105
8000142	simvastatin	14106
8000374	sitagliptin	14107
8000360	solifenacin	14108
8000015	spironolactone	14109
8000080	sulfamethoxazole and trimethoprim	14110
8000234	sumatriptan	14111
8000222	tacrolimus	14112
8000331	tadalafil	14113
8000352	tamsulosin	14114
8000277	telmisartan	14115
8000087	temazepam	14116
8000247	terazosin	14117
8000188	terbinafine	14118
8000006	testosterone	14119
8000081	timolol	14120
8000320	tiotropium	14121
8000265	tolterodine	14122
8000240	topiramate	14123
8000369	tramadol	14124
8000250	trandolapril	14125
8000381	travoprost	14126
8000189	trazodone	14127
8000233	valacyclovir	14128
8000221	valproic acid	14129
8000108	valproic acid (divalproex)	14130
8000072	valproic acid (valproate)	14131
8000249	valsartan	14132
8000371	varenicline	14133
8000254	venlafaxine	14134
8000124	verapamil	14135
8000013	warfarin	14136
8000143	zopiclone	14137
8000774	acetylsalicylic acid and oxycodone	14138
8000775	buprenorphine	14139
8000776	butorphanol	14140
8000777	hydrocodone	14141
8000778	hydrocodone and phenyltoloxamine	14142
8000779	alcohol anhydrous and doxylamine and etafedrin and hydrocodone and sodium citrate	14143
8000781	hydrocodone and phenylephrine	14144
8000782	meperidine	14145
8000783	naloxone and oxycodone	14146
8000784	normethadone and p-hydroxyephedrine	14147
8000785	belladonna and opium	14148
8000786	pentazocine	14149
8000780	brompheniramine and guaifenesin and hydrocodone and phenylephrine	14150
8000172	vitamin D3 (cholecalciferol)	14151
8000413	alendronic acid and vitamin D3 (cholecalciferol)	14152
8000030	triamcinolone acetonide	14153
8000788	belladonna and ergotamine and phenobarbital	14154
8000789	tapentadol	14155
8000790	betamethasone acetate	14156
8000791	betamethasone dipropionate	14157
8000792	betamethasone valerate	14158
8000793	triamcinolone hexacetonide	14159
8000794	betamethasone acetate and betamethasone (base)	14160
\.


--
-- Name: tm_table_audit_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- ALTER TABLE ONLY ccdd.tm_table
--     ADD CONSTRAINT tm_table_audit_id_key UNIQUE (audit_id);


--
-- Name: tm_table_tm_code; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- ALTER TABLE ONLY ccdd.tm_table
--     ADD CONSTRAINT tm_table_tm_code PRIMARY KEY (tm_code);


--
-- PostgreSQL database dump complete
--

