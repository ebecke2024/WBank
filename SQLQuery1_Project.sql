--Eric Becker
--Project part B
USE [master]
Go

IF DB_ID('WBank_Project') is not null
Alter Database WBank_Project
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE
GO

IF DB_ID('WBank_Project') IS NOT NULL
DROP DATABASE [WBank_Project]
GO


CREATE DATABASE [WBank_Project]
GO

USE [WBank_Project]
GO

--Schemas
Create Schema WBank;
Go

--Creating Tables
Create Table WBank.AccountType (
	AccountTypeID Int NOT Null,
	AccountType Varchar(255) Not Null,
	Primary Key (AccountTypeID)
);

Create Table WBank.Employees (
	EmployeeID int NOt null, 
	EmployeeNumber int NOt null,
	FirstName Varchar(255) NOt null,
	LastName Varchar(255) NOt null,
	Title Varchar(50) NOt null,
	CanCreateNewAccount Varchar(255) NOt null,
	HourlySalary Decimal NOt null,
	Address Varchar(255) NOt null,
	City Varchar(255) NOt null,
	State Varchar(255) NOt null,
	Zip_Code int NOt null,
	Email_Address Varchar(255) NOt null,
	Primary Key(EmployeeID)
);

Create Table WBank.Locations (
	LocationID int NOt null,
	LoctionCode int NOt null,
	Address Varchar(255) NOt null,
	City Varchar(255) NOt null,
	State Varchar(255) NOT null,
	Primary Key (LocationID)
);

Create Table WBank.Customers (
	CustomerID int NOt null,
	DateCreated Varchar(255) NOt null,
	AccountNumber int NOt null,
	AccountTypeID int NOt null,
	Fname Varchar(255) NOt null,
	Lname Varchar(255) NOt null,
	Gender Varchar(255) NOt null,
	Address Varchar(255) NOt null,
	City Varchar(255) NOt null,
	State Varchar(255) NOt null,
	PhoneNumber Varchar(255) NOT null, 
	EmailAddress Varchar(255) NOt null
	Primary Key (CustomerID)
);

Create Table WBank.Withdrawals (
	WithdrawalID int NOt null,
	LocationID int NOt null,
	EmployeeID int NOt null,
	CustomerID int NOt null,
	WithDrawalDate Varchar(255) NOt null,
	WithdrawalAmount Decimal NOt null,
	WithdrawalSuccessful Varchar(10) NOt null,
	Primary Key (WithdrawalID)
);

Create Table WBank.Desposits (
	DepositID int Not Null,
	LocationID int NOt null,
	EmployeeID int NOt null,
	CustomerID int NOt null,
	DepositDate Varchar(255) Not null,
	DepositAmount Decimal not null,
	Primary Key (DepositID)
);

Create Table WBank.CheckingCashing (
	CheckingCashingID int NOt null,
	LocationID int NOt null,
	EmployeeID int NOt null,
	CustomerID int NOt null,
	CheckingChasingDate Varchar(255) not null,
	CheckingCashingAmount Decimal not null,
	Primary Key (CheckingCashingID)
);

