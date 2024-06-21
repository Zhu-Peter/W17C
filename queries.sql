CREATE TABLE blogger (
    id INT auto_increment PRIMARY KEY,
    username VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    bio TEXT,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(255) UNIQUE,
    age INT CHECK (age >= 18 AND age < 120)
);

INSERT INTO blogger (username, password, bio, name, created_at, email, age)
VALUES
    ('alice123', 'secure_password', 'Passionate about blogging', 'Alice Johnson', '2022-05-10', 'alice@example.com', 21),
    ('bob456', 'strong_pw', 'Tech enthusiast', 'Bob Smith', '2022-06-15', 'bob@example.com', 30),
    ('alex321', 'the_password', 'Passionate about blogging', 'Alex Johnson', '2024-05-10', 'alex@example.com', 23),
    ('bobby123', 'strong_password', 'Tech enthusiast', 'Bobby Smith', '2024-06-15', 'bobby@example.com', 31),
    ('john23', 'pass', 'Passionate about blogging', 'John Johnson', '2023-05-10', 'john@example.com', 22),
    ('kevin456', 'strong_pwpwpw', 'Tech enthusiast', 'Kevin Smith', '2023-06-15', 'kebvin@example.com', 39),
    ('miketheblog', 'secret1234567', 'Fitness blogger', 'Mike Brown', '2021-07-20', 'mike@example.com', 62),
   ('blog2221', 'pass', 'Passionate about blogging', 'Brian Johnson', '2021-05-10', 'blog@example.com', 45),
    ('newblogger', 'strong_pw', 'Tech enthusiast', 'Alvin Smith', '2020-06-15', 'newblog@example.com', 50),
    ('test', 'pass', 'test', 'test', '2020-07-20', 'test@test.com', 100),
    ('jkblog', '19990101', 'Fitness blogger', 'J.K. Brown', '2020-07-20', 'jkbrown@example.com', 22);
   
SELECT *
FROM blogger
WHERE created_at > '2020-01-01';

DELETE FROM blogger
WHERE username = 'test' OR email = 'test@test.com';

UPDATE blogger
SET password = 'bad_password'
WHERE password = 'pass';

