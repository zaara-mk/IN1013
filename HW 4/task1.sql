CREATE TABLE petPet (
  petname VARCHAR(20) NOT NULL PRIMARY KEY,
  owner CARCHAR(45),
  species VARCHAR(45),
  gender ENUM('M','F'),
  birth DATE,
  death DATE
);

CREATE TABLE petEvent (
  petname VARCHAR(20),
  eventdate DATE NOT NULL,
  eventtype VARCHAR(15) NOT NULL,
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname),
  PRIMARY KEY (petname,eventtype)
);