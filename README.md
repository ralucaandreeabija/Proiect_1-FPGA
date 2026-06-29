# Proiect_1-FPGA
Contor Binar cu 3 Butoane 

Cerințele proiectului 
Implementați pe placa de dezvoltare FPGA un contor binar pe 16 biți, afișat pe 16 LED-uri, controlat prin 3 butoane:
* Buton 1 — Incrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se incrementează cu 1.
* Buton 2 — Decrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se decrementează cu 1.
* Buton 3 — Reset: readuce valoarea contorului la 0 (toate LED-urile stinse). 

Plan de implementare
- numărătoarea începe de la zero
- trebuie stocată starea ( rezultatul operației anterioare pentru a trece la operația următoare )
- avem nevoie de registre (?)
- buton -> debouncer -> contor -> afișaj
- FSM: stare curentă -> intrare -> stare umătoare ( nu știu dacă voi folosi )
- se vor folosi 16 ieșiri, pentru a nu fi dependete una de cealaltă
- butonul de reset ar trebui să aibă cea mai mare prioritate ( dacă ar avea butonul 1 sau 2 prioritate și unul dintre ele s-ar apăsa simultan cu butounul 3, s-ar executa mai întâi operația de incrementare/decrementare, și la un ciclu de ceas următor s-ar produce resetul )
- dacă ajung la valoarea 2^16 - 1, ce urmează după? ( de testat conform ECE 4305 M2 - 4 - Counters )
- pot să aprind un bec separat de cele 16 în cazul în care se ajunge la valoarea maximă permisă și încă se încearcă incrementarea?
- idee nouă: după ce se ajunge la aprinderea tuturor LED-urilor, pentru a continua incrementarea, impunem apăsarea butonului 3 (?)
- de urmărit lecția 55 (ECE 3300) pentru a înțelege debounce-ul și cum execută fiecare buton operația
