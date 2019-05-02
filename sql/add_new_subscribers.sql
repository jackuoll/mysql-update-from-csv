INSERT INTO `subscribers`
SELECT `subscribers_update`.*, 1
FROM `subscribers_update`
LEFT JOIN `subscribers`
ON `subscribers`.subscriber_key = `subscribers_update`.subscriber_key
WHERE `subscribers`.subscriber_key IS NULL;