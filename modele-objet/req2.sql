-- 
SELECT p.ref_piece, e.fonction, COUNT(*) AS nombre_personnes
FROM PIECE p, TABLE(p.equipe) e
GROUP BY p.ref_piece, e.fonction
ORDER BY p.ref_piece, e.fonction;
