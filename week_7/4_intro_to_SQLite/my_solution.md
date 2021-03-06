# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
```
SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
```
## Release 1: Insert Data 
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Hing', 'Huynh', 'hinghuynh@gmail.com.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37
```
## Release 2: Multi-line commands
```
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37
```
## Release 3: Add a column
```
sqlite> ALTER TABLE users
   ...> ADD nicknames VARCHAR(64);
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43            
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37            
sqlite> UPDATE users
   ...> SET nicknames='Kimchee'
   ...> WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43  Kimchee   
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37            
sqlite> UPDATE users
   ...> SET nicknames='Hingo'
   ...> WHERE id=2;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43  Kimchee   
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37  Hingo 
```
## Release 4: Change a value
```
sqlite> UPDATE users
   ...> SET first_name='Kimmy'
   ...> WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames 
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43  Kimchee   
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37  Hingo     
sqlite> UPDATE users
   ...> SET nicknames='Ninja Coder'
   ...> WHERE id=1;
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at           nicknames  
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-05-13 20:53:43  2014-05-13 20:53:43  Ninja Coder
2           Hing        Huynh       hinghuynh@gmail.com.c  2014-05-13 20:55:37  2014-05-13 20:55:37  Hingo   
```
## Release 5: Reflect
This was good practice for SQL. The most difficult thing was figuring out the syntax
for updating any of the user data. But after some google searching, I was able to
find the proper syntax and get data to change.  I felt like I had better familiarity
with SQL after this exercise.  I enjoyed being able to print out the changes to the 
tables after editing them.  This exercise was a lot better than the schema creation
exercises.

