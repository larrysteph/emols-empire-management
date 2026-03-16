-- SETUP DE LA BASE
CREATE DATABASE IF NOT EXISTS emols_db;
USE emols_db;

-- 1. TABLE STATS YOUTUBE (LABEL)
CREATE TABLE IF NOT EXISTS label_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_artiste VARCHAR(100),
    titre_oeuvre VARCHAR(255),
    date_pub DATE,
    vues_streams INT,
    heures_visionnage DECIMAL(10,2),
    impressions INT,
    ctr_clics DECIMAL(5,2),
    statut_artiste VARCHAR(50)
);

-- 2. TABLE BUSINESS (STUDIO)
CREATE TABLE IF NOT EXISTS studio_business (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(100),
    service VARCHAR(100),
    tarif_fcfa INT,
    date_prestation DATE,
    statut_paiement VARCHAR(50)
);

-- IMPORT DES DONNÉES RÉELLES
INSERT INTO label_stats (nom_artiste, titre_oeuvre, date_pub, vues_streams, heures_visionnage, impressions, ctr_clics, statut_artiste) VALUES 
('Lechat 241', 'Mamie Wata .feat @nt_musique', '2025-10-17', 220706, 7601.01, 1303803, 7.47, 'Actif'),
('Lechat 241', 'Pas du Ndoss [Official Video]', '2025-05-31', 59701, 1769.61, 397372, 6.95, 'Actif'),
('N.T', 'La capitale Ndolo [Official Video]', '2024-12-27', 7768, 269.68, 27106, 13.14, 'Actif'),
('N.T', 'Why (Official Music Video)', '2025-04-11', 4905, 146.54, 19647, 11.63, 'Actif'),
('Slow Boyz', 'Ma Nga [Official Video]', '2024-07-25', 626779, 22432.24, 5402092, 6.30, 'Ancien'),
('Slow Boyz', 'Ma Nga (Lyrics Video)', '2024-07-15', 74412, 2557.50, 486546, 9.08, 'Ancien'),
('Clyve the Jok''r', 'Bombasse feat. Dyzie', '2024-05-17', 29264, 288.61, 153172, 8.08, 'Ancien');

-- ACTIVITÉ RÉCENTE DU STUDIO
INSERT INTO studio_business (nom_client, service, tarif_fcfa, date_prestation, statut_paiement) VALUES 
('Ragnarock', 'Mix & Master', 40000, '2026-03-10', 'Payé'),
('New Artiste', 'Recording session', 10000, '2026-03-12', 'En attente'),
('Client Premium', 'Mastering complet', 70000, '2026-03-15', 'Payé');