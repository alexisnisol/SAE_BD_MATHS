-- Création des types objets
CREATE TYPE equipeT AS OBJECT (
  nom VARCHAR2(42),
  fonction VARCHAR2(42)
);
/

CREATE TYPE equipeTab AS TABLE OF equipeT;
/ 

CREATE TYPE indiceQualiteT AS OBJECT (
  nom VARCHAR2(42),
  valeur NUMBER,
  valeur2 NUMBER
);
/

CREATE TYPE indiceQualiteList AS VARRAY(10) OF indiceQualiteT;
/ 

-- Création de la table PIECE
CREATE TABLE PIECE (
  ref_piece NUMBER PRIMARY KEY,
  libelle_piece VARCHAR2(42),
  dateDebut DATE,
  dateFin DATE,
  equipe equipeTab,
  indiceQualite indiceQualiteList,
  prix_unitaire NUMBER
)
NESTED TABLE equipe STORE AS equipe_tab_nt;

-- Création de la table COMPOSER
CREATE TABLE COMPOSER (
  ref_piece_composee NUMBER NOT NULL,
  ref_piece_composante NUMBER NOT NULL,
  quantite NUMBER,
  PRIMARY KEY (ref_piece_composee, ref_piece_composante),
  CONSTRAINT fk_composer_composee FOREIGN KEY (ref_piece_composee) REFERENCES PIECE (ref_piece),
  CONSTRAINT fk_composer_composante FOREIGN KEY (ref_piece_composante) REFERENCES PIECE (ref_piece)
);