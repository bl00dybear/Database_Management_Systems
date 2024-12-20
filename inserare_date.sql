-- Firma de transport
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'Felbermayr', 50, 10, 200, 1500000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'Holleman', 40, 8, 190, 1200000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'Rontransmar', 60, 12, 220, 1800000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'Schwander', 30, 6, 160, 1000000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'Twan', 55, 11, 210, 1700000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'WindSolutions', 45, 9, 190, 1400000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (seq_firma.nextval, 'VanDerVlist', 35, 7, 170, 1100000);
commit ;

-- Producator camioane
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (seq_prod_camioane.nextval, 'Man', 10);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (seq_prod_camioane.nextval, 'Volvo', 8);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (seq_prod_camioane.nextval, 'Mercedes', 12);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (seq_prod_camioane.nextval, 'Scania', 6);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (seq_prod_camioane.nextval, 'Daf', 9);

-- Producator trailere
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (seq_prod_trailere.nextval, 'Broshuis', 10);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (seq_prod_trailere.nextval, 'Goldhofer', 8);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (seq_prod_trailere.nextval, 'Feblmayr', 12);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (seq_prod_trailere.nextval, 'Dolly', 6);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (seq_prod_trailere.nextval, 'MaxTrailers ', 9);

-- Producator marfa
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (seq_prod_marfa.nextval, 'CargoMaster', 'Bucuresti');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (seq_prod_marfa.nextval, 'HeavyHaulers', 'Cluj-Napoca');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (seq_prod_marfa.nextval, 'TransCargo', 'Timisoara');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (seq_prod_marfa.nextval, 'LogisticSolutions', 'Iasi');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (seq_prod_marfa.nextval, 'FreightMasters', 'Constanta');

-- Sofer
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 2, 'POPESCU ION', DATE '2020-01-15', 120);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 2, 'IONESCU MARIA', DATE '2019-03-22', 110);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 3, 'VASILE GHEORGHE', DATE '2021-05-30', 90);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 3, 'DUMITRU ELENA', DATE '2018-07-10', 130);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 4, 'RADU FLORIN', DATE '2022-09-05', 85);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 4, 'STOICA DANIELA', DATE '2017-11-25', 140);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 5, 'MARINESCU ION', DATE '2020-02-17', 95);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 5, 'STEFANESCU ANA', DATE '2021-04-13', 100);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 6, 'POP ANTON', DATE '2019-06-20', 105);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 6, 'MORAR GABRIELA', DATE '2022-08-30', 80);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 7, 'STANCIU MARIUS', DATE '2018-10-12', 125);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 7, 'NICOLAE CRISTINA', DATE '2021-01-18', 110);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 8, 'IONESCU VASILE', DATE '2017-12-01', 135);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 8, 'MATEI LAVINIA', DATE '2020-03-05', 90);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (seq_soferi.nextval, 8, 'GHEORGHE ALIN', DATE '2019-05-15', 115);

-- Trailere
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 1, 3, 20.5, 'Hidraulica', DATE '2023-05-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 1, 2, 15.2, 'Pe aer', DATE '2023-04-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 2, 4, 30.0, 'Hidraulica', DATE '2023-03-10');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 2, 5, 40.0, 'Pe aer', DATE '2023-02-05');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 3, 6, 47.5, 'Hidraulica', DATE '2023-01-01');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 3, 6, 44.0, 'Pe aer', DATE '2022-12-25');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 4, 8, 80.0, 'Hidraulica', DATE '2022-11-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 4, 7, 64.5, 'Pe aer', DATE '2022-10-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 5, 6, 58.0, 'Hidraulica', DATE '2022-09-10');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 5, 10, 110.0, 'Pe aer', DATE '2022-08-05');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 1, 3, 16.5, 'Hidraulica', DATE '2022-07-01');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 1, 2, 22.0, 'Pe aer', DATE '2022-06-25');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 2, 4, 21.0, 'Hidraulica', DATE '2022-05-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval, 3, 5, 43.5, 'Pe aer', DATE '2022-04-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval,  4, 4, 36.0, 'Hidraulica', DATE '2022-03-22');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (seq_trailere.nextval,  4, 5, 46.0, 'Hidraulica', DATE '2022-03-22');

commit ;

