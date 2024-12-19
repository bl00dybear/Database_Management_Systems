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
![alt text](images/digrama_generata.png)
### 5. Inserari relevante in tabele
Inserarile sunt in scriptul [`inserare_date.sql`](inserare_date.sql).
```oracle
-- Numele soferilor care au facut cele mai lungi 5 transporturi
-- Numarul de km facuti de camioanele ce apartin aceluiasi producator
-- Ce incasari a generat fiecare camion avand in vedere ca se factureaza 7 euro / km
create or replace procedure informatii_transporturi(param_id_firma in number)
is
    type struct_info_camion is record
                              (
                                  nr_inmatriculare camioane.nr_inmatriculare%type,
                                  incasari number
                              );
    type arr_nested is table of struct_info_camion;
    type arr_associative is table of number index by producator_camioane.nume%type;
    type arr_varray is varray(5) of soferi.nume%type;

    list_incasari_camion arr_nested;
    list_km_prod arr_associative;
    list_top_soferi arr_varray;

    type arr_nume_prod is table of producator_camioane.nume%type;
    list_nume_prod arr_nume_prod;

    var_nr_prod_camioane number;
    var_nume_prod producator_camioane.nume%type;
    ex_key_not_found exception ;
begin
    list_incasari_camion := arr_nested();
    for camioane in (
        select c.nr_inmatriculare,c.nr_kilometri from camioane c
        join transporturi t on t.id_camion = c.id_camion
        where c.id_firma = param_id_firma
        ) loop
            list_incasari_camion.extend;
            list_incasari_camion(list_incasari_camion.count).nr_inmatriculare:=camioane.nr_inmatriculare;
            list_incasari_camion(list_incasari_camion.count).incasari := 6 * camioane.nr_kilometri;
        end loop;


    select count(*)
        into var_nr_prod_camioane
    from producator_camioane;

    select nume
    bulk collect into list_nume_prod
    from producator_camioane;

    for i in 1..var_nr_prod_camioane loop
        select nume
            into var_nume_prod
        from producator_camioane
            where id_prod_camion = i;

        select sum(c.nr_kilometri)
            into list_km_prod(upper(var_nume_prod))
        from camioane c
        where id_prod_camion = i and  id_firma = param_id_firma;

    end loop;

    select s.nume
    bulk collect into list_top_soferi
    from soferi s
    join transporturi t on t.id_sofer = s.id_sofer
    where s.id_firma = param_id_firma
    order by t.nr_kilometri;

--     Afisari
    dbms_output.PUT_LINE('------------> Productie per camion <-------------');
    for i in list_incasari_camion.first.. list_incasari_camion.last loop
        dbms_output.PUT_LINE('Camionul cu numarul de inmatriculare: '||list_incasari_camion(i).nr_inmatriculare||' a produs '|| list_incasari_camion(i).incasari||' euro.');
    end loop;

    dbms_output.PUT_LINE('------------> Kilometri per brand <-------------');
    for i in 1..var_nr_prod_camioane loop
        if list_km_prod.exists(upper(list_nume_prod(i))) and list_km_prod(upper(list_nume_prod(i)))!=0 then
            dbms_output.PUT_LINE('In firma curenta, camioanele '||list_nume_prod(i)|| ' au parcurs '|| list_km_prod(upper(list_nume_prod(i)))||' kilometri.');
        end if;
    end loop;

    dbms_output.PUT_LINE('------------> Top soferi cu curse lungi <-------------');
    for i in 1..list_top_soferi.last loop
        dbms_output.PUT_LINE(list_top_soferi(i)||' este pe locul '||i);
        end loop;
end;
/

```
