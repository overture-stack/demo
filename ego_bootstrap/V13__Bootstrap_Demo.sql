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
    'ADMIN');

INSERT INTO egoapplication
    (id, name, clientid, clientsecret, redirecturi, description, status, type)
VALUES
    ('98d98180-65f9-11e9-a923-1681be663d3e',
    'song',
    'song',
    'song',
    'http://song:7080',
    'song',
    'APPROVED',
    'ADMIN');

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
