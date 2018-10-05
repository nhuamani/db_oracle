DECLARE
    PROCEDURE SP_TTIPO_PAGO
    (
    P_NOMBRE IN VARCHAR2,
    P_ESTADO IN NUMBER

    ) AS

    P_IDTIPOPAGO NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Tipo_pago
        SELECT NVL(MAX(id_tipo_pago),0)+1
        INTO P_IDTIPOPAGO
        FROM tipo_pago;


        INSERT INTO tipo_pago
            (id_tipo_pago,nombre,estado)
        VALUES(P_IDTIPOPAGO, P_NOMBRE,P_ESTADO);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM tipo_pago;
    --Ejecutar Stored Procedures
    SP_TTIPO_PAGO('Efectivo',1);
    SP_TTIPO_PAGO('Depósito Directo',1);
    SP_TTIPO_PAGO('Cheque',1);
    SP_TTIPO_PAGO('Transferencia Bancaria',0);
END;