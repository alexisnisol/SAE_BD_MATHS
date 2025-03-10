-- 2 Listez tous les noms pièces qui sont des composants directs d’une pièce composée spécifique (ex : ”Panneau de fuselage”) avec leur quantité.

select p.libelle_piece, quantite from PIECE p
join COMPOSER on ref_piece = ref_piece_composante
join PIECE p_composee on ref_piece_composee = p_composee.ref_piece
where p_composee.libelle_piece = 'Panneau de fuselage';

-- 3 Listez les pièces composées triées par le nombre de composants qu’elles contiennent.

SELECT p.libelle_piece, COUNT(c.ref_piece_composante) AS nombre_composants
FROM PIECE p
JOIN COMPOSER c ON p.ref_piece = c.ref_piece_composee
GROUP BY p.libelle_piece
ORDER BY nombre_composants DESC;

