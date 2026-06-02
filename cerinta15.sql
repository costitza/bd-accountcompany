SELECT cl.nume_companie, c.id_contract, f.numar_factura, p.suma_platita
FROM CLIENTI cl
LEFT OUTER JOIN CONTRACTE c ON cl.id_client = c.id_client
LEFT OUTER JOIN FACTURI f ON c.id_contract = f.id_contract
LEFT OUTER JOIN PLATI p ON f.id_factura = p.id_factura;


SELECT 
    cl.id_client, 
    cl.nume_companie
FROM CLIENTI cl
WHERE NOT EXISTS (
    SELECT s.id_serviciu
    FROM SERVICII s
    WHERE s.categorie = 'HR'
    AND NOT EXISTS (
        SELECT 1
        FROM CONTRACTE c
        JOIN DETALII_CONTRACT dc ON c.id_contract = dc.id_contract
        WHERE c.id_client = cl.id_client 
          AND dc.id_serviciu = s.id_serviciu
    )
);


SELECT id_angajat, nume, prenume, salariu
FROM ANGAJATI
ORDER BY salariu DESC
FETCH FIRST 3 ROWS ONLY;


