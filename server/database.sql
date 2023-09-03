CREATE DATABASE perntodo;


CREATE TABLE users(
    userID SERIAL PRIMARY KEY,
    username VARCHAR(255),
    Email VARCHAR(255),
    Password VARCHAR(255)
);
CREATE TABLE todo(
    todo_id SERIAL PRIMARY KEY,
    userID INT REFERENCES users(userID),
    description VARCHAR(255),
    completion_time TIMESTAMP DEFAULT NULL,
    createdAt TIMESTAMP DEFAULT NOW()
);

CREATE TABLE EditHistory (
    edit_id SERIAL PRIMARY KEY,
    todo_id INT REFERENCES todo(todo_id), 
    EditTime TIMESTAMP DEFAULT NOW(),   
    EditorUserID INT REFERENCES users(userID),  
    BeforeEdit VARCHAR(255)                 
);