DROP DATABASE IF EXISTS prs;
CREATE DATABASE prs;
USE prs;

Create table User (
ID 				integer 		primary key auto_increment,
UserName 		varchar(20) 	not null,
Password 		varchar(10) 	not null,
FirstName 		varchar(20) 	not null,
LastName 		varchar(20) 	not null,
PhoneNumber 	varchar(12) 	not null,
Email 			varchar(75) 	not null,
IsReviewer 		TinyInt    		not null,
IsAdmin 		TinyInt	    	not null,
CONSTRAINT uname unique (Username)
);

Create table Vendor (
ID 				integer 		primary key auto_increment,
Code 			varchar(10) 	not null,
Name 			varchar(255) 	not null,
Address 		varchar(255) 	not null,
City 			varchar(255) 	not null,
State 			varchar(2) 		not null,
Zip 			varchar(5) 		not null,
PhoneNumber 	varchar(100)   	not null,
Email 			varchar(100)    not null,
CONSTRAINT vcode unique (code)
);

Create table Request (
ID 					integer 		primary key auto_increment,
UserID 				integer 		not null,
Description 		varchar(100) 	not null,
Justification 		varchar(255) 	not null,
DateNeeded 			date            not null,
DeliveryMode 		varchar(25) 	not null,
Status 				varchar(20) 	not null,
total				DECIMAL(10,2)   not null,
SubmittedDate 		date    		not null,
ReasonForRejection 	varchar(100) null,
Foreign Key (userID) references user(ID)
);

Create table Product (
ID 				integer 			primary key auto_increment,
VendorID 		integer 			not null,
PartNumber 		varchar(50) 		not null,
Name 			varchar(150) 		not null,
Price 			DECIMAL(10,2) 		not null,
Unit 			varchar(255) 		 null,
PhotoPath 		varchar(255) 	 	null,
CONSTRAINT vendor_part unique (VendorID, PartNumber),
Foreign Key (vendorID) references vendor(ID)
);

Create table LineItem (
ID 				integer 		primary key auto_increment,
RequestID 		integer 		not null,
ProductID 		integer 		not null,
Quantity 		integer			not null,
CONSTRAINT req_pdt unique (RequestID, ProductID),
Foreign Key (ProductID) references Product(ID),
Foreign Key (RequestID) references Request(ID)
);


INSERT into user (ID, username, password, firstname, lastname, phonenumber, email, isReviewer, isAdmin) VALUES
(1, 'SYSTEM', 'xxxxx', 'System', 'System', 'XXX-XXX-XXXX', 'system@test.com', 0, 0);


INSERT into vendor (ID, code, name, address, city, state, zip, phonenumber, email) VALUES
('1', 'BB-1001', 'Best Buy', '100 Best Buy Street', 'Louisville', 'KY', '40207', '502-111-9099', 'geeksquad@bestbuy.com'),
('2', 'AP-1001', 'Apple Inc', '1 infinite loop', 'Cupertino', 'CA', '95014', '800-123-4567', 'geeksquad@bestbuy.com'),
('3', 'AM-1001', 'Amazon', '410 terry ave, north', 'Seattle', 'WA', '98109', '206-266-1000', 'amazon@amazon.com'),
('4', 'ST-1001', 'Staples', '9550 mason montgomery rd', 'Mason', 'OH', '45040', '513-7540235', 'support@orders.staples.com'),
('5', 'MC-1001', 'Micro Center', '11755 mosteller rd', 'Sharonville', 'OH', '45241', '513-782-8500', 'support@microcenter.com');

INSERT into product (ID,vendorID, partnumber, name, price, unit, PhotoPath)  VALUES
('1', '1','ME280LL', 'iPad Mini 2', '296.99',NULL,NULL),
('2', '2','ME280LL', 'iPad Mini 2', '296.99', null,null),
('3', '3', '105810', 'hammermill paper, premium multi-purpose paper polywrap', '8.99', null),
('4', '4', '122374', 'hammermill copy plus copy paper, 81/2 x 11, case', '29.99', null),
('5', '4', '784551', 'logitch m325 wireless optical mouse, ambidextrous, black', '14.99', null, null),
('6', '4','382955', 'staples mouse pad, black',  '2.99', null, null),
('7', '4','2122178', 'AOC 24-inch class LED Monitor', '99.99', null, null),
('8', '4','2460649', 'Laptop HP notebook 15-AY163NR', '529.99', null, null),
('9', '4','2256788', 'Laptop Dell i3552-3240BLK 15.6',  '239.99', null, null),
('10', '4','IM12M9520','LapTop acer acer aspire one cloudbook 14', '224.99', null, null),
('11', '4','940600', 'cannon imageCLASS Copier (D530)',  '99.99', null, null),
('12', '5','228148', 'Acer Aspire ATC-780a-UR12 Desktop Computer', '399.99'),
('13', '5','279364', 'Lenovo ideaCentre All-in-one desktop', '349.99');


