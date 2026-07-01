# Proiect_1-FPGA
Contor Binar cu 3 Butoane 

Cerințele proiectului 
Implementați pe placa de dezvoltare FPGA un contor binar pe 16 biți, afișat pe 16 LED-uri, controlat prin 3 butoane:
* Buton 1 — Incrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se incrementează cu 1.
* Buton 2 — Decrementare: la fiecare apăsare, valoarea binară afișată pe LED-uri se decrementează cu 1.
* Buton 3 — Reset: readuce valoarea contorului la 0 (toate LED-urile stinse). 

Plan de implementare
Pentru realizarea contorului binar pe 16 biți, am adoptat următoarea strategie:
- implementarea se bazează pe memorarea stării anterioare a contorului folosind un registru de 16 biți (tip logic [15:0])
- valoarea este actualizată la fiecare front activ al ceasului, stocând rezultatul operației curente pentru a fi utilizat în ciclul următor
- voi introduce un modul de debouncing pentru fiecare intrare ( buton )
- acesta va asigura că o singură apăsare fizică este interpretată de logica FPGA ca un singur impuls logic, evitând incrementările/decrementările multiple accidentale
- logica de control a fost structurată astfel încât butonul de reset să dețină prioritatea absolută
- forțează registrul la valoarea 0 indiferent de starea butoanelor de incrementare sau decrementare, eliminând orice latență sau conflict în procesarea semnalelor simultane
- la incrementarea valorii 65535 (toate LED-urile aprinse), rezultatul operației produce un overflow ( bitul de carry este ignorat, iar contorul revine automat la 0 )
- similar, la decrementarea valorii 0, apare un underflow, iar contorul resetează valoarea la 65535
