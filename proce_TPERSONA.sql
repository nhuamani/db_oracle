DECLARE
    PROCEDURE SP_TPERSONA
    (
    P_NOMBRES IN VARCHAR2,
    P_APELLIDOS IN VARCHAR2,
    P_DNI IN VARCHAR2,
    P_EMAIL IN VARCHAR2,
    P_DIRECCION IN VARCHAR2,
    P_CELULAR IN VARCHAR2,
    P_ESTADO_CIVIL IN VARCHAR2,
    P_SEXO IN VARCHAR2,
    P_FECH_NACI IN DATE
    ) AS

    P_IDPERSONA NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Persona
        SELECT NVL(MAX(id_persona),0)+1
        INTO P_IDPERSONA
        FROM persona;


        INSERT INTO persona
            (id_persona,nombres,apellidos,dni,email,direccion,celular,estado_civil,sexo,fecha_nacimiento,estado)
        VALUES(P_IDPERSONA, P_NOMBRES, P_APELLIDOS, P_DNI, P_EMAIL, P_DIRECCION, P_CELULAR,P_ESTADO_CIVIL,P_SEXO, P_FECH_NACI, 1);
        DBMS_OUTPUT.PUT_LINE('Insertado Persona: '|| P_IDPERSONA || ' ' || P_NOMBRES || ' ' || P_APELLIDOS);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM persona;
    --Ejecutar Stored Procedures
    SP_TPERSONA('Nilton', 'Huamani', '45789654', 'nhuamani@gmail.com', 'San Fracncisco', '985475457', 'S', 'M', '26/09/1998');
    
END;