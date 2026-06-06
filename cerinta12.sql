-- 1
SELECT 
    UPPER(nume || ' ' || prenume) AS nume_complet_angajat,
    SUBSTR(email, 1, 5) AS id_scurt_email,
    ROUND(MONTHS_BETWEEN(SYSDATE, data_angajarii)) AS vechime_luni,
    EXTRACT(YEAR FROM data_angajarii) AS an_angajare,
    NVL(telefon, 'Nu are telefon alocat') AS contact_telefon,
    DECODE(functie, 
        'Contabil Junior', 'Departament Executie',
        'Contabil Expert', 'Departament Executie',
        'Inspector Resurse Umane', 'Departament Resurse Umane',
        'Administrator', 'Departament Administrativ',
        'Auditor', 'Departament Audit',
        'Consultant Fiscal', 'Departament Consultanta',
        'Asistent Manager', 'Departament Executie',
        'Expert Fiscal', 'Departament Consultanta',
        'Functie Nespecificata'
    ) AS rol_intern,
    CASE 
        WHEN salariu < 4000 THEN 'Nivel Junior'
        WHEN salariu BETWEEN 4000 AND 7000 THEN 'Nivel Mid'
        ELSE 'Nivel Senior'
    END AS clasificare_salariala
FROM ANGAJATI
ORDER BY an_angajare ASC, salariu DESC;



-- 2
WITH Valoare_Medie_Contracte AS (
    SELECT AVG(valoare_totala) AS media_generala
    FROM CONTRACTE
)
SELECT 
    c.nume_companie,
    statistici_clienti.total_valoare_client
FROM CLIENTI c
JOIN (
    SELECT id_client, SUM(valoare_totala) AS total_valoare_client
    FROM CONTRACTE
    GROUP BY id_client
) statistici_clienti ON c.id_client = statistici_clienti.id_client
CROSS JOIN Valoare_Medie_Contracte vmc
WHERE statistici_clienti.total_valoare_client > vmc.media_generala
ORDER BY statistici_clienti.total_valoare_client DESC;




-- 3
SELECT 
    d.id_departament, 
    d.denumire_dept,
    COUNT(df.id_declaratie) AS total_declaratii_gestionate
FROM DEPARTAMENTE d
JOIN ANGAJATI a ON d.id_departament = a.id_departament
JOIN DECLARATII_FISCALE df ON a.id_angajat = df.id_angajat
GROUP BY d.id_departament, d.denumire_dept
HAVING COUNT(df.id_declaratie) > (
    SELECT AVG(nr_declaratii)
    FROM (
        SELECT COUNT(id_declaratie) AS nr_declaratii
        FROM DECLARATII_FISCALE
        GROUP BY id_angajat
    )
);




-- 4
SELECT 
    a.nume, 
    a.prenume, 
    a.email
FROM ANGAJATI a
WHERE EXISTS (
    SELECT 1
    FROM CONTRACTE c
    JOIN CLIENTI cl ON c.id_client = cl.id_client
    JOIN PUNCTE_LUCRU pl ON cl.id_client = pl.id_client
    WHERE c.id_angajat = a.id_angajat 
      AND pl.are_casa_marcat = 'DA'
);




-- 5
SELECT 
    a.id_angajat AS cod_angajat,
    UPPER(a.nume || ' ' || a.prenume) AS nume_complet_angajat,
    a.functie AS pozitie_ocupata,
    TO_CHAR(a.salariu, '999,999L') AS salariu_curent
FROM ANGAJATI a
WHERE EXISTS (
    SELECT 1
    FROM CONTRACTE c
    JOIN FACTURI f ON c.id_contract = f.id_contract
    JOIN PLATI p ON f.id_factura = p.id_factura
    WHERE c.id_angajat = a.id_angajat
)
ORDER BY a.salariu DESC;


ROLLBACK;