SELECT
  State,
  ROUND(Core_Providers * 100000.0 / Total_Population, 2) AS Core_Providers_per_100k
FROM `behavioral-health-service.behavioral_health_services_utilization.BHS_data`
WHERE Core_Providers IS NOT NULL
ORDER BY Core_Providers_per_100k DESC;
