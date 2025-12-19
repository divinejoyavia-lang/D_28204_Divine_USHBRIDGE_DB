-- Data Retrieval Queries
-- Purpose: Basic data validation and relationship testing

-- View all clients
SELECT * FROM Clients;

-- View all projects
SELECT * FROM Projects;

-- View all designs
SELECT * FROM Designs;

-- View all sales
SELECT * FROM Sales;

-- Join clients and projects
SELECT c.client_id,
       c.name AS client_name,
       p.project_id,
       p.title AS project_title,
       p.project_status
FROM Clients c
JOIN Projects p ON c.client_id = p.client_id;
