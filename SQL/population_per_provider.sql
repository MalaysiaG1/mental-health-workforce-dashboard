SELECT
  State,
  ROUND(Total_Population / NULLIF(Total_Psychologists, 0), 0) AS Pop_per_Provider
FROM `behavioral-health-service.behavioral_health_services_utilization.BHS_data`
ORDER BY Pop_per_Provider DESC;
