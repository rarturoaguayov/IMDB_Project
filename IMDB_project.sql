# Se crea la base de datos
CREATE DATABASE imdb_top_1000_db;

USE imdb_top_1000_db;

USE imdb_top_1000_db;

# Se define la tabla en base a las columnas presentes en el dataset
CREATE TABLE imdb_top_1000 (
    Poster_Link VARCHAR(1002),
    Series_Title VARCHAR(1002),
    Released_Year INT,
    Certificate VARCHAR(1002),
    Runtime VARCHAR(1002),
    Genre VARCHAR(1002),
    IMDB_Rating DECIMAL(3,1),
    Overview TEXT,
    Meta_score INT,
    Director VARCHAR(1002),
    Star1 VARCHAR(1002),
    Star2 VARCHAR(1002),
    Star3 VARCHAR(1002),
    Star4 VARCHAR(1002),
    No_of_votes INT,
    Gross DECIMAL(12,2)
);

# Carga de los datos del archivo .csv
SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\imd_top_1000.csv'
INTO TABLE imdb_top_1000
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;




