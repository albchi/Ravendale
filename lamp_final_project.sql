DROP DATABASE lamp_final_project;

CREATE DATABASE lamp_final_project;

USE lamp_final_project;

CREATE TABLE tCategory (
Category_ID int NOT NULL PRIMARY KEY,
CategoryName VARCHAR(50)
);

CREATE TABLE tRegion (
Region_ID int NOT NULL PRIMARY KEY,
RegionName VARCHAR(50)
);



CREATE TABLE tSubCategory (
SubCategory_ID int NOT NULL PRIMARY KEY,
Category_ID int,
SubCategoryName VARCHAR(50),
FOREIGN KEY (Category_ID) REFERENCES tCategory(Category_ID)
);

CREATE TABLE tLocation (
Location_ID int NOT NULL PRIMARY KEY,
Region_ID INT, 
LocationName VARCHAR(50),
FOREIGN KEY (Region_ID) REFERENCES tRegion(Region_ID)
);

CREATE TABLE tPosts (
Post_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(50),
Price INT,
Description VARCHAR(50),
Email VARCHAR(50),
Agreement VARCHAR(100),
TimeStamp TIME,
Image_1 BLOB,
Image_2 BLOB,
Image_3 BLOB,
Image_4 BLOB,
SubCategory_ID INT,
Location_ID INT,
FOREIGN KEY (Location_ID)    REFERENCES tLocation(Location_ID),
FOREIGN KEY (SubCategory_ID) REFERENCES tSubCategory(SubCategory_ID)
#CONSTRAINT fk_Location FOREIGN KEY (Location_ID)    REFERENCES tLocation(Location_ID),
#CONSTRAINT fk_Foreign  FOREIGN KEY (SubCategory_ID) REFERENCES tSubCategory(SubCategory_ID)
);



#  1. pre-create look up tables

INSERT INTO tCategory (Category_ID, CategoryName) VALUES (0, "For Sale");
INSERT INTO tCategory (Category_ID, CategoryName) VALUES (1, "Service");
INSERT INTO tCategory (Category_ID, CategoryName) VALUES (2, "Jobs");



INSERT INTO tRegion (Region_ID, RegionName) VALUES (0, "USA");
INSERT INTO tRegion (Region_ID, RegionName) VALUES (1, "India");
INSERT INTO tRegion (Region_ID, RegionName) VALUES (2, "Sweden");

INSERT INTO tLocation (Location_ID, LocationName) VALUES (0, "USA");
INSERT INTO tLocation (Location_ID, LocationName) VALUES (1, "India");
INSERT INTO tLocation (Location_ID, LocationName) VALUES (2, "Sweden");
INSERT INTO tLocation (Location_ID, LocationName) VALUES (3, "Cupertino");
INSERT INTO tLocation (Location_ID, LocationName) VALUES (4, "Mumbai");
INSERT INTO tLocation (Location_ID, LocationName) VALUES (5, "Stockholm");



INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (0, "Books");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (1, "Electronics ");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (2, "Household");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (3, "Computer");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (4, "Financial");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (5, "Lessons");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (6, "Full-Time");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (7, "Part-Time");
INSERT INTO tSubCategory (SubCategory_ID, SubCategoryName) VALUES (8, "Volunteering");

#  2. pre-populate posts  
# 
INSERT INTO tPosts (Title, Price, Description, SubCategory_ID,  Location_ID ) VALUES ("War and Piss", 12.00, "Epic Battle Between Bad People and Urine", 0, 0);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Water Bridge", 3.00, "A Bridge That Wanted To Be Over Land", 0,1);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Repair Your German Car ", 83.00, "German Cars Are Nice But Expensive To Repair", 0,2);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Boy Scout Master", 0, "I Can Lead Your Troop For Free",0, 2);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Cello Lessons", 100, "Julliard Graduate Teach Your Kids Cello",5, 0);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Violin Lessons", 80, "Manhattan Graduate ", 5, 2);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Barista", 14, "Starbuck Experience", 7, 0);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Plumber", 34, "Non Union ", 6, 2);

INSERT INTO tPosts (Title, Price, Description, SubCategory_ID, Location_ID) VALUES ("Community Mentorship for Young Boys", 0, "Ex-Marine Want To Give Back", 8, 1);

#  3. verify pre-population

DESCRIBE tSubCategory;
DESCRIBE tRegion;
DESCRIBE tLocation;
DESCRIBE tCategory;



SELECT * FROM tSubCategory;
SELECT * FROM tRegion;
SELECT * FROM tLocation;
SELECT * FROM tCategory;

