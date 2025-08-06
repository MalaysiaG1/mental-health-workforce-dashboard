SELECT
  State,
  ROUND(Total_Population / NULLIF(Total_Psychologists, 0), 0) AS Pop_per_Provider,
  CASE
    WHEN Total_Population / NULLIF(Total_Psychologists, 0) >= 30000 THEN 'High Shortage'
    ELSE 'Adequate or Moderate'
  END AS Shortage_Status
FROM `behavioral-health-service.behavioral_health_services_utilization.BHS_data`
ORDER BY Pop_per_Provider DESC;
