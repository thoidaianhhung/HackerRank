CREATE TABLE Submissions (
	submission_id integer not null,
	hacker_id integer,
	challenge_id integer,
	score integer,
	primary key (submission_id)
);