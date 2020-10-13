CREATE TABLE sale(
        id INT NOT NULL AUTO_INCREMENT,
        stamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        amount  DECIMAL(10,2) NOT NULL,
        tax DECIMAL(10,2) NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE cashout (
        id INT NOT NULL AUTO_INCREMENT,
        day DATE NOT NULL,
        amount DECIMAL(10,2) NOT NULL,
        tax DECIMAL(10,2) NOT NULL,
        PRIMARY KEY (id)
);
