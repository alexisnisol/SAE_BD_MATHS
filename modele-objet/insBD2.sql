-- Insertion dans la table PIECE
INSERT INTO PIECE (ref_piece, libelle_piece, dateDebut, dateFin, equipe, indiceQualite, prix_unitaire)
VALUES (
  1,
  'Roulement à billes',
  TO_DATE('2025-01-01', 'YYYY-MM-DD'),
  TO_DATE('2025-12-31', 'YYYY-MM-DD'),
  equipeTab(
    equipeT('Equipe A', 'Assemblage'),
    equipeT('Equipe B', 'Contrôle qualité')
  ),
  indiceQualiteList(
    indiceQualiteT('Durabilité', 90, 95),
    indiceQualiteT('Précision', 85, 88)
  ),
  15.50
);

INSERT INTO PIECE (ref_piece, libelle_piece, dateDebut, dateFin, equipe, indiceQualite, prix_unitaire)
VALUES (
  2,
  'Vis en acier',
  TO_DATE('2025-02-01', 'YYYY-MM-DD'),
  TO_DATE('2025-11-30', 'YYYY-MM-DD'),
  equipeTab(
    equipeT('Equipe C', 'Production'),
    equipeT('Equipe D', 'Logistique')
  ),
  indiceQualiteList(
    indiceQualiteT('Résistance', 80, 85),
    indiceQualiteT('Finition', 75, 78)
  ),
  0.25
);

INSERT INTO PIECE (ref_piece, libelle_piece, dateDebut, dateFin, equipe, indiceQualite, prix_unitaire)
VALUES (
  3,
  'Engrenage',
  TO_DATE('2025-03-01', 'YYYY-MM-DD'),
  TO_DATE('2025-10-31', 'YYYY-MM-DD'),
  equipeTab(
    equipeT('John', 'Usinage'),
    equipeT('JohnJohn', 'Usinage'),
    equipeT('Jack', 'Usinage'),
    equipeT('Bertrand', 'Usinage'),
    equipeT('Jean', 'Usinage'),
    equipeT('Equipe F', 'Contrôle qualité')
  ),
  indiceQualiteList(
    indiceQualiteT('Solidité', 88, 92),
    indiceQualiteT('Précision', 80, 85)
  ),
  12.75
);

INSERT INTO PIECE (ref_piece, libelle_piece, dateDebut, dateFin, equipe, indiceQualite, prix_unitaire)
VALUES (
  4,
  'Ressort',
  TO_DATE('2025-04-01', 'YYYY-MM-DD'),
  TO_DATE('2025-09-30', 'YYYY-MM-DD'),
  equipeTab(
    equipeT('Equipe G', 'Assemblage'),
    equipeT('Equipe H', 'Test')
  ),
  indiceQualiteList(
    indiceQualiteT('Elasticité', 85, 90),
    indiceQualiteT('Durabilité', 80, 83)
  ),
  1.50
);

-- Insertion dans la table COMPOSER
INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite)
VALUES (1, 2, 10);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite)
VALUES (1, 3, 5);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite)
VALUES (2, 4, 20);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite)
VALUES (3, 4, 15);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite)
VALUES (4, 2, 25);