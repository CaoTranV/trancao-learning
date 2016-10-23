CREATE TABLE Role
(
	Id int NOT NULL PRIMARY KEY identity ,
	name VARCHAR(255)
);

CREATE TABLE [User]
(
	Id int not null PRIMARY KEY identity ,
	username nVARCHAR(255) not null ,
	name nvarchar(255),
	age int,
	adress int,
	phoneNumber int,
	roleId int,
	foreign key (roleId) REFERENCES Role(Id)
);
Create table [Order]
(
	Id int not null Primary key,
	status nvarchar(255)
);
create table [UserOrder]
(
	userId int not null ,
	orderId int not null ,
	createdDate datetime ,
	updatedDate datetime,
	foreign key (userId ) REFERENCES [user](Id),
	foreign key (orderId ) REFERENCES [order](Id)
);

create table [Product]
(	
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	imageUrl nvarchar(255),
	description nvarchar(255)

);

create table [OrderProduct]
(	
	orderId int not null,
	productId int not null,
	foreign key (orderId) references [order] (Id),
	foreign key (productId) references [product] (Id)
);

create table [Chip]
( 
	Id int not null primary key,
	name nvarchar(255),
	bus nvarchar(255),
	quantity int,
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);

create table [ProductChip]
(	
	chipId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (chipId) references [Chip](Id)
);

create table [Ram]
( 
	Id int not null primary key,
	name nvarchar(255),
	bus nvarchar(255),
	quantity int,
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
//ok
create table [ProductRam]
(	
	ramId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (ramId) references [Ram](Id)
);

create table [Monitor]
( 
	Id int not null primary key,
	name nvarchar(255),
	res nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
create table [ProductMonitor]
(	
	monitorId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (monitorId) references [Monitor](Id)
);

create table [HardDrive]
( 
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);

create table [ProductHardDrive]
(	
	hardDriveId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (hardDriveId) references [hardDrive](Id)
);


create table [Power]
( 
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
create table [ProductPower]
(	
	powerId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (powerId) references [Power](Id)
);

create table [mainboard]
( 
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
create table [ProductMainboard]
(	
	mainboardId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (mainboardId) references [mainboard](Id)
);

create table [VGA]
( 
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
create table [ProductVGA]
(	
	VGAId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (VGAId) references [VGA](Id)
);
create table [CPU]
( 
	Id int not null primary key,
	name nvarchar(255),
	quantity int,
	campany nvarchar(255),
	createdDate nvarchar(255),
	updatedDate nvarchar(255),
);
create table [ProductCPU]
(	
	CPUId int not null,
	productId int not null
	foreign key (productId) references [product](Id),
	foreign key (CPUId) references [CPU](Id)
);

ALTER TABLE ProductCPU ADD CONSTRAINT productCPUId PRIMARY KEY (CPUId, productId);
ALTER TABLE ProductVGA ADD CONSTRAINT productCVGAId PRIMARY KEY (VGAId, productId);
ALTER TABLE ProductMainboard ADD CONSTRAINT productMainboardId PRIMARY KEY (mainBoardId, productId);
ALTER TABLE ProductPower ADD CONSTRAINT productPowerId PRIMARY KEY (powerId, productId);
ALTER TABLE ProductHardDrive ADD CONSTRAINT productHardDriveId PRIMARY KEY (hardDriveId, productId);
ALTER TABLE ProductMonitor ADD CONSTRAINT productMonitorId PRIMARY KEY (monitorId, productId);
ALTER TABLE ProductRam ADD CONSTRAINT productRamId PRIMARY KEY (ramId, productId);
ALTER TABLE ProductChip ADD CONSTRAINT productChipId PRIMARY KEY (chipId, productId);
ALTER TABLE OrderProduct ADD CONSTRAINT orderProductId PRIMARY KEY (orderId, productId);
ALTER TABLE UserOrder ADD CONSTRAINT userOrderId PRIMARY KEY (userId, orderId);












