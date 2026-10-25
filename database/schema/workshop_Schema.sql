
USE workshop_lab;

CREATE TABLE IF NOT EXISTS participants (
    participant_id INT AUTO_INCREMENT PRIMARY KEY,
    participant_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    joined_on DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE IF NOT EXISTS workshops (
    workshop_id INT AUTO_INCREMENT PRIMARY KEY,
    workshop_name VARCHAR(120) NOT NULL,
    workshop_date DATE NOT NULL,
    available_seats INT NOT NULL DEFAULT 20
);

CREATE TABLE IF NOT EXISTS registrations (
    registration_id INT AUTO_INCREMENT PRIMARY KEY,
    participant_id INT NOT NULL,
    workshop_id INT NOT NULL,
    registration_date DATE NOT NULL DEFAULT (CURRENT_DATE),
    status VARCHAR(20) NOT NULL DEFAULT 'Registered',
    FOREIGN KEY (participant_id)
        REFERENCES participants(participant_id),
    FOREIGN KEY (workshop_id)
        REFERENCES workshops(workshop_id)
);
