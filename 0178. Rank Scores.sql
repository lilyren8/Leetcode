SELECT
    score,
    DENSE_RANK() OVER (
        ORDER BY Score DESC
    ) `Rank`
FROM
    Scores;

-- For MySQL solutions, to escape reserved words used as column names, you can use an apostrophe before and after the keyword. For example `Rank`.