#Task_1: Create a  table attribute dataset and dress dataset.
#Task_2: Do a bulk load for these two table for respective dataset. 

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

create table Dress_Sales( Dress_ID int,A varchar(30),B varchar(30),C varchar(30),D varchar(30),E varchar(30),F varchar(30),
G varchar(30),H varchar(30),I varchar(30),J varchar(30),K varchar(30),L varchar(30),M varchar(30),N varchar(30),O varchar(30),P varchar(30),
Q varchar(30),R varchar(30),S varchar(30),T varchar(30),U varchar(30),V varchar(30),W varchar(30));


select * from Dress_sales

LOAD DATA INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Dress Sales_Final.csv" into table Dress_Sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

#Task_6: in sql task try to perform left join operation with attrubute dataset and dress dataset on column Dress_ID
select * from Attribute_DataSet left join Dress_Sales on Attribute_DataSet.Dress_ID= Dress_Sales.Dress_ID



#Task_7: Write a sql query to find out how many unique dress that we have based on dress id. 
select count(distinct(dress_id)) from Attribute_DataSet

#Task_8: Try to find out how mnay dress is having recommendation 0.
select count(dress_id) from Attribute_DataSet where Recommendation= 0;


#select count(*) from Attribute_DataSet
#select distinct(dress_id) from Attribute_DataSet
#SELECT * FROM Attribute_DataSet as tab1 INNER JOIN Dress_Sales as tab2 ON tab1.dress_id = tab2.dress_id
#select bank_info.age, bank_info.marital, bank_info.job from bank_info left join bank_info2 on bank_info.age= bank_info2.age
#SHOW VARIABLES LIKE "secure_file_priv"; 
#create table archit.task( emp_id int, address varchar(100), contact_number int)
#select* from archit.task
#drop table archit.task
#select* from archit.task

