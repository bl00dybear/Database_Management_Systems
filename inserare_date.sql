-- Firma de transport
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (1, 'Felbermayr', 50, 10, 200, 1500000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (2, 'Holleman', 40, 8, 190, 1200000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (3, 'Rontransmar', 60, 12, 220, 1800000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (4, 'Schwander', 30, 6, 160, 1000000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (5, 'Twan', 55, 11, 210, 1700000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (6, 'WindSolutions', 45, 9, 190, 1400000);
insert into FIRMA_DE_TRANSPORT (ID_FIRMA, NUME, NR_SOFERI, NR_DISPO, NR_TRANSPORTURI, CIFRA_AFACERI) values (7, 'VanDerVlist', 35, 7, 170, 1100000);

-- Producator camioane
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (65, 'Man', 10);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (66, 'Volvo', 8);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (67, 'Mercedes', 12);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (68, 'Scania', 6);
insert into PRODUCATOR_CAMIOANE (ID_PROD_CAMION, NUME, NUMAR_MODELE) values (69, 'Daf', 9);

-- Producator trailere
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (45, 'Broshuis', 10);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (46, 'Goldhofer', 8);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (47, 'Feblmayr', 12);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (48, 'Dolly', 6);
insert into PRODUCATOR_TRAILERE (ID_PROD_TRAILER, NUME, NUMAR_MODELE) values (49, 'MaxTrailers ', 9);

-- Producator marfa
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (83, 'CargoMaster', 'Bucuresti');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (84, 'HeavyHaulers', 'Cluj-Napoca');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (85, 'TransCargo', 'Timisoara');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (86, 'LogisticSolutions', 'Iasi');
insert into PRODUCATOR_MARFA (ID_PROD_MARFA, NUME, LOCATIE) values (87, 'FreightMasters', 'Constanta');

-- Sofer
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (15, 1, 'POPESCU ION', DATE '2020-01-15', 120);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (16, 1, 'IONESCU MARIA', DATE '2019-03-22', 110);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (17, 2, 'VASILE GHEORGHE', DATE '2021-05-30', 90);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (18, 2, 'DUMITRU ELENA', DATE '2018-07-10', 130);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (19, 3, 'RADU FLORIN', DATE '2022-09-05', 85);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (20, 3, 'STOICA DANIELA', DATE '2017-11-25', 140);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (21, 4, 'MARINESCU ION', DATE '2020-02-17', 95);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (22, 4, 'STEFANESCU ANA', DATE '2021-04-13', 100);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (23, 5, 'POP ANTON', DATE '2019-06-20', 105);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (24, 5, 'MORAR GABRIELA', DATE '2022-08-30', 80);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (25, 6, 'STANCIU MARIUS', DATE '2018-10-12', 125);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (26, 6, 'NICOLAE CRISTINA', DATE '2021-01-18', 110);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (27, 7, 'IONESCU VASILE', DATE '2017-12-01', 135);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (28, 7, 'MATEI LAVINIA', DATE '2020-03-05', 90);
insert into SOFERI (ID_SOFER, ID_FIRMA, NUME, DATA_ANGAJARE, NR_TRANSPORTURI) values (29, 7, 'GHEORGHE ALIN', DATE '2019-05-15', 115);

-- Trailere
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (50, 45, 3, 20.5, 'Hidraulica', DATE '2023-05-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (51, 45, 2, 15.2, 'Pe aer', DATE '2023-04-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (52, 46, 4, 30.0, 'Hidraulica', DATE '2023-03-10');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (53, 46, 5, 40.0, 'Pe aer', DATE '2023-02-05');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (54, 47, 6, 47.5, 'Hidraulica', DATE '2023-01-01');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (55, 47, 6, 44.0, 'Pe aer', DATE '2022-12-25');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (56, 48, 8, 80.0, 'Hidraulica', DATE '2022-11-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (57, 48, 7, 64.5, 'Pe aer', DATE '2022-10-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (58, 49, 6, 58.0, 'Hidraulica', DATE '2022-09-10');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (59, 49, 10, 110.0, 'Pe aer', DATE '2022-08-05');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (60, 45, 3, 16.5, 'Hidraulica', DATE '2022-07-01');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (61, 45, 2, 22.0, 'Pe aer', DATE '2022-06-25');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (62, 46, 4, 21.0, 'Hidraulica', DATE '2022-05-20');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (63, 46, 5, 43.5, 'Pe aer', DATE '2022-04-15');
insert into TRAILERE (ID_TRAILER, ID_PRODUCATOR, NUMAR_AXE, TONAJ_MAXIM, TIP_DIRECTIE, ULTIMA_REVIZIE) values (64, 47, 4, 36.0, 'Hidraulica', DATE '2022-03-22');


-- Camioane
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (70, 1, 51, 65, 'B 123 ABC', 15000, 30, DATE '2023-05-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (71, 1, 52, 66, 'B 234 DEF', 18000, 40, DATE '2023-04-15');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (72, 2, 53, 66, 'CJ 345 GHI', 13000, 35, DATE '2023-03-10');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (73, 2, 54, 65, 'CJ 456 JKL', 11000, 38, DATE '2023-02-05');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (74, 3, 55, 67, 'DJ 567 MNO', 16000, 45, DATE '2023-01-01');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (75, 3, 56, 68, 'DJ 678 PQR', 14000, 32, DATE '2022-12-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (76, 4, 57, 67, 'SV 789 STU', 20000, 36, DATE '2022-11-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (77, 4, 58, 68, 'SV 890 VWX', 22000, 34, DATE '2022-10-15');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (78, 5, 59, 69, 'DB 901 YZA', 18000, 37, DATE '2022-09-10');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (79, 5, 60, 69, 'DB 012 BCD', 20000, 39, DATE '2022-08-05');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (80, 6, 61, 66, 'GJ 123 EFG', 15000, 33, DATE '2022-07-01');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (81, 6, 62, 67, 'GJ 234 HIJ', 17000, 36, DATE '2022-06-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (82, 7, 63, 65, 'CT 345 KLM', 14000, 35, DATE '2022-05-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (272, 1, 50, 67, 'B 123 SXB', 10500, 30, DATE '2022-05-20');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (273, 1, 64, 68, 'B 200 SXB', 20500, 20, DATE '2022-09-25');
insert into CAMIOANE (ID_CAMION, ID_FIRMA, ID_TRAILER, ID_PROD_CAMION, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPORTURI, ULTIMA_REVIZIE) values (274, 1, 64, 69, 'B 300 SXB', 30500, 30, DATE '2023-03-23');

-- Marfa
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (88, 83, 45.8, 15.60, 5.70, 4.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (89, 84, 36.4, 22.10, 4.50, 3.80);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (90, 85, 52.2, 18.90, 5.30, 4.90);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (91, 86, 44.5, 30.20, 6.10, 5.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (92, 87, 58.3, 14.50, 3.50, 4.60);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (93, 83, 31.7, 12.80, 6.20, 5.10);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (94, 84, 37.9, 25.30, 5.90, 4.80);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (95, 85, 42.1, 19.70, 3.60, 3.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (96, 86, 55.6, 16.80, 6.40, 4.30);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (97, 87, 33.8, 20.50, 4.80, 5.40);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (98, 83, 49.2, 11.30, 5.20, 4.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (99, 84, 38.5, 35.60, 6.50, 5.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (100, 85, 46.7, 17.20, 4.10, 3.50);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (101, 86, 59.8, 13.70, 3.20, 5.20);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (102, 87, 32.4, 27.80, 6.30, 4.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (211, 83, 52.4, 17.80, 8.30, 2.70);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (212, 84, 88.3, 24.50, 2.50, 4.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (213, 85, 32.0, 4.00, 4.00, 4.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (214, 85, 44.8, 8.00, 7.90, 2.00);
insert into MARFA (ID_MARFA, ID_PRODUCATOR, TONAJ, LUNGIME, LATIME, INALTIME) values (215, 86, 100.0, 54.00, 3.00, 3.50);

-- Clienti
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (103, 'Alina Popescu', 'Germania', 'Berlin');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (104, 'Marta Schmidt', 'România', 'București');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (105, 'Pablo García', 'Spania', 'Madrid');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (106, 'Sophie Dupont', 'Franța', 'Paris');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (107, 'Giorgio Rossi', 'Italia', 'Roma');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (108, 'Ana Petrovic', 'Croația', 'Zagreb');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (109, 'Elena Ivanova', 'Bulgaria', 'Sofia');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (110, 'Andrzej Nowak', 'Polonia', 'Varșovia');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (111, 'Andreas Müller', 'Elveția', 'Zurich');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (112, 'Mariana Costa', 'Portugalia', 'Lisabona');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (113, 'Jānis Ozoliņš', 'Cehia', 'Praga');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (114, 'Hans Hansen', 'Danemarca', 'Copenhaga');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (115, 'Katarzyna Nowak', 'Polonia', 'Cracovia');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (116, 'Antonio Silva', 'România', 'Suceava');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (117, 'Eva Nováková', 'Cehia', 'Praga');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (118, 'Juan García', 'Spania', 'Barcelona');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (119, 'Laura Bianchi', 'Italia', 'Milano');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (120, 'Mihai Popescu', 'Spania', 'Valencia');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (121, 'Elisabeth Schmitz', 'Germania', 'München');
insert into SEBI.CLIENTI (ID_CLIENT, NUME, TARA, LOCALITATE) values (122, 'Alejandro Martínez', 'România', 'Cluj-Napoca');

-- Masini de insotire
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (30, 1, 'B 01 ABC', 25000, 30, DATE '2023-05-20');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (31, 1, 'B 02 DEF', 28000, 30, DATE '2023-04-15');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (32, 2, 'CJ 03 GHI', 22000, 30, DATE '2023-03-10');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (33, 2, 'CJ 04 JKL', 20000, 30, DATE '2023-02-05');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (34, 3, 'DJ 05 MNO', 30000, 30, DATE '2023-01-01');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (35, 3, 'DJ 06 PQR', 26000, 30, DATE '2022-12-25');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (36, 4, 'SV 07 STU', 28000, 30, DATE '2022-11-20');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (37, 4, 'SV 08 VWX', 24000, 30, DATE '2022-10-15');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (38, 5, 'DB 09 YZA', 26000, 150, DATE '2022-09-10');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (39, 5, 'DB 10 BCD', 23000, 150, DATE '2022-08-05');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (40, 6, 'GJ 11 EFG', 28000, 30, DATE '2022-07-01');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (41, 6, 'GJ 12 HIJ', 25000, 30, DATE '2022-06-25');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (42, 7, 'CT 13 KLM', 30000, 30, DATE '2022-05-20');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (43, 7, 'CT 14 NOP', 27000, 30, DATE '2022-04-15');
insert into SEBI.MASINI_DE_INSOTIRE (ID_INSOTIRE, ID_FIRMA, NR_INMATRICULARE, NR_KILOMETRI, NR_TRANSPOR, ULTIMA_REVIZIE) values (44, 7, 'CT 15 QRS', 22000, 30, DATE '2022-03-10');

-- Disponenti
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (8, 1, 'IONESCU ANDREI');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (9, 2, 'POPESCU MARIA');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (10, 3, 'VASILESCU GHEORGHE');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (11, 4, 'DUMITRU ELENA');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (12, 5, 'RADU FLORIN');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (13, 6, 'STOICA DANIELA');
insert into SEBI.DISPONENTI (ID_DISPO, ID_FIRMA, NUME) values (14, 7, 'MARINESCU ION');

-- Transporturi
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (143, 70, 15, 88, 103, 350, 'România', 'București', 'Germania', 'Berlin');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (144, 71, 16, 89, 104, 420, 'Spania', 'Madrid', 'Franța', 'Paris');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (145, 72, 17, 90, 105, 500, 'Italia', 'Roma', 'Croația', 'Zagreb');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (146, 73, 18, 91, 106, 300, 'Polonia', 'Varșovia', 'Elveția', 'Zurich');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (147, 74, 19, 92, 107, 600, 'Portugalia', 'Lisabona', 'Letonia', 'Riga');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (148, 75, 20, 93, 108, 450, 'Danemarca', 'Copenhaga', 'Bulgaria', 'Sofia');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (149, 76, 21, 94, 109, 370, 'Cehia', 'Praga', 'Spania', 'Barcelona');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (150, 77, 22, 95, 110, 280, 'Franța', 'Paris', 'Italia', 'Roma');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (151, 78, 23, 96, 111, 510, 'Germania', 'Berlin', 'Portugalia', 'Porto');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (152, 79, 24, 97, 112, 390, 'România', 'Cluj-Napoca', 'Polonia', 'Cracovia');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (153, 80, 25, 98, 113, 440, 'Spania', 'Valencia', 'Cehia', 'Praga');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (154, 81, 26, 99, 114, 370, 'Italia', 'Milano', 'Spania', 'Madrid');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (155, 82, 27, 100, 115, 420, 'România', 'Timișoara', 'Germania', 'München');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (156, 70, 28, 101, 116, 300, 'Bulgaria', 'Sofia', 'România', 'București');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (157, 71, 29, 102, 117, 380, 'Germania', 'Hamburg', 'Italia', 'Roma');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (158, 72, 15, 211, 118, 450, 'Spania', 'Barcelona', 'Franța', 'Paris');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (159, 73, 16, 212, 119, 320, 'Italia', 'Roma', 'Elveția', 'Zurich');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (160, 74, 17, 213, 120, 280, 'Germania', 'Berlin', 'Suedia', 'Stockholm');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (161, 75, 18, 214, 121, 380, 'Spania', 'Madrid', 'Portugalia', 'Lisabona');
insert into SEBI.TRANSPORTURI (ID_TRANSPORT, ID_CAMION, ID_SOFER, ID_MARFA, ID_CLIENT, NR_KILOMETRI, TARA_INCARCARE, LOC_INCARCARE, TARA_DESCARCARE, LOC_DESCARCARE) values (162, 76, 19, 215, 122, 420, 'Elveția', 'Zurich', 'România', 'Cluj-Napoca');

-- Transporturi Insotire
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (163, 143, 30);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (164, 144, 31);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (165, 145, 32);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (166, 146, 33);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (167, 147, 34);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (168, 148, 35);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (169, 149, 36);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (170, 150, 37);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (171, 151, 38);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (172, 152, 39);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (173, 153, 40);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (174, 154, 41);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (175, 155, 42);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (176, 156, 43);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (177, 157, 44);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (178, 158, 30);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (179, 159, 31);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (180, 160, 32);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (181, 161, 33);
insert into SEBI.TRANSPORT_INSOTIRE (ID_TRANSPORT_INSOTIRE, ID_TRANSPORT, ID_INSOTIRE) values (182, 162, 34);


