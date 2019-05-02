LOAD DATA LOCAL INFILE '/home/jack/projects/mysqltest/data/update.txt'
INTO TABLE subscribers_update
FIELDS TERMINATED BY ','
ESCAPED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(subscriber_key,first_name,email,preference);
