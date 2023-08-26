
CREATE TABLE User (
    id VARCHAR(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    email VARCHAR(50),
    password VARCHAR(20),
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE Estado (
    id VARCHAR(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR(100)
);


CREATE TABLE Vist (
    id VARCHAR(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR(30),
    place_id VARCHAR(30),
    text VARCHAR(100)
);

CREATE TABLE Lugar (
    id VARCHAR2(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    user_id VARCHAR(30),
    name VARCHAR(100),
    city_id VARCHAR(30),
    description VARCHAR(500),
    number_rooms NUMBER DEFAULT 0,
    number_batrooms NUMBER DEFAULT 0,
    max_quest NUMBER DEFAULT 0,
    price_by_night NUMBER DEFAULT 0,
    latitude FLOAT,
    longilude FLOAT
);



CREATE TABLE Dato (
    id VARCHAR2(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    name VARCHAR(100)
);


CREATE TABLE Ciudad (
    id VARCHAR(30) PRIMARY KEY,
    updated_at TIMESTAMP,
    created_at TIMESTAMP,
    stated_id VARCHAR(30),
    name VARCHAR(100)
);



CREATE TABLE LugarDato (
    dato_id VARCHAR(30),
    place_id VARCHAR(30),
    PRIMARY KEY (amenity_id, place_id)
);

ALTER TABLE Vista
ADD CONSTRAINT review_user_fk
FOREIGN KEY (user_id)
REFERENCES User(id);

ALTER TABLE Vista
ADD CONSTRAINT review_place_fk
FOREIGN KEY (place_id)
REFERENCES Place(id);

ALTER TABLE Ciudad
ADD CONSTRAINT city_state_fk
FOREIGN KEY (state_id)
REFERENCES State(id);

ALTER TABLE Lugar
ADD CONSTRAINT  place_user_fk
FOREIGN KEY (user_id)
REFERENCES User(id);

ALTER TABLE Lugat
ADD CONSTRAINT place_city_fk
FOREIGN KEY (city_id)
REFERENCES City(id);



ALTER TABLE LugarDato
ADD CONSTRAINT LugarDato_dato_fk
FOREIGN KEY (amenity_id)
REFERENCES Amenity(id);

ALTER TABLE LugarDato
ADD CONSTRAINT LugarDato_place_fk
FOREIGN KEY (place_id)
REFERENCES Place(id);