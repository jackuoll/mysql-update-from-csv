CREATE TABLE IF NOT EXISTS subscribers (
    subscriber_key VARCHAR(50) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    preference TINYINT(1),
    persistent_value VARCHAR(50),
    updated TINYINT(1),
    PRIMARY KEY (subscriber_key)
)  ENGINE=INNODB;