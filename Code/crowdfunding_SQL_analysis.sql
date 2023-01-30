-- Retriving number of backer_counts for live campaigns.
SELECT cf_id, backers_count
FROM campaign
WHERE (outcome = 'live')
GROUP BY cf_id
ORDER BY backers_count DESC;

-- Confriming results via refrence of backers table
SELECT b.cf_id,
	cam.backers_count
FROM backers AS b
	INNER JOIN campaign AS cam
	ON b.cf_id = cam.cf_id
WHERE (outcome = 'live')
GROUP BY b.cf_id, cam.backers_count
ORDER BY cam.backers_count DESC;

-- Query creating a new table to store first name of each contact
SELECT co.first_name,
	co.last_name,
	co.email, 
	SUM(cam.goal - cam.pledged) AS remaining_goal_amount
INTO email_contacts_remaining_goal_amount
FROM campaign AS cam
	INNER JOIN contacts AS co
	ON cam.contact_id = co.contact_id
WHERE (outcome = 'live')
GROUP BY first_name, last_name, email
ORDER BY remaining_goal_amount DESC;

-- Verification of table
SELECT * FROM email_contacts_remaining_goal_amount;

-- Creating table for the purposes of backers Goal Left email
SELECT b.email,
	b.first_name,
	b.last_name,
	cam.cf_id,
	cam.company_name,
	cam.decription,
	cam.end_date,
	SUM(cam.goal-cam.pledged) AS left_of_goal
INTO email_backers_remaining_goal_amount
FROM campaign AS cam
	INNER JOIN backers AS b
	ON b.cf_id = cam.cf_id
GROUP BY email, first_name, last_name, cam.cf_id, company_name, decription, end_date
ORDER BY last_name;


