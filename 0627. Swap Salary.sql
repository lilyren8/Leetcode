-- IF(condition, value_if_true, value_if_false)
UPDATE Salary SET sex = IF(sex='m', 'f', 'm');