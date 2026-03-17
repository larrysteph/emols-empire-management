
-- PROJET : SYSTÈME DE GESTION EMOLS EMPIRE
-- OBJECTIF : SUIVI DES STATS STREAMING ET REVENUS STUDIO


-- 1. Initialisation de la base de données
CREATE DATABASE IF NOT EXISTS emols_db;
USE emols_db;

-- 2. Création de la table des statistiques (YouTube / Streaming)

CREATE TABLE IF NOT EXISTS label_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_artiste VARCHAR(100),
    titre_oeuvre VARCHAR(255),
    vues_streams INT,
    ctr_clics DECIMAL(5,2),
    date_pub DATE,
    statut_artiste VARCHAR(50) 
);

-- 3. Création de la table Business (Revenus du Studio)

CREATE TABLE IF NOT EXISTS studio_business (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(100),
    service VARCHAR(100),
    tarif_fcfa INT,
    date_prestation DATE,
    statut_paiement VARCHAR(20) 
);

-- 4. Insertion des données du catalogue Label

INSERT INTO label_stats (nom_artiste, titre_oeuvre, vues_streams, ctr_clics, date_pub, statut_artiste) VALUES
('Lechat 241', 'Ma Nga', 125000, 8.5, '2025-01-10', 'Actif'),
('Lechat 241', 'Mamie Wata', 98000, 7.2, '2025-02-15', 'Actif'),
('N.T', 'Intro', 45000, 5.1, '2024-12-20', 'Actif'),
('N.T', 'Coller Serrer', 32000, 6.8, '2025-03-01', 'Actif'),
('Slow Boyz', 'Old School Vibes', 15000, 3.2, '2023-05-10', 'Ancien'),
('Clyve', 'Doucement', 25000, 4.5, '2024-06-15', 'Ancien');

-- 5. Insertion des revenus Studio (420 000 FCFA au total)

INSERT INTO studio_business (nom_client, service, tarif_fcfa, date_prestation, statut_paiement) VALUES
('Symphony Ghost', 'Beat Simple', 30000, '2025-03-10', 'Payé'),
('Zola Junior', 'Mixage & Mastering', 50000, '2025-03-12', 'Payé'),
('N.T', 'Conseil & DA', 100000, '2025-03-14', 'Payé'),
('Lechat 241', 'Album Pack (Promo)', 240000, '2025-03-15', 'Payé');

-- 6. Requêtes d'affichage pour vérification

SELECT * FROM label_stats;
SELECT * FROM studio_business;
SELECT SUM(tarif_fcfa) AS Chiffre_Affaire_Total FROM studio_business;