-- CERINTA 10: CREAREA SECVENTELOR

CREATE SEQUENCE SEQ_DEPARTAMENTE START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_SERVICII START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_TIPURI_DECLARATII START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CLIENTI START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_ANGAJATI START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_VECTOR_FISCAL START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_CONTRACTE START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_FACTURI START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PLATI START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PUNCTE_LUCRU START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_DOCUMENTE_LEGALE START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_DECLARATII_FISCALE START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

-- 1. DEPARTAMENTE
INSERT INTO DEPARTAMENTE (id_departament, denumire_dept, cod_dept, descriere) VALUES (SEQ_DEPARTAMENTE.NEXTVAL, 
    'Contabilitate Financiara', 'FIN', 'Gestiunea contabilitatii primare si a bilantului.');
INSERT INTO DEPARTAMENTE (id_departament, denumire_dept, cod_dept, descriere) VALUES (SEQ_DEPARTAMENTE.NEXTVAL, 
    'Salarizare si Resurse Umane', 'HR', 'Calcul salarii si administrare personal.');
INSERT INTO DEPARTAMENTE (id_departament, denumire_dept, cod_dept, descriere) VALUES (SEQ_DEPARTAMENTE.NEXTVAL, 
    'Consultanta Fiscala', 'TAX', 'Optimizare si asistenta in inspectii fiscale.');
INSERT INTO DEPARTAMENTE (id_departament, denumire_dept, cod_dept, descriere) VALUES (SEQ_DEPARTAMENTE.NEXTVAL, 
    'Audit', 'AUDIT', 'Servicii de audit intern si extern.');
INSERT INTO DEPARTAMENTE (id_departament, denumire_dept, cod_dept, descriere) VALUES (SEQ_DEPARTAMENTE.NEXTVAL, 
    'Administrativ', 'ADM', 'Suport logistic si administrativ.');
COMMIT;

-- 2. SERVICII
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Contabilitate Primara Full', 1500, 'Contabilitate');
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Salarizare 1-10 Angajati', 800, 'HR');
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Intocmire Declaratii Fiscale (Pachet Standard)', 500, 'Fiscalitate');
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Consultanta Fiscala Ora', 300, 'Consultanta');
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Expertiza Contabila Judiciara', 3500, 'Audit');
INSERT INTO SERVICII (id_serviciu, denumire_serviciu, tarif_standard, categorie) VALUES (SEQ_SERVICII.NEXTVAL, 
    'Refacere Bilant 2023', 2000, 'Contabilitate');

-- 3. TIPURI_DECLARATII
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D100', 'Declarație privind obligațiile de plată la bugetul de stat', 'Lunar', 25);
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D112', 'Declarație privind obligațiile de plată a contribuțiilor sociale', 'Lunar', 25);
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D300', 'Decont de Taxă pe Valoarea Adăugată', 'Lunar', 25);
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D394', 'Declarație informativă privind livrările/prestările și achizițiile', 'Lunar', 25);
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D400', 'Declarație anuală de impozit pe profit', 'Anual', 150);
INSERT INTO TIPURI_DECLARATII (id_tip_declaratie, cod_declaratie, denumire, frecventa_depunere, termen_limita_zile) VALUES (SEQ_TIPURI_DECLARATII.NEXTVAL, 
    'D010', 'Declarație de înregistrare fiscală/mențiuni', 'Anual', 30);

-- 4. CLIENTI 
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Alfa Tech Solutions SRL', 'Str. Observatorului nr. 100, Cluj-Napoca', 'Popescu Elena', '0740100101', 'contact@alfatech.ro');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Beta Construct SA', 'B-dul Unirii nr. 5, Bucuresti', 'Ionescu Adrian', '0215551234', 'office@betaconstruct.ro');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Gamma Logistics SRL', 'Calea Floresti nr. 22, Cluj-Napoca', 'Vasilescu Maria', '0722333444', 'contact@gammalog.ro');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Delta Trading SRL', 'Str. Victoriei nr. 1, Oradea', 'Popa Tudor', '0359888777', 'office@deltatrading.ro');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Epsilon Design PFA', 'Str. Mihai Viteazu, Sibiu', 'Stoica Mihai', '0755111222', 'mihai.stoica@pfa.ro');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Chira Vasile', 'Aleea Rozelor nr. 3, Bl. X, Ap. 5, Iasi', NULL, '0760999888', 'vasile.chira@mail.com');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Dumitrescu Ana', 'Str. Lalelelor nr. 15, Timisoara', NULL, '0777123456', 'ana.dumitrescu@mail.com');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Georgescu Bogdan', 'B-dul Independentei nr. 50, Bucuresti', NULL, '0744000111', 'bogdan.georgescu@mail.com');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Irimia Cristina', 'Str. Republicii nr. 8, Brasov', NULL, '0730202303', 'cristina.irimia@mail.com');
INSERT INTO CLIENTI (id_client, nume_companie, adresa_sediu, reprezentant_legal, telefon, email_contact) VALUES (SEQ_CLIENTI.NEXTVAL, 
    'Jianu Alin', 'Calea Turzii nr. 30, Cluj-Napoca', NULL, '0721707808', 'alin.jianu@mail.com');

