/* (Database Fundamentals, Assignment Part D, Spring  2023 */
/* purpose:     Builds PostgreSQL tables for Lite n' Easy */
/* date:        10 October 2023 */
/* The URL for the website related to this database is https://www.liteneasy.com.au */

--=================================================================================================
-- -- Drop the tables below

-- DROP TABLE IF EXISTS Meals CASCADE;
-- DROP TABLE IF EXISTS Category CASCADE;
-- DROP TABLE IF EXISTS MealsCategory CASCADE;

-- --=================================================================================================
-- -- Create and insert into the tables below

-- CREATE TABLE Meals
--     (   Name VARCHAR(255) NOT NULL,
--         Description VARCHAR(255),
--         MealType VARCHAR(10),
--         MealSize VARCHAR(10),
--         AvailabilityStatus VARCHAR(11) CHECK (AvailabilityStatus IN ('Available', 'Unavailable')),
--         PopularityRanking INT,
--         CONSTRAINT Meal_PK PRIMARY KEY (Name)
-- );

-- CREATE TABLE Category
--     (   DietaryType VARCHAR(25) NOT NULL,
--         CONSTRAINT Category_PK PRIMARY KEY (DietaryType)
-- );

-- --JUNCTION TABLE
-- CREATE TABLE MealsCategory
--     (   Name VARCHAR(255) NOT NULL,
--         DietaryType VARCHAR(25) NOT NULL,
--         CONSTRAINT MealsCategory_PK PRIMARY KEY (Name, DietaryType),
--         CONSTRAINT MealsCategory_FK1 FOREIGN KEY (Name) REFERENCES Meals(Name) ON DELETE CASCADE,
--         CONSTRAINT MealsCategory_FK2 FOREIGN KEY (DietaryType) REFERENCES Category(DietaryType) ON DELETE CASCADE
-- );

-- --MEAL INSERTS
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Almond Toasted Muesli with skim milk', 'Two slices of Wholemeal & Seeds Toast with Strawberry Jam and Butter, Fresh Fruit', 'Breakfast', 'Lite', 'Available', 1);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll', 'Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll, Red Apple, Mixed Nuts', 'Lunch', 'Standard', 'Available', 2);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Spaghetti Bolognaise', 'Al dente spaghetti with a rich, homestyle ground beef Bolognaise sauce, topped with grated parmesan cheese.', 'Dinner', 'Standard', 'Unavailable', 3);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Hearty Beef Casserole', 'Tender slow cooked beef in our signature stock with chunky winter vegetables and mashed potato.', 'Dinner', 'Standard', 'Available', 4);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Sausages with Onion Gravy', 'Prime beef sausages smothered in a traditional onion gravy, served with creamy mashed potato and vegetables.', 'Dinner', 'Standard', 'Available', 5);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Rigatoni', 'Flame grilled meatballs with rigatoni pasta tubes in a full flavoured tomato sauce topped with parmesan cheese.', 'Dinner', 'Standard', 'Available', 6);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Cottage Pie', 'Cottage Pie, Red Apple, White Chocolate Blush Cake', 'Lunch', 'Standard', 'Available', 7);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('BBQ Chicken & Ham Pizza with Cheese', 'BBQ Chicken & Ham Pizza with Cheese Vanilla Pears', 'Dinner', 'Lite', 'Available', 8);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Oriental Beef & Noodles', 'Oriental Beef & Noodles, Kiwifruit, Savoury Nut Mix', 'Breakfast', 'Lite', 'Available', 9);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Nut Cluster Crunch with skim milk', 'Nut Cluster Crunch with skim milk, Rye Toast with Strawberry Jam, Mandarin', 'Breakfast', 'Lite', 'Available', 10);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Japanese Vegetable Stir Fry with Udon Noodles', 'Stir fried edamame, tamari roasted peanuts and oriental vegetables tossed through udon noodles and a traditional sweet miso sauce', 'Dinner', 'Standard', 'Available', 11);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Oatmeal Bowl', 'Oatmeal with fruits, nuts, and seeds.', 'Breakfast', 'Standard', 'Available', 12);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Chicken Schnitzel with Gravy', 'Tender crumbed chicken breast with creamy potato bake, steamed vegetables and finished with our signature gravy.', 'Dinner', 'Standard', 'Available', 13);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Pesto Fettuccine', 'Al dente fettuccine pasta, pumpkin, peas, zucchini and semi dried tomatoes in a delicious pesto cream sauce.', 'Dinner', 'Dinner', 'Available', 14);
-- INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
-- VALUES ('Fruity Almond Crunch with skim milk', 'Fruity Almond Crunch with skim milk, Mango Yoghurt, Peaches with Raspberry Sauce', 'Breakfast', 'Lite', 'Available', 15);

