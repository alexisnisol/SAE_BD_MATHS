INSERT INTO PIECE (libelle_piece, description_piece, prix_unitaire) VALUES
('Vis en titane', 'Pièce simple en titane', 10),
('Rivet en aluminium', 'Petit élément de fixation', 2),
('Raidisseur en composite', 'Renforcement de structure', 50),
('Plaque en alliage d’aluminium', 'Plaque pour fuselage', 100),
('Panneau de fuselage', 'Assemblage de plusieurs pièces', 500),
('Segment de fuselage', 'Partie du fuselage', 2000);

INSERT INTO COMPOSER (ref_piece_composee, ref_piece_composante, quantite) VALUES
(5, 1, 8),  -- Panneau de fuselage composé de 8 vis en titane
(5, 2, 20), -- Panneau de fuselage composé de 20 rivets en aluminium
(5, 3, 4),  -- Panneau de fuselage composé de 4 raidisseurs en composite
(5, 4, 1),  -- Panneau de fuselage composé d’une plaque en alliage d’aluminium
(6, 5, 1);  -- Segment de fuselage composé d’un panneau de fuselage
