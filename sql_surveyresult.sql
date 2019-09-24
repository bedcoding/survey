CREATE TABLE 'surveyresult' (
	'answernum' INT(11) NOT NULL AUTO_INCREMENT,
	'answer' INT(11) NOT NULL,
	'question' VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY ('answernum')
);