CREATE TABLE IF NOT EXISTS Building (
	building_id SERIAL PRIMARY KEY,
	building_name VARCHAR(64) NULL,
	street_number INTEGER NOT NULL,
	street_name VARCHAR(64) NOT NULL,
	city VARCHAR(64) NOT NULL,
	state VARCHAR(2),
	zipcode INTEGER NOT NULL
	);

CREATE TABLE IF NOT EXISTS Class (
	class_id SERIAL PRIMARY KEY,
	class_name VARCHAR(64),
	credit_hours INTEGER NOT NULL,
	description VARCHAR(64)
	);

CREATE TABLE IF NOT EXISTS Level (
	level_id SERIAL PRIMARY KEY,
	level_name VARCHAR(64) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Program (
	program_id SERIAL PRIMARY KEY,
	program_name VARCHAR(64) NOT NULL,
	level_id INTEGER REFERENCES Level (level_id),
	duration INTEGER NOT NULL,
	credits_required INTEGER
	);

CREATE TABLE IF NOT EXISTS Concentration (
	concentration_id SERIAL PRIMARY KEY,
	program_id INTEGER REFERENCES Program (program_id),
	concentratin_name VARCHAR(64) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Profile (
	profile_id SERIAL PRIMARY KEY,
	first_name VARCHAR(64) NOT NULL,
	middle_name VARCHAR(64) NULL,
	last_name VARCHAR(64) NOT NULL,
	program_id INTEGER REFERENCES Program (program_id),
	gender INTEGER NULL, -- 1: Male, 2: Female, 3: Non-binary, To be completed
	ethnicity INTEGER NULL, -- 1: Asian, 2: White, 3: Hispanic, 4: American Indian, 5: African American, 6: Indian, To be completed
	marital_status INTEGER NULL, -- 1: Single, 2: Maried, To be completed
	religion INTEGER NULL, -- 1: Christianism, 2: Islam, 3: Judaism, 3: Buddism, To be completed
	employment INTEGER NULL, -- NOT SURE
	visa_code INTEGER NULL, -- 1: Student (F1), 2: Internship (J1)
	country_of_citizenship INTEGER NULL, -- 1: France, To be completed
	consent_to_disclosure INTEGER NULL, -- 1: Mother, 2: Father, To be completed
	directory_information INTEGER NULL
	);

CREATE TABLE IF NOT EXISTS Room (
	room_id SERIAL PRIMARY KEY,
	building_id INTEGER REFERENCES Building (building_id),
	room_number INTEGER NOT NULL
	);

CREATE TABLE IF NOT EXISTS Registration (
	registration_id SERIAL PRIMARY KEY,
	profile_id INTEGER REFERENCES Profile (profile_id),
	class_id INTEGER REFERENCES Class (class_id),
	room_id INTEGER REFERENCES Room (room_id),
	day integer, -- 1: Monday, 2: Tuesday, 3: Wednesday, 4: Thursday, 5: Friday, 6: Saturday
	time TIME,
	date_of_registration DATE,
	status BOOLEAN
	);