--Employees Inserts

Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (1, 123, 'Eric', 'Becker', 'Banker', 'Yes', 52.45, '123 Awesome Way', 'New York', 'New York', 23895, 'edbecker1819@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (2, 345, 'Peter', 'Peterson', 'Banker', 'Yes', 46.75, '345 Linclon Ave', 'Jackson', 'New Jeresy', 34567, 'ppeterson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (3, 678, 'Jane', 'Smith', 'Bank Manger', 'Yes', 75.34, '555 John Doe Way', 'Savannah', 'Georgia', 45678, 'jsmith223@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (4, 901, 'Jessica', 'Hendrick', 'Assistant', 'No', 35.67, '111 Dustin Ave', 'Orlando', 'Florida',12893, 'jhendrick900@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (5, 234, 'Ken', 'Ables', 'Assistant', 'No', 37.90, '45 West Ave', 'Townville', 'Washington', 99944, 'kables334@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (6, 567, 'Betty', 'Hanson', 'Banker', 'Yes', 67.88, '123 Reading way', 'Fredtown', 'Kansas', 10234, 'bhanson90@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (7, 890, 'Timmy', 'Johnson', 'Banker', 'Yes', 58.98, '445 Running Ave', 'Jack City', 'Virgina', 99556, 'tjohnson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (8, 112, 'Johnathon', 'McMasters', 'Bank Manager', 'Yes', 74.99, '90 Gaming Way', 'Eric Town', 'Maine', 20244, 'jmcmasters@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (9, 113, 'Greg', 'Kington', 'Assistant', 'No', 40.89, 'Pink Park Ave', 'Jackson', 'Maryland', 55678, 'gkington@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (10, 114, 'Tom', 'Tomson', 'Banker', 'Yes', 65.92, '334 Love Lane', 'Lalaland', 'Ohio', 67890, 'ttomson445@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (11, 115, 'Heather', 'Smith', 'Bank Manager', 'Yes', 89.98, '345 Guts Park', 'Los Vegas', 'Nevada', 77890, 'hsmith33@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (12, 116, 'Stacy', 'Tonton', 'Banker', 'Yes', 64.23, '119 Math Ave', 'Ghost Street', 'Indiana', 88900, 'stonton@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (13, 117, 'Phineas', 'Blackwell', 'Assistant', 'No', 25.67, '43 West Park', 'West Coast', 'Alabama', 99000, 'pblackwell298@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (14, 118, 'Ferb', 'Jackmon', 'Banker', 'Yes', 55.77, '34 Alright Lane', 'Big Town', 'Colrodo', 88345, 'fjackmon99@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (15, 119, 'Mary', 'Maryson', 'Banker', 'Yes', 54.67, '190 This Way', 'Amy City', 'Connecticut', 98765, 'mmaryson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (16, 111, 'James', 'Longton', 'Banker', 'Yes', 56.84, '345 That Way', 'James Town', 'Iowa', 28654, 'jlongton@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (17, 110, 'Cassy', 'McNight', 'Banker', 'Yes', 67.88, '112 North Ave', 'Super Town', 'Kentucky', 55780, 'cmcnight@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (18, 122, 'Jeremy', 'Gregson', 'Bank Manager', 'Yes', 91.45, '113 East Street', 'Town town', 'Louisiana', 87345, 'jgregson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (19, 121, 'Liz', 'Lemon', 'Assistant', 'No', 34.77, '114 West Street', 'Mike City', 'Minnesota', 67512, 'llemon@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (20, 133, 'Michael', 'Robertson', 'Assistant', 'No', 29.83, '115 South Ave', 'Beck City', 'Mississippi', 77123,'mrobertson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (21, 888, 'Laura', 'Barton', 'Bank Manager', 'Yes', 87.91, '116 NorthEast street', 'South City', 'Delaware', 89012, 'lbarton@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (22, 999, 'Brett', 'Willington', 'Banker', 'Yes', 52.47, '117 NorthWest Street', 'All City', 'Nebraska', 19375, 'bwillington');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (23, 777, 'Reagon', 'Henchmon', 'Bank Manager', 'Yes', 77.88, '188 SouthNorth Street', 'Berryville', 'New Mexico', 65197, 'rhenchmon');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (24, 555, 'Owen', 'Brickson', 'Banker', 'Yes', 60.98, '189 WestSouth Ave', 'Strawberry Town', 'North Carolina', 14623, 'obrickson@gmail.com');
Insert INTO WBank.Employees(EmployeeID, EmployeeNumber, FirstName, LastName, Title, CanCreateNewAccount, HourlySalary, Address, City, State, Zip_Code, Email_Address) Values (25, 444, 'Liam', 'Campson', 'Banker', 'Yes', 69.11, '999 WestEast lane', 'Seneca', 'South Carolina', 94231, 'lcampson@gmail.com');

Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(1, '2011-07-18', 1, 1, 'Daniel', 'Letterman', 'M', '123 West Oak Way', 'Patrickville', 'New York', '(864)-999-0011', 'dletterman@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(2, '2011-09-08', 2, 1, 'Pam', 'Davidson', 'F', '132 East Oak Street', 'Manson Town', 'Okalahoma', '(998)-332-2378', 'pdavidson@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(3, '2009-01-18', 3, 2, 'Sam', 'Samsung', 'F', '223 North Oak Way', 'David Town', 'Rhode Island', '(123)-778-9999', 'ssamsung@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(4, '2000-08-09', 4, 3, 'Patrick', 'Peterson', 'M', '900 South Oak Lane', 'Derick City', 'South Dakota', '(445)-334-0912', 'ppeterson3345@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(5, '2022-02-14', 5, 3, 'Suellen','Mercado', 'M', '889 Banana Ave', 'Bob town', 'Vermont', '(256)-999-0011', 'smercado@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(6, '2012-12-12', 6, 2, 'Shaunda','Barnett', 'F', '908 Rock Street', 'Rocky City', 'Utah', '(789)-123-4678', 'sbarnett@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(7, '2005-03-12', 7, 1, 'Bart','Hess', 'M', '111 Dustin Lane', 'Fair Play', 'South Carolina', '(864)-221-7777', 'bhess@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(8, '2004-06-23', 8, 1, 'Alfredo','Dodson', 'M', '335 Johnson Way', 'Cart Play', 'Wisconsin', '(900)-001-6783', 'adodson@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(9, '2001-01-01', 9, 1, 'Kerrie','Morton', 'F', '444 Eric Street', 'Meg City', 'Wyoming', '(888)-112-0045', 'kmorton@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(10, '2002-04-12', 10, 2, 'Elouise','Fry', 'M', '987 Mike Lane', 'Rock City', 'Nebraska', '(778)-123-4567', 'efry@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(11, '2003-09-09', 11, 2, 'Greta','Page', 'F', '444 Becker Street', 'Bob town', 'Arkansas', '(448)-012-4455', 'pgreta@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(12, '2010-07-09', 12, 3, 'Kerrie','O''neill', 'F', '212 Betty Lane', 'Morgan', 'Iowa', '(398)-776-0019', 'koneill@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(13, '2020-04-08', 13, 1, 'Jerome','Bolton', 'M', '334 South Ave', 'Jackson', 'New Jersey', '(645)-111-7032', 'jbolton@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(14, '2013-03-23', 14, 1, 'Dexter','Roberts', 'M', '408 Bob Street', 'Matchville', 'Michigan', '(389)-113-0044', 'droberts@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(15, '2004-08-09', 15, 3, 'Octavia','Case', 'F', '999 North Way', 'HeyDay', 'Indiana', '(556)-999-0001', 'ocase@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(16, '2006-07-10', 16, 2, 'Ginette','Edwards', 'F', '001 East Ave', 'Greg Town', 'Connecticut', '(444)-555-9999', 'gedwards@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(17, '2023-16-11', 17, 2, 'Augustus','Steele', 'M', '002 West Lane', 'George Town', 'New Hampshire', '(498)-012-4655', 'asteele@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(18, '2019-25-05', 18, 3, 'Nathanael','Bradley', 'M', '997 Jackson Way', 'Michael City', 'Michigan', '(673)-187-6234', 'nbradley@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(19, '2017-31-10', 19, 1, 'Chasidy','Tran', 'F', '823 Bradley Drive', 'Albertville', 'Pennsylvania', '(554)-290-3745', 'ctran@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(20, '2015-25-12', 20, 1, 'Janella','Bright', 'F', '651 Jessica Ave', 'Willington', 'Hawaii', '(378)-334-0001', 'jbright@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(21, '2014-08-08', 21, 1, 'Jennette','Wooten', 'F', '719 Bright Way', 'Samsung Town', 'Arizona', '(812)-734-9174', 'jwooten@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(22, '2022-19-06', 22, 2, 'Alec','Peck', 'M', '234 Second Drive', 'Becker City', 'Alaska', '(519)-834-8123', 'apeck@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(23, '2021-07-30', 23, 3, 'Christopher','Richardson', 'M', '33 Rick Drive', 'Ally City', 'Maryland', '(034)-023-9984', 'crichardson@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(24, '2010-10-10', 24, 1, 'Arminda','Weber', 'F', '456 Dustin Ave', 'Portland', 'Oregon', '(111)-345-7345', 'aweber@gmail.com');
Insert INTO WBank.Customers(CustomerID, DateCreated, AccountNumber, AccountTypeID, Fname, Lname, Gender, Address, City, State, PhoneNumber, EmailAddress) Values(25, '2017-21-03', 25, 1, 'Emmett','Hahn', 'M', '334 Wave Ave', 'Los Angeles', 'California', '(934)-112-4454', 'ehahn@gmail.com');

--Deposit Inserts
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(1, 1, 123, 1, '2017-10-01', 234.56);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(2, 2, 456, 2, '2019-06-20', 129.98);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(3, 3, 789, 3, '2000-09-13', 345.90);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(4, 4, 234, 4, '2013-09-26', 456.77);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(5, 5, 889, 5, '2014-01-27', 67.90);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(6, 6, 234, 6, '2001-12-07', 33.40);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(7, 7, 567, 7, '2005-05-24', 550.89);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(8, 8, 890, 8, '2006-09-05', 1023.98);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(9, 9, 782, 9, '2011-08-29', 129.43);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(10, 10, 435, 10, '2012-11-07', 29.65);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(11, 11, 467, 11, '2007-10-22', 3023.62);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(12, 12, 999, 12, '2009-04-03', 329.21);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(13, 13, 721, 13, '2010-03-12', 678.91);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(14, 14, 881, 14, '2017-08-09', 445.47);
Insert Into WBank.Desposits(DepositID, LocationID, EmployeeID, CustomerID, DepositDate, DepositAmount) Values(15, 15, 183, 15, '2020-07-25', 834.56);

--Withdrawal inserts
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(1, 1, 763, 1, '2012-03-25', 223.98, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(2, 2, 329, 2, '2004-04-21', 123.23, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(3, 3, 412, 3, '2003-10-06', 34.45, 'Yes');                
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(4, 4, 562, 4, '2005-02-14', 67.10, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(5, 5, 395, 5, '2010-07-16', 3456.98, 'No');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(6, 6, 234, 6, '2009-01-19', 834.11, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(7, 7, 762, 7, '2018-07-18', 1329.66, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(8, 8, 483, 8, '2014-09-23', 396.39, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(9, 9, 109, 9, '2019-06-05', 99.23, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(10, 10, 990, 10, '2020-12-25', 567.32, 'No');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(11, 11, 384, 11, '2021-01-24', 45.11, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(12, 12, 455, 12, '2007-03-21', 55.67, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(13, 13, 584, 13, '2008-06-29', 233.98, 'Yes');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(14, 14, 586, 14, '2015-05-05', 84.22, 'No');
Insert Into WBank.Withdrawals(WithdrawalID, LocationID, EmployeeID, CustomerID, WithDrawalDate, WithdrawalAmount, WithdrawalSuccessful) Values(15, 15, 693, 15, '2016-08-22', 984.23, 'Yes');

--Checking Cashing inserts
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(1, 1, 123, 1, '2000-09-05', 1239.88);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(2, 2, 445, 2, '2010-03-12', 2389.34);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(3, 3, 309, 3, '2009-01-25', 34929.22);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(4, 4, 349, 4, '2008-07-12', 2048.12);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(5, 5, 294, 5, '2012-09-11', 4583.49);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(6, 6, 103, 6, '2001-95-06', 5732.90);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(7, 7, 290, 7, '2004-01-05', 58372.49);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(8, 8, 732, 8, '2005-03-11', 58301.94);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(9, 9, 269, 9, '2017-03-29', 7654.98);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(10, 10, 111, 10, '2013-10-27', 99009.33);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(11, 11, 112, 11, '2019-12-01', 8839.12);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(12, 12, 684, 12, '2022-08-19', 2223.10);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(13, 13, 584, 13, '2023-11-17', 4313.10);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(14, 14, 974, 14, '2023-09-04', 4433.19);
Insert into WBank.CheckingCashing(CheckingCashingID, LocationID, EmployeeID, CustomerID, CheckingChasingDate, CheckingCashingAmount) Values(15, 15, 493, 15, '2010-12-15', 33333.39);

--Location inserts
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(1, 1, '111 Dustin Lane', 'Fair Play', 'South Carolina');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(2, 2, '1000 Farming Dale Rd', 'Jackson', 'New Jersey');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(3, 3, '5727 La Mirada Ave', 'Los Angeles', 'California');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(4, 4, '234 Lala Rd', 'James Town', 'Texas');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(5, 5, '234 Park Town', 'New York', 'New York');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(6, 6, '456 Razer Park Lane', 'Atlanta', 'Georgia');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(7, 7, '590 Jackson Ave', 'Chicago', 'Illinois');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(8, 8, '345 Flower Field Lane', 'Mike City', 'Kansas');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(9, 9, '294 Drake Park Ave', 'Portland', 'Oregon');
Insert into WBank.Locations(LocationID, LoctionCode, Address, City, State) Values(10, 10, '109 Becker Lane', 'Charlette', 'North Carolina');

--Account Type inserts
Insert into WBank.AccountType(AccountTypeID, AccountType) Values(1, 'Personal');
Insert into WBank.AccountType(AccountTypeID, AccountType) Values(2, 'Business');
Insert into WBank.AccountType(AccountTypeID, AccountType) Values(3, 'Private');