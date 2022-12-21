CREATE DATABASE LeivAnime
GO
USE LeivAnime
GO

--DROP DATABASE LeivAnime

CREATE TABLE Member(
	MemberID CHAR(5) PRIMARY KEY,
	MemberName VARCHAR(100),
	MemberAddress VARCHAR(100),
	MemberPhone VARCHAR(100),
	MemberEmail VARCHAR(100),
	MemberDOB DATE,
	MemberGender VARCHAR(20)
)



CREATE TABLE Anime(
	AnimeID CHAR(5) PRIMARY KEY,
	AnimeName VARCHAR(100),
	AnimeDesc VARCHAR(255),
	AnimeReleaseSeason VARCHAR(16),
	AnimeScore INT
)

CREATE TABLE Genre(
	GenreID CHAR(5) PRIMARY KEY,
	GenreName VARCHAR(100)
)

CREATE TABLE AnimePurchase(
	PurchaseID CHAR(5) PRIMARY KEY,
	MemberID CHAR(5) REFERENCES Member(MemberID) ON UPDATE CASCADE ON DELETE CASCADE,
	PurchaseDate DATE
)

CREATE TABLE AnimePurchaseDetail(
	PurchaseID CHAR(5),
	AnimeID CHAR(5)
	
	PRIMARY KEY (PurchaseID, AnimeID),
	FOREIGN KEY (PurchaseID) REFERENCES AnimePurchase(PurchaseID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (AnimeID) REFERENCES Anime(AnimeID) ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE AnimeDetail(
	AnimeID CHAR(5),
	GenreID CHAR(5),

	PRIMARY KEY(AnimeID, GenreID),
	FOREIGN KEY (AnimeID) REFERENCES Anime(AnimeID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (GenreID) REFERENCES Genre(GenreID) ON UPDATE CASCADE ON DELETE CASCADE
)

INSERT INTO Member VALUES
('ME001', 'Jeremy Lin', 'Jl. Pasar Pecah Kulit No. 8', '08999393860', 'jeremy@yahoo.com', '24-Dec-1994', 'Male'),
('ME002', 'LeBron James', 'Jl. K.H Syahdan No. 12A', '08984254889', 'tackotues@gmail.com', '27-Nov-1995', 'Male'),
('ME003', 'Azusagawa Sakuta', 'Jl. Teluk Gong No. 28', '081807191152', 'sakuta@yahoo.com', '15-Jun-1995', 'Male'),
('ME004', 'Sakurajima Mai', 'Jl. Kalideres No. 10', '08385698214', 'mai@gmail.com', '22-May-1995', 'Female'),
('ME005', 'Sanshokuin Sumireko', 'Jl. Pluit Putri 1 No. 5', '08235938751', 'pansy@yahoo.com', '23-Mar-1995', 'Female'),
('ME006', 'Kiss Shot Acerola Orion Heart Under Blade', 'Jl. Permata 10 No. 12', '08996825465', 'shinobu@gmail.com', '06-Apr-1995', 'Female'),
('ME007', 'Araragi Koyomi', 'Jl. Setia Jaya 1 No. 2', '08125654898', 'arararagi@yahoo.com', '06-Dec-1995', 'Male'),
('ME008', 'Kurosawa Ruby', 'Jl. Nusa Indah Timur No. 15A', '08568948751', 'ruby@gmail.com', '26-Mar-1995', 'Female'),
('ME009', 'Kirigaya Kazuto', 'Jl. Flamboyan No.5C', '08563321598', 'kirito@gmail.com', '02-Sep-1994', 'Male'),
('ME010', 'Himiko Toga', 'Jl. Kedoya Akasia 2 No. 20', '08985692586', 'lov@yahoo.com', '24-Apr-1995', 'Female')

INSERT INTO Anime VALUES
('AN001', 'Haikyuu!!: To the Top', 'After their triumphant victory over Shiratorizawa Academy, the Karasuno High School volleyball team has earned their long-awaited ticket to nationals.', 'Winter', '9'),
('AN002', 'Darwins Game', 'High school student Kaname Sudou receives an invitation from a classmate to play Darwins Game, a mobile game he has never heard of. ', 'Winter', '7'),
('AN003', 'Kyokou Suiri', 'Hidden in plain sight, spirits known as youkai inhabit the world. While most are benign, a certain subset threatens the tenuous peace between youkai and humanity.', 'Winter', '7'),
('AN004', 'Isekai Quartet 2', 'Despite completing all the tasks given to them, Ainz Ooal Gown, Tanya Degurechaff, Kazuma Satou, Subaru Natsuki, and the other members of Class 2 are surprised to find out that their role as students is far from over.', 'Winter', '7'),
('AN005', 'Toaru gakau no Railgun T', 'The Daihasei Festival has begun, and that of course means that Tokiwadai Middle School—a prestigious all-girls middle school—is competing too.', 'Winter', '8'),
('AN006', 'Ore wo Suki nano wa Omae dake ka yo', 'Amatsuyu "Jouro" Kisaragi is a completely average second-year high school student who has two dates over one weekend⁠—with the student council president Sakura "Cosmos" Akino on Saturday, then with his childhood friend Aoi Himawari Hinata on Sunday.', 'Fall', '8'),
('AN007', 'Dr. Stone', 'After five years of harboring unspoken feelings, high-schooler Taiju Ooki is finally ready to confess his love to Yuzuriha Ogawa.', 'Summer', '8'),
('AN008', 'Enen no Shouboutai', 'Spontaneous Human Combustion: a chaotic phenomenon that has plagued humanity for years, randomly transforming ordinary people into flaming, violent creatures known as Infernals.', 'Summer', '8'),
('AN009', 'Vinland Saga', 'Young Thorfinn grew up listening to the stories of old sailors that had traveled the ocean and reached the place of legend, Vinland.', 'Summer', '9'),
('AN010', 'Kimetsu no Yaiba', 'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado shoulders.', 'Spring', '9')

INSERT INTO Genre VALUES
('GN001', 'Action'),
('GN002', 'Demons'),
('GN003', 'Historical'),
('GN004', 'Shounen'),
('GN005', 'SUpernatural'),
('GN006', 'Adventure'),
('GN007', 'Sci-Fi'),
('GN008', 'Drama'),
('GN009', 'Seinen'),
('GN010', 'School')

INSERT INTO AnimeDetail VALUES
('AN001', 'GN001'),
('AN001', 'GN002'),
('AN001', 'GN003'),
('AN001', 'GN004'),

('AN002', 'GN002'),
('AN002', 'GN003'),

('AN003', 'GN001'),
('AN003', 'GN002'),
('AN003', 'GN003'),
('AN003', 'GN004'),
('AN003', 'GN005'),
('AN003', 'GN008'),

('AN004', 'GN001'),
('AN004', 'GN002'),
('AN004', 'GN003'),
('AN004', 'GN004'),
('AN004', 'GN008'),

('AN005', 'GN001'),
('AN005', 'GN003'),
('AN005', 'GN004'),
('AN005', 'GN008'),
('AN005', 'GN009'),
('AN005', 'GN010'),

('AN006', 'GN007'),

('AN007', 'GN002'),
('AN007', 'GN003'),

('AN008', 'GN004'),
('AN008', 'GN009'),

('AN009', 'GN002'),
('AN009', 'GN003'),

('AN010', 'GN002'),
('AN010', 'GN003'),
('AN010', 'GN006')


INSERT INTO AnimePurchase VALUES
('PR001', 'ME001', '23-Jun-2016'),
('PR002', 'ME002', '07-May-2013'),
('PR003', 'ME003', '05-Mar-2016'),
('PR004', 'ME004', '08-Nov-2014'),
('PR005', 'ME005', '30-Nov-2013'),
('PR006', 'ME006', '12-Jun-2016'),
('PR007', 'ME007', '24-Jul-2016'),
('PR008', 'ME008', '18-Jul-2016'),
('PR009', 'ME009', '03-Aug-2016'),
('PR010', 'ME010', '27-Aug-2016')

INSERT INTO AnimePurchaseDetail VALUES
('PR001', 'AN001'),
('PR002', 'AN002'),
('PR002', 'AN003'),
('PR003', 'AN003'),
('PR004', 'AN004'),
('PR004', 'AN002'),
('PR004', 'AN001'),
('PR005', 'AN005'),
('PR005', 'AN006'),
('PR006', 'AN006'),
('PR007', 'AN007'),
('PR008', 'AN008'),
('PR009', 'AN009'),
('PR010', 'AN010')

--1
SELECT AnimeName
FROM Anime
WHERE LEFT(AnimeName, 1) = 'K'

--2
SELECT MemberName, PurchaseDate
FROM Member
INNER JOIN AnimePurchase
ON Member.MemberID = AnimePurchase.MemberID
WHERE DATEDIFF(YEAR, 2020/01/01, PurchaseDate) >= 4 AND YEAR(PurchaseDate) >= 2016

--3
SELECT Member.MemberID, MemberName, [Total Purchase] = COUNT(PurchaseID)
FROM Member
INNER JOIN AnimePurchase
ON Member.MemberID = AnimePurchase.MemberID
WHERE CAST(RIGHT(Member.MemberID, 3) AS INT) %2 = 0
GROUP BY Member.MemberID, Member.MemberName

--4
SELECT [MemberName] = LEFT(MemberName, CHARINDEX(' ', MemberName)), [AverageAnimeScore] = AVG(AnimeScore), [TotalWatchAnimes] = COUNT(AnimePurchase.PurchaseID)
FROM Member, Anime, AnimePurchase, AnimePurchaseDetail
WHERE Member.MemberID = AnimePurchase.MemberID AND AnimePurchase.PurchaseID = AnimePurchaseDetail.PurchaseID AND AnimePurchaseDetail.AnimeID = Anime.AnimeID AND AnimeReleaseSeason = 'Winter'
GROUP BY MemberName
UNION
SELECT [MemberName] = LEFT(MemberName, CHARINDEX(' ', MemberName)), [AverageAnimeScore] = AVG(AnimeScore), [TotalWatchAnimes] = COUNT(AnimePurchase.PurchaseID)
FROM Member, Anime, AnimePurchase, AnimePurchaseDetail
WHERE Member.MemberID = AnimePurchase.MemberID AND AnimePurchase.PurchaseID = AnimePurchaseDetail.PurchaseID AND AnimePurchaseDetail.AnimeID = Anime.AnimeID AND AnimeReleaseSeason = 'Spring'
GROUP BY MemberName

--5
SELECT Member.MemberID
FROM Member, AnimePurchase, AnimePurchaseDetail, Anime, AnimeDetail, Genre
WHERE Member.MemberID = AnimePurchase.MemberID AND AnimePurchase.PurchaseID = AnimePurchaseDetail.PurchaseID AND AnimePurchaseDetail.AnimeID = Anime.AnimeID AND Anime.AnimeID = AnimeDetail.AnimeID AND AnimeDetail.GenreID = Genre.GenreID AND (DATENAME(WEEKDAY, PurchaseDate) = 'Tuesday' OR DATENAME(WEEKDAY, PurchaseDate) = 'Saturday') AND
GenreName IN(
SELECT GenreName
FROM Genre
WHERE GenreName = 'Action')

--6
SELECT [AnimeID] = RIGHT(AnimeID, 3), AnimeName, [AnimeScore] = CAST(Anime.AnimeScore AS VARCHAR(10)) + '/10', AnimeReleaseSeason
FROM Anime, (SELECT DISTINCT [AnimeScore] = CAST(AVG(Anime.AnimeScore) AS INT) FROM ANIME) AS AverageAS
WHERE Anime.AnimeScore > AverageAS.AnimeScore 

--7
CREATE VIEW [AnimeMemberView]
AS
SELECT MemberName, [PurchaseDate] = CONVERT(VARCHAR, PurchaseDate, 107)
FROM Member, AnimePurchase
WHERE Member.MemberID = AnimePurchase.MemberID AND DATENAME(MONTH, PurchaseDate) = 'June'

--8
CREATE VIEW [AnimeWithGenre]
AS
SELECT [AnimeReleaseSeason] = LEFT(AnimeReleaseSeason , 3), [TotalScore] = SUM(AnimeScore)
FROM Anime, AnimeDetail, Genre
WHERE Anime.AnimeID = AnimeDetail.AnimeID AND AnimeDetail.GenreID = Genre.GenreID AND GenreName LIKE 'Adventure'
GROUP BY AnimeReleaseSeason

--9
ALTER TABLE Member
ADD MemberStatus VARCHAR(20)
GO
ALTER TABLE Member
ADD CONSTRAINT CheckLevel CHECK(MemberStatus LIKE 'Normal' OR MemberStatus LIKE 'Premium')

--10
UPDATE Member
SET MemberName = 'Shinobu'
FROM  Member, AnimePurchase, AnimePurchaseDetail, Anime
WHERE Member.MemberID = AnimePurchase.MemberID AND AnimePurchase.PurchaseID = AnimePurchaseDetail.PurchaseID AND AnimePurchaseDetail.AnimeID = Anime.AnimeID AND MONTH(PurchaseDate) = '6' AND AnimeName LIKE '%suki%'
