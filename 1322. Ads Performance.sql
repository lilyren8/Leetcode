SELECT ad_id, IFNULL(ROUND(SUM(action = "Clicked")/SUM(action = "Clicked" OR action = "Viewed") * 100, 2), 0) AS ctr
FROM Ads
GROUP BY ad_id
ORDER BY ctr DESC, ad_id;