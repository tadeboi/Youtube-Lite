CREATE DATABASE YouTube;
USE Youtube;

CREATE TABLE Country(
	CountryID int not null primary key identity(1,1),
	countryName nvarchar not null
);

CREATE TABLE Youtuber (
    PersonID int not null primary key identity(1,1), 
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
	ChannelName varchar(255) not null,
    Email varchar(255) not null,
    countryid int not null references Country(CountryID) 
);

CREATE TABLE YoutuberVideos (
	YoutuberID int  not null references Youtuber(PersonID),
	VideoID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	DatePosted datetime not null,
	Comment text,
	Likes bigint,
	NumberOfViews bigint, 
	AdsIncome int,
	countryid int not null references Country(CountryID)
 );
 CREATE TABLE Viewers (
    ViewersID int not null primary key identity(1,1),
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
    Email varchar(255) not null,
	StartTime datetime not null,
	EndTime datetime not null,
    countryid int not null references Country(CountryID), 
	videoID int not null references YoutuberVideos(VideoID)
);
 
