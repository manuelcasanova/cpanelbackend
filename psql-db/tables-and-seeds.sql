DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS steps CASCADE;

CREATE TABLE users (
  _id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255) NOT NULL,
  roles json DEFAULT ('{"Beginner": 2001}'),
  password VARCHAR(255) NOT NULL,
  user_is_active BOOLEAN DEFAULT TRUE,
  user_is_selected BOOLEAN DEFAULT FALSE,
  refreshToken VARCHAR(255),
  email VARCHAR(255) NOT NULL
);

CREATE TABLE steps (
  _id SERIAL PRIMARY KEY NOT NULL,
  step_title VARCHAR(255) NOT NULL,
  step_level_id INTEGER NOT NULL,
  step_pronunciation VARCHAR(255),
  step_video VARCHAR(255),
  step_is_active BOOLEAN DEFAULT TRUE,
  step_is_selected BOOLEAN DEFAULT FALSE
);

INSERT INTO users (username, roles, password, email)
VALUES
(
  'Manuel_Casanova',
      '{ 
    "Beginner": 2001,
    "Intermediate": 2002,
    "Intermediate2": 2003,
    "Advanced": 2004,
    "Admin": 2005
     }',
'$2b$10$5sQHD/O5O2NOaq07ZlCQbuWvHgJu05PypSqhU.BuXS1IOrKPabYnS', 
'manucasanova@hotmail.com'),

(
  'Julio_Montero',
      '{ 
    "Beginner": 2001,
    "Intermediate": 2002,
    "Intermediate2": 2003,
    "Advanced": 2004,
    "Admin": 2005
     }',
'$2b$10$5sQHD/O5O2NOaq07ZlCQbuWvHgJu05PypSqhU.BuXS1IOrKPabYnS', 
'info@vancuba.com'),

(
  'Laura',
      '{ 
    "Beginner": 2001
     }',
'$2b$10$5sQHD/O5O2NOaq07ZlCQbuWvHgJu05PypSqhU.BuXS1IOrKPabYnS', 
'laura@g.com');

INSERT INTO steps (step_title, step_level_id, step_pronunciation, step_video)
VALUES
(
  'Basic step', 
1, 
'https://backend.casinosteps.ca/audios/basic-step.mp3',
 'https://backend.casinosteps.ca/videos/Basic.mp4' 
 )


