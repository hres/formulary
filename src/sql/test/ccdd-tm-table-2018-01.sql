--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.10
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tm_table; Type: TABLE; Schema: public; Owner: bclaught
--

-- CREATE TABLE tm_table (
--     tm_code integer NOT NULL,
--     tm_formal_name text NOT NULL,
--     audit_id bigint DEFAULT nextval('pgmemento.audit_id_seq'::regclass) NOT NULL
-- );


-- ALTER TABLE tm_table OWNER TO bclaught;

--
-- Data for Name: tm_table; Type: TABLE DATA; Schema: public; Owner: bclaught
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
8000795	acetylsalicylic acid	32200
8000796	benzalkonium	32201
8000797	epinephrine and lidocaine hydrochloride	32202
8000798	clioquinol and hydrocortisone	32203
8000799	phenobarbital	32204
8000800	bisacodyl	32205
8000801	codeine and pseudoephedrine hydrochloride and triprolidine hydrochloride	32206
8000802	hydrochlorothiazide and spironolactone	32207
8000803	dexamethasone (base) and neomycin (neomycin sulfate) and polymyxin b sulfate	32208
8000804	ethacrynic acid	32209
8000805	acetylsalicylic acid and butalbital and caffeine and codeine	32210
8000806	acetylsalicylic acid and caffeine and codeine	32211
8000807	betamethasone valerate and gentamicin (gentamicin sulfate)	32212
8000808	acetylsalicylic acid and butalbital and caffeine	32213
8000809	chlorhexidine	32214
8000810	prednisolone and sulfacetamide sodium	32215
8000811	docusate and sennosides	32216
8000812	hydrocortisone and zinc sulfate	32217
8000813	chlorthalidone	32218
8000814	metronidazole and nystatin	32219
8000815	benserazide (benserazide hydrochloride) and levodopa	32220
8000816	epinephrine and prilocaine hydrochloride	32221
8000817	alcohol anhydrous	32222
8000818	hydrocortisone and pramoxine hydrochloride and zinc sulfate	32223
8000819	pindolol	32224
8000820	ethinyl estradiol and ethynodiol diacetate	32225
8000821	guaifenesin	32226
8000822	hydrocortisone and pramoxine hydrochloride	32227
8000823	phenylephrine	32228
8000824	minoxidil	32229
8000825	ammonium chloride and codeine and diphenhydramine hydrochloride	32230
8000826	guaifenesin and oxtriphylline	32231
8000827	tobramycin	32232
8000828	acetaminophen and codeine and doxylamine	32233
8000829	benzoyl peroxide	32234
8000830	isosorbide dinitrate	32235
8000831	betamethasone dipropionate and salicylic acid	32236
8000832	dextromethorphan hydrobromide and pheniramine maleate and phenylephrine	32237
8000833	doxylamine and pyridoxine hydrochloride	32238
8000834	gramicidin and neomycin (neomycin sulfate) and nystatin and triamcinolone acetonide	32239
8000835	hydrochlorothiazide and pindolol	32240
8000836	prazosin	32241
8000837	acetaminophen and caffeine	32242
8000838	acetaminophen and chlorpheniramine maleate and pseudoephedrine hydrochloride	32243
8000839	acetaminophen and pseudoephedrine hydrochloride	32244
8000840	lactulose	32245
8000841	cyproterone	32246
8000842	nadolol	32247
8000843	acetaminophen and phenylephrine	32248
8000844	amiloride and hydrochlorothiazide	32249
8000845	insulin and insulin isophane human	32250
8000846	betamethasone dipropionate and clotrimazole	32251
8000847	captopril	32252
8000848	dexamethasone (base) and tobramycin	32253
8000849	enalapril and hydrochlorothiazide	32254
8000850	fluconazole	32255
8000851	hydralazine	32256
8000852	sodium citrate	32257
8000853	acetaminophen and chlorzoxazone	32258
8000854	acetaminophen and chlorzoxazone and codeine	32259
8000855	benzalkonium and coal tar and salicylic acid	32260
8000856	citric acid and dextrose and sodium citrate	32261
8000857	dextromethorphan hydrobromide and guaifenesin	32262
8000858	acetaminophen and chlorpheniramine maleate and dextromethorphan hydrobromide and pseudoephedrine hydrochloride	32263
8000859	acetaminophen and codeine and methocarbamol	32264
8000860	acetaminophen and dextromethorphan hydrobromide and doxylamine and pseudoephedrine hydrochloride	32265
8000861	acetylsalicylic acid and codeine and methocarbamol	32266
8000862	benzalkonium and benzocaine	32267
8000863	chlorhexidine and isopropyl alcohol	32268
8000864	dextromethorphan hydrobromide and guaifenesin and pseudoephedrine hydrochloride	32269
8000865	insulin injection human biosynthetic and insulin isophane human	32270
8000866	mupirocin	32271
8000867	pheniramine maleate and phenylephrine	32272
8000868	acetaminophen and pheniramine maleate and phenylephrine and vitamin C	32273
8000869	acetaminophen and methocarbamol	32274
8000870	acetylsalicylic acid and caffeine	32275
8000871	articaine hydrochloride and epinephrine	32276
8000872	benazepril	32277
8000873	bumetanide	32278
8000874	cilazapril	32279
8000875	codeine and guaifenesin and pheniramine maleate	32280
8000876	ibuprofen and pseudoephedrine hydrochloride	32281
8000877	polymyxin b (polymyxin b sulfate) and trimethoprim	32282
8000878	acetaminophen and chlorpheniramine maleate and phenylephrine	32283
8000879	atenolol and chlorthalidone	32284
8000880	biotin and dexpanthenol and folic acid and nicotinamide and pyridoxine hydrochloride and vitamin A and vitamin B12 (vitamin B12) and vitamin B1 (thiamine hydrochloride) and vitamin B2 (riboflavin-5-phosphate) and vitamin C and vitamin D and vitamin E	32285
8000881	budesonide and sodium chloride	32286
8000882	bupivacaine hydrochloride and epinephrine	32287
8000883	calcium chloride and magnesium chloride and potassium chloride and sodium acetate and sodium chloride and sodium citrate	32288
8000884	codeine and guaifenesin and pseudoephedrine hydrochloride and triprolidine hydrochloride	32289
8000885	acetaminophen and dextromethorphan hydrobromide and pseudoephedrine hydrochloride	32290
8000886	acetylsalicylic acid and citric acid and sodium bicarbonate	32291
8000887	benzalkonium and lidocaine hydrochloride	32292
8000888	codeine and guaifenesin and pseudoephedrine hydrochloride	32293
8000889	dextromethorphan hydrobromide and pheniramine maleate and phenylephrine and vitamin C	32294
8000890	dextrose and nitroglycerin	32295
8000891	naloxone	32296
8000892	sodium citrate and sodium lauryl sulfoacetate and sorbitol	32297
8000893	sotalol	32298
8000894	labetalol	32299
8000895	esmolol	32300
8000896	acetaminophen and pheniramine maleate and phenylephrine	32301
8000897	benzoyl peroxide and erythromycin	32302
8000898	dibucaine and esculin and framycetin and hydrocortisone	32303
8000899	dorzolamide	32304
8000900	hamamelis virginiana and phenylephrine	32305
8000901	acetylsalicylic acid and methocarbamol	32306
8000902	formoterol	32307
8000903	ipratropium and salbutamol	32308
8000904	acetaminophen and dextromethorphan hydrobromide and guaifenesin and pseudoephedrine hydrochloride	32309
8000905	salmeterol	32310
8000906	acetaminophen and diphenhydramine hydrochloride and pseudoephedrine hydrochloride	32311
8000907	amoxicillin and clarithromycin and lansoprazole	32312
8000908	fusidic acid and hydrocortisone	32313
8000909	cilazapril and hydrochlorothiazide	32314
8000910	acetaminophen and pamabrom and pyrilamine maleate	32315
8000911	insulin lispro and insulin lispro protamine suspension	32316
8000912	alcohol anhydrous and chlorhexidine	32317
8000913	biotin and choline bitartrate and chromium (chromium hvp chelate) and dl-methionine and d-pantothenic acid (calcium d-pantothenate) and folic acid and inositol and iodine (potassium iodide) and magnesium (magnesium oxide) and manganese (manganese gluconate) and nicotinamide and nicotinic acid and potassium (potassium chloride, potassium citrate) and selenium (selenium hvp chelate) and vitamin A (retinol palmitate) and vitamin B12 (cyanocobalamin) and vitamin B1 (thiamine hydrochloride) and vitamin B2 (riboflavin) and vitamin B6 (pyridoxine hydrochloride) and vitamin C (ascorbic acid) and vitamin C (calcium ascorbate) and vitamin E (d-alpha tocopheryl acetate) and zinc (zinc gluconate)	32318
8000914	polymyxin b sulfate and trimethoprim	32319
8000915	levonorgestrel	32320
8000916	acetylsalicylic acid and dipyridamole	32321
8000917	estradiol and norethindrone	32322
8000918	biotin and dexpanthenol and folic acid and nicotinamide and pyridoxine hydrochloride and vitamin A and vitamin B12 (cyanocobalamin) and vitamin B1 (thiamine hydrochloride) and vitamin B2 (riboflavin-5-phosphate) and vitamin C (ascorbic acid) and vitamin D and vitamin E (dl-alpha tocopheryl acetate) and vitamin K1	32323
8000919	trimethoprim	32324
8000920	framycetin and gramicidin and phenylephrine	32325
8000921	misoprostol	32326
8000922	brompheniramine and phenylephrine	32327
8000923	brompheniramine and dextromethorphan hydrobromide and phenylephrine	32328
8000924	benzoyl peroxide and clindamycin	32329
8000925	brompheniramine and codeine and phenylephrine	32330
8000926	brompheniramine and codeine and guaifenesin and phenylephrine	32331
8000927	betamethasone dipropionate and calcipotriol	32332
8000928	betamethasone (base) and gentamicin (gentamicin sulfate)	32333
8000929	bosentan	32334
8000930	budesonide and formoterol	32335
8000931	trandolapril and verapamil	32336
8000932	dexamethasone (base) and framycetin and gramicidin	32337
8000933	latanoprost and timolol	32338
8000934	acetaminophen and doxylamine and pseudoephedrine hydrochloride	32339
8000935	cetirizine and pseudoephedrine hydrochloride	32340
8000936	ibuprofen and methocarbamol	32341
8000937	brimonidine tartrate and timolol	32342
8000938	acetaminophen and chlorpheniramine maleate	32343
8000939	acetaminophen and chlorpheniramine maleate and dextromethorphan hydrobromide	32344
8000940	alcohol anhydrous and butanediol and propyl alcohol and propylene glycol	32345
8000941	amphetamine and dextroamphetamine	32346
8000942	guaifenesin and pseudoephedrine hydrochloride	32347
8000943	amiloride	32348
8000944	eprosartan (eprosartan mesylate) and hydrochlorothiazide	32349
8000945	chlorpheniramine maleate and ibuprofen and pseudoephedrine hydrochloride	32350
8000946	alcohol anhydrous and benzalkonium	32351
8000947	levofloxacin	32352
8000948	acetaminophen and pamabrom	32353
8000949	dextromethorphan hydrobromide and guaifenesin and menthol	32354
8000950	insulin aspart and insulin aspart protamine	32355
8000951	acetaminophen and chlorpheniramine maleate and dextromethorphan hydrobromide and guaifenesin and pseudoephedrine hydrochloride	32356
8000952	dextromethorphan hydrobromide and guaifenesin and menthol and pseudoephedrine hydrochloride	32357
8000953	guaifenesin and menthol	32358
8000954	amlodipine and atorvastatin	32359
8000955	timolol and travoprost	32360
8000956	acetaminophen and doxylamine and phenylephrine	32361
8000957	acetaminophen and dextromethorphan hydrobromide and doxylamine	32362
8000958	acetaminophen and caffeine and pyrilamine maleate	32363
8000959	acetaminophen and dextromethorphan hydrobromide and phenylephrine	32364
8000960	dextromethorphan hydrobromide and phenylephrine	32365
8000961	acetaminophen and chlorpheniramine maleate and dextromethorphan hydrobromide and phenylephrine	32366
8000962	acetaminophen and menthol	32367
8000963	acetaminophen and dextromethorphan hydrobromide and diphenhydramine hydrochloride	32368
8000964	acetaminophen and dextromethorphan hydrobromide and guaifenesin and phenylephrine	32369
8000965	aliskiren	32370
8000966	chlorhexidine and lidocaine hydrochloride (lidocaine hydrochloride monohydrate)	32371
8000967	carbidopa and entacapone and levodopa	32372
8000968	ambrisentan	32373
8000969	estradiol and levonorgestrel	32374
8000970	drospirenone and estradiol	32375
8000971	betamethasone dipropionate and calcipotriol (calcipotriol monohydrate)	32376
8000972	benzalkonium and pramoxine hydrochloride	32377
8000973	eplerenone	32378
8000974	timolol and NA	32379
8000975	aliskiren and hydrochlorothiazide	32380
8000976	chlorpheniramine maleate and phenylephrine	32381
8000977	diphenhydramine hydrochloride and phenylephrine	32382
8000978	clotrimazole and fluconazole	32383
8000979	bisacodyl and polyethylene glycol 3350 and potassium chloride and sodium bicarbonate and sodium chloride and sodium sulfate	32384
8000980	dextromethorphan hydrobromide and doxylamine	32385
8000981	diphenhydramine hydrochloride and ibuprofen	32386
8000982	formoterol and mometasone	32387
8000983	adapalene and benzoyl peroxide	32388
8000984	clindamycin and tretinoin	32389
8000985	amlodipine and telmisartan	32390
8000986	tolvaptan	32391
8000987	diphenhydramine citrate and ibuprofen	32392
8000988	dutasteride and tamsulosin	32393
8000989	acetaminophen and dextromethorphan hydrobromide and diphenhydramine hydrochloride and guaifenesin and pseudoephedrine hydrochloride	32394
8000990	hydrocortisone and zinc sulfate monohydrate	32395
8000991	acetaminophen and dextromethorphan hydrobromide and diphenhydramine hydrochloride and pseudoephedrine hydrochloride	32396
8000992	acetaminophen and diphenhydramine hydrochloride	32397
8000993	acetaminophen and diphenhydramine hydrochloride and menthol	32398
8000994	acetaminophen and guaifenesin and menthol	32399
8000995	fluconazole and miconazole nitrate	32400
8000996	acetaminophen and dextromethorphan hydrobromide and doxylamine and guaifenesin and pseudoephedrine hydrochloride	32401
8000997	drospirenone and ethinyl estradiol and levomefolate calcium	32402
8000998	azilsartan medoxomil (azilsartan medoxomil potassium) and chlorthalidone	32403
8000999	nebivolol	32404
8001000	linagliptin and metformin	32405
8001001	metformin and saxagliptin	32406
8001002	benzalkonium and lidocaine	32407
8001003	acyclovir and hydrocortisone	32408
8001004	benzoyl peroxide and salicylic acid	32409
8001005	fluticasone and vilanterol (vilanterol trifenatate)	32410
8001006	alogliptin (alogliptin benzoate) and metformin	32411
8001007	acetaminophen and dextromethorphan hydrobromide and doxylamine and phenylephrine	32412
8001008	acetaminophen and diphenhydramine hydrochloride and phenylephrine	32413
8001009	fluticasone and NA	32414
8001010	olodaterol (olodaterol hydrochloride) and tiotropium	32415
8001011	aclidinium bromide and formoterol	32416
8001012	dapagliflozin (dapagliflozin propanediol monohydrate) and metformin	32417
8001013	diphenhydramine hydrochloride and naproxen	32418
8001014	amlodipine and perindopril	32419
8001015	cocoa butter and phenylephrine	32420
8001016	canagliflozin and metformin	32421
8001017	beta-carotene and calcium (calcium carbonate) and copper (cupric oxide) and d-pantothenic acid (calcium d-pantothenate) and folic acid and iodine (potassium iodide) and iron (ferrous fumarate) and magnesium (magnesium oxide) and nicotinamide and vitamin B12 (cyanocobalamin) and vitamin B1 (thiamine mononitrate) and vitamin B2 (riboflavin) and vitamin B6 (pyridoxine hydrochloride) and vitamin C (ascorbic acid) and vitamin D3 (cholecalciferol) and vitamin E (dl-alpha tocopheryl acetate) and zinc (zinc oxide)	32422
8001018	empagliflozin and metformin	32423
8001019	bazedoxifene (bazedoxifene acetate) and conjugated estrogens	32424
8001020	mifepristone and misoprostol	32425
8001021	ciprofloxacin and fluocinolone acetonide	32426
8001022	benzalkonium and didecyl dimethyl ammonium chloride and dioctyl dimethyl ammonium chloride and octyl decyl dimethyl ammonium chloride	32427
8001023	benzocaine and hydrocortisone and zinc sulfate	32428
8001024	dextromethorphan hydrobromide and guaifenesin and pheniramine maleate and phenylephrine	32429
8001025	dexamethasone (base) and neomycin sulfate and polymyxin b sulfate	32430
8001026	erythromycin and sulfisoxazole (sulfisoxazole acetyl)	32431
8001027	phenylephrine and NA	32432
8001028	adenine and citric acid and dextrose and sodium citrate and sodium phosphate monobasic	32433
8001029	alcohol anhydrous and dextrose	32434
8001030	framycetin	32435
8001031	framycetin and gramicidin	32436
8001032	pheniramine maleate and phenylephrine and polyvinyl alcohol	32437
8001033	doxylamine	32438
8001034	epinephrine and mepivacaine hydrochloride	32439
8001035	acetaminophen and guaifenesin and phenylephrine	32440
8001036	conjugated estrogens and medroxyprogesterone	32441
8001037	bacitracin (bacitracin zinc) and hydrocortisone and neomycin (neomycin sulfate) and polymyxin b (polymyxin b sulfate)	32442
8001038	biotin and dexpanthenol (panthenol) and folic acid and nicotinamide and pyridoxine hydrochloride and vitamin A and vitamin B12 (cyanocobalamin) and vitamin B1 (thiamine hydrochloride) and vitamin B2 and vitamin C and vitamin E (dl-alpha tocopheryl acetate)	32443
8001039	chloramphenicol and hydrocortisone	32444
8001040	hydrocortisone and neomycin (neomycin sulfate) and polymyxin b (polymyxin b sulfate)	32445
8001041	phenylephrine and tropicamide	32446
8001042	hydrochlorothiazide and methyldopa	32447
8001043	acetaminophen and pheniramine maleate and phenylephrine and vitamin C (ascorbic acid)	32448
8001044	acetaminophen	32449
8001045	docusate	32450
8001046	ephedrine sulfate	32451
8001047	chlorpropamide	32452
8001048	tolbutamide	32453
8001049	aminophylline	32454
8001050	cromolyn sodium	32455
8001051	terbutaline sulfate	32456
8001052	ampicillin (ampicillin sodium)	32457
8001053	zafirlukast	32458
8001054	orciprenaline sulfate	32459
8001055	cefuroxime (cefuroxime axetil)	32460
8001056	cefadroxil (cefadroxil monohydrate)	32461
8001057	cefadroxil	32462
8001058	rosiglitazone (rosiglitazone maleate)	32463
8001059	cefuroxime (cefuroxime sodium)	32464
8001060	omalizumab	32465
8001061	indacaterol (indacaterol maleate)	32466
8001062	aclidinium bromide	32467
8001063	glycopyrronium (glycopyrronium bromide) and indacaterol (indacaterol maleate)	32468
8001064	umeclidinium (umeclidinium bromide) and vilanterol (vilanterol trifenatate)	32469
8001065	umeclidinium (umeclidinium bromide)	32470
8001066	mepolizumab	32471
8001067	reslizumab	32472
8001068	ampicillin	32473
8001069	oxtriphylline	32474
8001070	aclidinium	32591
8001071	aclidinium and formoterol	32592
8001072	alogliptin	32593
8001073	alogliptin and metformin	32594
8001074	azilsartan	32595
8001075	azilsartan and chlorthalidone	32596
8001076	cefuroxime	32597
8001077	cromolyn	32598
8001078	ephedrine	32599
8001079	eprosartan	32600
8001080	eprosartan and hydrochlorothiazide	32601
8001081	fluticasone and vilanterol	32602
8001082	glycopyrronium	32603
8001083	glycopyrronium and indacaterol	32604
8001084	indacaterol	32605
8001085	olodaterol and tiotropium	32606
8001086	orciprenaline	32607
8001087	rosiglitazone	32608
8001088	terbutaline	32609
8001089	umeclidinium	32610
8001090	umeclidinium and vilanterol	32611
\.


