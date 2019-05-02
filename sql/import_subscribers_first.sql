LOAD DATA LOCAL INFILE '/home/jack/projects/mysqltest/data/before.txt'
INTO TABLE subscribers
FIELDS TERMINATED BY ','
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(subscriber_key,first_name,email,preference,persistent_value);