-- 5. PERSOANE_JURIDICE
INSERT INTO PERSOANE_JURIDICE (id_client, cui, reg_comert, capital_social) VALUES (1, 'RO12345678', 'J12/100/2010', 200000);
INSERT INTO PERSOANE_JURIDICE (id_client, cui, reg_comert, capital_social) VALUES (2, 'RO87654321', 'J40/500/2005', 500000);
INSERT INTO PERSOANE_JURIDICE (id_client, cui, reg_comert, capital_social) VALUES (3, 'RO11223344', 'J12/300/2018', 100000);
INSERT INTO PERSOANE_JURIDICE (id_client, cui, reg_comert, capital_social) VALUES (4, 'RO44332211', 'J05/150/2015', 50000);
INSERT INTO PERSOANE_JURIDICE (id_client, cui, reg_comert, capital_social) VALUES (5, 'RO99887766', 'F26/50/2020', 100);
COMMIT;

-- 6. PERSOANE_FIZICE
INSERT INTO PERSOANE_FIZICE (id_client, cnp, ci_serie, ci_numar) VALUES (6, '1850101000001', 'CJ', '123456');
INSERT INTO PERSOANE_FIZICE (id_client, cnp, ci_serie, ci_numar) VALUES (7, '2900202000002', 'TM', '654321');
INSERT INTO PERSOANE_FIZICE (id_client, cnp, ci_serie, ci_numar) VALUES (8, '1750303000003', 'B', '112233');
INSERT INTO PERSOANE_FIZICE (id_client, cnp, ci_serie, ci_numar) VALUES (9, '2950404000004', 'BV', '445566');
INSERT INTO PERSOANE_FIZICE (id_client, cnp, ci_serie, ci_numar) VALUES (10, '1990505000005', 'CJ', '778899');

-- 7. ANGAJATI
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 1, 
    'Popescu', 'Andrei', '1801122112233', 'andrei.popescu@firma.ro', '0711111111', DATE '2020-01-15', 'Contabil Senior', 7000);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 1, 
    'Vasilescu', 'Dana', '2950304113344', 'dana.vasilescu@firma.ro', '0711111112', DATE '2022-05-20', 'Contabil Junior', 4500);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 2, 
    'Gheorghe', 'Mihai', '1780809114455', 'mihai.gheorghe@firma.ro', '0711111113', DATE '2019-10-01', 'Inspector Resurse Umane', 6000);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 3, 
    'Zamfir', 'Cristina', '2850101115566', 'cristina.zamfir@firma.ro', '0711111114', DATE '2018-03-10', 'Expert Fiscal', 9000);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 4, 
    'Badea', 'Sorin', '1750505116677', 'sorin.badea@firma.ro', '0711111115', DATE '2021-11-01', 'Auditor', 8500);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 1, 
    'Ionescu', 'Ion', '1900606117788', 'ion.ionescu@firma.ro', '0711111116', DATE '2023-08-15', 'Contabil Junior', 4200);
INSERT INTO ANGAJATI (id_angajat, id_departament, nume, prenume, cnp, email, telefon, data_angajarii, functie, salariu) VALUES (SEQ_ANGAJATI.NEXTVAL, 3, 
    'Voicu', 'Laura', '2900707118899', 'laura.voicu@firma.ro', '0711111117', DATE '2024-02-01', 'Consultant Fiscal', 5500);
COMMIT;

-- 8. VECTOR_FISCAL
INSERT INTO VECTOR_FISCAL (id_vector, id_client, platitor_tva, tip_impozit) VALUES (SEQ_VECTOR_FISCAL.NEXTVAL, 1, 'DA', 'Impozit pe profit');
INSERT INTO VECTOR_FISCAL (id_vector, id_client, platitor_tva, tip_impozit) VALUES (SEQ_VECTOR_FISCAL.NEXTVAL, 2, 'NU', 'Impozit pe venit microîntreprinderi');
INSERT INTO VECTOR_FISCAL (id_vector, id_client, platitor_tva, tip_impozit) VALUES (SEQ_VECTOR_FISCAL.NEXTVAL, 3, 'DA', 'Impozit pe profit');
INSERT INTO VECTOR_FISCAL (id_vector, id_client, platitor_tva, tip_impozit) VALUES (SEQ_VECTOR_FISCAL.NEXTVAL, 4, 'NU', 'Impozit pe venit microîntreprinderi');
INSERT INTO VECTOR_FISCAL (id_vector, id_client, platitor_tva, tip_impozit) VALUES (SEQ_VECTOR_FISCAL.NEXTVAL, 5, 'DA', 'Impozit pe venit (PFA)');

