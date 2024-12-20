USE [RentCar]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Available] [bit] NULL,
	[Image] [nvarchar](50) NULL,
	[PriceID] [int] NULL,
	[StationID] [int] NULL,
	[NumberOfSeats] [int] NULL,
	[LargeBags] [int] NULL,
	[SmallBags] [int] NULL,
	[ReviewScore] [float] NULL,
	[Reviewers] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[PickUpDateTime] [nvarchar](50) NULL,
	[ReturnDateTime] [nvarchar](50) NULL,
	[pickUpStation] [int] NULL,
	[returnStation] [int] NULL,
	[totalDayRent] [int] NULL,
	[pickuplocation] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CarID] ASC,
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contracts]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contracts](
	[ContractID] [nvarchar](50) NOT NULL,
	[CarID] [int] NULL,
	[PickUpDateTime] [nvarchar](50) NULL,
	[ReturnDateTime] [nvarchar](50) NULL,
	[pickUpLocation] [int] NULL,
	[returnLocation] [int] NULL,
	[username] [nvarchar](50) NULL,
	[totalRentPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContractID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[FirsrName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Dob] [date] NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Role] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceDetails]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceDetails](
	[PriceID] [int] IDENTITY(1,1) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[ManufactureYear] [int] NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[DailyPrice] [int] NOT NULL,
	[Deposit] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PriceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stations]    Script Date: 11/22/2024 10:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stations](
	[StationID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[carAvailable] [int] NULL,
	[pickupLocation] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (1, N'Peugeot 3008 new', 0, N'img\car3.jpg', 1, 1, 5, 2, 2, 7.2, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (2, N'Peugeot 208', 1, N'img\car17.jpg', 2, 2, 5, 2, 4, 7.8, 476)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (3, N'Kia Ceed V1', 0, N'img/car3.jpg', 1, 1, 5, 2, 2, 7.3, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (4, N'Kia Picanto ', 1, N'img/car4.jpg', 2, 4, 5, 4, 2, 8.2, 404)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (6, N'Ford Mondeo', 1, N'img/car6.jpg', 2, 2, 5, 2, 2, 8.7, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (7, N'Peugeot 2008', 1, N'img/car7.jpg', 3, 3, 7, 2, 2, 8.8, 100)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (8, N'Mercedes C-Class', 1, N'img/car8.jpg', 4, 4, 7, 2, 2, 7.9, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (10, N'Volkswagen Golf', 1, N'img/car10.jpg', 4, 4, 7, 2, 2, 9.2, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (11, N'Honda CR-V', 0, N'img/car11.jpg', 6, 6, 10, 2, 2, 9.4, 457)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (14, N'Skoda Octavia Estate', 1, N'img/car2.jpg', 9, 9, 20, 5, 2, 8.2, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (15, N'Volkswagen Polo', 0, N'img/car3.jpg', 8, 8, 20, 7, 5, 8.5, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (16, N'Vauxhall Corsa-e', 1, N'img/car4.jpg', 9, 9, 20, 5, 3, 9.7, 450)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (17, N'Fiat 500', 1, N'img/car5.jpg', 10, 10, 20, 6, 5, 8.9, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (18, N'Volkswagen Arteon', 1, N'img/car5.jpg', 1, 1, 5, 2, 2, 8.8, 333)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (19, N'Renault Captur', 1, N'img/car1.jpg', 8, 8, 10, 2, 2, 7.7, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (20, N'New Model Mercedes', 1, N'img\car3.jpg', 1, 1, 5, 4, 2, 0, 0)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (21, N'Super Bus', 1, N'img\car16.jpg', 1, 1, 10, 5, 2, 0, 0)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (23, N'New Car', 1, N'img\car17.jpg', 1, 1, 5, 2, 3, 0, 0)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (24, N'Volkswagen Arteon', 1, N'img/car14.jpg', 1, 1, 5, 2, 2, 8.8, 333)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (25, N'Renault Captur', 1, N'img/car15.jpg', 8, 1, 10, 2, 2, 7.7, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (26, N'CR-V 3008', 1, N'img/car16.jpg', 1, 1, 5, 2, 2, 7.2, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (27, N'Peugeot Kuga', 1, N'img/car17.jpg', 2, 1, 5, 2, 2, 7.8, 476)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (28, N'Kia Captur Mer', 1, N'img/car3.jpg', 1, 1, 5, 2, 2, 7.3, 250)
INSERT [dbo].[Cars] ([CarID], [Name], [Available], [Image], [PriceID], [StationID], [NumberOfSeats], [LargeBags], [SmallBags], [ReviewScore], [Reviewers]) VALUES (29, N'New Car', 1, N'img\car13.jpg', 9, 1, 10, 5, 10, 0, 0)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'1_2024-06-29 8:00', 1, N'2024-06-29 8:00', N'2024-06-30 8:30', 1, 1, N'quan', 50)
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'11_2024-06-29 9:00', 11, N'2024-06-29 9:00', N'2024-07-01 10:00', 6, 6, N'quan', 200)
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'15_2024-06-29 10:00', 15, N'2024-06-29 10:00', N'2024-06-30 9:30', 8, 8, N'quan', 150)
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'17_2024-06-14', 17, N'2024-06-14 9:00', N'2024-06-14 11:30', 10, 10, N'david', 80)
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'3_2024-06-29 9:00', 3, N'2024-06-29 9:00', N'2024-07-01 10:00', 1, 1, N'quan', 100)
INSERT [dbo].[Contracts] ([ContractID], [CarID], [PickUpDateTime], [ReturnDateTime], [pickUpLocation], [returnLocation], [username], [totalRentPrice]) VALUES (N'CT2', 2, N'2024-03-18 09:30:00', N'2024-03-22 12:00:00', 2, 2, N'michael', 200)
GO
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'admin', N'123', N'Khuat Dinh', N'Truong', N'male', CAST(N'2004-05-19' AS Date), N'0987654321', N'truong@gmail.com', N'123 Oak St', N'admin')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'david', N'123', N'David', N'Martinez', N'male', CAST(N'1999-12-20' AS Date), N'7777777777', N'davidmartinez@gmail.com', N'202 Main St', N'admin')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'emily', N'123', N'Emily', N'Brown', N'female', CAST(N'1999-12-20' AS Date), N'6666666666', N'emilybrown@gmail.com', N'101 Pine St', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'emma', N'123', N'Emma', N'Taylor', N'female', CAST(N'1999-12-20' AS Date), N'9998887777', N'emmataylor@gmail.com', N'303 Pine St', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'jane', N'123', N'Jane', N'Smith', N'female', CAST(N'2004-07-20' AS Date), N'0987654322', N'janesmith@gmail.com', N'456 Maple St', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'michael', N'123', N'Michael', N'Johnson', N'male', CAST(N'2000-12-10' AS Date), N'5555555555', N'michaeljohnson@gmail.com', N'789 Elm St', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'quan', N'123456', N'Nguyen Truong', N'Quan', N'male', CAST(N'2024-06-22' AS Date), N'01234456788', N'truongkdhe181747@gmail.com', N'Ha Noi, Thach That, Dai Dong', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'tan', N'1234567890', N'Phan Thanh', N'Tan', N'', NULL, N'', N'tanpt@gmail.com', N'', N'customer')
INSERT [dbo].[Customers] ([Username], [Password], [FirsrName], [LastName], [Gender], [Dob], [phoneNumber], [Email], [Address], [Role]) VALUES (N'vu', N'1234567890', N'Ha Huy', N'Vu', N'', NULL, N'', N'vuhh123@gmail.com', N'', N'customer')
GO
SET IDENTITY_INSERT [dbo].[PriceDetails] ON 

INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (1, N'Toyota', 2022, N'Camry', 50, 250)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (2, N'Honda', 2021, N'Civic', 60, 270)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (3, N'Ford', 2020, N'Explorer', 70, 350)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (4, N'Chevrolet', 2019, N'Silverado', 80, 400)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (5, N'BMW', 2022, N'X5', 90, 500)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (6, N'Tesla', 2023, N'Model S', 100, 600)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (7, N'Mercedes-Benz', 2022, N'GLS', 120, 700)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (8, N'Audi', 2022, N'A8', 150, 800)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (9, N'Porsche', 2021, N'911', 200, 100)
INSERT [dbo].[PriceDetails] ([PriceID], [Brand], [ManufactureYear], [Model], [DailyPrice], [Deposit]) VALUES (10, N'Lexus', 2023, N'RX', 80, 500)
SET IDENTITY_INSERT [dbo].[PriceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Stations] ON 

INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (1, N'123, new Street', 12, N'Ha Noi Airline', N'VN', N'Ha Noi')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (2, N'123 Main St', 18, N'Ho Chi Minh International Airport', N'VN', N'Ho Chi Minh city')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (3, N'123 Main St', 20, N'Da Nang International Airport', N'VN', N'Da Nang')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (4, N'123 Main St', 20, N'Hue International Airport', N'VN', N'Hue')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (5, N'123 Main St', 20, N'Hai Phong International Airport', N'VN', N'Hai Phong')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (6, N'456 Elm St', 15, N'Noi Bai International Airport', N'VN', N'Ha Noi')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (7, N'789 Oak St', 10, N'Noi Bai International Airport', N'VN', N'Ha Noi')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (8, N'101 Pine St', 5, N'Noi Bai International Airport', N'VN', N'Ha Noi')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (9, N'202 Maple St', 25, N'Thanh Hoa International Airport', N'VN', N'Thanh Hoa')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (10, N'303 Pine St', 10, N'Nghe An International Airport', N'VN', N'Nghe An')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (11, N'505 Cedar St', 8, N'Ho Chi Minh International Airport', N'VN', N'Ho Chi Minh city')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (12, N'707 Walnut St', 7, N'Ho Chi Minh International Airport', N'VN', N'Ho Chi Minh city')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (13, N'909 Birch St', 12, N'Hai Phong International Airport', N'VN', N'Hai Phong')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (14, N'1111 Spruce St', 18, N'Hue International Airport', N'VN', N'Hue')
INSERT [dbo].[Stations] ([StationID], [Address], [carAvailable], [pickupLocation], [Country], [City]) VALUES (16, N'HN, Thach That', 7, N'Ha Noi Airline', N'Viet  Nam', N'Ha Noi')
SET IDENTITY_INSERT [dbo].[Stations] OFF
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD FOREIGN KEY([PriceID])
REFERENCES [dbo].[PriceDetails] ([PriceID])
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD FOREIGN KEY([StationID])
REFERENCES [dbo].[Stations] ([StationID])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[Customers] ([Username])
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([pickUpLocation])
REFERENCES [dbo].[Stations] ([StationID])
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([returnLocation])
REFERENCES [dbo].[Stations] ([StationID])
GO
ALTER TABLE [dbo].[Contracts]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Customers] ([Username])
GO
