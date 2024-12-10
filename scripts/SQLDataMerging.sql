CREATE TABLE primary_south_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO primary_south_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Bangladesh', 'BGD','School enrollment, primary (% gross)','SE.PRM.ENRR',79.7272897473219),
    ('India', 'IND', 'School enrollment, primary (% gross)','SE.PRM.ENRR',92.9802829101706),
    ('Pakistan', 'PAK', 'School enrollment, primary (% gross)','SE.PRM.ENRR',58.3672623198406);

CREATE TABLE secondary_south_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO secondary_south_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Bangladesh', 'BGD','School enrollment, secondary (% gross)','SE.SEC.ENRR',42.496692),
    ('India', 'IND', 'School enrollment, secondary (% gross)','SE.SEC.ENRR',54.184848),
    ('Pakistan', 'PAK', 'School enrollment, secondary (% gross)','SE.PRM.ENRR',26.451670);

CREATE TABLE tertiary_south_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO tertiary_south_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Bangladesh', 'BGD','School enrollment, tertiary (% gross)','SE.TER.ENRR',10.916715),
    ('India', 'IND', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',54.184848),
    ('Pakistan', 'PAK', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',26.451670);

CREATE TABLE primary_east_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO primary_east_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('China', 'CHN','School enrollment, primary (% gross)','SE.PRM.ENRR',111.044143),
    ('Japan', 'JPN', 'School enrollment, primary (% gross)','SE.PRM.ENRR',102.881660),
    ('Korea, Rep', 'KOR', 'School enrollment, primary (% gross)','SE.PRM.ENRR',100.561874);

CREATE TABLE secondary_east_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);
INSERT INTO secondary_east_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('China', 'CHN','School enrollment, secondary (% gross)','SE.SEC.ENRR',44.248507),
    ('Japan', 'JPN', 'School enrollment, secondary (% gross)','SE.SEC.ENRR',96.421310),
    ('Korea, Rep', 'KOR', 'School enrollment, secondary (% gross)','SE.SEC.ENRR',79.851395);


CREATE TABLE tertiary_east_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO tertiary_east_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('China', 'CHN','School enrollment, tertiary (% gross)','SE.TER.ENRR',18.485329),
    ('Japan', 'JPN', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',40.739180),
    ('Korea, Rep.', 'KOR', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',49.521295);


CREATE TABLE primary_southeast_asian2 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO primary_southeast_asian2 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Indonesia', 'IDN','School enrollment, primary (% gross)','SE.PRM.ENRR',110.306780889347),
    ('Philippines', 'PHL', 'School enrollment, primary (% gross)','SE.PRM.ENRR',105.494524566872),
    ('Viet Nam', 'VNM', 'School enrollment, primary (% gross)','SE.PRM.ENRR',110.149673565867);

CREATE TABLE secondary_southeast_asian3 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);

INSERT INTO secondary_southeast_asian3 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Indonesia', 'IDN','School enrollment, secondary (% gross)','SE.SEC.ENRR',75.076466504274),
    ('Philippines', 'PHL', 'School enrollment, secondary (% gross)','SE.SEC.ENRR',79.8966177642504),
    ('Viet Nam', 'VNM', 'School enrollment, secondary (% gross)','SE.SEC.ENRR',75.2826901901136);

CREATE TABLE tertiary_southeast_asian3 (
    country_name VARCHAR(15),
    country_code VARCHAR(15),
    indicator_name VARCHAR(50),
    indicator_code VARCHAR(50),
    enrollment_rate_avg REAL
);
INSERT INTO tertiary_southeast_asian3 (country_name, country_code, indicator_name, indicator_code, enrollment_rate_avg)
VALUES 
    ('Indonesia', 'IDN','School enrollment, tertiary (% gross)','SE.TER.ENRR',17.5483625680208),
    ('Philippines', 'PHL', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',28.705357670784),
    ('Viet Nam', 'VNM', 'School enrollment, tertiary (% gross)','SE.TER.ENRR',14.5084202922881);


SELECT primary_south_asian2.country_name, primary_south_asian2.country_code,primary_south_asian2.enrollment_rate_avg AS "Average Primary School Enrollment Rate", secondary_south_asian2.enrollment_rate_avg AS "Average Secondary School Enrollment Rate", 
tertiary_south_asian2.enrollment_rate_avg AS "Average Tertiary School Enrollment Rate"FROM primary_south_asian2
JOIN secondary_south_asian2 
ON primary_south_asian2.country_name = secondary_south_asian2.country_name
JOIN tertiary_south_asian2
ON tertiary_south_asian2.country_name = secondary_south_asian2.country_name;

SELECT 
    primary_east_asian2.country_name, 
    primary_east_asian2.country_code,
    primary_east_asian2.enrollment_rate_avg AS "Average Primary School Enrollment Rate", 
    secondary_east_asian2.enrollment_rate_avg AS "Average Secondary School Enrollment Rate", 
    tertiary_east_asian2.enrollment_rate_avg AS "Average Tertiary School Enrollment Rate"
FROM primary_east_asian2
LEFT JOIN secondary_east_asian2 
ON primary_east_asian2.country_name = secondary_east_asian2.country_name
LEFT JOIN tertiary_east_asian2
ON primary_east_asian2.country_name = tertiary_east_asian2.country_name;


SELECT 
    primary_southeast_asian2.country_name, 
    primary_southeast_asian2.country_code,
    primary_southeast_asian2.enrollment_rate_avg AS "Average Primary School Enrollment Rate", 
    secondary_southeast_asian3.enrollment_rate_avg AS "Average Secondary School Enrollment Rate", 
    tertiary_southeast_asian3.enrollment_rate_avg AS "Average Tertiary School Enrollment Rate"
FROM primary_southeast_asian2
JOIN secondary_southeast_asian3 
ON primary_southeast_asian2.country_name = secondary_southeast_asian3.country_name
JOIN tertiary_southeast_asian3
ON tertiary_southeast_asian3.country_name = secondary_southeast_asian3.country_name;
