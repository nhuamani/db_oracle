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
    P_GENERO IN VARCHAR2,
    P_FECH_NACI IN DATE
    ) AS

    P_IDPERSONA NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Persona
        SELECT NVL(MAX(id_persona),0)+1
        INTO P_IDPERSONA
        FROM persona;


        INSERT INTO persona
            (id_persona,nombres,apellidos,dni,email,direccion,celular,estado_civil,genero,fecha_nacimiento,estado)
        VALUES(P_IDPERSONA, P_NOMBRES, P_APELLIDOS, P_DNI, P_EMAIL, P_DIRECCION, P_CELULAR,P_ESTADO_CIVIL,P_GENERO, P_FECH_NACI, 1);
        DBMS_OUTPUT.PUT_LINE('Insertado Persona: '|| P_IDPERSONA || ' ' || P_NOMBRES || ' ' || P_APELLIDOS);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM persona;
    --Ejecutar Stored Procedures
    SP_TPERSONA('Ana', 'Díez', '35789654', 'diez@gmail.com', 'Ca. Sucre San Francisco', '985-475-457', 'CA', 'F', '12/12/1998');
    SP_TPERSONA('Arturo', 'Olivenza', '22769656', 'olivenza@gmail.com', 'Av. Lima', '985-475-457', 'SO', 'M', '06/09/1983');
    SP_TPERSONA('Luisa', 'Crespo', '24746545', 'luisa@gmail.com', 'Jr. Cusco', '985-475-457', 'DI', 'F', '17/10/1993');
    SP_TPERSONA('Maritza', 'Rodríguez', '73729624', 'rodrigues@gmail.com', 'Av. Brasil', '985-475-457', 'CA', 'F', '19/01/2000');
    SP_TPERSONA('Pau', 'Irazaval', '56789651', 'irazaval@gmail.com', 'Jr. Cusco', '985-475-457', 'CO', 'M', '03/11/1999');
    SP_TPERSONA('Xiomi', 'Zeballos', '65758660', 'zeballos@gmail.com', 'Jr. Ica', '985-475-457', 'SO', 'F', '15/11/1997');
END;