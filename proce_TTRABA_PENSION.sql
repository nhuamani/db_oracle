DECLARE
    PROCEDURE SP_TTRABAJADOR_PENSION
    (
    P_FECH_INICIO IN DATE,
    P_FECH_FINAL IN DATE,
    P_ID_TRABAJADOR IN NUMBER,
    P_IDPENSION IN NUMBER
    ) AS

    P_IDTRABA_PENSION NUMBER;
    P_IDPERIODO NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Persona
        SELECT NVL(MAX(id_trabajador_pension),0)+1
        INTO P_IDTRABA_PENSION
        FROM trabajador_pension;

        --Seleccionar Periodo Activo
        SELECT id_periodo
        INTO P_IDPERIODO
        FROM periodo
        WHERE estado=1;


        INSERT INTO trabajador_pension
            (id_trabajador_pension,estado,fecha_inicio,fecha_final,id_trabajador,id_pension,id_periodo)
        VALUES(P_IDTRABA_PENSION,1, P_FECH_INICIO, P_FECH_FINAL,P_ID_TRABAJADOR,P_IDPENSION,P_IDPERIODO);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM trabajador_pension;
    --Ejecutar Stored Procedures
    SP_TTRABAJADOR_PENSION('01/01/2018','31/12/2018',1,5);
    SP_TTRABAJADOR_PENSION('01/07/2018','31/12/2018',2,4);
    SP_TTRABAJADOR_PENSION('01/01/2018','31/12/2018',3,3);
    SP_TTRABAJADOR_PENSION('01/11/2018','31/12/2018',4,2);
    SP_TTRABAJADOR_PENSION('01/06/2018','31/12/2018',5,1);
END;