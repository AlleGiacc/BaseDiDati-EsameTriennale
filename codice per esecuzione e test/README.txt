Nell'archivio ZIP sono presenti tutti gli script per poter installare e utilizzare il database in modo corretto.
Si ipotizza l'utilizzo del gestore GUI del database : PGAdmin 4 v6.12 con DBMS PostrgreSQL v14.4. Per questa ragione le operazioni dovranno essere eseguite nel query tool.
Prima di eseguire i seguenti passaggi è necessario creare un nuovo database con il nome desiderato.
Passaggi necessari:
	- Eseguire il contenuto del file create.sql per la creazione delle tabelle del database.
	- Eseguire il contenuto del file alter.sql per la creazione delle chiavi primarie, esterne e unique.
	- Eseguire il contenuto del file trigger.sql per la creazione dei trigger.
Testing:
	- Nei restanti file, ovvero : insert.sql, select.sql, update.sql e delete.sql, sono presenti le istruzioni da copiare ed eseguire per testare il corretto funzionamento del database.
	- Nel file update.sql sono presenti le istruzioni di UPDATE per testare il funzionamento di alcuni trigger
	- Nel file trigger_test.sql sono presenti alcune istruzioni di INSERT e UPDATE per testare trigger aggiuntivi