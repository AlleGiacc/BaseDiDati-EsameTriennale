--Testing del trigger relativo all'acquisto di massimo 5 buste per settimana:

--le prime 2 insert vengono eseguite correttamente, mentre le ultime 2: la INSERT su "comprare" verrà eseguita mentre quella su venire no in quanto il trigger la blocca
--Il fatto che la tabella comprare non viene bloccata è dato da una supposizione sul funzionamento dell'applicativo

INSERT INTO comprare(data, id_utente) VALUES
					('2022-07-30', 3),
					('2022-07-29', 3),
					('2022-07-28', 3),
                	('2022-07-27', 3),
                	('2022-07-26', 3);

INSERT INTO venire(seriale_busta, id_utente_comprare, data_comprare) VALUES
				('CHACHA2000', 3, '2022-07-30'),
				('CHACHA2000', 3, '2022-07-29'),
				('CHACHA2000', 3, '2022-07-28'),
              	('CHACHA2000', 3, '2022-07-27'),
              	('CHACHA2000', 3, '2022-07-26');


INSERT INTO comprare(data, id_utente) VALUES
                	('2022-07-25', 3);

INSERT INTO venire(seriale_busta, id_utente_comprare, data_comprare) VALUES
					('CHACHA2000', 3, '2022-07-25');
					
--Testing del trigger sul massimo numero di apparizioni di carte in mazzo tenendo conto della rarita

--è stata creata una carta con uguali caratteristiche ad una carta generica a meno della rarità (con id 2 anzichè 3)

INSERT INTO carta (id_rarita, nome) VALUES (2, 'Elemental HERO Solid Soldier');

INSERT INTO carta_collezione(id_utente, id_carta, id_rarita_carta, qnt) VALUES (3, 46, 2, 3);

INSERT INTO mostro(id_carta, id_rarita_carta, tipologia_mostro, tipologia_mostro_livello, id_sotto_tipo, id_attributo) VALUES(46, 2, 'livello', 'mostro_effetto', 2, 4);

--prima l'attributo n era impostato a 3, per testare viene abbassato a 2

UPDATE apparizioni SET n=2 WHERE id_carta_carta_coll=8 

--tramite le seguenti istruzioni si può giocare a fare delle prove sull'inserimento di una riga in apparizione contenete la carta con diversa rarità in un certo numero n di copie 
--se n = 1 funziona, se è maggiore no in quanto la somma fra le apparizioni di questa carta più l'altra con rarità diversa è maggiore di 3.
--l'istruzione di DELETE serve semplicemente per fare più prove eliminando la riga appena inserita.

INSERT INTO apparizioni (id_mazzo, id_utente_carta_coll, id_carta_carta_coll, id_rarita_carta_coll, n) VALUES (1,3,46,2,2);

DELETE FROM apparizioni WHERE id_carta_carta_coll = 46;

--sono state omesse le istruzioni per testare il trigger speculare di update
