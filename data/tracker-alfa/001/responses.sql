WITH demo AS (
 SELECT "Submission id","U.s. political affiliation",Age,Sex,"Ethnicity simplified",Status,"Started at","Completed at","Time taken" FROM demo1
 UNION ALL
 SELECT "Submission id","U.s. political affiliation",Age,Sex,"Ethnicity simplified",Status,"Started at","Completed at","Time taken" FROM demo2
)
SELECT d."Submission id"           AS submission_id,
	d."U.s. political affiliation" AS party_id,
	CASE
		WHEN CAST(d.Age AS INTEGER) BETWEEN 18 AND 34 THEN '18-34'
		WHEN CAST(d.Age AS INTEGER) BETWEEN 35 AND 49 THEN '35-49'
		WHEN CAST(d.Age AS INTEGER) BETWEEN 50 AND 64 THEN '50-64'
		WHEN CAST(d.Age AS INTEGER) >= 65             THEN '65+'
	END                            AS age_band,
	d.Sex                          AS sex,
	d."Ethnicity simplified"       AS ethnicity,
	d."Started at"                 AS started_at,
	d."Completed at"               AS completed_at,
	d."Time taken"                 AS time_taken,
	r."Q1 - Priorities object-2 Improving the job situation"                            AS "q_priorities:jobs",
	r."Q1 - Priorities object-2 Reducing inflation"                                     AS "q_priorities:inflation",
	r."Q1 - Priorities object-2 Dealing with harms from artificial intelligence (AI)"   AS "q_priorities:ai_harms",
	r."Q1 - Priorities object-2 Dealing with immigration"                               AS "q_priorities:immigration",
	r."Q1 - Priorities object-2 Improving health care"                                  AS "q_priorities:healthcare",
	r."Q1 - Priorities object-2 Reducing crime"                                         AS "q_priorities:crime",
	r."Q1 - Priorities object-2 Dealing with climate change"                            AS "q_priorities:climate",
	r."Q2a - Affect object-5 Response"                                                  AS "q_affect:response",
	r."Q2b - Agency object-7 Response"                                                  AS "q_agency:response",
	r."Q3 - Community object-9 People are saving time on everyday tasks"                    AS "q_community:saving_time",
	r."Q3 - Community object-9 People are pressured to do more, faster"                     AS "q_community:pressured",
	r."Q3 - Community object-9 People are losing connections to others"                     AS "q_community:losing_connections",
	r."Q3 - Community object-9 People are struggling to tell what's real from what's fake"  AS "q_community:real_vs_fake",
	r."Q3 - Community object-9 People are getting better health care"                       AS "q_community:better_healthcare",
	r."Q4 - Families object-11 Job security"          AS "q_families:job_security",
	r."Q4 - Families object-11 Outlook on the future" AS "q_families:outlook",
	r."Q4 - Families object-11 Children's well-being"  AS "q_families:children",
	r."Q4 - Families object-11 Household finances"     AS "q_families:finances",
	r."Q5 - Government object-13 AI's effects on children and young people"                  AS "q_government:children",
	r."Q5 - Government object-13 AI's environmental footprint, including from data centers"  AS "q_government:environment",
	r."Q5 - Government object-13 AI's effects on workers and jobs"                           AS "q_government:workers",
	r."Q5 - Government object-13 AI's effect on American competitiveness"                    AS "q_government:competitiveness",
	r."Q6 - Futures object-16 AI becoming smarter than humans at most tasks"               AS "q_futures:smarter",
	r."Q6 - Futures object-16 AI systems behaving in ways their developers did not intend" AS "q_futures:unintended",
	r."Q6 - Futures object-16 AI making major scientific and medical breakthroughs"        AS "q_futures:breakthroughs",
	r."Q6 - Futures object-16 AI being used to create weapons of mass destruction"         AS "q_futures:wmd"
FROM resp r
JOIN demo d ON d."Submission id" = r."Participant External Session ID"
WHERE r."Participant Status" = 'complete'             -- real questionnaire rows (drops question-text + END OF FILE footer; guards future incompletes)
	AND d."Status" IN ('APPROVED', 'AWAITING REVIEW') -- completed, non-withdrawn Prolific submissions (drops RETURNED/consent-revoked + TIMED-OUT)
ORDER BY d."Submission id";
