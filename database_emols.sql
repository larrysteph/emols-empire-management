/* DATABASE STRUCTURE - EMOLS EMPIRE 
  Stats YouTube & Gestion Studio 
*/

CREATE DATABASE IF NOT EXISTS emols_db;
USE emols_db;

-- Table Stats YouTube / Streaming
DROP TABLE IF EXISTS label_stats;
CREATE TABLE label_stats (
    id_stat INT PRIMARY KEY AUTO_INCREMENT,
    nom_artiste VARCHAR(100),
    titre_oeuvre VARCHAR(255),
    date_pub VARCHAR(100),
    vues_streams INT,
    heures_visionnage DECIMAL(15,4),
    impressions INT,
    ctr_clics DECIMAL(10,2),
    statut_artiste VARCHAR(20) -- Actif / Ancien
);

-- Table Business Studio
DROP TABLE IF EXISTS studio_business;
CREATE TABLE studio_business (
    id_prestation INT PRIMARY KEY AUTO_INCREMENT,
    nom_client VARCHAR(100),
    service VARCHAR(100),
    tarif_fcfa INT,
    date_prestation DATE,
    statut_paiement VARCHAR(50) -- Payé / En attente
);

-- Data Artistes
INSERT INTO label_stats (nom_artiste, titre_oeuvre, date_pub, vues_streams, heures_visionnage, impressions, ctr_clics, statut_artiste) 
VALUES 
('N.T', 'Vidéo N.T 1', '2025-10-12', 45200, 1200.50, 350000, 5.2, 'Actif'),
('N.T', 'Vidéo N.T 2', '2025-11-05', 12500, 450.25, 120000, 4.8, 'Actif'),
('Lechat 241', 'Vidéo Lechat', '2025-12-01', 220706, 7601.01, 1303803, 7.47, 'Actif'),
('Lechat 241', 'Freestyle Lechat', '2026-01-15', 59701, 1769.61, 397372, 6.95, 'Actif'),
('Slow Boyz', 'Classique Slow', '2024-05-20', 626779, 22432.24, 5402092, 6.3, 'Ancien'),
('Clyve the Jok''r', 'Ancien Hit', '2024-02-14', 29264, 288.61, 153172, 8.08, 'Ancien');

-- Data Studio
INSERT INTO studio_business (nom_client, service, tarif_fcfa, date_prestation, statut_paiement) 
VALUES 
('Ragnarock le fanatique', 'Prise de voix + Mix', 30000, '2025-12-17', 'Payé'),
('Artiste Inconnu', 'Pack Complet', 70000, '2026-02-10', 'Payé'),
('Client Alpha', 'Mix & Master distance', 30000, '2026-03-01', 'En attente'),
('Double K', 'Beat Simple', 30000, '2026-03-05', 'Payé');

-- Check final
SELECT nom_artiste, SUM(vues_streams) AS total_vues, statut_artiste 
FROM label_stats 
GROUP BY nom_artiste, statut_artiste;