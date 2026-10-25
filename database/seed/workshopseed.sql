
USE workshop_lab;

-- 1. Add participants
INSERT INTO participants (participant_name, email)
VALUES
    ('Aarav Mehta', 'aarav@example.com'),
    ('Diya Sharma', 'diya@example.com'),
    ('Kabir Reddy', 'kabir@example.com'),
    ('Ananya Rao', 'ananya@example.com'),
    ('Ishaan Patel', 'ishaan@example.com');

-- 2. Add workshops
INSERT INTO workshops
    (workshop_name, workshop_date, available_seats)
VALUES
    ('Python Fundamentals', '2026-11-10', 20),
    ('Web Development Basics', '2026-11-15', 15),
    ('Database Design', '2026-11-20', 12),
    ('Git and GitHub Essentials', '2026-11-25', 18);

-- 3. Register participants
INSERT INTO registrations
    (participant_id, workshop_id, status)
VALUES
    (1, 1, 'Registered'),
    (2, 1, 'Registered'),
    (3, 2, 'Registered'),
    (1, 3, 'Registered'),
    (4, 3, 'Cancelled'),
    (5, 4, 'Registered'),
    (2, 4, 'Registered');