-- 9. CONTRACTE 
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    1, 1, DATE '2023-01-01', DATE '2024-12-31', 25000, 'RON', 'Activ');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    2, 6, DATE '2023-03-01', DATE '2024-02-29', 12000, 'EUR', 'Încheiat');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    3, 2, DATE '2023-10-10', DATE '2025-10-10', 30000, 'RON', 'Activ');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    5, 4, DATE '2024-01-01', NULL, 10000, 'RON', 'Activ');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    7, 3, DATE '2024-04-15', DATE '2025-04-14', 5000, 'RON', 'Activ');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    8, 4, DATE '2023-06-01', NULL, 8000, 'EUR', 'Suspendat');
INSERT INTO CONTRACTE (id_contract, id_client, id_angajat, data_semnare, data_expirare, valoare_totala, moneda, status_contract) VALUES (SEQ_CONTRACTE.NEXTVAL, 
    1, 1, DATE '2024-05-10', NULL, 5000, 'RON', 'Activ');

-- 10. DETALII_CONTRACT
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (1, 1, 1450, 'Contabilitate primara');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (1, 3, 450, 'Pachet fiscal standard');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (1, 2, 750, 'Salarizare 7 angajati');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (2, 1, 1500, 'Platitor TVA');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (3, 1, 1400, 'Volum mare documente');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (3, 4, 250, 'Consultanta inclusa');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (4, 3, 500, 'PFA');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (5, 4, 300, 'Consultanta ocazionala');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (6, 5, 3000, 'Audit initial');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (7, 6, 2000, 'Refacere bilant 2023');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (7, 4, 250, 'Consultanta suplimentara');
INSERT INTO DETALII_CONTRACT (id_contract, id_serviciu, tarif_negociat, observatii) VALUES (3, 6, 1800, 'Refacere partiala');

-- 11. FACTURI 
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    1, 2024001, DATE '2024-03-01', DATE '2024-03-15', 3154, 19, 'Achitată');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    1, 2024002, DATE '2024-04-01', DATE '2024-04-15', 3154, 19, 'Parțial');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    1, 2024003, DATE '2024-05-01', DATE '2024-05-15', 3154, 19, 'Neachitată');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    2, 2024004, DATE '2024-02-15', DATE '2024-02-29', 1785, 19, 'Achitată');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    3, 2024005, DATE '2024-04-20', DATE '2024-05-04', 3689, 19, 'Achitată');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    4, 2024006, DATE '2024-05-15', DATE '2024-05-30', 595, 19, 'Neachitată');
INSERT INTO FACTURI (id_factura, id_contract, numar_factura, data_emitere, data_scadenta, suma_totala, cota_tva, status_plata) VALUES (SEQ_FACTURI.NEXTVAL, 
    7, 2024007, DATE '2024-05-20', DATE '2024-06-03', 2677.5, 19, 'Neachitată');

-- 12. PLATI
INSERT INTO PLATI (id_plata, id_factura, suma_platita, data_plata, metoda_plata, cont_iban_sursa, referinta_tranzactie) VALUES (SEQ_PLATI.NEXTVAL, 
    1, 3154, DATE '2024-03-10', 'Transfer Bancar', 'RO42BTRL00001', 'TRX123456');
INSERT INTO PLATI (id_plata, id_factura, suma_platita, data_plata, metoda_plata, cont_iban_sursa, referinta_tranzactie) VALUES (SEQ_PLATI.NEXTVAL, 
    2, 1000, DATE '2024-04-10', 'Transfer Bancar', 'RO42BTRL00001', 'TRX654321');
INSERT INTO PLATI (id_plata, id_factura, suma_platita, data_plata, metoda_plata, cont_iban_sursa, referinta_tranzactie) VALUES (SEQ_PLATI.NEXTVAL, 
    2, 1500, DATE '2024-04-20', 'Transfer Bancar', 'RO42BTRL00001', 'TRX654322');
