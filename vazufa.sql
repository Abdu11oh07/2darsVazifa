DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employes;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS tasks;


-- DEPARTMENTS
CREATE TABLE IF NOT EXISTS departments(
    id serial PRIMARY KEY,
    name text,
    location TEXT
);

INSERT INTO departments(name, location) VALUES
('Jalil', 'Python'),
('Sobir', 'C++'),
('Bakir', 'C#');


-- EMPLOYES
CREATE TABLE IF NOT EXISTS employes(
    id serial PRIMARY key,
    name text, 
    position text, 
    department_id INTEGER REFERENCES departments(id)
);


INSERT INTO employes(name, position, department_id) VALUES
('Jalil', 'Junior', 1),
('Sobir', 'Medium', 2),
('Bakir', 'Senior', 3);




-- PROJECTS
CREATE TABLE IF NOT EXISTS projects(
    id serial primary key,
    title text, 
    department_id INTAGER REFERENCES departments(id)
);

INSERT INTO projects(title, department_id) VALUEs
('UZUM', 1),
('OLCHA', 2),
('ALIBABA', 3);



SELECT * FROM departments;
SELECT * FROM employes;
SELECT * FROM projects;
SELECT * FROM tasks;