-- Camioane
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 2, 1, 1, 'B 123 ABC', 15000, 30, DATE '2023-05-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 2, 2, 1, 'B 234 DEF', 18000, 40, DATE '2023-04-15');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 3, 3, 2, 'CJ 345 GHI', 13000, 35, DATE '2023-03-10');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 3, 4, 2, 'CJ 456 JKL', 11000, 38, DATE '2023-02-05');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 4, 5, 3, 'DJ 567 MNO', 16000, 45, DATE '2023-01-01');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 4, 6, 3, 'DJ 678 PQR', 14000, 32, DATE '2022-12-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 5, 7, 4, 'SV 789 STU', 20000, 36, DATE '2022-11-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 6, 8, 4, 'SV 890 VWX', 22000, 34, DATE '2022-10-15');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 6, 9, 5, 'DB 901 YZA', 18000, 37, DATE '2022-09-10');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 6, 10, 5, 'DB 012 BCD', 20000, 39, DATE '2022-08-05');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 7, 11, 1, 'GJ 123 EFG', 15000, 33, DATE '2022-07-01');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 7, 12, 1, 'GJ 234 HIJ', 17000, 36, DATE '2022-06-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 8, 13, 2, 'CT 345 KLM', 14000, 35, DATE '2022-05-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval,  8, 14, 2, 'B 123 SXB', 10500, 30, DATE '2022-05-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval, 2, 15, 3, 'B 200 SXB', 20500, 20, DATE '2022-09-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (seq_camioane.nextval,2, 16, 3, 'B 300 SXB', 30500, 30, DATE '2023-03-23');
commit ;
-- Marfa
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 1, 45.8, 15.60, 5.70, 4.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 1, 36.4, 22.10, 4.50, 3.80);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 2, 52.2, 18.90, 5.30, 4.90);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 2, 44.5, 30.20, 6.10, 5.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 3, 58.3, 14.50, 3.50, 4.60);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 4, 31.7, 12.80, 6.20, 5.10);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 4, 37.9, 25.30, 5.90, 4.80);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 5, 42.1, 19.70, 3.60, 3.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 5, 55.6, 16.80, 6.40, 4.30);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 1, 33.8, 20.50, 4.80, 5.40);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 1, 49.2, 11.30, 5.20, 4.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 2, 38.5, 35.60, 6.50, 5.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 2, 46.7, 17.20, 4.10, 3.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 3, 59.8, 13.70, 3.20, 5.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval,  3, 32.4, 27.80, 6.30, 4.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 4, 52.4, 17.80, 8.30, 2.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 4, 88.3, 24.50, 2.50, 4.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 5, 32.0, 4.00, 4.00, 4.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 5, 44.8, 8.00, 7.90, 2.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (seq_marfa.nextval, 1, 100.0, 54.00, 3.00, 3.50);
commit ;

-- Clienti
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Alina Popescu', 'Germania', 'Berlin');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Marta Schmidt', 'România', 'București');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Pablo García', 'Spania', 'Madrid');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Sophie Dupont', 'Franța', 'Paris');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Giorgio Rossi', 'Italia', 'Roma');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval,  'Ana Petrovic', 'Croația', 'Zagreb');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Elena Ivanova', 'Bulgaria', 'Sofia');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Andrzej Nowak', 'Polonia', 'Varșovia');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Andreas Müller', 'Elveția', 'Zurich');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Mariana Costa', 'Portugalia', 'Lisabona');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Jānis Ozoliņš', 'Cehia', 'Praga');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Hans Hansen', 'Danemarca', 'Copenhaga');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Katarzyna Nowak', 'Polonia', 'Cracovia');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Antonio Silva', 'România', 'Suceava');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Eva Nováková', 'Cehia', 'Praga');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Juan García', 'Spania', 'Barcelona');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Laura Bianchi', 'Italia', 'Milano');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Mihai Popescu', 'Spania', 'Valencia');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Elisabeth Schmitz', 'Germania', 'München');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Alejandro Martínez', 'România', 'Cluj-Napoca');
insert into CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (seq_clienti.nextval, 'Alejandro Martínez', 'România', 'Constanta');

commit ;

