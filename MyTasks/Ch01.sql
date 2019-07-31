CREATE TABLE animal_kind (
	id bigserial PRIMARY KEY,
	kind_name varchar(50),
	kind_description varchar(100)
);

INSERT INTO animal_kind (kind_name, kind_description)
VALUES	('Bear', NULL),
		('Wolf', NULL),
		('Fox', NULL);
		
CREATE TABLE animal (
	id bigserial PRIMARY KEY,
	animal_kind_id bigint REFERENCES animal_kind (id),
	date_of_birth date,
	animal_name varchar(50),
	gender varchar(1)
);

INSERT INTO animal (animal_kind_id, date_of_birth, animal_name, gender)
VALUES	(1, '2015-01-10', 'Strong', 'M');

SELECT * FROM animal_kind;
SELECT * FROM animal;