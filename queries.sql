-- Create a Table
CREATE TABLE "Employees"
(
    "Full Name" TEXT,
    "Salary" INT,
    "Job Position" TEXT,
    "Phone Extension" INT,
    "Is Part Time" BOOL
);
-- Create Employees
INSERT INTO "Employees"
    ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES
    ('John Jackson', '200000', 'Coffee Courier', '000', 'true');
INSERT INTO "Employees"
    ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES
    ('Todd Ault', '1000000', 'CEO', '001', 'false');
INSERT INTO "Employees"
    ("Full Name","Salary","JobPosition","Phone Extension","Is Part Time")
VALUES
    ('Perry Williams’,'150000',‘CTO’,‘333’,‘false’);
INSERT INTO "Employees" ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES ('Lazy Larry','25000','Son of the boss','444','true');
INSERT INTO "Employees" ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES ('Alex Jones’, ‘70000’, ‘PR Manager’, ‘555’, ‘false’);
INSERT INTO "Employees"
    ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES
    ('Anthony Pettis', '70000', 'Cook', '666', 'false');

-- Select all columns for all employees.
CompanyDatabase>
SELECT *
FROM "Employees";



-- Select only the full names and phone extensions for only full-time employees.
SELECT "Full Name", "Phone Extension"
FROM "Employees"
WHERE "Is Part Time" = 'false';
-- Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.
INSERT INTO "Employees"
    ("Full Name","Salary","Job Position","Phone Extension","Is Part Time")
VALUES
    ('Tristan DeAugustine', '450000', 'Senior Developer', '777', 'true');
-- Update all employees that are cooks to have a salary of 500.
UPDATE "Employees" SET "Salary" = '500000' WHERE "Job Position" = 'Cook';
-- Delete all employees that have the full name of “Lazy Larry”.
DELETE FROM "Employees" WHERE "Full Name" = 'Lazy Larry';
--Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.
ALTER TABLE "Employees" ADD COLUMN “ParkingSpot” VARCHAR
(10);
-- In your CompanyDatabase, add a table named Departments with the following columns:
CREATE TABLE “Departments”
(
 "Id" SERIAL PRIMARY KEY,
 "DepartmentName" INT,
 "Building" TEXT
 );