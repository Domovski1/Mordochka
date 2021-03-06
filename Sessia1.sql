-- Создаём базу для демонстрационного экзамена
CREATE DATABASE [DemoBase]
GO

-- Используем нашу новую базу
USE [DemoBase]
GO

-- Таблица Клиенты
CREATE TABLE [dbo].[Client](
	[ID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[GenderCode] [int] NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Photo] [nvarchar](150) NULL,
	[DateOfBirth] [date] NULL,
	[Mail] [nvarchar](50) NULL,
	[RegistrationDate] [date] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[ClientService]    Script Date: 27.05.2021 18:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceTime] [datetime] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Gender]    Script Date: 27.05.2021 18:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[Service]    Script Date: 27.05.2021 18:31:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[Duration] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


-- Добавляем клиентов в базу
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (1, N'Голубев', N'Иосиф', N'Тимофеевич', 1, N'7(78)972-73-11 ', N'Resources\m18.jpg', CAST(N'1982-05-06' AS Date), N'smcnabb@att.net', CAST(N'2018-08-18' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (2, N'Ермакова', N'Алла', N'Мироновна', 2, N'7(06)437-13-73 ', N'Resources\48.jpg', CAST(N'1976-01-22' AS Date), N'whimsy@aol.com', CAST(N'2017-02-09' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (3, N'Селиверстов', N'Глеб', N'Максимович', 1, N'7(20)554-28-68 ', N'Resources\m37.jpg', CAST(N'1999-06-20' AS Date), N'jigsaw@sbcglobal.net', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (4, N'Агафонов', N'Юстиниан', N'Олегович', 1, N'7(303)810-28-78 ', N'Resources\m1.jpg', CAST(N'1997-02-02' AS Date), N'staffelb@sbcglobal.net', CAST(N'2016-06-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (5, N'Колобова', N'Злата', N'Романовна', 2, N'7(50)884-07-35 ', N'Resources\18.jpg', CAST(N'1994-08-25' AS Date), N'sinkou@aol.com', CAST(N'2016-12-03' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (6, N'Сысоева', N'Дарина', N'Ярославовна', 2, N'7(0698)387-96-04 ', N'Resources\32.jpg', CAST(N'1982-02-03' AS Date), N'treit@verizon.net', CAST(N'2016-05-13' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (7, N'Некрасов', N'Варлам', N'Михайлович', 1, N'7(019)258-06-35 ', N'Resources\m42.jpg', CAST(N'2000-11-12' AS Date), N'dogdude@verizon.net', CAST(N'2017-12-03' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (8, N'Крюков', N'Наум', N'Ильяович', 1, N'7(81)657-88-92 ', N'Resources\m30.jpg', CAST(N'1993-11-17' AS Date), N'floxy@hotmail.com', CAST(N'2017-02-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (9, N'Сидорова', N'Татьяна', N'Михайловна', 2, N'7(51)732-91-79 ', N'Resources\42.jpg', CAST(N'1974-04-24' AS Date), N'tbeck@mac.com', CAST(N'2018-10-03' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (10, N'Трофимова', N'Альжбета', N'Якововна', 2, N'7(1084)658-92-95 ', N'Resources\25.jpg', CAST(N'1988-10-22' AS Date), N'gbacon@mac.com', CAST(N'2017-09-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (11, N'Новиков', N'Адриан', N'Аркадьевич', 1, N'7(70)572-33-62 ', N'Resources\m40.jpg', CAST(N'1974-01-15' AS Date), N'multiplx@verizon.net', CAST(N'2018-11-23' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (12, N'Мишина', N'Иветта', N'Андреевна', 2, N'7(3926)244-81-96 ', N'Resources\30.jpg', CAST(N'2002-10-05' AS Date), N'aukjan@yahoo.com', CAST(N'2016-01-24' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (13, N'Шестаков', N'Геннадий', N'Рубенович', 1, N'7(2066)037-11-60 ', N'Resources\m41.jpg', CAST(N'2001-07-01' AS Date), N'tokuhirom@live.com', CAST(N'2018-12-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (14, N'Зуев', N'Матвей', N'Иванович', 1, N'7(5383)893-04-66 ', N'Resources\m38.jpg', CAST(N'1981-03-28' AS Date), N'brickbat@verizon.net', CAST(N'2018-12-18' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (15, N'Турова', N'Георгина', N'Семёновна', 2, N'7(555)321-42-99 ', N'Resources\27.jpg', CAST(N'1974-05-28' AS Date), N'yruan@optonline.net', CAST(N'2018-02-22' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (16, N'Анисимов', N'Валентин', N'Пантелеймонович', 1, N'7(700)326-70-24 ', N'Resources\m99.jpg', CAST(N'2000-12-10' AS Date), N'aaribaud@hotmail.com', CAST(N'2018-01-20' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (17, N'Анисимова', N'Тамара', N'Витальевна', 2, N'7(66)128-04-10 ', N'Resources\2.jpg', CAST(N'1988-06-16' AS Date), N'schwaang@mac.com', CAST(N'2016-02-25' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (18, N'Колобов', N'Орест', N'Юлианович', 1, N'7(1680)508-58-26 ', N'Resources\m27.jpg', CAST(N'2001-07-14' AS Date), N'parkes@verizon.net', CAST(N'2017-01-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (19, N'Филатов', N'Аристарх', N'Дмитриевич', 1, N'7(696)235-29-24 ', N'Resources\m43.jpg', CAST(N'1989-05-29' AS Date), N'hampton@att.net', CAST(N'2017-01-11' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (20, N'Орлова', N'Влада', N'Мартыновна', 2, N'7(2506)433-38-35 ', N'Resources\22.jpg', CAST(N'1990-06-26' AS Date), N'rnelson@yahoo.ca', CAST(N'2016-03-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (21, N'Алексеева', N'Элина', N'Матвеевна', 2, N'7(8086)245-64-81 ', N'Resources\1.jpg', CAST(N'2002-05-07' AS Date), N'pthomsen@verizon.net', CAST(N'2018-03-28' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (22, N'Бобров', N'Агафон', N'Лаврентьевич', 1, N'7(2159)507-39-57 ', N'Resources\m35.jpg', CAST(N'1995-07-29' AS Date), N'petersen@comcast.net', CAST(N'2017-05-09' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (23, N'Бирюкова', N'Инара', N'Улебовна', 2, N'7(098)346-50-58 ', N'Resources\5.jpg', CAST(N'1978-07-21' AS Date), N'smpeters@hotmail.com', CAST(N'2017-10-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (24, N'Панфилов', N'Марк', N'Рудольфович', 1, N'7(764)282-55-22 ', N'Resources\m45.jpg', CAST(N'1991-04-13' AS Date), N'cremonini@optonline.net', CAST(N'2016-02-23' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (25, N'Колесникова', N'Алина', N'Еремеевна', 2, N'7(74)977-39-71 ', N'Resources\40.jpg', CAST(N'2001-04-19' AS Date), N'gfxguy@outlook.com', CAST(N'2017-01-18' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (26, N'Морозов', N'Наум', N'Валерьянович', 1, N'7(636)050-96-13 ', N'Resources\m49.jpg', CAST(N'1985-07-04' AS Date), N'salesgeek@mac.com', CAST(N'2016-05-02' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (27, N'Горбачёв', N'Давид', N'Тимурович', 1, N'7(53)602-85-41 ', N'Resources\m36.jpg', CAST(N'1983-05-22' AS Date), N'hedwig@att.net', CAST(N'2018-12-17' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (28, N'Васильев', N'Оскар', N'Богданович', 1, N'7(585)801-94-29 ', N'Resources\m15.jpg', CAST(N'1971-01-30' AS Date), N'miturria@verizon.net', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (29, N'Ершова', N'Номи', N'Андреевна', 2, N'7(7757)315-90-99 ', N'Resources\14.jpg', CAST(N'2001-09-13' AS Date), N'miltchev@mac.com', CAST(N'2016-06-30' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (30, N'Медведев', N'Святослав', N'Юлианович', 1, N'7(3520)435-21-20 ', N'Resources\m13.jpg', CAST(N'1972-10-04' AS Date), N'hllam@comcast.net', CAST(N'2018-10-13' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (31, N'Баранова', N'Эльмира', N'Дмитриевна', 2, N'7(9240)643-15-50 ', N'Resources\4.jpg', CAST(N'1977-01-15' AS Date), N'jgmyers@comcast.net', CAST(N'2016-07-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (32, N'Попова', N'Харита', N'Якуновна', 2, N'7(335)386-81-06 ', N'Resources\36.jpg', CAST(N'1997-12-16' AS Date), N'firstpr@verizon.net', CAST(N'2016-07-05' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (33, N'Кудряшов', N'Аверкий', N'Константинович', 1, N'7(88)732-96-30 ', N'Resources\m33.jpg', CAST(N'1991-07-26' AS Date), N'nanop@msn.com', CAST(N'2018-03-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (34, N'Горшкова', N'Марта', N'Иосифовна', 2, N'7(544)650-59-03', N'Resources\9.jpg', CAST(N'2001-02-13' AS Date), N'gbacon@mac.com', CAST(N'2016-08-04' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (35, N'Кудрявцев', N'Богдан', N'Христофорович', 1, N'7(20)131-84-09 ', N'Resources\m31.jpg', CAST(N'1988-02-27' AS Date), N'lukka@hotmail.com', CAST(N'2016-10-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (36, N'Гусев', N'Яков', N'Авксентьевич', 1, N'7(0972)781-11-37 ', N'Resources\m20.jpg', CAST(N'1995-12-10' AS Date), N'jdhedden@icloud.com', CAST(N'2017-11-20' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (37, N'Крюкова', N'Авигея', N'Святославовна', 2, N'7(499)318-88-53 ', N'Resources\19.jpg', CAST(N'2000-08-10' AS Date), N'simone@gmail.com', CAST(N'2018-01-03' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (38, N'Степанова', N'Амелия', N'Робертовна', 2, N'7(1217)441-28-42 ', N'Resources\15.jpg', CAST(N'1970-06-06' AS Date), N'rasca@hotmail.com', CAST(N'2017-09-27' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (39, N'Суворова', N'Божена', N'Анатольевна', 2, N'7(347)895-86-57 ', N'Resources\34.jpg', CAST(N'1981-03-09' AS Date), N'attwood@aol.com', CAST(N'2016-01-28' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (40, N'Борисов', N'Аввакум', N'Артемович', 1, N'7(2296)930-08-88 ', N'Resources\m12.jpg', CAST(N'1974-04-25' AS Date), N'chlim@live.com', CAST(N'2017-03-11' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (41, N'Бобылёв', N'Георгий', N'Витальевич', 1, N'7(88)685-13-51 ', N'Resources\m11.jpg', CAST(N'1983-12-19' AS Date), N'csilvers@mac.com', CAST(N'2018-04-06' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (42, N'Дроздов', N'Вольдемар', N'Артемович', 1, N'7(307)456-99-05 ', N'Resources\m21.jpg', CAST(N'1976-02-07' AS Date), N'smpeters@me.com', CAST(N'2017-07-18' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (43, N'Беляева', N'Сабрина', N'Федосеевна', 2, N'7(6580)534-32-58 ', N'Resources\47.jpg', CAST(N'1972-07-26' AS Date), N'agapow@gmail.com', CAST(N'2017-06-14' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (44, N'Блохин', N'Пантелеймон', N'Феликсович', 1, N'7(9524)556-48-98 ', N'Resources\m8.jpg', CAST(N'1978-03-06' AS Date), N'balchen@comcast.net', CAST(N'2018-02-14' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (45, N'Шашкова', N'Гелла', N'Эдуардовна', 2, N'7(57)446-21-04 ', N'Resources\43.jpg', CAST(N'1979-02-24' AS Date), N'jadavis@mac.com', CAST(N'2016-11-16' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (46, N'Калашников', N'Артур', N'Юрьевич', 1, N'7(147)947-47-21 ', N'Resources\m10.jpg', CAST(N'1972-12-13' AS Date), N'oevans@aol.com', CAST(N'2017-08-20' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (47, N'Корнилова', N'Анэля', N'Михайловна', 2, N'7(20)980-01-60 ', N'Resources\26.jpg', CAST(N'1973-04-02' AS Date), N'jonathan@aol.com', CAST(N'2016-05-22' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (48, N'Гущина', N'Янита', N'Федоровна', 2, N'7(4544)716-68-96 ', N'Resources\11.jpg', CAST(N'1999-03-02' AS Date), N'lishoy@att.net', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (49, N'Волков', N'Людвиг', N'Витальевич', 1, N'7(8459)592-05-58 ', N'Resources\m50.jpg', CAST(N'1977-12-27' AS Date), N'jrkorson@msn.com', CAST(N'2016-04-27' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (50, N'Князев', N'Терентий', N'Валерьевич', 1, N'7(98)397-23-23 ', N'Resources\m26.jpg', CAST(N'1991-06-19' AS Date), N'rjones@aol.com', CAST(N'2018-06-25' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (51, N'Силин', N'Гаянэ', N'Анатольевич', 1, N'7(4547)615-22-69 ', N'Resources\m46.jpg', CAST(N'1976-05-27' AS Date), N'multiplx@comcast.net', CAST(N'2017-05-05' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (52, N'Казаков', N'Дмитрий', N'Русланович', 1, N'7(51)682-19-40 ', N'Resources\m44.jpg', CAST(N'1978-12-15' AS Date), N'ozawa@verizon.net', CAST(N'2016-05-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (53, N'Гусева', N'Роза', N'Дмитриевна', 2, N'7(23)064-51-84 ', N'Resources\10.jpg', CAST(N'1999-02-13' AS Date), N'martyloo@live.com', CAST(N'2017-12-12' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (54, N'Мамонтова', N'Марфа', N'Мироновна', 2, N'7(38)095-64-18 ', N'Resources\29.jpg', CAST(N'1984-10-19' AS Date), N'rfoley@verizon.net', CAST(N'2018-02-27' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (55, N'Галкин', N'Эрик', N'Онисимович', 1, N'7(759)873-77-39 ', N'Resources\m16.jpg', CAST(N'1975-01-18' AS Date), N'snunez@verizon.net', CAST(N'2016-07-19' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (56, N'Архипова', N'Прасковья', N'Валерьевна', 2, N'7(86)540-10-21 ', N'Resources\33.jpg', CAST(N'1979-01-09' AS Date), N'cgcra@live.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (57, N'Овчинникова', N'Лаура', N'Еремеевна', 2, N'7(85)829-33-79 ', N'Resources\35.jpg', CAST(N'1992-04-03' AS Date), N'carcus@yahoo.ca', CAST(N'2018-11-24' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (58, N'Андреева', N'Патрисия', N'Валерьевна', 2, N'7(9648)953-81-26 ', N'Resources\37.jpg', CAST(N'1993-11-18' AS Date), N'jigsaw@aol.com', CAST(N'2016-07-17' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (59, N'Авдеев', N'Самуил', N'Улебович', 1, N'7(3168)043-63-31 ', N'Resources\m96.jpg', CAST(N'1996-07-04' AS Date), N'cliffordj@mac.com', CAST(N'2016-02-11' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (60, N'Бурова', N'Светлана', N'Лукьевна', 2, N'7(358)173-82-21 ', N'Resources\39.jpg', CAST(N'1979-01-04' AS Date), N'wsnyder@aol.com', CAST(N'2016-10-13' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (61, N'Ершов', N'Глеб', N'Федорович', 1, N'7(2608)298-40-82 ', N'Resources\m23.jpg', CAST(N'1970-06-14' AS Date), N'sjava@aol.com', CAST(N'2016-09-14' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (62, N'Игнатов', N'Захар', N'Павлович', 1, N'7(578)574-73-36 ', N'Resources\m98.jpg', CAST(N'1998-10-07' AS Date), N'dieman@icloud.com', CAST(N'2017-11-10' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (63, N'Комиссарова', N'Амалия', N'Робертовна', 2, N'7(22)647-46-32 ', N'Resources\17.jpg', CAST(N'1971-08-18' AS Date), N'jorgb@msn.com', CAST(N'2017-08-04' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (64, N'Быков', N'Трофим', N'Константинович', 1, N'7(3414)460-12-05 ', N'Resources\m14.jpg', CAST(N'1994-12-20' AS Date), N'jguyer@aol.com', CAST(N'2016-04-17' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (65, N'Кузьмин', N'Леонтий', N'Валерьянович', 1, N'7(1340)148-90-68 ', N'Resources\m17.jpg', CAST(N'2000-05-05' AS Date), N'msloan@hotmail.com', CAST(N'2017-10-12' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (66, N'Белозёрова', N'Диана', N'Антоновна', 2, N'7(9900)174-59-87 ', N'Resources\7.jpg', CAST(N'1989-02-27' AS Date), N'dialworld@aol.com', CAST(N'2017-01-30' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (67, N'Блинов', N'Евгений', N'Мэлсович', 1, N'7(0852)321-82-64 ', N'Resources\m7.jpg', CAST(N'1994-01-05' AS Date), N'moxfulder@outlook.com', CAST(N'2017-05-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (68, N'Лазарев', N'Алексей', N'Богданович', 1, N'7(0055)737-37-48 ', N'Resources\m48.jpg', CAST(N'1977-03-10' AS Date), N'claesjac@me.com', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (69, N'Афанасьева', N'Розалия', N'Макаровна', 2, N'7(0661)413-23-32 ', N'Resources\31.jpg', CAST(N'1977-05-01' AS Date), N'malattia@hotmail.com', CAST(N'2017-09-06' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (70, N'Дементьева', N'Эдита', N'Онисимовна', 2, N'7(198)922-28-76 ', N'Resources\38.jpg', CAST(N'1975-09-17' AS Date), N'frosal@hotmail.com', CAST(N'2018-11-24' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (71, N'Калинин', N'Петр', N'Иванович', 1, N'7(90)316-07-17 ', N'Resources\m47.jpg', CAST(N'1993-09-08' AS Date), N'aschmitz@hotmail.com', CAST(N'2016-05-26' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (72, N'Андреев', N'Станислав', N'Максович', 1, N'7(02)993-91-28 ', N'Resources\m3.jpg', CAST(N'1975-10-10' AS Date), N'budinger@mac.com', CAST(N'2017-12-26' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (73, N'Киселёв', N'Устин', N'Яковлевич', 1, N'7(83)334-52-76 ', N'Resources\m25.jpg', CAST(N'1985-01-08' AS Date), N'dalamb@verizon.net', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (74, N'Гордеев', N'Павел', N'Семенович', 1, N'7(5243)599-66-72 ', N'Resources\m19.jpg', CAST(N'1984-09-06' AS Date), N'dawnsong@verizon.net', CAST(N'2016-07-19' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (75, N'Горбачёва', N'Никки', N'Еремеевна', 2, N'7(94)789-69-20 ', N'Resources\8.jpg', CAST(N'1987-04-21' AS Date), N'chinthaka@att.net', CAST(N'2018-08-16' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (76, N'Копылов', N'Касьян', N'Робертович', 1, N'7(5774)679-82-06 ', N'Resources\m29.jpg', CAST(N'1983-08-04' AS Date), N'crobles@sbcglobal.net', CAST(N'2018-03-18' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (77, N'Ефремов', N'Витольд', N'Авксентьевич', 1, N'7(93)922-14-03 ', N'Resources\m28.jpg', CAST(N'1975-12-02' AS Date), N'kwilliams@yahoo.ca', CAST(N'2018-04-09' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (78, N'Баранов', N'Михаил', N'Романович', 1, N'7(750)985-94-13 ', N'Resources\m5.jpg', CAST(N'1997-07-12' AS Date), N'bigmauler@outlook.com', CAST(N'2018-10-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (79, N'Дмитриева', N'Элина', N'Даниловна', 2, N'7(787)140-48-84 ', N'Resources\12.jpg', CAST(N'1988-12-10' AS Date), N'vmalik@live.com', CAST(N'2017-02-11' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (80, N'Федотов', N'Осип', N'Анатольевич', 1, N'7(590)702-33-06 ', N'Resources\m9.jpg', CAST(N'1971-04-13' AS Date), N'breegster@hotmail.com', CAST(N'2018-07-23' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (81, N'Быкова', N'Тала', N'Георгьевна', 2, N'7(13)915-53-53 ', N'Resources\6.jpg', CAST(N'2000-02-22' AS Date), N'ganter@optonline.net', CAST(N'2016-08-13' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (82, N'Дементьев', N'Вадим', N'Ростиславович', 1, N'7(79)330-46-15 ', N'Resources\m39.jpg', CAST(N'1993-07-10' AS Date), N'jacks@aol.com', CAST(N'2018-03-05' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (83, N'Евсеев', N'Макар', N'Васильевич', 1, N'7(2141)077-85-70 ', N'Resources\m22.jpg', CAST(N'1977-09-13' AS Date), N'parsimony@sbcglobal.net', CAST(N'2018-12-05' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (84, N'Абрамов', N'Станислав', N'Филатович', 1, N'7(6545)478-87-79 ', N'Resources\m32.jpg', CAST(N'1989-05-18' AS Date), N'solomon@att.net', CAST(N'2016-12-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (85, N'Артемьева', N'Лиза', N'Максимовна', 2, N'7(696)972-70-21 ', N'Resources\3.jpg', CAST(N'1996-05-17' AS Date), N'snunez@yahoo.ca', CAST(N'2018-10-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (86, N'Кузьмина', N'Дэнна', N'Витальевна', 2, N'7(9940)977-45-73 ', N'Resources\20.jpg', CAST(N'1993-08-24' AS Date), N'nichoj@mac.com', CAST(N'2016-03-27' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (87, N'Ефимова', N'Магда', N'Платоновна', 2, N'7(9261)386-15-92 ', N'Resources\16.jpg', CAST(N'1995-08-16' AS Date), N'rbarreira@me.com', CAST(N'2017-08-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (88, N'Ефимов', N'Альберт', N'Проклович', 1, N'7(416)375-97-19 ', N'Resources\m6.jpg', CAST(N'1997-10-29' AS Date), N'houle@live.com', CAST(N'2018-06-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (89, N'Лазарева', N'Эльвина', N'Робертовна', 2, N'7(5564)609-81-37 ', N'Resources\28.jpg', CAST(N'1996-02-16' AS Date), N'ahuillet@comcast.net', CAST(N'2018-04-11' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (90, N'Воронова', N'Изабелла', N'Вячеславовна', 2, N'7(17)433-44-98 ', N'Resources\21.jpg', CAST(N'1999-09-24' AS Date), N'kildjean@sbcglobal.net', CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (91, N'Куликова', N'Эвелина', N'Вячеславовна', 2, N'7(0236)682-42-78 ', N'Resources\23.jpg', CAST(N'1997-11-14' AS Date), N'ilikered@hotmail.com', CAST(N'2018-02-01' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (92, N'Егорова', N'Амалия', N'Дамировна', 2, N'7(7486)408-12-26 ', N'Resources\13.jpg', CAST(N'1999-09-28' AS Date), N'drezet@yahoo.com', CAST(N'2016-06-30' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (93, N'Александров', N'Станислав', N'Эдуардович', 1, N'7(18)164-05-12 ', N'Resources\m2.jpg', CAST(N'1981-07-04' AS Date), N'bigmauler@aol.com', CAST(N'2018-11-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (94, N'Цветков', N'Демьян', N'Львович', 1, N'7(93)546-43-73 ', N'Resources\m4.jpg', CAST(N'1996-03-29' AS Date), N'hauma@icloud.com', CAST(N'2016-02-12' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (95, N'Устинова', N'Юнона', N'Валентиновна', 2, N'7(33)367-13-07', N'Resources\44.jpg', CAST(N'1982-08-08' AS Date), N'kempsonc@live.com', CAST(N'2017-05-28' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (96, N'Костина', N'Любава', N'Авксентьевна', 2, N'7(6419)959-21-87 ', N'Resources\41.jpg', CAST(N'1972-07-13' AS Date), N'gordonjcp@hotmail.com', CAST(N'2016-02-26' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (97, N'Смирнов', N'Мартын', N'Арсеньевич', 1, N'7(6251)589-02-43 ', N'Resources\m34.jpg', CAST(N'1996-06-25' AS Date), N'haddawy@live.com', CAST(N'2017-02-07' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (98, N'Федотова', N'Сандра', N'Владленовна', 2, N'7(126)195-25-86 ', N'Resources\24.jpg', CAST(N'1985-03-29' AS Date), N'penna@verizon.net', CAST(N'2016-11-08' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (99, N'Журавлёв', N'Леонтий', N'Яковлевич', 1, N'7(4403)308-56-96 ', N'Resources\m24.jpg', CAST(N'2000-03-02' AS Date), N'cmdrgravy@me.com', CAST(N'2018-01-15' AS Date))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [GenderCode], [PhoneNumber], [Photo], [DateOfBirth], [Mail], [RegistrationDate]) VALUES (100, N'Большаков', N'Вадим', N'Данилович', 1, N'7(386)641-13-37 ', N'Resources\m97.jpg', CAST(N'1970-05-15' AS Date), N'uncle@gmail.com', CAST(N'2018-08-04' AS Date))
GO


-- Добавляем историю записей на приём
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (1, 57, CAST(N'2019-10-21T19:10:00.000' AS DateTime), 10)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (2, 12, CAST(N'2019-08-19T17:10:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (3, 39, CAST(N'2019-03-04T14:20:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (4, 81, CAST(N'2019-06-07T08:50:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (5, 57, CAST(N'2019-08-25T19:50:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (6, 29, CAST(N'2019-12-25T08:00:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (7, 69, CAST(N'2019-01-01T08:50:00.000' AS DateTime), 28)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (8, 77, CAST(N'2019-10-17T17:50:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (9, 38, CAST(N'2019-01-17T18:00:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (10, 31, CAST(N'2019-09-11T13:10:00.000' AS DateTime), 9)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (11, 87, CAST(N'2019-10-02T19:10:00.000' AS DateTime), 48)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (12, 47, CAST(N'2019-03-28T09:20:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (13, 57, CAST(N'2019-12-11T09:50:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (14, 37, CAST(N'2019-06-21T11:40:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (15, 12, CAST(N'2019-12-15T10:10:00.000' AS DateTime), 4)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (16, 29, CAST(N'2019-05-25T19:00:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (17, 6, CAST(N'2019-05-26T08:20:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (18, 20, CAST(N'2019-04-27T13:50:00.000' AS DateTime), 10)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (19, 15, CAST(N'2019-09-14T16:20:00.000' AS DateTime), 34)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (20, 6, CAST(N'2019-09-06T12:40:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (21, 54, CAST(N'2019-10-12T19:10:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (22, 31, CAST(N'2019-05-06T16:40:00.000' AS DateTime), 47)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (23, 69, CAST(N'2019-01-04T18:40:00.000' AS DateTime), 8)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (24, 47, CAST(N'2019-10-01T12:20:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (25, 25, CAST(N'2019-12-21T19:00:00.000' AS DateTime), 28)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (26, 75, CAST(N'2019-08-31T11:40:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (27, 15, CAST(N'2019-06-22T16:10:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (28, 86, CAST(N'2019-04-28T08:30:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (29, 5, CAST(N'2019-11-06T11:20:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (30, 34, CAST(N'2019-12-21T13:40:00.000' AS DateTime), 44)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (31, 32, CAST(N'2019-11-22T10:40:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (32, 17, CAST(N'2019-01-20T09:20:00.000' AS DateTime), 28)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (33, 56, CAST(N'2019-09-07T18:10:00.000' AS DateTime), 42)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (34, 39, CAST(N'2019-11-13T09:00:00.000' AS DateTime), 31)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (35, 58, CAST(N'2019-06-23T09:40:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (36, 79, CAST(N'2019-01-28T15:20:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (37, 10, CAST(N'2019-06-07T19:40:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (38, 81, CAST(N'2019-01-30T10:50:00.000' AS DateTime), 15)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (39, 56, CAST(N'2019-09-28T18:40:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (40, 17, CAST(N'2019-11-15T17:30:00.000' AS DateTime), 44)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (41, 47, CAST(N'2019-06-07T12:40:00.000' AS DateTime), 5)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (42, 34, CAST(N'2019-05-11T14:50:00.000' AS DateTime), 47)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (43, 69, CAST(N'2019-01-17T16:00:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (44, 9, CAST(N'2019-10-07T14:00:00.000' AS DateTime), 46)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (45, 86, CAST(N'2019-05-04T16:00:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (46, 90, CAST(N'2019-03-09T16:30:00.000' AS DateTime), 13)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (47, 85, CAST(N'2019-09-11T14:40:00.000' AS DateTime), 35)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (48, 53, CAST(N'2019-10-02T14:10:00.000' AS DateTime), 24)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (49, 39, CAST(N'2019-05-31T08:20:00.000' AS DateTime), 5)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (50, 87, CAST(N'2019-02-01T12:20:00.000' AS DateTime), 2)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (51, 2, CAST(N'2019-11-09T11:40:00.000' AS DateTime), 36)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (52, 48, CAST(N'2019-01-17T11:00:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (53, 58, CAST(N'2019-02-11T09:10:00.000' AS DateTime), 16)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (54, 25, CAST(N'2019-12-20T13:30:00.000' AS DateTime), 6)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (55, 69, CAST(N'2019-05-29T14:00:00.000' AS DateTime), 19)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (56, 53, CAST(N'2019-03-23T08:30:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (57, 79, CAST(N'2019-05-22T15:50:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (58, 96, CAST(N'2019-03-01T15:00:00.000' AS DateTime), 12)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (59, 25, CAST(N'2019-02-13T09:00:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (60, 20, CAST(N'2019-08-04T12:30:00.000' AS DateTime), 14)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (61, 87, CAST(N'2019-02-26T15:40:00.000' AS DateTime), 3)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (62, 39, CAST(N'2019-12-09T09:00:00.000' AS DateTime), 11)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (63, 31, CAST(N'2019-03-19T12:30:00.000' AS DateTime), 31)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (64, 38, CAST(N'2019-01-11T19:10:00.000' AS DateTime), 18)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (65, 10, CAST(N'2019-12-23T17:00:00.000' AS DateTime), 2)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (66, 9, CAST(N'2019-12-18T16:30:00.000' AS DateTime), 41)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (67, 86, CAST(N'2019-03-21T11:50:00.000' AS DateTime), 25)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (68, 39, CAST(N'2019-07-30T11:20:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (69, 81, CAST(N'2019-06-26T19:30:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (70, 96, CAST(N'2019-11-04T12:30:00.000' AS DateTime), 40)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (71, 32, CAST(N'2019-01-27T12:50:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (72, 17, CAST(N'2019-06-24T16:40:00.000' AS DateTime), 17)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (73, 57, CAST(N'2019-05-19T08:00:00.000' AS DateTime), 20)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (74, 87, CAST(N'2019-06-17T10:20:00.000' AS DateTime), 2)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (75, 6, CAST(N'2019-03-01T16:00:00.000' AS DateTime), 22)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (76, 85, CAST(N'2019-01-27T08:10:00.000' AS DateTime), 38)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (77, 21, CAST(N'2019-01-19T13:50:00.000' AS DateTime), 23)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (78, 95, CAST(N'2019-11-29T14:00:00.000' AS DateTime), 47)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (79, 98, CAST(N'2019-07-23T13:30:00.000' AS DateTime), 32)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (80, 48, CAST(N'2019-09-13T11:50:00.000' AS DateTime), 30)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (81, 25, CAST(N'2019-04-29T16:10:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (82, 85, CAST(N'2019-11-13T11:00:00.000' AS DateTime), 49)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (83, 53, CAST(N'2019-01-22T14:40:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (84, 58, CAST(N'2019-05-20T14:40:00.000' AS DateTime), 15)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (85, 23, CAST(N'2019-11-30T19:10:00.000' AS DateTime), 1)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (86, 54, CAST(N'2019-05-07T15:10:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (87, 86, CAST(N'2019-09-20T11:20:00.000' AS DateTime), 11)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (88, 10, CAST(N'2019-09-20T17:30:00.000' AS DateTime), 25)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (89, 85, CAST(N'2019-08-08T18:20:00.000' AS DateTime), 43)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (90, 75, CAST(N'2019-07-12T16:30:00.000' AS DateTime), 27)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (91, 45, CAST(N'2019-01-13T18:10:00.000' AS DateTime), 21)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (92, 79, CAST(N'2019-01-11T16:40:00.000' AS DateTime), 14)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (93, 81, CAST(N'2019-07-21T14:30:00.000' AS DateTime), 39)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (94, 47, CAST(N'2019-11-26T11:30:00.000' AS DateTime), 34)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (95, 95, CAST(N'2019-10-10T08:10:00.000' AS DateTime), 11)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (96, 86, CAST(N'2019-06-13T15:40:00.000' AS DateTime), 33)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (97, 89, CAST(N'2019-10-05T13:30:00.000' AS DateTime), 31)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (98, 25, CAST(N'2019-10-24T15:00:00.000' AS DateTime), 44)
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (99, 21, CAST(N'2019-06-24T17:40:00.000' AS DateTime), 43)
GO


INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceTime], [ServiceID]) VALUES (100, 79, CAST(N'2019-10-31T08:40:00.000' AS DateTime), 23)
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO


SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Code], [Title]) VALUES (1, N'Мужской')
INSERT [dbo].[Gender] ([Code], [Title]) VALUES (2, N'Женский')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO


INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (1, N'Снятие лака', 35, 1240.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (2, N'Наращивание ногтей гелем', 40, 1540.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (3, N'Ультразвуковой пилинг', 45, 1440.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (4, N'Спортивный массаж', 30, 1650.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (5, N'Массаж ЖИВА', 55, 2330.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (6, N'Комбинированный маникюр', 60, 2390.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (7, N'Урок в группе испанского языка для школьников', 120, 1910.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (8, N'Стрижка челки', 35, 1930.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (9, N'Озонотерапия', 35, 1740.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (10, N'Оформление бровей', 35, 2280.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (11, N'Окрашивание бровей', 60, 1120.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (12, N'Моментальный лифтинг', 50, 2020.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (13, N'Гавайский массаж Ломи-Ломи', 35, 1040.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (14, N'Депиляция воском', 30, 2330.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (15, N'Покрытие ногтей', 40, 2410.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (16, N'Полировка с маслом', 20, 1280.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (17, N'Художественное оформление ресниц', 50, 2040.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (18, N'Классический маникюр', 55, 1680.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (19, N'Лечебное покрытие ногтей', 30, 1220.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (20, N'Татуаж', 60, 1330.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (21, N'Инъекционные методики', 40, 1660.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (22, N'Эстетическая лазерная шлифовка кожи', 40, 1750.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (23, N'Мезотерапия', 40, 2040.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (24, N'Наращивание ресниц кукольного эффекта', 35, 2120.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (25, N'Детская стрижка', 35, 2330.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (26, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', 90, 1480.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (27, N'Наращивание ресниц лисьего эффекта', 30, 1370.0000, 25)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (28, N'Пирсинг', 55, 1330.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (29, N'Замена масла в вариаторе', 2, 4720.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (30, N'Покраска ресниц', 30, 2400.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (31, N'Микротоковая терапия', 45, 2410.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (32, N'Европейский маникюр', 60, 1990.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (33, N'Консультация врача-косметолога', 60, 2350.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (34, N'Полировка ногтей', 50, 2310.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (35, N'Декорирование ресниц стразами', 50, 1920.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (36, N'Химический пилинг', 25, 1880.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (37, N'Мужская стрижка', 50, 1690.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (38, N'Укрепление ногтей гелем', 45, 1260.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (39, N'Стрижка с покраской', 25, 2300.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (40, N'Прессотерапия', 40, 2350.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (41, N'Наращивание ресниц', 40, 1430.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (42, N'Удаление доброкачественных образований кожи', 15, 1910.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (43, N'Коррекция нарощенных ресниц', 45, 1310.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (44, N'Фонофорез лица', 20, 1120.0000, 5)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (45, N'Стрижка бороды машинкой', 45, 1750.0000, 10)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (46, N'Шугаринг', 30, 1400.0000, 0)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (47, N'Реконструкция и лечение волос и кожи головы', 55, 2360.0000, 15)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (48, N'Макияж', 30, 2470.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (49, N'ИК-сауна', 45, 1160.0000, 20)
INSERT [dbo].[Service] ([ID], [Title], [Duration], [Cost], [Discount]) VALUES (50, N'Моделирование ресниц', 45, 2140.0000, 0)
GO


ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO


ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO


ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO


ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO


ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO


ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
