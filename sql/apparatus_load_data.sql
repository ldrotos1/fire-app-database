COPY "apparatus"("apparatus_id","unit_designator","station_id","apparatus_type_id","is_reserve") 
FROM 'C:\Users\Louis\WORKSPACES\fire-app\fire-app-database\apparatus_data.csv' DELIMITER ',' CSV HEADER;
CREATE INDEX apparatus_index ON apparatus (station_id,apparatus_type_id);