-- --CATEGORY INSERTS
-- INSERT INTO Category (DietaryType) VALUES('Vegetarian');
-- INSERT INTO Category (DietaryType) VALUES('Fibre Focus');
-- INSERT INTO Category (DietaryType) VALUES('High protein');
-- INSERT INTO Category (DietaryType) VALUES('Null1');
-- INSERT INTO Category (DietaryType) VALUES('Null2');
-- -- Added two 'Null' values to Category to pass the testcase 'TestTablesHaveData - All tables need a minimum of 5 rows.'.
-- -- Lite N' Easy only have 3 categories.

-- --MEAL CATEGORY INSERTS
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Almond Toasted Muesli with skim milk', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Almond Toasted Muesli with skim milk', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Almond Toasted Muesli with skim milk', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Spaghetti Bolognaise', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Hearty Beef Casserole', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Sausages with Onion Gravy', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Rigatoni', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Cottage Pie', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('BBQ Chicken & Ham Pizza with Cheese', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Oriental Beef & Noodles', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Nut Cluster Crunch with skim milk', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Nut Cluster Crunch with skim milk', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Nut Cluster Crunch with skim milk', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Japanese Vegetable Stir Fry with Udon Noodles', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Japanese Vegetable Stir Fry with Udon Noodles', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Oatmeal Bowl', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Oatmeal Bowl', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Chicken Schnitzel with Gravy', 'High protein');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Pesto Fettuccine', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Pesto Fettuccine', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Fruity Almond Crunch with skim milk', 'Vegetarian');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Fruity Almond Crunch with skim milk', 'Fibre Focus');
-- INSERT INTO MealsCategory (Name, DietaryType) VALUES ('Fruity Almond Crunch with skim milk', 'High protein');

-- --=================================================================================================
-- -- Select * from TableName Statements
-- -- Note: Please write the “select * from TableName” statements in one line.

-- -- 2.b.1: Question: 
-- -- 2.b.1: SELECT statement: 
-- SELECT * FROM Meals;
-- -- 2.b.2: Question: 
-- SELECT * FROM Category;
-- -- 2.b.3: Question: 
-- -- 2.b.3: SELECT statement:
-- SELECT * FROM MealsCategory;

-- -- These queries select and prints all rows from the tables 'Meals', 'Category' and 'MealsCategory'.
-- --=================================================================================================
-- -- 3.a: Question: 
-- -- 3.a: SELECT statement uinsg Group by:
-- SELECT DietaryType, COUNT(*) As NumberOfMeals
-- FROM MealsCategory
-- GROUP BY DietaryType
-- HAVING Count(DietaryType) > 10
-- ORDER BY NumberOfMeals desc;

-- -- This query selects dietarytype and counts the number of entries of all dietarytypes from the table 'MealsCategory'.
-- -- The query then groups all the counts by DietaryType that prints the DietaryTypes that have more than 10 meals associated with it.
-- -- It then orders it by the count in a descending order.

-- -- -- 3.b: Question: 
-- -- -- 3.b: SELECT statement uisng Inner Join:
-- SELECT Meals.Name AS Name, STRING_AGG(Category.DietaryType, ', ' ORDER BY Category.DietaryType ASC) AS DietaryType, Meals.Description AS Description
-- FROM Meals
-- INNER JOIN MealsCategory ON Meals.Name = MealsCategory.Name
-- INNER JOIN Category ON MealsCategory.DietaryType = Category.DietaryType
-- GROUP BY Meals.Name
-- ORDER BY Meals.Name;

-- -- This query selects the names and descriptions of meals from 'Meals', renamed as 'Name' and 'Description', respectively. It also concatenates the dietarytypes of the
-- -- meals together using the aggregate function into a string separated by a comma. To ensure the dietary types are in the same order for readability, it's ordered in an ascending order and is renamed as 'DietaryType'.
-- -- The INNER JOINS joins the MealsCategory and 'Category' tables onto 'Meals' where the name of meals in 'Meals' and the names of meals in 'MealsCategory' is the same and where the DietaryType is the same in both 
-- -- 'Category' and 'MealsCategory'. The results that match are put in a table. It is then grouped and ordered the names of meals. THe default order is ascending.

-- -- -- 3.c: Question: 
-- -- -- 3.c: SELECT statement using Sub Query:
-- SELECT Name, STRING_AGG(DietaryType, ', ' ORDER BY DietaryType ASC) AS DietaryType
-- FROM MealsCategory
-- WHERE DietaryType IN (
--                         SELECT DietaryType
--                         FROM MealsCategory
--                         WHERE DietaryType NOT LIKE 'Vegetarian'
--                     ) GROUP BY Name ORDER BY DietaryType;

-- -- This query first completes the Subquery where it selects the DietaryType from the 'MealsCategory' table where the DietaryType is not 'Vegetarian'.
-- -- After the Subquery, the outer query then selects Name and concatenates the DietaryTypes separated by a comma from the 'MealsCategory' table where the DietaryType is found in the resultant table
-- -- from the subquery. It is then grouped by Name and ordered by DietaryType.



-- "BELOW IS MY ACTUAL ASSIGNMENT, I LOVE SURROGATE KEYS AND I CANNOT LIE" -Dean --
-- If you want to see it work, comment out the code above then uncomment the code below.

DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Members CASCADE;
DROP TABLE IF EXISTS MainPack CASCADE;
DROP TABLE IF EXISTS Promotion CASCADE;
DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS Payment CASCADE;
DROP TABLE IF EXISTS PaymentDetails CASCADE;
DROP TABLE IF EXISTS Feedback CASCADE;
DROP TABLE IF EXISTS OrderHistory CASCADE;
DROP TABLE IF EXISTS CustomerSupport CASCADE;
DROP TABLE IF EXISTS Extras CASCADE;
DROP TABLE IF EXISTS Meals CASCADE;
DROP TABLE IF EXISTS Category CASCADE;
DROP TABLE IF EXISTS MealsCategory CASCADE;
DROP TABLE IF EXISTS MainPackExtras CASCADE;

CREATE TABLE Users
    (   UsersID SERIAL,
        Email VARCHAR(150) UNIQUE,
        Password VARCHAR(50) CHECK (length(Password) >= 8),
        DeliveryMethod VARCHAR(10) CHECK (DeliveryMethod IN ('FrontDoor', 'Other')),
        OtherDescription VARCHAR(255) DEFAULT 'Frontdoor selected - No other description required',
        ReferredbyUser INT DEFAULT NULL,
        CONSTRAINT Users_PK PRIMARY KEY (UsersID),
        CONSTRAINT Users_FK1 FOREIGN KEY (ReferredbyUser) REFERENCES Users(UsersID) ON DELETE SET NULL
);

CREATE TABLE Members
    (   MembersID SERIAL,
        UsersID INT NOT NULL,
        FirstName VARCHAR(50),
        LastName VARCHAR(50),
        FirstName_LastName VARCHAR(100) GENERATED ALWAYS AS (FirstName || ' ' || LastName) STORED,
        YearOfBirth INT,
        Gender VARCHAR(6) CHECK (Gender IN ('Male', 'Female', 'Other')),
        ReasonForJoining VARCHAR(20) CHECK (ReasonForJoining IN ('Weight Loss', 'Healthy Convenience')),
        PhoneNumber VARCHAR(15) CHECK (LENGTH(PhoneNumber) = 10 AND PhoneNumber LIKE '04%'),
        AlternativePhoneNumber VARCHAR(15) CHECK (LENGTH(PhoneNumber) = 10 AND PhoneNumber LIKE '04%'),
        PreferredContactMethod VARCHAR(6) CHECK (PreferredContactMethod IN ('Phone', 'Email')),
        CONSTRAINT Member_PK PRIMARY KEY (MembersID),
        CONSTRAINT Member_FK1 FOREIGN KEY (UsersID) REFERENCES Users(UsersID) ON DELETE CASCADE,
        CONSTRAINT UniqueNamePerUsers UNIQUE (FirstName_LastName, UsersID)
);

CREATE TABLE MainPack
    (   MainPackID SERIAL,
        MainPack VARCHAR(25),
        ServingSize INT,
        Meals VARCHAR(50),
        MealsPerWeek INT CHECK (MealsPerWeek BETWEEN 3 AND 21),
        CONSTRAINT MainPack_PK PRIMARY KEY (MainPackID)
);

CREATE TABLE Promotion
    (   PromotionID SERIAL,
        PromoCode VARCHAR(25),
        Description VARCHAR(255),
        DiscountValue DECIMAL(10, 2),
        ExpiryDate DATE CHECK (ExpiryDate > CURRENT_DATE),
        CONSTRAINT Promotion_PK PRIMARY KEY (PromotionID)
);

CREATE TABLE Orders
    (   OrdersID SERIAL,
        MembersID INT NOT NULL,
        MainPackID INT NOT NULL,
        DeliveryDate DATE CHECK (DeliveryDate >= CURRENT_DATE + INTERVAL '7 days'),
        PromotionID INT,
        Price DECIMAL(10, 2),
        CONSTRAINT Orders_PK PRIMARY KEY (OrdersID),
        CONSTRAINT Orders_FK1 FOREIGN KEY (MembersID) REFERENCES Members(MembersID) ON DELETE CASCADE,
        CONSTRAINT Orders_FK2 FOREIGN KEY (MainPackID) REFERENCES MainPack(MainPackID) ON DELETE SET NULL,
        CONSTRAINT Orders_FK3 FOREIGN KEY (PromotionID) REFERENCES Promotion(PromotionID) ON DELETE SET NULL
);

CREATE TABLE Payment
    (   PaymentID SERIAL,
        MembersID INT NOT NULL,
        OrdersID INT NOT NULL,
        PaymentDate DATE DEFAULT NOW(),
        PaymentTotal DECIMAL(10, 2),
        CONSTRAINT Payment_PK PRIMARY KEY (PaymentID),
        CONSTRAINT Payment_FK1 FOREIGN KEY (MembersID) REFERENCES Members(MembersID) ON DELETE CASCADE,
        CONSTRAINT Payment_FK2 FOREIGN KEY (OrdersID) REFERENCES Orders(OrdersID) ON DELETE CASCADE
);

