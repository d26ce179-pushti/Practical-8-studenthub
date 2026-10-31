
CREATE DATABASE IF NOT EXISTS studenthub;
USE studenthub;

-- 1. Student table
CREATE TABLE IF NOT EXISTS student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB;

-- 2. Event table
CREATE TABLE IF NOT EXISTS event_studenthub (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE
) ENGINE=InnoDB;

-- 3. Registration table
CREATE TABLE IF NOT EXISTS registration (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    event_id INT NOT NULL,

    CONSTRAINT fk_registration_student
        FOREIGN KEY (student_id)
        REFERENCES student(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_registration_event
        FOREIGN KEY (event_id)
        REFERENCES event_studenthub(event_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT unique_student_event
        UNIQUE (student_id, event_id)
) ENGINE=InnoDB;
