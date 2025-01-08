# Sisteme de Gestiune a Bazelor de Date
## Proiect Final
### Cerinte:
```txt
1.  Prezentați pe scurt baza de date (utilitatea ei).

2.  Realizați diagrama entitate-relație (ERD): entitățile, relațiile și atributele trebuie definite în limba română
    (vezi curs SGBD, model de diagrama entitate-relație; nu se va accepta alt format).

3.  Pornind de la diagrama entitate-relație realizați diagrama conceptuală a modelului propus, integrând toate
    atributele necesare: entitățile, relațiile și atributele trebuie definite în limba română.

4.  Implementați în Oracle diagrama conceptuală realizată: definiți toate tabelele, adăugând toate  constrângerile 
    de integritate necesare (chei primary, cheile externe etc).

5.  Adăugați informații coerente în tabelele create (minim 5 înregistrări pentru fiecare entitate independentă; 
minim 10 înregistrări pentru fiecare tabelă asociativă).

6.  Formulați în limbaj natural o problemă pe care să o rezolvați folosind un subprogram stocat independent care să
    utilizeze toate cele 3 tipuri de colecții studiate. Apelați subprogramul.

7.  Formulați în limbaj natural o problemă pe care să o rezolvați folosind un subprogram stocat independent care să
    utilizeze 2 tipuri diferite de cursoare studiate, unul dintre acestea fiind cursor parametrizat, dependent de
    celălalt cursor. Apelați subprogramul.

8.  Formulați în limbaj natural o problemă pe care să o rezolvați folosind un subprogram stocat independent de tip
    funcție care să utilizeze într-o singură comandă SQL 3 dintre tabelele create. Tratați toate excepțiile care pot
    apărea, incluzând excepțiile predefinite NO_DATA_FOUND și TOO_MANY_ROWS. Apelați subprogramul astfel încât să
    evidențiați toate cazurile tratate.

9.  Formulați în limbaj natural o problemă pe care să o rezolvați folosind un subprogram stocat independent de tip
    procedură care să aibă minim 2 parametri și să utilizeze într-o singură  comandă SQL 5 dintre tabelele create.
    Definiți minim 2 excepții proprii, altele decât cele  predefinite la nivel de sistem. Apelați subprogramul astfel
    încât să evidențiați toate cazurile definite și tratate. 

10. Definiți un trigger de tip LMD la nivel de comandă. Declanșați trigger-ul.

11. Definiți un trigger de tip LMD la nivel de linie. Declanșați trigger-ul.

12. Definiți un trigger de tip LDD. Declanșați trigger-ul.

13. Formulați în limbaj natural o problemă pe care să o rezolvați folosind un pachet care să includă tipuri de date
    complexe și obiecte necesare unui flux de acțiuni integrate, specifice bazei de date definite (minim 2 tipuri
    de date, minim 2 funcții, minim 2 proceduri).
```
#
### 1.Prezentarea Bazei de Date
### 2.Diagrama entitate-relație (ERD)
![alt text](images/ERD.png)
### 3.Diagrama conceptuala
![alt text](images/conceptuala.png)
### 4. Implementarea Bazei de date in Oracle SQL
![alt text](images/diagrama_generata.png)
### 5. Inserari relevante in tabele
Inserarile sunt in scriptul [`inserare_date.sql`](inserare_date.sql).
### 6. ITP
#### Detinatorul unei firme de transport vrea sa analizeze datele transporturilor efectate pana in prezent. Datele care il intereseaza pe el sunt ce incasari a generat fiecare camion in parte, numarul de kilometri facuti de camioane grupate dupa branduri, pentru a sti pe viitor care brand este mai calitativ, si care au fost top 5 soferi cu cele mai lungi transporturi efectuate.
#### Procedura
![alt text](images/6.1.png)
![alt text](images/6.2.png)
![alt text](images/6.3.png)
#### Apelul procedurii stocate:
![alt text](images/6.4.png)

Procedura utilizata este aici: [`exercitiul_06.sql`](exercitiul_06.sql).

### 7.Revizie expirata
#### Disponentii unei firmelor de transport au nevoie sa stie inspectia tehnica periodica (ITP) a caror camioane a expirat, pentru a le putea face programare la serice. Scrieti o procedura care sa afiseze pentru fiecare firma de transport, numarul de inmatriculare si statusul valabilitatii ITP-ului, stiind ca acesta expira la 2 ani.

#### Procedura:
![alt text](images/7.1.png)
![alt text](images/7.2.png)
#### Apelul procedurii stocate:

![alt text](images/7.3.png)
Procedura utilizata este aici: [`exercitiul_07.sql`](exercitiul_07.sql).

### 8. Experienta medie a soferilor
####  Creati o procedura de tip functie careia i se da ca parametru numele unui client si se returneaza numarul mediu de curse al soferilor c au facut livrari pentru el.
#### Procedura:
![alt text](images/8.1.png)
#### Apelul procedurii stocate:
![alt text](images/8.2.png)
Procedura utilizata este aici: [`exercitiul_08.sql`](exercitiul_08.sql).
### 9. Cel mai potrivit sofer
![alt text](images/9.1.png)
![alt text](images/9.2.png)
#### Apelul procedurii stocate:
![alt text](images/9.3.png)
Procedura utilizata este aici: [`exercitiul_09.sql`](exercitiul_09.sql).
### 10. Trigger la nivel de comanda
![alt text](images/10.1.png)
![alt text](images/10.2.png)
Definitia triggerului este aici: [`exercitiul_10.sql`](exercitiul_10.sql).
### 11.Trigger la nivel de linie
![alt text](images/11.1.png)
![alt text](images/11.2.png)
Definitia triggerului este aici: [`exercitiul_11.sql`](exercitiul_11.sql).

### 12. Trigger LDD
![alt text](images/12.1.png)

Definitia triggerului este aici: [`exercitiul_12.sql`](exercitiul_12.sql).

### 13. Package
![alt text](images/13.1.png)
![alt text](images/13.2.png)
![alt text](images/13.3.png)
![alt text](images/13.4.png)
Definitia package-ului este aici: [`exercitiul_13.sql`](exercitiul_13.sql).
