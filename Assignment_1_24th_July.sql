create table if not exists Attribute_DataSet (Dress_ID int,Style varchar(30),Price varchar(30),
Rating double ,Size varchar(30),Season varchar(30),NeckLine varchar(30),SleeveLength varchar(30),
waiseline varchar(30),Material varchar(30),FabricType varchar(30),Decoration varchar(30),
Pattern_Type varchar(30),Recommendation int);
show tables
select* from Attribute_DataSet

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Attribute DataSet_Final.csv' INTO TABLE Attribute_DataSet
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SHOW VARIABLES LIKE "secure_file_priv"; 
