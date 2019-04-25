INSERT INTO egouser
    (id, name, email, type, firstname, lastname, createdat, lastlogin, status, preferredlanguage)
VALUES
    ('57b8f58e-cf8d-4a7f-ac49-51129e156f33',
    '',
    '   ',
    'ADMIN',
    'Demo',
    'User',
    NOW(),
    NOW(),
    'APPROVED',
    'ENGLISH');

INSERT INTO policy
    (id, owner, name)
VALUES
    ('27b08a5b-5328-4223-8ddc-c9e6dcaa48c3', NULL, 'demo');

INSERT INTO userpermission
    (id, policy_id, user_id, access_level)
VALUES
    ('b69740f2-c9c9-413e-a682-d62b002b54a7',
    '27b08a5b-5328-4223-8ddc-c9e6dcaa48c3',
    '57b8f58e-cf8d-4a7f-ac49-51129e156f33',
    'WRITE');

INSERT INTO token
    (id, name, owner, issuedate, isrevoked, description, expirydate)
VALUES
    ('e6881676-d88b-411d-b8db-4404b29ed585',
    'e6881676-d88b-411d-b8db-4404b29ed585',
    '57b8f58e-cf8d-4a7f-ac49-51129e156f33',
    NOW(),
    false,
    '',
    NOW() + interval '1 year');

INSERT INTO tokenscope
    (token_id, policy_id, access_level)
VALUES
    ('e6881676-d88b-411d-b8db-4404b29ed585',
    '27b08a5b-5328-4223-8ddc-c9e6dcaa48c3',
    'WRITE');

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
    'CLIENT'),
    ('98d98180-65f9-11e9-a923-1681be663d3e',
    'song',
    'song',
    'song',
    'http://song:7080',
    'song',
    'APPROVED',
    'CLIENT');
