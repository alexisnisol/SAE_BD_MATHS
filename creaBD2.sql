CREATE OR REPLACE TYPE equipeT as OBJECT (
  nom VARCHAR2(42),
  fonction VARCHAR2(42)
);

CREATE TYPE equipeTab as TABLE OF equipeT;

CREATE OR REPLACE TYPE indiceQualiteT AS OBJECT (
  nom VARCHAR2(42),
  valeur NUMBER,
  valeur2 NUMBER
);

CREATE TYPE indiceQualiteList as VARRAY(10) OF indiceQualiteT;

CREATE TABLE PIECE (
  ref_piece NUMBER PRIMARY KEY,
  libelle_piece VARCHAR2(42),
  dateDebut DATE,
  dateFin DATE,
  equipe equipeTab,
  indiceQualite indiceQualiteList,
  prix_unitaire NUMBER
)
NESTED TABLE equipe STORE AS equipe_tab_nt,
NESTED TABLE indiceQualite STORE AS indiceQualite_tab_nt;


CREATE TABLE COMPOSER (
  ref_piece_composee NUMBER NOT NULL,
  ref_piece_composante NUMBER NOT NULL,
  quantite NUMBER,
  PRIMARY KEY (ref_piece_composee, ref_piece_composante),
  CONSTRAINT fk_composer_composee FOREIGN KEY (ref_piece_composee) REFERENCES PIECE (ref_piece),
  CONSTRAINT fk_composer_composante FOREIGN KEY (ref_piece_composante) REFERENCES PIECE (ref_piece)
);
