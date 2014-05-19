# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
```
name, location, url, description
```
## Release 1: Tweet Fields
```
photo, location, message field
```
## Release 2: Explain the relationship
```
The relationship between `users` and `tweets` is: 
It's a one to Many relationship. A user can created infinite tweets.
```

## Release 3: Schema Design
![alt tag](https://github.com/hinghuynh/phase_0_unit_3/blob/master/week_7/imgs/twitter-schema.jpg?raw=true)


## Release 4: SQL Statements
select tweets from a specific user
```
SELECT tweet_text FROM tweets WHERE user_id = 1;
```

the tweets from specific user made after last wednesday
```
SELECT tweet_text FROM tweets WHERE user_id = 1 AND created_at > '05/07/2014';
```

all tweets from a given twitter handle
```
SELECT tweet_text FROM tweets JOIN  users ON (user_id=id) WHERE name = 'hinghuynh';
```

get twitter handle associated with a given tweet id
```
SELECT name FROM users JOIN tweets ON (id=user_id) WHERE tweet_id = '9999';
```

## Release 5: Reflection
This was a pretty easy exercise as well. There wasn't realy anything that I struggled 
with. It took some time to figure out what inputs to add to the schema for twitter,
because I don't use twitter, but after doing that creating all the SQL statements
was fairly easy.  I didn't really enjoy this challenge, probably because I didn't get
to use my problem solving abilities to complete this exercise. Creating schemas is
getting tedious now.
