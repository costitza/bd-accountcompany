-- generare plam de executie
EXPLAIN PLAN FOR
SELECT 
    c.nume_companie, 
    ct.valoare_totala, 
    ct.data_semnare
FROM CLIENTI c
JOIN CONTRACTE ct ON c.id_client = ct.id_client
WHERE ct.status_contract = 'Activ';

-- afisare plan
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


-- facem index la status contract
CREATE INDEX IDX_CONTRACTE_STATUS ON CONTRACTE (status_contract);



-- varianta optimizata folosind hint pe index
EXPLAIN PLAN FOR
SELECT /*+ INDEX(c IDX_CONTRACTE_STATUS) */
    cl.nume_companie,
    c.id_contract,
    c.data_semnare,
    c.valoare_totala
FROM CONTRACTE c
JOIN CLIENTI cl ON c.id_client = cl.id_client
WHERE c.status_contract = 'Activ';


SELECT * FROM table(dbms_xplan.display());

