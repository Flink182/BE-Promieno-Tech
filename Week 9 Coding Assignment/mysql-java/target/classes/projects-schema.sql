DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project;

CREATE TABLE project (
    project_id int AUTO_INCREMENT PRIMARY KEY,
    project_name varchar(128) NOT NULL,
    project_description text,
    start_date date,
    end_date date
);

CREATE TABLE category (
    category_id int AUTO_INCREMENT PRIMARY KEY,
    category_name varchar(128) NOT NULL
);

CREATE TABLE step (
    step_id int AUTO_INCREMENT PRIMARY KEY,
    project_id int NOT NULL,
    step_text text NOT NULL,
    step_order int NOT NULL,
    FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

CREATE TABLE material (
    material_id int AUTO_INCREMENT PRIMARY KEY,
    project_id int NOT NULL,
    material_name varchar(128) NOT NULL,
    num_required int,
    cost decimal(7,2),
    FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE
);

CREATE TABLE project_category (
    project_id int NOT NULL,
    category_id int NOT NULL,
    PRIMARY KEY (project_id, category_id),
    FOREIGN KEY (project_id) REFERENCES project (project_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE
);

SELECT * FROM project;