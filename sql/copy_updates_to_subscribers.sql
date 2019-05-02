UPDATE `subscribers`
INNER JOIN `subscribers_update`
ON `subscribers`.subscriber_key = `subscribers_update`.subscriber_key
SET
`subscribers`.updated = `subscribers`.first_name != `subscribers_update`.first_name,
`subscribers`.first_name = `subscribers_update`.first_name,
`subscribers`.email = `subscribers_update`.email,
`subscribers`.preference = `subscribers_update`.preference;