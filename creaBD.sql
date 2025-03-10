DROP TABLE IF EXISTS COMPOSER;
DROP TABLE IF EXISTS PIECE;

CREATE TABLE COMPOSER (
  PRIMARY KEY (ref_piece_composee, ref_piece_composante),
  ref_piece_composee INT NOT NULL,
  ref_piece_composante INT NOT NULL,
  quantite INT
);

CREATE TABLE PIECE (
  PRIMARY KEY (ref_piece),
  ref_piece INT AUTO_INCREMENT NOT NULL,
  libelle_piece VARCHAR(42),
  description_piece VARCHAR(42),
  prix_unitaire INT
);

ALTER TABLE COMPOSER ADD FOREIGN KEY (ref_piece_composante) REFERENCES PIECE (ref_piece);
ALTER TABLE COMPOSER ADD FOREIGN KEY (ref_piece_composee) REFERENCES PIECE (ref_piece);