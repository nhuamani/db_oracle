CREATE or REPLACE PROCEDURE SP_TPERIODO
AS
P_IDPERIODO NUMBER;
P_YEARSYS VARCHAR2(4);
P_YEARMAX VARCHAR2(4);

BEGIN
    /*
Extraer el maximo valor MAX(), si esta null reemplazar por '2009' NVL(,'') y a al valor obtenido sumarle mas 1 
*/
    SELECT NVL(MAX(id_periodo),0)+1
    INTO P_IDPERIODO
    FROM periodo;
    --Extraer YEAR del servidor de la db
    SELECT to_char(sysdate,'YYYY')
    INTO P_YEARSYS
    from dual;
    --SELECT to_char(sysdate, 'MM') from dual;  --Mount
    --SELECT to_char(sysdate, 'DD') from dual;  --Day

    /*
Extraer el maximo valor MAX(), si esta null reemplazar por '2009' NVL(,'') y a al valor obtenido sumarle mas 1 
*/
    SELECT NVL(MAX(nombre),'2009')+1
    INTO P_YEARMAX
    FROM periodo;

    IF P_YEARMAX = P_YEARSYS THEN

        INSERT INTO periodo
            (id_periodo, nombre, estado)
        VALUES(P_IDPERIODO, P_YEARMAX, 1);
        
        ELSE
        INSERT INTO periodo
            (id_periodo, nombre, estado)
        VALUES(P_IDPERIODO, P_YEARMAX, 0);
    END IF;
END;

--Ejecutar Stored Procedures
EXECUTE SP_TPERIODO();