INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(1, 'Vis en titane', 'Pièce simple en titane', 10);

INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(2, 'Rivet en aluminium', 'Petit élément de fixation', 2);

INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(3, 'Raidisseur en composite', 'Renforcement de structure', 50);

INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(4, 'Plaque en alliage d’aluminium', 'Plaque pour fuselage', 100);

INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(5, 'Panneau de fuselage', 'Assemblage de plusieurs pièces', 500);

INSERT INTO PIECE (ref_piece, libelle_piece, description_piece, prix_unitaire) VALUES 
(6, 'Segment de fuselage', 'Partie du fuselage', 2000);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES (5, 1, 8);
INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES (5, 2, 20);
INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES (5, 3, 4);
INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES (5, 4, 1);
INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES (6, 5, 1);
