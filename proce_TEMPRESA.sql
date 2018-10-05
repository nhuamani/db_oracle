DECLARE
    PROCEDURE SP_TEMPRESA
    (
    P_NOMBRE IN VARCHAR2,
    P_RUC IN VARCHAR2,
    P_DIRECCION IN VARCHAR2,
    P_EMAIL IN VARCHAR2,
    P_TELEFONO IN VARCHAR2,
    P_ESTADO IN NUMBER

    ) AS

    P_IDEMPRESA NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Empresa
        SELECT NVL(MAX(id_empresa),0)+1
        INTO P_IDEMPRESA
        FROM empresa;


        INSERT INTO empresa
            (id_empresa,razon_social,ruc,direccion,email,telefono,estado)
        VALUES(P_IDEMPRESA,P_NOMBRE,P_RUC,P_DIRECCION,P_EMAIL,P_TELEFONO,P_ESTADO);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM empresa;
    --Ejecutar Stored Procedures
    SP_TEMPRESA('Google Inc.','12547896532','San Francisco - Sillicon Valley','contacto@google.com','965-842-554',1);
END;