INSERT INTO egoapplication 
    (id, name, clientid, clientsecret, redirecturi, description, status, type) 
VALUES 
    ('96eeb453-e08f-46f1-bfa8-6ee377ee5b1f',
    'ego admin',
    'ego',
    'egoadminsecret',
    'http://localhost:3501',
    'admin ui',
    'APPROVED',
    'ADMIN'),
    ('bea3aceb-91a5-4c97-9d53-14beb3af988d',
    'score server',
    'score',
    'scoresecret',
    'http://localhost:8087',
    'score server',
    'APPROVED',
    'CLIENT');

INSERT INTO egouser
    (id, name, email, type, firstname, lastname, createdat, lastlogin, status, preferredlanguage)
VALUES
    ('57b8f58e-cf8d-4a7f-ac49-51129e156f33',
    '',
    '',
    'ADMIN',
    '',
    '',
    NOW(),
    NOW(),
    'APPROVED',
    'ENGLISH');
