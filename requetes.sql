-- 2 Listez tous les noms pièces qui sont des composants directs d’une pièce composée spécifique (ex : ”Panneau de fuselage”) avec leur quantité.

select p.libelle_piece, quantite from PIECE p
join COMPOSER on ref_piece = ref_piece_composante
join PIECE p_composee on ref_piece_composee = p_composee.ref_piece
where p_composee.libelle_piece = 'Panneau de fuselage';

-- 4 Comptez combien de pièces composées existent dans la base.

select count(*) AS NB_PIECES_COMPOSEES from PIECE p
where exists (select * from COMPOSER c where c.ref_piece_composee = p.ref_piece);

