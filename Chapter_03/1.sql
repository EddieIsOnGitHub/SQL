
SELECT
    numeric_column * 10000000 AS "Fixed",
    real_column * 10000000 AS "Float"
FROM number_data_types
WHERE numeric_column = .7;


SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

SELECT numeric_column,
       CAST(numeric_column AS integer),
       CAST(numeric_column AS varchar(6))
FROM number_data_types;

-- Does not work:
SELECT CAST(char_column AS integer) FROM char_data_types;

-- Alternate notation for CAST is the double-colon:
SELECT timestamp_column::varchar(10)
FROM date_time_types;

CREATE TABLE char_data_types (
    varchar_column varchar(10),
    char_column char(10),
    text_column text
);

INSERT INTO char_data_types
VALUES
    ('abc', 'abc', 'abc'),
    ('defghi', 'defghi', 'defghi');

COPY char_data_types TO 'C:\Code College\bootcamp\SQL\My_corse_code\typetest.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

Select * from char_data_types;
drop table char_data_types;

SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;

SELECT numeric_column,
       CAST(numeric_column AS integer),
       CAST(numeric_column AS varchar(6))
FROM number_data_types;

CREATE TABLE date_time_types (
    timestamp_column timestamp with time zone,
    interval_column interval
);

INSERT INTO date_time_types
VALUES
    ('2018-12-31 01:00 EST','2 days'),
    ('2018-12-31 01:00 PST','1 month'),
    ('2018-12-31 01:00 Australia/Melbourne','1 century'),
    (now(),'1 week');

SELECT * FROM date_time_types;













