/* Je me positionne sur la base de données souhaité */
USE cinema_db;

/* Je supprime la table si elle existe déjà */
DROP TABLE IF EXISTS ticket_fares;

/* Je crée la table ticket_fares */
CREATE TABLE ticket_fares (
   ticket_id INT(11) NOT NULL,
   fare_id INT(11) NOT NULL,
   PRIMARY KEY (ticket_id, fare_id),
   FOREIGN KEY (ticket_id) REFERENCES tickets (id)
       ON UPDATE RESTRICT
       ON DELETE RESTRICT,
   FOREIGN KEY (fare_id) REFERENCES  fares (id)
       ON UPDATE RESTRICT
       ON DELETE RESTRICT
);