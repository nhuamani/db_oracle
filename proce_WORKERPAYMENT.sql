--1 La empresa Mi-Perú requiere de un software de pago de planilla. Se requiere realizar la solución aplicando lo aprendido (procedimiento almacenados, cursores, consultas sql). 10 puntos. Ejecutar el procedimiento almacenado y que genere el pago de los meses de enero. febrero, marzo, abril. Calcular cuanto desembolso la empresa durante los meses de pago.(5 puntos). Realizar una consulta que me devuelva cuanto se les descontó a todos los trabajadores por concepto de Sistema de Pensiones por mes. (5 puntos). IMPORTANTE Trabajar sobre el modelo RELACIONAL de PLANILLA -->tablas empleado, seguros, empleado_seguro, contratos, planilla, detalle_planilla.

--realizar un procedimiento empleado, periodo, pension, empelado-seguro;
--parametro (mes,periodo) pagar por mes solo de trabjadores activos

DECLARE
    PROCEDURE SP_PAGOTRABAJADOR
    (
    P_MESPAGO IN VARCHAR2,
    P_DESCRIPCION IN VARCHAR2

    ) AS

    P_IDPLANILLA NUMBER;
    P_IDPLANILLADETALLE NUMBER;
    P_IDPERIODO NUMBER;
    P_PROCENTAJE NUMBER;
    P_SUELDO_NETO NUMBER(10,2);
    P_DESCUENTO NUMBER(10,2);


    CURSOR CURSOR_CONTRATO IS
    SELECT id_contrato, sueldo, id_trabajador FROM contrato
    WHERE id_periodo=P_IDPERIODO;

    --CURSOR CURSOR_SEGURO IS
    --SELECT id_trabajador, id_pension FROM trabajador_pension 
    --WHERE id_periodo=P_IDPERIODO;


    BEGIN
        
         --Seleccionar Periodo Activo
        SELECT id_periodo
        INTO P_IDPERIODO
        FROM periodo
        WHERE estado=1;

        FOR i in CURSOR_CONTRATO LOOP

            --Incrementar ID Table Planilla
            SELECT NVL(MAX(id_planilla),0)+1
            INTO P_IDPLANILLA
            FROM planilla;


            --Incrementar ID Table Planilla_detalle
            SELECT NVL(MAX(id_planilla_detalle),0)+1
            INTO P_IDPLANILLADETALLE
            FROM planilla_detalle;

            --Trae el porcentaje de la pension de cada trabajador
            SELECT p.porcentaje
            INTO P_PROCENTAJE
            FROM trabajador t
            INNER JOIN trabajador_pension tp ON
            tp.id_trabajador = t.id_trabajador
            INNER JOIN pension p ON
            p.id_pension = tp.id_pension
            WHERE t.id_trabajador=i.id_trabajador;
            
            P_DESCUENTO:=(i.sueldo*P_PROCENTAJE)/100;
            P_SUELDO_NETO:=i.sueldo-P_DESCUENTO;

            INSERT INTO planilla
                (id_planilla,monto_total,fecha_pago,estado,mes,descripcion,id_trabajador,id_contrato)
            VALUES(P_IDPLANILLA,P_SUELDO_NETO,SYSDATE,1,P_MESPAGO,P_DESCRIPCION,i.id_trabajador,i.id_contrato);
            
            INSERT INTO planilla_detalle
                (id_planilla_detalle, importe, descripcion, id_planilla)
            VALUES(P_IDPLANILLADETALLE,P_DESCUENTO,'Descuento de Pensión',P_IDPLANILLA);
        END LOOP;
    END;

BEGIN
    --Eliminar Data 
    DELETE FROM planilla_detalle;
    DELETE FROM planilla;
    --Ejecutar Stored Procedures
    SP_PAGOTRABAJADOR('Enero','Pago de enero');
    SP_PAGOTRABAJADOR('Febrero','Pago de Febrero');
    SP_PAGOTRABAJADOR('Marzo','Pago de Marzo');
    SP_PAGOTRABAJADOR('Abril','Pago de Abril');
END;


--2.Calcular cuanto desembolso la empresa durante los meses de pago.
SELECT SUM(monto_total) FROM planilla;

--3.Realizar una consulta que me devuelva cuanto se les descontó a todos los trabajadores por concepto de Sistema de Pensiones por mes.
SELECT p.mes, SUM(pd.importe) AS "Suma Total"
FROM planilla p, planilla_detalle pd
WHERE p.id_planilla = pd.id_planilla
GROUP BY p.mes;