INSERT INTO PLATI (id_plata, id_factura, suma_platita, data_plata, metoda_plata, cont_iban_sursa, referinta_tranzactie) VALUES (SEQ_PLATI.NEXTVAL, 
    4, 1785, DATE '2024-02-25', 'Card', 'RO10BCR00002', 'CARDPAY001');
INSERT INTO PLATI (id_plata, id_factura, suma_platita, data_plata, metoda_plata, cont_iban_sursa, referinta_tranzactie) VALUES (SEQ_PLATI.NEXTVAL, 
    5, 3689, DATE '2024-04-28', 'Transfer Bancar', 'RO10BCR00003', 'TRX987654');

-- 13. PUNCTE_LUCRU
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 1, 
    'B-dul Muncii nr. 5, Cluj-Napoca (Depozit)', 'DA');
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 1, 
    'Piața Unirii nr. 1, Cluj-Napoca (Punct de Vanzare)', 'DA');
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 2, 
    'Str. Fabricii nr. 10, Bucuresti (Santier Principal)', 'NU');
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 3, 
    'Autostrada A1, km 300, Pitesti (Depozit Logistica)', 'NU');
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 5, 
    'Adresa clientului 5 (Sediul PFA)', 'NU');
INSERT INTO PUNCTE_LUCRU (id_punct_lucru, id_client, adresa, are_casa_marcat) VALUES (SEQ_PUNCTE_LUCRU.NEXTVAL, 7, 
    'Str. Pietei nr. 12, Timisoara (Locatie vanzare PF)', 'DA');

-- 14. DOCUMENTE_LEGALE
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 1, 'Certificat inregistrare TVA', 'TVA12345', DATE '2020-01-01', NULL, 'Valid', '/docs/alfa_tva.pdf');
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 2, 'Certificat fiscal', 'CF45678', DATE '2023-08-10', DATE '2024-08-10', 'În așteptare', '/docs/beta_fiscal.pdf');
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 3, 'Act Constitutiv', 'AC001', DATE '2018-05-01', NULL, 'Valid', '/docs/gamma_ac.pdf');
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 4, 'Licenta Operare', 'L0001', DATE '2022-03-01', DATE '2024-03-01', 'Expirat', '/docs/delta_licenta.pdf');
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 6, 'Carte de Identitate', 'CJ123456', DATE '2015-01-01', NULL, 'Valid', '/docs/chira_ci.pdf');
INSERT INTO DOCUMENTE_LEGALE (id_document, id_client, tip_document, serie_numar, data_emiterii, data_expirare, status_validare, copie_digitala) 
    VALUES (SEQ_DOCUMENTE_LEGALE.NEXTVAL, 8, 'Atestat Independent', 'AI999', DATE '2023-01-01', DATE '2025-01-01', 'Valid', '/docs/georgescu_atestat.pdf');

-- 15. DECLARATII_FISCALE
-- Client 1 (PJ, Angajat 1)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 1, 1, 1, '2024-04', DATE '2024-05-20', 1500, 'Online', 'ANAF001_100_0424', 'Acceptata');
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 1, 3, 2, '2024-04', DATE '2024-05-20', 3000, 'Online', 'ANAF002_300_0424', 'Acceptata');
-- Client 3 (PJ, Angajat 2)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 3, 2, 2, '2024-03', DATE '2024-04-24', 5000, 'Online', 'ANAF003_112_0324', 'Acceptata');
-- Client 5 (PFA, Angajat 4)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 5, 4, 4, '2024-04', DATE '2024-05-15', 50, 'Online', 'ANAF004_394_0424', 'Acceptata');
-- Client 7 (PF, Angajat 3)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 7, 6, 3, '2024-01', DATE '2024-02-20', 0, 'Fizic', 'ANAF005_010_0124', 'Acceptata');
-- Client 1 (PJ, Angajat 6)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 1, 2, 6, '2024-03', DATE '2024-04-20', 4000, 'Online', 'ANAF006_112_0324', 'Acceptata');
-- Client 2 (PJ, Angajat 1)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 2, 5, 1, '2023-AN', DATE '2024-03-25', 10000, 'Online', 'ANAF007_400_23A', 'Acceptata');
-- Client 4 (PJ, Angajat 7)
INSERT INTO DECLARATII_FISCALE (id_declaratie, id_client, id_tip_declaratie, id_angajat, luna_an_raportare, data_depunere, suma_datorata, metoda_depunere, 
    numar_recipisa_anaf, stare_recipisa) VALUES (SEQ_DECLARATII_FISCALE.NEXTVAL, 4, 3, 7, '2024-04', DATE '2024-05-25', 0, 'Online', 'ANAF008_300_0424', 
        'In curs de verificare');
    