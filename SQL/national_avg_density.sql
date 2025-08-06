SELECT
  ROUND(SUM(Total_Psychologists) * 100000.0 / SUM(Total_Population), 2) AS National_Psychologists_per_100k,
  ROUND(SUM(Core_Providers) * 100000.0 / SUM(Total_Population), 2) AS National_Core_Providers_per_100k
FROM `behavioral-health-service.behavioral_health_services_utilization.BHS_data`;
