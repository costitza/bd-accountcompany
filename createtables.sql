
CREATE TABLE DEPARTAMENTE (
    id_departament NUMBER PRIMARY KEY,
    denumire_dept VARCHAR2(50) NOT NULL,
    cod_dept VARCHAR2(10) NOT NULL UNIQUE,
    descriere VARCHAR2(200)
);

CREATE TABLE SERVICII (
    id_serviciu NUMBER PRIMARY KEY,
    denumire_serviciu VARCHAR2(100) NOT NULL UNIQUE,
    tarif_standard NUMBER,
    categorie VARCHAR2(50)
);

CREATE TABLE TIPURI_DECLARATII (
    id_tip_declaratie NUMBER PRIMARY KEY,
    cod_declaratie VARCHAR2(10) NOT NULL UNIQUE,
    denumire VARCHAR2(100),
    frecventa_depunere VARCHAR2(20) NOT NULL,
    termen_limita_zile NUMBER,
    CONSTRAINT chk_frecventa CHECK (frecventa_depunere IN ('Lunar', 'Trimestrial', 'Anual'))
);

CREATE TABLE CLIENTI (
    id_client NUMBER PRIMARY KEY,
    nume_companie VARCHAR2(100) NOT NULL,
    adresa_sediu VARCHAR2(200),
    reprezentant_legal VARCHAR2(100),
    telefon VARCHAR2(20),
    email_contact VARCHAR2(50) NOT NULL UNIQUE
);



CREATE TABLE ANGAJATI (
    id_angajat NUMBER PRIMARY KEY,
    id_departament NUMBER NOT NULL,
    nume VARCHAR2(50) NOT NULL,
    prenume VARCHAR2(50) NOT NULL,
    cnp VARCHAR2(13) NOT NULL UNIQUE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    telefon VARCHAR2(20),
    data_angajarii DATE NOT NULL,
    functie VARCHAR2(50),
    salariu NUMBER NOT NULL,
    CONSTRAINT fk_angajat_dept FOREIGN KEY (id_departament) REFERENCES DEPARTAMENTE(id_departament),
    CONSTRAINT chk_angajat_salariu CHECK (salariu > 0)
);

CREATE TABLE PERSOANE_JURIDICE (
    id_client NUMBER PRIMARY KEY,
    cui VARCHAR2(20) NOT NULL UNIQUE,
    reg_comert VARCHAR2(20),
    capital_social NUMBER,
    CONSTRAINT fk_pj_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client)
);

CREATE TABLE PERSOANE_FIZICE (
    id_client NUMBER PRIMARY KEY,
    cnp VARCHAR2(13) NOT NULL UNIQUE,
    ci_serie VARCHAR2(2),
    ci_numar VARCHAR2(10),
    CONSTRAINT fk_pf_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client)
);

CREATE TABLE PUNCTE_LUCRU (
    id_punct_lucru NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    adresa VARCHAR2(255) NOT NULL,
    are_casa_marcat VARCHAR2(2),
    CONSTRAINT fk_punctlucru_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client),
    CONSTRAINT chk_casa_marcat CHECK (are_casa_marcat IN ('DA', 'NU'))
);

CREATE TABLE DOCUMENTE_LEGALE (
    id_document NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    tip_document VARCHAR2(50) NOT NULL,
    serie_numar VARCHAR2(50) NOT NULL,
    data_emiterii DATE NOT NULL,
    data_expirare DATE,
    status_validare VARCHAR2(20),
    copie_digitala VARCHAR2(255),
    CONSTRAINT fk_doc_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client),
    CONSTRAINT chk_doc_status CHECK (status_validare IN ('Valid', 'Expirat', 'În așteptare'))
);

CREATE TABLE VECTOR_FISCAL (
    id_vector NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL UNIQUE,
    platitor_tva VARCHAR2(2) NOT NULL,
    tip_impozit VARCHAR2(50),
    CONSTRAINT fk_vector_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client),
    CONSTRAINT chk_tva CHECK (platitor_tva IN ('DA', 'NU'))
);


