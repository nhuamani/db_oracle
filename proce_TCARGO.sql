DECLARE
    PROCEDURE SP_TCARGO
    (
    P_NOMBRE IN VARCHAR2,
    P_DESCRIPCION IN VARCHAR2
    ) AS

    P_IDCARGO NUMBER;

    BEGIN
        --Incrementar el ID de la TABLE Persona
        SELECT NVL(MAX(id_cargo),0)+1
        INTO P_IDCARGO
        FROM cargo;


        INSERT INTO cargo
            (id_cargo,nombre,descripcion,estado)
        VALUES(P_IDCARGO, P_NOMBRE, P_DESCRIPCION,1);
    END;
BEGIN
    --Eliminar Data 
    DELETE FROM cargo;
    --Ejecutar Stored Procedures
    SP_TCARGO('Gerente','Gerente de la empresa');
    SP_TCARGO('Contador','Contador de la empresa');
    SP_TCARGO('Supervisor','Supervisor de operaciones');
    SP_TCARGO('Administrador','Administrador de la empresa');
    SP_TCARGO('Tecnico Electricista','Electricista encargado');
    SP_TCARGO('President','Descripcion de la funcion');
    SP_TCARGO('Administration Vice President','Descripcion de la funcion');
    SP_TCARGO('Administration Assistant','Descripcion de la funcion');
    SP_TCARGO('Finance Manager','Descripcion de la funcion');
    SP_TCARGO('Accountant','Descripcion de la funcion');
    SP_TCARGO('Accounting Manager','Descripcion de la funcion');
    SP_TCARGO('Public Accountant','Descripcion de la funcion');
    SP_TCARGO('Sales Manager','Descripcion de la funcion');
    SP_TCARGO('Sales Representative','Descripcion de la funcion');
    SP_TCARGO('Purchasing Manager','Descripcion de la funcion');
    SP_TCARGO('Purchasing Clerk','Descripcion de la funcion');
    SP_TCARGO('Stock Manager','Descripcion de la funcion');
    SP_TCARGO('Stock Clerk','Descripcion de la funcion');
    SP_TCARGO('Shipping Clerk','Descripcion de la funcion');
    SP_TCARGO('Programmer','Descripcion de la funcion');
    SP_TCARGO('Marketing Manager','Descripcion de la funcion');
    SP_TCARGO('Marketing Representative','Descripcion de la funcion');
    SP_TCARGO('Human Resources Representative','Descripcion de la funcion');
    SP_TCARGO('Public Relations Representative','Descripcion de la funcion');
END;