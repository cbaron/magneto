CREATE TABLE IF NOT EXISTS DataPropertyType (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY ( id )
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS ObjectPropertyType (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR( 100 ),
    url VARCHAR( 255 ),
    PRIMARY KEY ( id )
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS DataProperty (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR( 50 ),
    url VARCHAR( 100 ),
    typeId INT,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( typeId ) REFERENCES DataPropertyType(id)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS ObjectProperty (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR( 50 ),
    url VARCHAR( 100 ),
    typeId INT,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( typeId ) REFERENCES ObjectPropertyType(id)
) ENGINE=InnoDB;


CREATE TABLE IF NOT EXISTS ObjectInstance (
    id INT NOT NULL AUTO_INCREMENT,
    typeId INT,
    name VARCHAR( 50 ),
    PRIMARY KEY( id ),
    FOREIGN KEY( typeId ) REFERENCES ObjectPropertyType(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS DataTuple (
    id INT NOT NULL AUTO_INCREMENT,
    ObjectInstanceId INT NOT NULL,
    DataPropertyId INT NOT NULL,
    value VARCHAR(255),
    PRIMARY KEY( id ),
    FOREIGN KEY ( ObjectInstanceId ) REFERENCES ObjectInstance(id),
    FOREIGN KEY ( DataPropertyId ) REFERENCES DataProperty(id)
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS ObjectTuple (
    id INT NOT NULL AUTO_INCREMENT,
    ObjectInstanceId INT NOT NULL,
    ObjectPropertyId INT NOT NULL,
    objectValueId INT NOT NULL,
    PRIMARY KEY( id ),
    FOREIGN KEY ( ObjectInstanceId ) REFERENCES ObjectInstance(id),
    FOREIGN KEY ( ObjectPropertyId ) REFERENCES ObjectProperty(id),
    FOREIGN KEY ( objectValueId ) REFERENCES ObjectInstance(id)
) ENGINE=InnoDB;

