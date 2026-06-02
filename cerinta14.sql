CREATE OR REPLACE VIEW VIZ_CONTRACTE_ACTIVE AS
SELECT 
    c.id_contract,
    c.data_semnare,
    c.valoare_totala,
    c.status_contract,
    cl.id_client,
    cl.nume_companie,
    a.id_angajat,
    a.nume || ' ' || a.prenume AS responsabil_cont
FROM CONTRACTE c
JOIN CLIENTI cl ON c.id_client = cl.id_client
JOIN ANGAJATI a ON c.id_angajat = a.id_angajat
WHERE c.status_contract = 'Activ'
WITH CHECK OPTION CONSTRAINT chk_viz_contracte_active;



UPDATE VIZ_CONTRACTE_ACTIVE 
SET valoare_totala = valoare_totala + 1000 
WHERE id_contract = 1; 