
/* CREACION DE USUARIO SI ESTA TRABAJANDO CON ORACLE CLOUD */
CREATE USER MDY2131_P14_1 IDENTIFIED BY "MDY2131.practica_14_1"
DEFAULT TABLESPACE "DATA"
TEMPORARY TABLESPACE "TEMP";
ALTER USER MDY2131_P14_1 QUOTA 100M ON DATA;
GRANT CREATE SESSION TO MDY2131_P14_1;
GRANT CREATE VIEW TO MDY2131_P14_1;
GRANT "RESOURCE" TO MDY2131_P14_1;
ALTER USER MDY2131_P14_1 DEFAULT ROLE "RESOURCE";


-- REQUERIMIENTO 4

CREATE INDEX MDY2131_P14_1.IDX_CREDITO_CLIENTE ON MDY2131_P14_1.CREDITO_CLIENTE (MONTO_CREDITO) 
TABLESPACE "DATA" ;

-- REQUERIMIENTO 5

CREATE INDEX MDY2131_P14_1.IDX_PROD_CLIENTES_DEPEN ON MDY2131_P14_1.CLIENTE (CASE WHEN COD_TIPO_CONTRATO = 1 THEN COD_TIPO_CONTRATO ELSE NULL END)
TABLESPACE "DATA" ;

CREATE INDEX MDY2131_P14_1.IDX_PROD_INV_CLIENTES_ANUAL ON MDY2131_P14_1.PRODUCTO_INVERSION_CLIENTE (EXTRACT(YEAR FROM fecha_solic_prod))
TABLESPACE "DATA" ;


