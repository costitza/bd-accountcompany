-- 1
UPDATE ANGAJATI
SET salariu = salariu + 500
WHERE id_angajat IN (
    SELECT DISTINCT id_angajat
    FROM DECLARATII_FISCALE
    WHERE metoda_depunere = 'Fizic'
);


-- 2
UPDATE CONTRACTE
SET status_contract = 'Suspendat'
WHERE id_client IN (
    SELECT id_client
    FROM VECTOR_FISCAL
    WHERE platitor_tva = 'NU'
);


-- 3
DELETE FROM DETALII_CONTRACT
WHERE id_serviciu IN (
    SELECT id_serviciu
    FROM SERVICII
    WHERE tarif_standard < 200
);

