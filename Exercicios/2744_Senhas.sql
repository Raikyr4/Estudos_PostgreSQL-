SELECT
    id,
    password,
    MD5(password) AS md5
FROM
    account;