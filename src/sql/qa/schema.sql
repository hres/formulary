CREATE SCHEMA IF NOT EXISTS post_qa;
ALTER SCHEMA post_qa OWNER TO postgres;

-- start mp_changes.sql;
DROP TABLE IF EXISTS post_qa.mp_changes;

CREATE TABLE post_qa.mp_changes AS
(SELECT public.ccdd_mp_release_candidate.mp_formal_name as rc_formal_name, ccdd.mp_release_candidate.mp_formal_name as formal_name, ccdd.mp_release_candidate.mp_code
FROM public.ccdd_mp_release_candidate
right join ccdd.mp_release_candidate on public.ccdd_mp_release_candidate.mp_code = ccdd.mp_release_candidate.mp_code
where public.ccdd_mp_release_candidate.mp_formal_name != ccdd.mp_release_candidate.mp_formal_name);

ALTER TABLE post_qa.mp_changes OWNER TO postgres;

-- start ntp_changes.sql;
DROP TABLE IF EXISTS post_qa.ntp_changes;

CREATE TABLE post_qa.ntp_changes AS
(SELECT public.ccdd_ntp_release_candidate.ntp_formal_name as rc_formal_name, ccdd.ntp_release_candidate.ntp_formal_name as formal_name, ccdd.ntp_release_candidate.ntp_code
FROM public.ccdd_ntp_release_candidate
right join ccdd.ntp_release_candidate on public.ccdd_ntp_release_candidate.ntp_code = ccdd.ntp_release_candidate.ntp_code
where public.ccdd_ntp_release_candidate.ntp_formal_name != ccdd.ntp_release_candidate.ntp_formal_name);

ALTER TABLE post_qa.ntp_changes OWNER TO postgres;

-- start tm_changes.sql;
DROP TABLE IF EXISTS post_qa.tm_changes;

CREATE TABLE post_qa.tm_changes AS
(SELECT public.ccdd_tm_release_candidate.tm_formal_name as rc_formal_name, ccdd.tm_release_candidate.tm_formal_name as formal_name, ccdd.tm_release_candidate.tm_code
FROM public.ccdd_tm_release_candidate
right join ccdd.tm_release_candidate on public.ccdd_tm_release_candidate.tm_code = ccdd.tm_release_candidate.tm_code
where public.ccdd_tm_release_candidate.tm_formal_name != ccdd.tm_release_candidate.tm_formal_name);

ALTER TABLE post_qa.tm_changes OWNER TO postgres;

-- start new_mp_existing_tm.sql;
DROP TABLE IF EXISTS post_qa.new_mp_existing_tm;

CREATE TABLE post_qa.new_mp_existing_tm AS

With tmp (mp_code,mp_formal_name,ntp_code,ntp_formal_name,tm_code,tm_formal_name) as (
  SELECT mp_code,mp_formal_name,ntp_code,ntp_formal_name,tm_code,tm_formal_name
  FROM public.ccdd_mp_ntp_tm_relationship_release_candidate as T1
  WHERE EXISTS (
    SELECT * FROM ccdd.tm_release as T2
    WHERE T1.tm_code = T2.tm_code
   )
) select * from tmp where NOT EXISTS (
  SELECT * FROM ccdd.mp_release_candidate as T3
	WHERE tmp.mp_code = T3.mp_code
) order by tm_formal_name, ntp_formal_name, mp_formal_name;

ALTER TABLE post_qa.new_mp_existing_tm OWNER TO postgres;

-- start new_ntp_existing_tm.sql;
DROP TABLE IF EXISTS post_qa.new_ntp_existing_tm;

CREATE TABLE post_qa.new_ntp_existing_tm AS
With tmp (mp_code,mp_formal_name,ntp_code,ntp_formal_name,tm_code,tm_formal_name) as (
  SELECT mp_code,mp_formal_name,ntp_code,ntp_formal_name,tm_code,tm_formal_name
  FROM public.ccdd_mp_ntp_tm_relationship_release_candidate as T1
  WHERE EXISTS (
    SELECT * FROM ccdd.tm_release as T2 WHERE T1.tm_code = T2.tm_code
  )
) select * from tmp where NOT EXISTS (
  SELECT * FROM ccdd.ntp_release_candidate as T3 WHERE tmp.ntp_code = T3.ntp_code
) order by tm_formal_name, ntp_formal_name;

ALTER TABLE post_qa.new_ntp_existing_tm OWNER TO postgres;


-- relationship table for QA team:
CREATE TABLE post_qa.qa_relationship_table AS 

SELECT *
          FROM 
          (select mp_code, mp_formal_name, ntp_code, ntp_formal_name, tm_code, tm_formal_name FROM public.ccdd_mp_ntp_tm_relationship
        UNION ALL
        (select * from ccdd.mp_ntp_tm_relationship_release_candidate where mp_code IN ('02212188', '02480360', '02480379'))) as T1
          WHERE NOT EXISTS (
          SELECT * FROM ccdd.tm_release as T2
          WHERE T1.tm_code = T2.tm_code
          )
          order by tm_formal_name, ntp_formal_name;

ALTER TABLE post_qa.qa_relationship_table OWNER TO postgres;