--
-- Name: tm_table tm_table_audit_id_key; Type: CONSTRAINT; Schema: public; Owner: bclaught
--

-- ALTER TABLE ONLY tm_table
--     ADD CONSTRAINT tm_table_audit_id_key UNIQUE (audit_id);


--
-- Name: tm_table tm_table_tm_code; Type: CONSTRAINT; Schema: public; Owner: bclaught
--

-- ALTER TABLE ONLY tm_table
--     ADD CONSTRAINT tm_table_tm_code PRIMARY KEY (tm_code);


--
-- Name: tm_table log_delete_trigger; Type: TRIGGER; Schema: public; Owner: bclaught
--

-- CREATE TRIGGER log_delete_trigger AFTER DELETE ON tm_table FOR EACH ROW EXECUTE PROCEDURE pgmemento.log_delete();


--
-- Name: tm_table log_insert_trigger; Type: TRIGGER; Schema: public; Owner: bclaught
--

-- CREATE TRIGGER log_insert_trigger AFTER INSERT ON tm_table FOR EACH ROW EXECUTE PROCEDURE pgmemento.log_insert();


--
-- Name: tm_table log_transaction_trigger; Type: TRIGGER; Schema: public; Owner: bclaught
--

-- CREATE TRIGGER log_transaction_trigger BEFORE INSERT OR DELETE OR UPDATE OR TRUNCATE ON tm_table FOR EACH STATEMENT EXECUTE PROCEDURE pgmemento.log_transaction();


--
-- Name: tm_table log_truncate_trigger; Type: TRIGGER; Schema: public; Owner: bclaught
--

-- CREATE TRIGGER log_truncate_trigger BEFORE TRUNCATE ON tm_table FOR EACH STATEMENT EXECUTE PROCEDURE pgmemento.log_truncate();


--
-- Name: tm_table log_update_trigger; Type: TRIGGER; Schema: public; Owner: bclaught
--

-- CREATE TRIGGER log_update_trigger AFTER UPDATE ON tm_table FOR EACH ROW EXECUTE PROCEDURE pgmemento.log_update();


--
-- Name: tm_table; Type: ACL; Schema: public; Owner: bclaught
--

-- REVOKE ALL ON TABLE tm_table FROM PUBLIC;
-- REVOKE ALL ON TABLE tm_table FROM bclaught;
-- GRANT ALL ON TABLE tm_table TO bclaught;
-- GRANT SELECT ON TABLE tm_table TO nmatantsev;


--
-- PostgreSQL database dump complete
--

