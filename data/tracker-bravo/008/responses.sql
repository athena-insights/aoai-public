UPDATE cb SET value_label = replace(value_label, char(8217), '''');

CREATE TEMP TABLE out AS
WITH split0 AS (
	SELECT r.*,
		substr(STARTDT_ATH, 1, instr(STARTDT_ATH, ' ') - 1) AS sd,
		substr(STARTDT_ATH,    instr(STARTDT_ATH, ' ') + 1) AS st0,
		substr(ENDDT_ATH,   1, instr(ENDDT_ATH,   ' ') - 1) AS ed,
		substr(ENDDT_ATH,      instr(ENDDT_ATH,   ' ') + 1) AS et0
	FROM resp r
), split AS (
	SELECT split0.*,
		CASE WHEN length(st0) - length(replace(st0, ':', '')) = 1 THEN st0 || ':00' ELSE st0 END AS st,
		CASE WHEN length(et0) - length(replace(et0, ':', '')) = 1 THEN et0 || ':00' ELSE et0 END AS et
	FROM split0
), ts AS (
	SELECT split.*,
		printf('%s-%02d-%02d %02d:%s', substr(sd, -4),
			CAST(substr(sd, 1, instr(sd, '/') - 1) AS INTEGER),
			CAST(substr(substr(sd, instr(sd, '/') + 1), 1, instr(substr(sd, instr(sd, '/') + 1), '/') - 1) AS INTEGER),
			CAST(substr(st, 1, instr(st, ':') - 1) AS INTEGER), substr(st, instr(st, ':') + 1)) AS started_iso,
		printf('%s-%02d-%02d %02d:%s', substr(ed, -4),
			CAST(substr(ed, 1, instr(ed, '/') - 1) AS INTEGER),
			CAST(substr(substr(ed, instr(ed, '/') + 1), 1, instr(substr(ed, instr(ed, '/') + 1), '/') - 1) AS INTEGER),
			CAST(substr(et, 1, instr(et, ':') - 1) AS INTEGER), substr(et, instr(et, ':') + 1)) AS ended_iso
	FROM split
)
SELECT r.CaseId                    AS submission_id,
	CASE r.PartyID3 WHEN '1' THEN 'Democrat' WHEN '2' THEN 'Independent' WHEN '3' THEN 'Republican' WHEN '-1' THEN 'Unknown' END AS party_id,
	CASE
		WHEN CAST(r.AGE AS INTEGER) BETWEEN 18 AND 34 THEN '18-34'
		WHEN CAST(r.AGE AS INTEGER) BETWEEN 35 AND 49 THEN '35-49'
		WHEN CAST(r.AGE AS INTEGER) BETWEEN 50 AND 64 THEN '50-64'
		WHEN CAST(r.AGE AS INTEGER) >= 65             THEN '65+'
	END                            AS age_band,
	(SELECT value_label FROM cb WHERE variable = 'SEX'          AND value = r.SEX)          AS sex,
	(SELECT value_label FROM cb WHERE variable = 'RACETHNICITY' AND value = r.RACETHNICITY) AS ethnicity,
	(SELECT value_label FROM cb WHERE variable = 'EDUC5'        AND value = r.EDUC5)        AS education,
	CASE
		WHEN CAST(r.EDUC5 AS INTEGER) IN (1, 2) THEN 'HS or less'
		WHEN CAST(r.EDUC5 AS INTEGER) = 3       THEN 'Some college'
		WHEN CAST(r.EDUC5 AS INTEGER) IN (4, 5) THEN 'BA+'
	END                            AS educ_band,
	CASE
		WHEN CAST(r.INCOME AS INTEGER) BETWEEN 1  AND 9  THEN '<50k'
		WHEN CAST(r.INCOME AS INTEGER) BETWEEN 10 AND 13 THEN '50k to <100k'
		WHEN CAST(r.INCOME AS INTEGER) BETWEEN 14 AND 18 THEN '100k+'
	END                            AS income_band,
	(SELECT value_label FROM cb WHERE variable = 'METRO'        AND value = r.METRO)        AS metro,
	(SELECT value_label FROM cb WHERE variable = 'SURV_MODE'    AND value = r.SURV_MODE)    AS survey_mode,
	r.started_iso                  AS started_at,
	r.ended_iso                    AS completed_at,
	r.duration_ATH                 AS duration_min,
	r.WEIGHT_VC                    AS weight_ath,
	COALESCE(NULLIF(trim(r.VSTRAT32_VC), ''), trim(r.VSTRAT32_GP)) AS vstrat_ath,
	COALESCE(NULLIF(trim(r.VPSU32_VC), ''),   trim(r.VPSU32_GP))   AS vpsu_ath,
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1A' AND value = r.ATHENA1A) AS "q_priorities:jobs",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1B' AND value = r.ATHENA1B) AS "q_priorities:inflation",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1C' AND value = r.ATHENA1C) AS "q_priorities:ai_harms",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1D' AND value = r.ATHENA1D) AS "q_priorities:immigration",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1E' AND value = r.ATHENA1E) AS "q_priorities:healthcare",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1F' AND value = r.ATHENA1F) AS "q_priorities:crime",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA1G' AND value = r.ATHENA1G) AS "q_priorities:climate",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA2A' AND value = r.ATHENA2A) AS "q_affect:response",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA2B' AND value = r.ATHENA2B) AS "q_agency:response",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA3A' AND value = r.ATHENA3A) AS "q_community:saving_time",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA3B' AND value = r.ATHENA3B) AS "q_community:pressured",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA3C' AND value = r.ATHENA3C) AS "q_community:losing_connections",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA3D' AND value = r.ATHENA3D) AS "q_community:real_vs_fake",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA3E' AND value = r.ATHENA3E) AS "q_community:better_healthcare",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA4A' AND value = r.ATHENA4A) AS "q_families:job_security",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA4B' AND value = r.ATHENA4B) AS "q_families:outlook",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA4C' AND value = r.ATHENA4C) AS "q_families:children",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA4D' AND value = r.ATHENA4D) AS "q_families:finances",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA5A' AND value = r.ATHENA5A) AS "q_government:children",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA5B' AND value = r.ATHENA5B) AS "q_government:environment",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA5C' AND value = r.ATHENA5C) AS "q_government:workers",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA5D' AND value = r.ATHENA5D) AS "q_government:competitiveness",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA6A' AND value = r.ATHENA6A) AS "q_futures:smarter",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA6B' AND value = r.ATHENA6B) AS "q_futures:unintended",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA6C' AND value = r.ATHENA6C) AS "q_futures:breakthroughs",
	(SELECT value_label FROM cb WHERE variable = 'ATHENA6D' AND value = r.ATHENA6D) AS "q_futures:wmd"
FROM ts r;

CREATE TEMP TABLE _undecoded(n INTEGER CHECK (n = 0));
INSERT INTO _undecoded SELECT count(*) FROM out WHERE party_id IS NULL OR age_band IS NULL
	OR sex IS NULL OR ethnicity IS NULL OR education IS NULL OR educ_band IS NULL
	OR income_band IS NULL OR metro IS NULL OR survey_mode IS NULL
	OR "q_priorities:jobs" IS NULL OR "q_priorities:inflation" IS NULL
	OR "q_priorities:ai_harms" IS NULL OR "q_priorities:immigration" IS NULL
	OR "q_priorities:healthcare" IS NULL OR "q_priorities:crime" IS NULL
	OR "q_priorities:climate" IS NULL OR "q_affect:response" IS NULL
	OR "q_agency:response" IS NULL OR "q_community:saving_time" IS NULL
	OR "q_community:pressured" IS NULL OR "q_community:losing_connections" IS NULL
	OR "q_community:real_vs_fake" IS NULL OR "q_community:better_healthcare" IS NULL
	OR "q_families:job_security" IS NULL OR "q_families:outlook" IS NULL
	OR "q_families:children" IS NULL OR "q_families:finances" IS NULL
	OR "q_government:children" IS NULL OR "q_government:environment" IS NULL
	OR "q_government:workers" IS NULL OR "q_government:competitiveness" IS NULL
	OR "q_futures:smarter" IS NULL OR "q_futures:unintended" IS NULL
	OR "q_futures:breakthroughs" IS NULL OR "q_futures:wmd" IS NULL;
CREATE TEMP TABLE _badts(n INTEGER CHECK (n = 0));
INSERT INTO _badts SELECT count(*) FROM out
	WHERE started_at   NOT GLOB '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]'
	   OR completed_at NOT GLOB '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9] [0-9][0-9]:[0-9][0-9]:[0-9][0-9]'
	   OR date(substr(started_at, 1, 10)) IS NULL OR date(substr(completed_at, 1, 10)) IS NULL;
CREATE TEMP TABLE _dupid(n INTEGER CHECK (n = 0));
INSERT INTO _dupid SELECT count(*) - count(DISTINCT submission_id) FROM out;
CREATE TEMP TABLE _designfill(n INTEGER CHECK (n = 0));
INSERT INTO _designfill SELECT count(*) FROM resp
	WHERE (trim(VSTRAT32_VC) = '') <> (trim(VPSU32_VC) = '')
	   OR trim(VSTRAT32_GP) = '' OR trim(VPSU32_GP) = ''
	   OR (trim(VSTRAT32_VC) <> '' AND (trim(VSTRAT32_VC) <> trim(VSTRAT32_GP)
	                                 OR trim(VPSU32_VC)   <> trim(VPSU32_GP)));

SELECT * FROM out ORDER BY CAST(submission_id AS INTEGER);
