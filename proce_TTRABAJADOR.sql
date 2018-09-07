DECLARE
    PROCEDURE SP_TTRABAJADOR
    (
    P_RUC IN VARCHAR2,
    P_NUM_CUENTA IN VARCHAR2,
    P_ID_PERSONA IN NUMBER
    
    ) AS

    P_IDTRABAJADOR NUMBER;
    P_CODIGO VARCHAR2(10);


    BEGIN
        --Incrementar el ID de la TABLE Trabajador
        SELECT NVL(MAX(id_trabajador),0)+1
        INTO P_IDTRABAJADOR
        FROM trabajador;
        --Incrementar codigo
        SELECT LPAD(NVL(MAX(codigo),0)+1,3,'0')
        INTO P_CODIGO
        FROM trabajador;

        INSERT INTO trabajador
            (id_trabajador,codigo,ruc,numero_cuenta,id_persona)
        VALUES(P_IDTRABAJADOR, P_CODIGO, P_RUC, P_NUM_CUENTA,P_ID_PERSONA);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM trabajador;
    --Ejecutar Stored Procedures
    SP_TTRABAJADOR('11235789654','630-3093243101',1);
    SP_TTRABAJADOR('11222769656','630-3093243101',2);
    SP_TTRABAJADOR('11424746545','630-3093243101',3);
    SP_TTRABAJADOR('11473729624','630-3093243101',4);
    SP_TTRABAJADOR('11456789651','630-3093243101',5);
END;