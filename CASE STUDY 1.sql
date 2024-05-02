CREATE DATABASE CarConnect;
--CUSTOMER TABLE CREATION--
CREATE TABLE Customer (
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
	PhoneNumber VARCHAR(20),
	Address VARCHAR(255),
	Username VARCHAR(50) UNIQUE,
	Password VARCHAR(255),
	RegistrationDate DATE
);

--VEHICLE TABLE CREATION--
CREATE TABLE Vehicle (
	VehicleID INT PRIMARY KEY,
	Model VARCHAR(100),
	Make VARCHAR(100),
	Year INT,
	Color VARCHAR(50),
	RegistrationNumber VARCHAR(20) UNIQUE,
	Availability TINYINT,
	DailyRate INT
);

--RESERVATION TABLE CREATION--
CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY ,
    CustomerID INT,
    VehicleID INT,
    StartDate DATETIME,
    EndDate DATETIME,
    TotalCost INT,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);

--ADMIN TABLE CREATION--
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(20),
    Username VARCHAR(50) UNIQUE,
    Password VARCHAR(255),
    Role VARCHAR(50),
    JoinDate DATE
);

--ADD DETAILS INTO CUSTOMER TABLE--
INSERT INTO Customer (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, Username, Password, RegistrationDate)
VALUES
    (1, 'Sasi', 'Pulluru', 'sasi@gmail.com', '2557637747', 'Tirupati', 'sasi123', 'P@ssw0rd1', '2024-01-01'),
    (2, 'Likhitha', 'Namburi', 'likhitha@gmail.com', '9876543210', 'Banglore', 'likhi567', 'Secur3P@ss', '2024-01-02'),
    (3, 'Lohitha', 'Dayakar', 'lohitha@gmail.com', '4639865689', 'Chennai', 'lohi908', 'Test1234@', '2024-01-03');

--ADD DETAILS INTO vehicle TABLE--
INSERT INTO Vehicle (VehicleID, Model, Make, Year, Color, RegistrationNumber, Availability, DailyRate)
VALUES
    (1, 'Civic', 'Honda', 2020, 'Red', 'ABC123', 1, 50),
    (2, 'Accord', 'Honda', 2019, 'Blue', 'XYZ456', 0, 60),
    (3, 'Camry', 'Toyota', 2021, 'Silver', 'DEF789', 1, 55);

--ADD DETAILS INTO CUSTOMER TABLE--

INSERT INTO Reservation (ReservationID, CustomerID, VehicleID, StartDate, EndDate, TotalCost, Status)
VALUES
    (1, 1, 1, '2024-04-01 08:00:00', '2024-05-03 08:00:00', 1500, 'confirmed'),
    (2, 2, 2, '2024-05-02 10:00:00', '2024-06-04 10:00:00', 1800, 'pending'),
    (3, 3, 3, '2024-04-03 12:00:00', '2024-05-05 12:00:00', 1650, 'completed');

--ADD DETAILS INTO Admin TABLE--
	INSERT INTO Admin (AdminID, FirstName, LastName, Email, PhoneNumber, Username, Password, Role, JoinDate)
VALUES
    (1, 'John', 'Doe', 'john@example.com', '1234567890', 'johndoe', 'Pa$$w0rd2024', 'super admin', '2022-10-22 09:00:00'),
    (2, 'Alice', 'Smith', 'alice@example.com', '9876543210', 'alicesmith', 'Secure123!', 'fleet manager', '2022-05-19 11:00:00'),
    (3, 'Bob', 'Johnson', 'bob@example.com', '5555555555', 'bobjohnson', 'hashedpassword', 'manager', '2022-03-07 07:00:00');
