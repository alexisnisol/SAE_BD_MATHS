CREATE TABLE PIECE (
  ref_piece NUMBER PRIMARY KEY,
  libelle_piece VARCHAR2(42),
  description_piece VARCHAR2(42),
  prix_unitaire NUMBER
);

CREATE TABLE COMPOSER (
  ref_piece_composee NUMBER NOT NULL,
  ref_piece_composante NUMBER NOT NULL,
  quantite NUMBER,
  PRIMARY KEY (ref_piece_composee, ref_piece_composante),
  CONSTRAINT fk_composer_composee FOREIGN KEY (ref_piece_composee) REFERENCES PIECE (ref_piece),
  CONSTRAINT fk_composer_composante FOREIGN KEY (ref_piece_composante) REFERENCES PIECE (ref_piece)
);
