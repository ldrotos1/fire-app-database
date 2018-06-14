COPY "department"("department_id","name","abbreviation","chief","address","city","state","zip","phone","personnel") 
FROM 'C:\Users\Louis\WORKSPACES\fire-app\fire-app-database\department_data.csv' DELIMITER ',' CSV HEADER;
