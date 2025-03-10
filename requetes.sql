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

-- 4 Comptez combien de pièces composées existent dans la base.

select count(*) AS NB_PIECES_COMPOSEES from PIECE p
where exists (select * from COMPOSER c where c.ref_piece_composee = p.ref_piece);


-- 5 Calculez le coût total de chaque pièce composée en additionnant le prix de ses composants directs.

SELECT p.libelle_piece AS piece_composee,
       SUM(c.quantite * pc.prix_unitaire) AS cout_total
FROM PIECE p
JOIN COMPOSER c ON p.ref_piece = c.ref_piece_composee
JOIN PIECE pc ON c.ref_piece_composante = pc.ref_piece
GROUP BY p.libelle_piece
ORDER BY cout_total DESC;

--6 Trouvez toutes les pièces qui entrent dans la fabrication d’une pièce composée, directement ou indirectement. La réponse est une table qui, pour chaque pièce composée,indique son composant, direct ou indirect. Cette table est ordonnée par le id de la pièce composée.
SELECT ref_piece_composee, 
       LISTAGG(libelle_piece, ', ') WITHIN GROUP (ORDER BY libelle_piece) AS composants
FROM (
    SELECT DISTINCT 
        CONNECT_BY_ROOT c.ref_piece_composee AS ref_piece_composee, 
        p.libelle_piece
    FROM COMPOSER c
    JOIN PIECE p ON c.ref_piece_composante = p.ref_piece
    CONNECT BY PRIOR c.ref_piece_composante = c.ref_piece_composee
)
GROUP BY ref_piece_composee
ORDER BY ref_piece_composee;
