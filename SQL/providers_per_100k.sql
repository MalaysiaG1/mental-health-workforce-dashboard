SELECT
  State,
  ROUND(Total_Psychologists * 100000.0 / Total_Population, 2) AS Psychologists_per_100k
FROM `behavioral-health-service.behavioral_health_services_utilization.BHS_data`
WHERE Total_Population > 0
ORDER BY Psychologists_per_100k DESC;