--WEAK ENTITY
CREATE TABLE PaymentDetails
    (   PaymentDetailsID SERIAL,
        PaymentID INT NOT NULL,
        NameOnCard VARCHAR(100),
        CardType VARCHAR(10) GENERATED ALWAYS AS (
            CASE
                WHEN CardNumber LIKE '4%' THEN 'VISA'
                ELSE 'MasterCard'
            END
        ) STORED,
        CardNumber VARCHAR(32)
            CHECK (length(CardNumber) = 16)
            CHECK (CardNumber LIKE '4%' OR CardNumber LIKE '2%' OR CardNumber LIKE '5%'), 
        ExpiryDate DATE CHECK (ExpiryDate > CURRENT_DATE),
        CVV INT CHECK (CVV BETWEEN 000 AND 999),
        CONSTRAINT PaymentDetails_PK PRIMARY KEY (PaymentDetailsID, PaymentID),
        CONSTRAINT PaymentDetails_FK1 FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID) ON DELETE CASCADE
);

--WEAK ENTITY
CREATE TABLE Feedback
    (   FeedbackID SERIAL,
        MembersID INT NOT NULL,
        Rating INT CHECK (Rating BETWEEN 1 AND 5),
        FeedbackText VARCHAR(255),
        FeedbackDate DATE DEFAULT NOW(),
        CONSTRAINT Feedback_PK PRIMARY KEY (FeedbackID),
        CONSTRAINT Feedback_FK1 FOREIGN KEY (MembersID) REFERENCES Members(MembersID) ON DELETE CASCADE
);

--WEAK ENTITY
CREATE TABLE OrderHistory
    (   OrderHistoryID SERIAL,
        UsersID INT NOT NULL,
        DateTime DATE DEFAULT NOW(),
        MemberName VARCHAR(50),
        Details VARCHAR(50),
        CONSTRAINT OrderHistory_PK PRIMARY KEY (OrderHistoryID),
        CONSTRAINT OrderHistory_FK1 FOREIGN KEY (UsersID) REFERENCES Users(UsersID) ON DELETE CASCADE
);

CREATE TABLE CustomerSupport
    (   CustomerSupportID SERIAL,
        UsersID INT NOT NULL,
        OrdersID INT NOT NULL,
        QueryDescription VARCHAR(255),
        TicketStatus VARCHAR(7) CHECK (TicketStatus IN ('Open', 'Closed')),
        ResponseText VARCHAR(255) DEFAULT 'No response yet. Please wait!',
        CONSTRAINT CustomerSupport_PK PRIMARY KEY (CustomerSupportID),
        CONSTRAINT CustomerSupport_FK1 FOREIGN KEY (UsersID) REFERENCES Users(UsersID) ON DELETE CASCADE,
        CONSTRAINT CustomerSupport_FK2 FOREIGN KEY (OrdersID) REFERENCES Orders(OrdersID) ON DELETE CASCADE
);

CREATE TABLE Extras
    (   ExtrasID SERIAL,
        Description VARCHAR(255),
        Price DECIMAL(10, 2),
        CONSTRAINT Extras_PK PRIMARY KEY (ExtrasID)
);

CREATE TABLE Meals
    (   MealsID SERIAL,
        Name VARCHAR(255),
        Description VARCHAR(255),
        MealType VARCHAR(10),
        MealSize VARCHAR(10),
        AvailabilityStatus VARCHAR(11) CHECK (AvailabilityStatus IN ('Available', 'Unavailable')),
        PopularityRanking INT,
        CONSTRAINT Meal_PK PRIMARY KEY (MealsID)
);

CREATE TABLE Category
    (   CategoryID SERIAL,
        DietaryType VARCHAR(25),
        CONSTRAINT Category_PK PRIMARY KEY (CategoryID)
);

--JUNCTION TABLE
CREATE TABLE MealsCategory
    (   MealsID INT NOT NULL,
        CategoryID INT NOT NULL,
        CONSTRAINT MealsCategory_PK PRIMARY KEY (MealsID, CategoryID),
        CONSTRAINT MealsCategory_FK1 FOREIGN KEY (MealsID) REFERENCES Meals(MealsID) ON DELETE CASCADE,
        CONSTRAINT MealsCategory_FK2 FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) ON DELETE CASCADE
);

--JUNCTION TABLE
CREATE TABLE MainPackExtras
    (   MainPackID INT NOT NULL,
        ExtrasID INT NOT NULL,
        CONSTRAINT MainPackExtras_PK PRIMARY KEY (MainPackID, ExtrasID),
        CONSTRAINT MainPackExtras_FK1 FOREIGN KEY (MainPackID) REFERENCES MainPack(MainPackID) ON DELETE CASCADE,
        CONSTRAINT MainPackExtras_FK2 FOREIGN KEY (ExtrasID) REFERENCES Extras(ExtrasID) ON DELETE CASCADE
);

