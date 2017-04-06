-- SQL statement to generate Top250 therapeutic moeities from hcref rx_retail_usage 

SELECT ROW_NUMBER() OVER (ORDER BY "total" DESC) as rank, "ai_set"
FROM "rx_retail_usage"
ORDER BY "total" DESC
LIMIT 250