COPY "station"("station_id","station_designator","number","department_id","lat","lon","name","address","city","state","zip","phone","is_volunteer") 
FROM 'C:\Users\Louis\WORKSPACES\fire-app\fire-app-database\station_data.csv' DELIMITER ',' CSV HEADER;