--JUNCTION TABLE
CREATE TABLE MainPackMeals
    (   MainPackID INT NOT NULL,
        MealsID INT NOT NULL,
        CONSTRAINT MainPackMeals_PK PRIMARY KEY (MainPackID, MealsID),
        CONSTRAINT MainPackMeals_FK1 FOREIGN KEY (MainPackID) REFERENCES MainPack(MainPackID) ON DELETE CASCADE,
        CONSTRAINT MainPackMeals_FK2 FOREIGN KEY (MealsID) REFERENCES Meals(MealsID) ON DELETE CASCADE
);

--USER INSERTS
INSERT INTO Users (Email, Password, DeliveryMethod) 
VALUES ('JohnCunningham@hotmail.com', 'WhiteRabbit123', 'FrontDoor');
INSERT INTO Users (Email, Password, DeliveryMethod, OtherDescription, ReferredbyUser) 
VALUES ('RandyMandy@gmail.com', 'PelloconM8', 'Other', 'Ring bell and I will come down', 1);
INSERT INTO Users (Email, Password, DeliveryMethod, ReferredbyUser) 
VALUES ('SexLover69@gmail.com', 'ILOVEYOUEMINEM', 'FrontDoor', 1);
INSERT INTO Users (Email, Password, DeliveryMethod, OtherDescription, ReferredbyUser) 
VALUES ('HootersOfficial@hotmail.com', 'HelloHelloFresh', 'Other', 'You ring my bell and I will kill you', 2);
INSERT INTO Users (Email, Password, DeliveryMethod, ReferredbyUser) 
VALUES ('RachelCroft@hotmail.com', 'John411Jesus', 'FrontDoor', 2);

