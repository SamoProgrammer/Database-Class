
-- C: CREATE
INSERT INTO Users (FullName, Email, PasswordHash, IsActive)
VALUES 
('Alice Johnson', 'alice@example.com', 'hash_pw_1', TRUE),
('Bob Smith', 'bob@example.com', 'hash_pw_2', TRUE),
('Charlie Brown', 'charlie@example.com', 'hash_pw_3', FALSE);

-- R: READ
SELECT 
    UserId,
    FullName,
    Email,
    CreatedAt,
    IsActive
FROM Users
WHERE IsActive = TRUE
AND Email LIKE '%@example.com'
ORDER BY CreatedAt DESC
LIMIT 10 OFFSET 0;

-- U: UPDATE
UPDATE Users
SET 
    FullName = 'Alice M. Johnson',
    Email = 'alice.mj@example.com',
    PasswordHash = 'new_hash_pw_1',
    IsActive = TRUE,
    UpdatedAt = NOW()
WHERE UserId = 1;

-- D: DELETE
DELETE FROM Users
WHERE FullName = 'Alice M. Johnson'
