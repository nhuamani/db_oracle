DECLARE
    PROCEDURE SP_TCONTRATO
    (
    P_FEC_INICIO IN DATE,
    P_SUELDO IN NUMBER,
    P_FEC_FINAL IN DATE,
    P_FECHA IN DATE,
    P_ESTADO IN NUMBER,
    P_ID_CARGO IN NUMBER,
    P_ID_TRABAJADOR IN NUMBER,
    P_ID_TIPOPAGO IN NUMBER

    ) AS

    P_IDCONTRATO NUMBER;
    P_IDEMPRESA NUMBER;
    P_IDPERIODO NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Empresa
        SELECT NVL(MAX(id_contrato),0)+1
        INTO P_IDCONTRATO
        FROM contrato;

        --Seleccionar Empresa Activo
        SELECT id_empresa
        INTO P_IDEMPRESA
        FROM empresa
        WHERE estado=1;

        --Seleccionar Periodo Activo
        SELECT id_periodo
        INTO P_IDPERIODO
        FROM periodo
        WHERE estado=1;


        INSERT INTO contrato
            (id_contrato,fecha_inicio,sueldo,fecha_final,fecha,estado,id_cargo,id_trabajador,id_tipo_pago,id_empresa,id_periodo)
        VALUES(P_IDCONTRATO,P_FEC_INICIO,P_SUELDO,P_FEC_FINAL,P_FECHA,P_ESTADO,P_ID_CARGO,P_ID_TRABAJADOR,P_ID_TIPOPAGO,P_IDEMPRESA,P_IDPERIODO);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM contrato;
    --Ejecutar Stored Procedures
    SP_TCONTRATO('01/01/2018',10000,'31/12/2018','01/01/2018',1,1,1,2);
    SP_TCONTRATO('01/02/2018',1500,'31/12/2018','01/02/2018',1,10,2,1);
    SP_TCONTRATO('01/03/2018',1800,'31/12/2018','01/03/2018',0,8,1,1);
    SP_TCONTRATO('01/04/2018',4000,'31/12/2018','01/04/2018',1,20,3,2);
    SP_TCONTRATO('01/05/2018',2000,'31/12/2018','01/05/2018',1,5,5,3);
    SP_TCONTRATO('01/06/2018',8000,'31/12/2018','01/06/2018',0,4,4,2);
    SP_TCONTRATO('01/07/2018',5000,'31/12/2018','01/07/2018',1,2,4,2);
END;
