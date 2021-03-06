CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  objectId INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  text VARCHAR(150) NULL DEFAULT NULL,
  userId INTEGER NULL DEFAULT NULL,
  roomId INTEGER NULL DEFAULT NULL,
  createdAt TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (objectId)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE rooms (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  roomname VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  username VARCHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

ALTER TABLE messages ADD FOREIGN KEY (userId) REFERENCES users (id);
ALTER TABLE messages ADD FOREIGN KEY (roomId) REFERENCES rooms (id);

/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
