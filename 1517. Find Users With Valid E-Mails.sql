SELECT * 
FROM Users
WHERE REGEXP_LIKE(mail, '^[A-Za-z][A-Za-z0-9\_\.\-]*@leetcode.com');

-- ^ must match from the start
-- * 0 or more characters