CREATE TABLE CONTRACTE (
    id_contract NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    id_angajat NUMBER,
    data_semnare DATE NOT NULL,
    data_expirare DATE,
    valoare_totala NUMBER NOT NULL,
    moneda VARCHAR2(3),
    status_contract VARCHAR2(15),
    CONSTRAINT fk_contract_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client),
    CONSTRAINT fk_contract_angajat FOREIGN KEY (id_angajat) REFERENCES ANGAJATI(id_angajat),
    CONSTRAINT chk_contract_moneda CHECK (moneda IN ('RON', 'EUR', 'USD')),
    CONSTRAINT chk_contract_status CHECK (status_contract IN ('Activ', 'Suspendat', 'Încheiat'))
);

CREATE TABLE DECLARATII_FISCALE (
    id_declaratie NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    id_tip_declaratie NUMBER NOT NULL,
    id_angajat NUMBER NOT NULL,
    luna_an_raportare VARCHAR2(20),
    data_depunere DATE,
    suma_datorata NUMBER,
    metoda_depunere VARCHAR2(20),
    numar_recipisa_anaf VARCHAR2(50) NOT NULL UNIQUE,
    stare_recipisa VARCHAR2(20),
    CONSTRAINT fk_decl_client FOREIGN KEY (id_client) REFERENCES CLIENTI(id_client),
    CONSTRAINT fk_decl_tip FOREIGN KEY (id_tip_declaratie) REFERENCES TIPURI_DECLARATII(id_tip_declaratie),
    CONSTRAINT fk_decl_angajat FOREIGN KEY (id_angajat) REFERENCES ANGAJATI(id_angajat),
    CONSTRAINT chk_decl_metoda CHECK (metoda_depunere IN ('Online', 'Fizic'))
);


CREATE TABLE DETALII_CONTRACT (
    id_contract NUMBER,
    id_serviciu NUMBER,
    tarif_negociat NUMBER,
    observatii VARCHAR2(200),
    CONSTRAINT pk_detalii_contract PRIMARY KEY (id_contract, id_serviciu),
    CONSTRAINT fk_det_contract FOREIGN KEY (id_contract) REFERENCES CONTRACTE(id_contract),
    CONSTRAINT fk_det_serviciu FOREIGN KEY (id_serviciu) REFERENCES SERVICII(id_serviciu)
);

CREATE TABLE FACTURI (
    id_factura NUMBER PRIMARY KEY,
    id_contract NUMBER NOT NULL,
    numar_factura NUMBER NOT NULL,
    data_emitere DATE NOT NULL,
    data_scadenta DATE NOT NULL,
    suma_totala NUMBER NOT NULL,
    cota_tva NUMBER,
    status_plata VARCHAR2(15),
    CONSTRAINT fk_factura_contract FOREIGN KEY (id_contract) REFERENCES CONTRACTE(id_contract),
    CONSTRAINT chk_factura_status CHECK (status_plata IN ('Neachitată', 'Parțial', 'Achitată'))
);

CREATE TABLE PLATI (
    id_plata NUMBER PRIMARY KEY,
    id_factura NUMBER NOT NULL,
    suma_platita NUMBER NOT NULL,
    data_plata DATE NOT NULL,
    metoda_plata VARCHAR2(20),
    cont_iban_sursa VARCHAR2(34),
    referinta_tranzactie VARCHAR2(100),
    CONSTRAINT fk_plata_factura FOREIGN KEY (id_factura) REFERENCES FACTURI(id_factura),
    CONSTRAINT chk_plata_suma CHECK (suma_platita > 0),
    CONSTRAINT chk_plata_metoda CHECK (metoda_plata IN ('Transfer Bancar', 'Card', 'Cash', 'Compensare'))
);