-- Masini de insotire
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 2, 'B 01 ABC', 25000, 30, DATE '2023-05-20');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 2, 'B 02 DEF', 28000, 30, DATE '2023-04-15');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 3, 'CJ 03 GHI', 22000, 30, DATE '2023-03-10');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 3, 'CJ 04 JKL', 20000, 30, DATE '2023-02-05');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 4, 'DJ 05 MNO', 30000, 30, DATE '2023-01-01');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 4, 'DJ 06 PQR', 26000, 30, DATE '2022-12-25');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 5, 'SV 07 STU', 28000, 30, DATE '2022-11-20');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 5, 'SV 08 VWX', 24000, 30, DATE '2022-10-15');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 6, 'DB 09 YZA', 26000, 150, DATE '2022-09-10');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 6, 'DB 10 BCD', 23000, 150, DATE '2022-08-05');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 7, 'GJ 11 EFG', 28000, 30, DATE '2022-07-01');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 7, 'GJ 12 HIJ', 25000, 30, DATE '2022-06-25');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 8, 'CT 13 KLM', 30000, 30, DATE '2022-05-20');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 8, 'CT 14 NOP', 27000, 30, DATE '2022-04-15');
insert into MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (seq_masini_insotire.nextval, 8, 'CT 15 QRS', 22000, 30, DATE '2022-03-10');
commit ;

-- Disponenti
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 2, 'IONESCU ANDREI');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 3, 'POPESCU MARIA');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 4, 'VASILESCU GHEORGHE');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 5, 'DUMITRU ELENA');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 6, 'RADU FLORIN');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 7, 'STOICA DANIELA');
insert into DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (seq_disponenti.nextval, 8, 'MARINESCU ION');
commit ;

-- Transporturi
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 1, 1, 1, 1, 350, 'România', 'București', 'Germania', 'Berlin');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 2, 2, 2, 2, 420, 'Spania', 'Madrid', 'Franța', 'Paris');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 3, 3, 3, 3, 500, 'Italia', 'Roma', 'Croația', 'Zagreb');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 4, 4, 4, 4, 300, 'Polonia', 'Varșovia', 'Elveția', 'Zurich');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 5, 5, 5, 5, 600, 'Portugalia', 'Lisabona', 'Letonia', 'Riga');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 6, 6, 6, 6, 450, 'Danemarca', 'Copenhaga', 'Bulgaria', 'Sofia');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 7, 7, 7, 7, 370, 'Cehia', 'Praga', 'Spania', 'Barcelona');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 8, 8, 8, 8, 280, 'Franța', 'Paris', 'Italia', 'Roma');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 9, 9, 9, 9, 510, 'Germania', 'Berlin', 'Portugalia', 'Porto');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 10, 10, 10, 10, 390, 'România', 'Cluj-Napoca', 'Polonia', 'Cracovia');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 11, 11, 11, 11, 440, 'Spania', 'Valencia', 'Cehia', 'Praga');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 12, 12, 12, 12, 370, 'Italia', 'Milano', 'Spania', 'Madrid');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 13, 13, 13, 13, 420, 'România', 'Timișoara', 'Germania', 'München');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 14, 14, 14, 14, 300, 'Bulgaria', 'Sofia', 'România', 'București');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 15, 15, 15, 15, 380, 'Germania', 'Hamburg', 'Italia', 'Roma');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 16, 1, 16, 16, 450, 'Spania', 'Barcelona', 'Franța', 'Paris');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 1, 2, 17, 17, 320, 'Italia', 'Roma', 'Elveția', 'Zurich');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 2, 3, 18, 18, 280, 'Germania', 'Berlin', 'Suedia', 'Stockholm');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 3, 4, 19, 19, 380, 'Spania', 'Madrid', 'Portugalia', 'Lisabona');
insert into TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (seq_transporturi.nextval, 4, 5, 20, 20, 420, 'Elveția', 'Zurich', 'România', 'Cluj-Napoca');
commit ;

-- Transporturi Insotire
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 1, 1);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 2, 1);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 3, 2);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 4, 3);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 5, 4);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 6, 5);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 7, 6);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 8, 7);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 9, 8);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 10, 9);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 11, 10);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 12, 11);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 13, 12);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 14, 13);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 15, 14);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 16, 15);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 17, 1);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 18, 2);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 19, 3);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 20, 4);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 20, 5);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 19, 2);
insert into TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (seq_transport_insotire.nextval, 18, 1);
commit ;