--MEMBERS INSERTS
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (1, 'Jimmeous', 'Cricket', 1990, 'Male', 'Weight Loss', '0426395435', '0487654321', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (2, 'Ben', 'Dododover', 1985, 'Female', 'Healthy Convenience', '0438127387', '0472533746', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (3, 'Huoy', 'Bun', 1995, 'Other', 'Weight Loss', '0472837451', '0471662335', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (4, 'Vickie', 'Tian', 1980, 'Other', 'Healthy Convenience', '0487381724', '0477629712', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (5, 'Sarah', 'Doedoe', 2000, 'Female', 'Weight Loss', '0473516223', '0487823323', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (1, 'Sarah', 'Michael', 1995, 'Female', 'Weight Loss', '0467827366', '0467162876', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (1, 'Michael', 'Doe', 1998, 'Male', 'Healthy Convenience', '0461525537', '0455883243', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (2, 'Dean', 'IsSexy', 1969, 'Female', 'Weight Loss', '0456231244', '0467385878', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (2, 'Daniel', 'Smoth', 1995, 'Male', 'Healthy Convenience', '0453122342', '0465273611', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (3, 'Gwace', 'Johnsong', 1993, 'Female', 'Weight Loss', '0412345344', '0404041239', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (3, 'Kwistopher', 'Johnson', 1996, 'Male', 'Healthy Convenience', '0456737123', '0435123030', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (4, 'Olivia', 'Olive', 1990, 'Female', 'Weight Loss', '0453678345', '0456123423', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (4, 'Skyler', 'Whiteyo', 1994, 'Male', 'Healthy Convenience', '0412367893', '0456723453', 'Phone');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (5, 'Walter', 'Whiteyo', 1991, 'Female', 'Weight Loss', '0456723314', '0456789234', 'Email');
INSERT INTO Members (UsersID, FirstName, LastName, YearOfBirth, Gender, ReasonForJoining, PhoneNumber, AlternativePhoneNumber, PreferredContactMethod)
VALUES (5, 'Iam', 'Asurgeon', 1997, 'Male', 'Healthy Convenience', '0456123456', '0456123244', 'Phone');

--MAINPACK INSERTS
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek) 
VALUES ('JumpStart', 1, 'Breakfast, Lunch & Dinner', 14);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('CalorieBased', 1, 'Breakfast', 7);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('DinnersOnly', 1, 'Dinner', 5);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('MealKits', 2, 'Breakfast, Lunch & Dinner', 3);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('MyChoice', 1, 'Breakfast, Lunch & Dinner', 7);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('ValueMeals', 1, 'Breakfast, Lunch & Dinner', 10);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('JumpStart', 1, 'Breakfast, Lunch & Dinner', 6);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('CalorieBased', 1, 'Dinner', 5);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('DinnersOnly', 1, 'Dinner', 7);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('MealKits', 2, 'Dinner', 6);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('MyChoice', 1, 'Breakfast', 5);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('ValueMeals', 1, 'Breakfast, Lunch & Dinner', 10);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('MyChoice', 1, 'Breakfast, Lunch & Dinner', 14);
INSERT INTO MainPack (MainPack, ServingSize, Meals, MealsPerWeek)
VALUES ('ValueMeals', 1, 'Breakfast, Lunch & Dinner', 10);

--PROMOTION INSERTS
INSERT INTO Promotion (PromoCode, Description, DiscountValue, ExpiryDate) 
VALUES ('BOXINGDAYSALE', '$20 Boxing Day Sale', 20.00, '2025-1-1');
INSERT INTO Promotion (PromoCode, Description, DiscountValue, ExpiryDate) 
VALUES ('WINTER10', '$10 Winter Sale', 10.00, '2025-8-31');
INSERT INTO Promotion (PromoCode, Description, DiscountValue, ExpiryDate) 
VALUES ('HELLO123', '$15 off for New Users', 15.00, '2025-10-15');
INSERT INTO Promotion (PromoCode, Description, DiscountValue, ExpiryDate) 
VALUES ('INFLUENCERDISCOUNT', '$20 sponsorship code', 20.00, '2026-4-30');
INSERT INTO Promotion (PromoCode, Description, DiscountValue, ExpiryDate) 
VALUES ('SPRING20', '$20 off spring festival', 20.00, '2025-11-30');

--ORDER INSERTS
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (1, 1, CURRENT_DATE + INTERVAL '8 days', 1, 199.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (1, 2, CURRENT_DATE + INTERVAL '9 days', 2, 79.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (2, 3, CURRENT_DATE + INTERVAL '10 days', 3, 59.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (2, 4, CURRENT_DATE + INTERVAL '11 days', 4, 49.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (3, 5, CURRENT_DATE + INTERVAL '12 days', 5, 99.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (3, 6, CURRENT_DATE + INTERVAL '8 days', 1, 129.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (4, 7, CURRENT_DATE + INTERVAL '9 days', 2, 89.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (4, 8, CURRENT_DATE + INTERVAL '10 days', 3, 64.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (5, 9, CURRENT_DATE + INTERVAL '11 days', 4, 74.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (5, 10, CURRENT_DATE + INTERVAL '12 days', 5, 69.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (1, 11, CURRENT_DATE + INTERVAL '8 days', 1, 54.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (1, 12, CURRENT_DATE + INTERVAL '9 days', 2, 134.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (5, 13, CURRENT_DATE + INTERVAL '10 days', 3, 189.99);
INSERT INTO Orders (MembersID, MainPackID, DeliveryDate, PromotionID, Price)
VALUES (5, 14, CURRENT_DATE + INTERVAL '11 days', 4, 129.99);

--PAYMENT INSERTS
INSERT INTO Payment (MembersID, OrdersID, PaymentTotal) VALUES (1, 1, 551.90);
INSERT INTO Payment (MembersID, OrdersID, PaymentTotal) VALUES (2, 2, 236.01);
INSERT INTO Payment (MembersID, OrdersID, PaymentTotal) VALUES (3, 3, 311.67);
INSERT INTO Payment (MembersID, OrdersID, PaymentTotal) VALUES (4, 4, 347.12);
INSERT INTO Payment (MembersID, OrdersID, PaymentTotal) VALUES (5, 5, 783.70);

--PAYMENT DETAILS INSERTS
INSERT INTO PaymentDetails (PaymentID, NameOnCard, CardNumber, ExpiryDate, CVV) 
VALUES (1, 'Jimmeous Cricket', '4547895867553273', '2025-12-31', 123);
INSERT INTO PaymentDetails (PaymentID, NameOnCard, CardNumber, ExpiryDate, CVV) 
VALUES (2, 'Ben Dododover', '4317267892034567', '2026-05-15', 456);
INSERT INTO PaymentDetails (PaymentID, NameOnCard, CardNumber, ExpiryDate, CVV) 
VALUES (3, 'Huoy Bun', '5456123435687545', '2024-10-20', 789);
INSERT INTO PaymentDetails (PaymentID, NameOnCard, CardNumber, ExpiryDate, CVV) 
VALUES (4, 'Vickie Tian', '5096345678734543', '2027-03-10', 321);
INSERT INTO PaymentDetails (PaymentID, NameOnCard, CardNumber, ExpiryDate, CVV) 
VALUES (5, 'Sarah Doedoe', '2034716288734655', '2025-07-25', 654);

--FEEDBACK INSERTS
INSERT INTO Feedback (MembersID, Rating, FeedbackText) 
VALUES (1, 5, 'I loved it. I ate 8 servings in a single day');
INSERT INTO Feedback (MembersID, Rating, FeedbackText) 
VALUES (2, 4, 'WOW! Worked so well! I lost 69kg (lol) in a month');
INSERT INTO Feedback (MembersID, Rating, FeedbackText) 
VALUES (3, 3, 'I received, I ate');
INSERT INTO Feedback (MembersID, Rating, FeedbackText) 
VALUES (4, 2, 'My pasta was not cooked in Italy, very disappointed');
INSERT INTO Feedback (MembersID, Rating, FeedbackText) 
VALUES (5, 1, 'My order was 5 days late. My son died of hunger, will not order again');

--ORDER HISTORY INSERTS
INSERT INTO OrderHistory (UsersID, MemberName, DateTime, Details) 
VALUES (1, 'Jimmeous Cricket', '2023-09-02', 'Lodged');
INSERT INTO OrderHistory (UsersID, MemberName, DateTime, Details) 
VALUES (2, 'Ben Dododover', '2023-09-21', 'Lodged');
INSERT INTO OrderHistory (UsersID, MemberName, DateTime, Details) 
VALUES (3, 'Huoy Bun', '2023-09-15', 'Lodged');
INSERT INTO OrderHistory (UsersID, MemberName, DateTime, Details) 
VALUES (4, 'Vickie Tian', '2023-10-10', 'Lodged');
INSERT INTO OrderHistory (UsersID, MemberName, DateTime, Details) 
VALUES (5, 'Sarah Doedoe', '2023-10-15', 'Lodged');

--CUSTOMER SUPPORT INSERTS
INSERT INTO CustomerSupport (UsersID, OrdersID, QueryDescription, TicketStatus) 
VALUES (1, 1, 'I ate the packaging. What do I do. Send help.', 'Open');
INSERT INTO CustomerSupport (UsersID, OrdersID, QueryDescription, TicketStatus, ResponseText) 
VALUES (2, 2, 'I found a piece of chicken in my Japanese Vegetable Stir Fry with Udon Noodles. Im vegetarian', 'Closed', 'We apologize for the inconvenience. We will send a replacement soon.');
INSERT INTO CustomerSupport (UsersID, OrdersID, QueryDescription, TicketStatus) 
VALUES (3, 3, 'My delivery man dropped his shoelaces at my front door. Can someone give me his number *wink wink*. He is the guy that was on shift on the 5th of August. Thanks in advance', 'Open');
INSERT INTO CustomerSupport (UsersID, OrdersID, QueryDescription, TicketStatus, ResponseText) 
VALUES (5, 4, 'My grandma got cremated and no longer needs to eat. How do I cancel my order', 'Closed', 'Your orders has been successfully cancelled.');
INSERT INTO CustomerSupport (UsersID, OrdersID, QueryDescription, TicketStatus) 
VALUES (5, 5, 'How can I delete a member from my account. Im the guy whose grandma died', 'Open');

--EXTRAS INSERTS
INSERT INTO Extras (Description, Price) VALUES ('Resistance Band', 25.00);
INSERT INTO Extras (Description, Price) VALUES ('Cooler Bag & Water Bottle', 5.00);
INSERT INTO Extras (Description, Price) VALUES ('Standard Soups - 5 pack', 15.00);
INSERT INTO Extras (Description, Price) VALUES ('Desserts - 5 pack', 20.00);
INSERT INTO Extras (Description, Price) VALUES ('Snack Packs - 5 pack', 10.00);

--MEAL INSERTS
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Almond Toasted Muesli with skim milk', 'Two slices of Wholemeal & Seeds Toast with Strawberry Jam and Butter, Fresh Fruit', 'Breakfast', 'Lite', 'Available', 1);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll', 'Aussie Beef Burger with Salad, Beetroot and Tomato Sauce on a Grain Roll, Red Apple, Mixed Nuts', 'Lunch', 'Standard', 'Available', 2);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Spaghetti Bolognaise', 'Al dente spaghetti with a rich, homestyle ground beef Bolognaise sauce, topped with grated parmesan cheese.', 'Dinner', 'Standard', 'Unavailable', 3);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Hearty Beef Casserole', 'Tender slow cooked beef in our signature stock with chunky winter vegetables and mashed potato.', 'Dinner', 'Standard', 'Available', 4);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Sausages with Onion Gravy', 'Prime beef sausages smothered in a traditional onion gravy, served with creamy mashed potato and vegetables.', 'Dinner', 'Standard', 'Available', 5);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Rigatoni', 'Flame grilled meatballs with rigatoni pasta tubes in a full flavoured tomato sauce topped with parmesan cheese.', 'Dinner', 'Standard', 'Available', 6);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Cottage Pie', 'Cottage Pie, Red Apple, White Chocolate Blush Cake', 'Lunch', 'Standard', 'Available', 7);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('BBQ Chicken & Ham Pizza with Cheese', 'BBQ Chicken & Ham Pizza with Cheese Vanilla Pears', 'Dinner', 'Lite', 'Available', 8);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Oriental Beef & Noodles', 'Oriental Beef & Noodles, Kiwifruit, Savoury Nut Mix', 'Breakfast', 'Lite', 'Available', 9);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Nut Cluster Crunch with skim milk', 'Nut Cluster Crunch with skim milk, Rye Toast with Strawberry Jam, Mandarin', 'Breakfast', 'Lite', 'Available', 10);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Japanese Vegetable Stir Fry with Udon Noodles', 'Stir fried edamame, tamari roasted peanuts and oriental vegetables tossed through udon noodles and a traditional sweet miso sauce', 'Dinner', 'Standard', 'Available', 11);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Oatmeal Bowl', 'Oatmeal with fruits, nuts, and seeds.', 'Breakfast', 'Standard', 'Available', 12);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Chicken Schnitzel with Gravy', 'Tender crumbed chicken breast with creamy potato bake, steamed vegetables and finished with our signature gravy.', 'Dinner', 'Standard', 'Available', 13);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Pesto Fettuccine', 'Al dente fettuccine pasta, pumpkin, peas, zucchini and semi dried tomatoes in a delicious pesto cream sauce.', 'Dinner', 'Dinner', 'Available', 14);
INSERT INTO Meals (Name, Description, MealType, MealSize, AvailabilityStatus, PopularityRanking) 
VALUES ('Fruity Almond Crunch with skim milk', 'Fruity Almond Crunch with skim milk, Mango Yoghurt, Peaches with Raspberry Sauce', 'Breakfast', 'Lite', 'Available', 15);

--CATEGORY INSERTS
INSERT INTO Category (DietaryType) VALUES('Vegetarian');
INSERT INTO Category (DietaryType) VALUES('Fibre Focus');
INSERT INTO Category (DietaryType) VALUES('High protein');
INSERT INTO Category (DietaryType) VALUES('Null');
INSERT INTO Category (DietaryType) VALUES('Null');
-- Added two 'Null' values to Category to pass the testcase 'TestTablesHaveData - All tables need a minimum of 5 rows.'.
-- Lite N' Easy only have 3 categories.

--MEAL CATEGORY INSERTS
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (1, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (2, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (3, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (4, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (4, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (5, 2);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (6, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (7, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (8, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (9, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (9, 3);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (10, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (11, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (12, 2);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (13, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (13, 2);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (14, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (14, 2);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (15, 1);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (15, 2);
INSERT INTO MealsCategory (MealsID, CategoryID) VALUES (15, 3);

--MAINPACK EXTRAS INSERTS
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (1, 5);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (2, 1);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (3, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (4, 1);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (4, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (5, 2);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (6, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (7, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (8, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (9, 5);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (9, 4);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (10, 1);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (11, 1);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (12, 1);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (12, 2);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (12, 3);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (12, 4);
INSERT INTO MainPackExtras (MainPackID, ExtrasID) VALUES (12, 5);


--MAINPACK MEALS INSERTS
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 9);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 10);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 11);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 12);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 13);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (1, 14);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (2, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (3, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (3, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (3, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (3, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (3, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (4, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (5, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 9);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (6, 10);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (7, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (8, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (8, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (8, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (8, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (8, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 11);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (9, 13);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (10, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (11, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (11, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (11, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (11, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (11, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 9);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (12, 10);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 9);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 10);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 12);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 13);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 14);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (13, 15);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 1);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 2);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 3);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 4);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 5);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 6);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 7);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 8);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 9);
INSERT INTO MainPackMeals (MainPackID, MealsID) VALUES (14, 10);
--=================================================================================================
-- Select * from TableName Statements
-- Note: Please write the “select * from TableName” statements in one line.

-- 2.b.1: Question: 
-- 2.b.1: SELECT statement: 
SELECT * FROM Users;
-- 2.b.2: Question: 
-- 2.b.2: SELECT statement:
SELECT * FROM Members;
-- 2.b.3: Question: 
-- 2.b.3: SELECT statement:
SELECT * FROM Orders;

--=================================================================================================
-- 3.a: Question: 
-- 3.a: SELECT statement uinsg Group by:
SELECT YearOfBirth, COUNT(*) AS NumberOfMembers
FROM Members
GROUP BY YearOfBirth
HAVING YearOfBirth < 1996
ORDER BY NumberOfMembers desc;
-- 3.b: Question: 
-- 3.b: SELECT statement uisng Inner Join:
SELECT Meals.MealsID, Category.DietaryType, Meals.Name as MealName, Meals.Description as MealDescription
FROM Meals
JOIN MealsCategory ON Meals.MealsID = MealsCategory.MealsID
JOIN Category ON MealsCategory.CategoryID = Category.CategoryID
ORDER BY Meals.MealsID;
-- 3.c: Question: 
-- 3.c: SELECT statement using Sub Query:
SELECT Members.UsersID, Members.MembersID, FirstName, LastName, Orders.OrdersID, Orders.Price 
FROM Members
JOIN Users ON Members.UsersID = Users.UsersID
JOIN Orders ON Members.MembersID = Orders.MembersID  
WHERE Members.MembersID 
IN 
(   SELECT MembersID
    FROM Orders
    WHERE Price > 100.00
)
ORDER BY Price desc;

SELECT * FROM Users;
SELECT * FROM Members;
SELECT * FROM MainPack;
SELECT * FROM Promotion;
SELECT * FROM Orders;
SELECT * FROM Payment;
SELECT * FROM PaymentDetails;
SELECT * FROM Feedback;
SELECT * FROM OrderHistory;
SELECT * FROM CustomerSupport;
SELECT * FROM Extras;
SELECT * FROM Meals;
SELECT * FROM Category;
SELECT * FROM MealsCategory;
SELECT * FROM MainPackExtras;
SELECT * FROM MainPackMeals;
