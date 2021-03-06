SELECT Name
FROM Candidate
WHERE id = (
    SELECT CandidateId
    FROM Vote
    GROUP BY CandidateId
    ORDER BY COUNT(CandidateId) DESC LIMIT 1
);

-- use LIMIT to select specific number of rows