Drop database if EXISTS flowerpower1;
Create database flowerpower1;
use flowerpower1;

CREATE TABLE usertype (
    usertype_id int not null,
    TYPE INT,
    created_at DATE,
    updated_at TIMESTAMP,
    PRIMARY KEY(usertype_id)
);

CREATE TABLE Account (
    account_id int not null,
    type int,
	email varchar(255) not null,
	password varchar(255) not null,
    admin INT not null,
    created_at DATE,
    updated_at TIMESTAMP,
    PRIMARY KEY(account_id),
    Foreign Key (type) REFERENCES Usertype(usertype_id)
);

CREATE TABLE Medewerker (
    mederwerker_id int not null,
    account_id int,
	naam varchar(255) not null,
    tussenvoegsel varchar (255),
	achternaam varchar(255) not null,
    gebruikersnaam varchar(255) not null,
    admin INT not null,
    created_at DATE,
    updated_at TIMESTAMP,
    PRIMARY KEY(medewerker_id),
    FOREIGN KEY(account_id) REFERENCES Account(account_id)
);

CREATE TABLE Klant (
    klant_id int not null,
    account_id int,
	naam varchar(255) not null,
    tussenvoegsel varchar (255),
	achternaam varchar(255) not null,
    gebruikersnaam varchar(255) not null,
    created_at DATE,
    updated_at TIMESTAMP,
    PRIMARY KEY(klant_id),
    FOREIGN KEY(account_id) REFERENCES Account(account_id)
);

Insert into Account(email, password)
Values ('Rianne@inmail.com','1234');

Insert into Persoon(account_id, naam, tussenvoegsel, achternaam, gebruikersnaam)
Values (1, 'Rianne', '', 'Anema', 'Rianneanema');