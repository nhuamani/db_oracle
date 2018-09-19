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
    SP_TPERSONA('Ana','Díez','35789654','diez@gmail.com','Ca. Sucre San Francisco','985-475-457','CA','F','12/12/1998');
    SP_TPERSONA('Arturo','Olivenza','22769656','olivenza@gmail.com','Av. Lima','985-475-457','SO','M','06/09/1983');
    SP_TPERSONA('Luisa','Crespo','24746545','luisa@gmail.com','Jr. Cusco','985-475-457','DI','F','17/10/1993');
    SP_TPERSONA('Maritza','Rodríguez','73729624','rodrigues@gmail.com','Av. Brasil', '985-475-457','CA','F','19/01/2000');
    SP_TPERSONA('Pau','Irazaval','56789651','irazaval@gmail.com','Jr. Cusco','985-475-457','CO','M','03/11/1999');
    SP_TPERSONA('Xiomi','Zeballos','65758660','zeballos@gmail.com','Jr. Ica','985-475-457','SO','F','15/11/1997');
    
    SP_TPERSONA('Neena','Kochhar','45365489','NKOCHHAR@gmail.com','Jr. Lima','515-123-458','SO','M','21/09/1995');
    SP_TPERSONA('Steven','King','45365489','SKING@gmail.com','Jr. Lima','515-123-457','SO','M','17/06/1993');
    SP_TPERSONA('Lex','Haan','45365489','LDEHAAN@gmail.com','Jr. Lima','515-123-459','SO','M','13/01/1991');
    SP_TPERSONA('Alexander','Hunold','45365489','AHUNOLD@gmail.com','Jr. Lima','590-423-457','SO','M','03/01/1996');
    SP_TPERSONA('Bruce','Ernst','45365489','BERNST@gmail.com','Jr. Lima','590-423-458','SO','M','21/05/1997');
    SP_TPERSONA('David','Austin','45365489','DAUSTIN@gmail.com','Jr. Lima','590-423-459','SO','M','25/06/1995');
    SP_TPERSONA('Valli','Pataballa','45365489','VPATABAL@gmail.com','Jr. Lima','590-423-450','SO','M','05/02/1996');
    SP_TPERSONA('Diana','Lorentz','45365489','DLORENTZ@gmail.com','Jr. Lima','590-423-557','SO','M','07/02/1997');
    SP_TPERSONA('Nancy','Greenberg','45365489','NGREENBE@gmail.com','Jr. Lima','515-124-459','SO','M','17/08/1992');
    SP_TPERSONA('Daniel','Faviet','45365489','DFAVIET@gmail.com','Jr. Lima','515-124-419','SO','M','16/08/1992');
    SP_TPERSONA('John','Chen','45365489','JCHEN@gmail.com','Jr. Lima','515-124-429','SO','M','28/09/1995');
    SP_TPERSONA('Ismael','Sciarra','45365489','ISCIARRA@gmail.com','Jr. Lima','515-124-439','SO','M','30/09/1995');
    SP_TPERSONA('Manuel','Urman','45365489','JMURMAN@gmail.com','Jr. Lima','515-124-449','SO','M','07/03/1996');
    SP_TPERSONA('Luis','Popp','45365489','LPOPP@gmail.com','Jr. Lima','515-124-457','SO','M','07/12/1997');
    SP_TPERSONA('Den','Raphaely','45365489','DRAPHEAL@gmail.com','Jr. Lima','515-127-451','SO','M','07/12/1992');
    SP_TPERSONA('Alexander','Khoo','45365489','AKHOO@gmail.com','Jr. Lima','515-127-452','SO','M','18/05/1993');
    SP_TPERSONA('Shelli','Baida','45365489','SBAIDA@gmail.com','Jr. Lima','515-127-453','SO','M','24/12/1995');
    SP_TPERSONA('Sigal','Tobias','45365489','STOBIAS@gmail.com','Jr. Lima','515-127-454','SO','M','24/07/1995');
    SP_TPERSONA('Guy','Himuro','45365489','GHIMURO@gmail.com','Jr. Lima','515-127-455','SO','M','15/11/1996');
    SP_TPERSONA('Karen','Colmenares','45365489','KCOLMENA@gmail.com','Jr. Lima','515-127-456','SO','M','10/08/1997');
    SP_TPERSONA('Matthew','Weiss','45365489','MWEISS@gmail.com','Jr. Lima','650-123-124','SO','M','18/07/1994');
    SP_TPERSONA('Adam','Fripp','45365489','AFRIPP@gmail.com','Jr. Lima','650-123-224','SO','M','10/04/1995');
    SP_TPERSONA('Payam','Kaufling','45365489','PKAUFLIN@gmail.com','Jr. Lima','650-123-324','SO','M','01/05/1993');
    SP_TPERSONA('Shanta','Vollman','45365489','SVOLLMAN@gmail.com','Jr. Lima','650-123-424','SO','M','10/10/1995');
    SP_TPERSONA('Kevin','Mourgos','45365489','KMOURGOS@gmail.com','Jr. Lima','650-123-524','SO','M','16/11/1997');
    SP_TPERSONA('Julia','Nayer','45365489','JNAYER@gmail.com','Jr. Lima','650-124-124','SO','M','16/07/1995');
    SP_TPERSONA('Irene','Mikkilineni','45365489','IMIKKILI@gmail.com','Jr. Lima','650-124-124','SO','M','28/09/1996');
    SP_TPERSONA('James','Landry','45365489','JLANDRY@gmail.com','Jr. Lima','650-124-134','SO','M','14/01/1997');
    SP_TPERSONA('Steven','Markle','45365489','SMARKLE@gmail.com','Jr. Lima','650-124-144','SO','M','08/03/1998');
    SP_TPERSONA('Laura','Bissot','45365489','LBISSOT@gmail.com','Jr. Lima','650-124-524','SO','M','20/08/1995');
    SP_TPERSONA('Mozhe','Atkinson','45365489','MATKINSO@gmail.com','Jr. Lima','650-124-624','SO','M','30/10/1995');
    SP_TPERSONA('James','Marlow','45365489','JAMRLOW@gmail.com','Jr. Lima','650-124-724','SO','M','16/02/1995');
    SP_TPERSONA('TJ','Olson','45365489','TJOLSON@gmail.com','Jr. Lima','650-124-824','SO','M','10/04/1997');
    SP_TPERSONA('Jason','Mallin','45365489','JMALLIN@gmail.com','Jr. Lima','650-127-194','SO','M','14/06/1994');
    SP_TPERSONA('Michael','Rogers','45365489','MROGERS@gmail.com','Jr. Lima','650-127-184','SO','M','26/08/1996');
    SP_TPERSONA('Ki','Gee','45365489','KGEE@gmail.com','Jr. Lima','650-127-174','SO','M','12/12/1997');
    SP_TPERSONA('Hazel','Philtanker','45365489','HPHILTAN@gmail.com','Jr. Lima','650-127-164','SO','M','06/02/1998');
    SP_TPERSONA('Renske','Ladwig','45365489','RLADWIG@gmail.com','Jr. Lima','650-121-124','SO','M','14/07/1993');
    SP_TPERSONA('Stephen','Stiles','45365489','SSTILES@gmail.com','Jr. Lima','650-121-204','SO','M','26/10/1995');
    SP_TPERSONA('John','Seo','45365489','JSEO@gmail.com','Jr. Lima','650-121-209','SO','M','12/02/1996');
    SP_TPERSONA('Joshua','Patel','45365489','JPATEL@gmail.com','Jr. Lima','650-121-184','SO','M','06/04/1996');
    SP_TPERSONA('Trenna','Rajs','45365489','TRAJS@gmail.com','Jr. Lima','650-121-809','SO','M','17/10/1993');
    SP_TPERSONA('Curtis','Davies','45365489','CDAVIES@gmail.com','Jr. Lima','650-121-294','SO','M','29/01/1995');
    SP_TPERSONA('Randall','Matos','45365489','RMATOS@gmail.com','Jr. Lima','650-121-284','SO','M','15/03/1996');
    SP_TPERSONA('Peter','Vargas','45365489','PVARGAS@gmail.com','Jr. Lima','650-121-204','SO','M','09/07/1996');
    SP_TPERSONA('John','Russell','45365489','JRUSSEL@gmail.com','Jr. Lima','011-344-422','SO','M','01/10/1994');
    SP_TPERSONA('Karen','Partners','45365489','KPARTNER@gmail.com','Jr. Lima','011-344-462','SO','M','05/01/1995');
    SP_TPERSONA('Alberto','Errazuriz','45365489','AERRAZUR@gmail.com','Jr. Lima','011-344-422','SO','M','10/03/1995');
    SP_TPERSONA('Gerald','Cambrault','45365489','GCAMBRAU@gmail.com','Jr. Lima','011-344-612','SO','M','15/10/1997');
    SP_TPERSONA('Eleni','Zlotkey','45365489','EZLOTKEY@gmail.com','Jr. Lima','011-344-420','SO','M','29/01/1998');
    SP_TPERSONA('Peter','Tucker','45365489','PTUCKER@gmail.com','Jr. Lima','011-344-122','SO','M','30/01/1995');
    SP_TPERSONA('David','Bernstein','45365489','DBERNSTE@gmail.com','Jr. Lima','011-344-342','SO','M','24/03/1995');
    SP_TPERSONA('Peter','Hall','45365489','PHALL@gmail.com','Jr. Lima','011-344-479','SO','M','20/08/1995');
    SP_TPERSONA('Christopher','Olsen','45365489','COLSEN@gmail.com','Jr. Lima','011-344-497','SO','M','30/03/1996');
    SP_TPERSONA('Nanette','Cambrault','45365489','NCAMBRAU@gmail.com','Jr. Lima','011-344-986','SO','M','09/12/1996');
    SP_TPERSONA('Oliver','Tuvault','45365489','OTUVAULT@gmail.com','Jr. Lima','011-344-485','SO','M','23/11/1997');
    SP_TPERSONA('Janette','King','45365489','JKING@gmail.com','Jr. Lima','011-345-422','SO','M','30/01/1994');
    SP_TPERSONA('Patrick','Sully','45365489','PSULLY@gmail.com','Jr. Lima','011-345-922','SO','M','04/03/1994');
    SP_TPERSONA('Allan','McEwen','45365489','AMCEWEN@gmail.com','Jr. Lima','011-345-822','SO','M','01/08/1994');
    SP_TPERSONA('Lindsey','Smith','45365489','LSMITH@gmail.com','Jr. Lima','011-345-722','SO','M','10/03/1995');
    SP_TPERSONA('Louise','Doran','45365489','LDORAN@gmail.com','Jr. Lima','011-345-622','SO','M','15/12/1995');
    SP_TPERSONA('Sarath','Sewall','45365489','SSEWALL@gmail.com','Jr. Lima','011-345-522','SO','M','03/11/1996');
    SP_TPERSONA('Clara','Vishney','45365489','CVISHNEY@gmail.com','Jr. Lima','011-346-122','SO','M','11/11/1995');
    SP_TPERSONA('Danielle','Greene','45365489','DGREENE@gmail.com','Jr. Lima','011-346-222','SO','M','19/03/1997');
    SP_TPERSONA('Mattea','Marvins','45365489','MMARVINS@gmail.com','Jr. Lima','011-346-322','SO','M','24/01/1998');
    SP_TPERSONA('David','Lee','45365489','DLEE@gmail.com','Jr. Lima','011-346-522','SO','M','23/02/1998');
    SP_TPERSONA('Sundar','Ande','45365489','SANDE@gmail.com','Jr. Lima','011-346-622','SO','M','24/03/1998');
    SP_TPERSONA('Amit','Banda','45365489','ABANDA@gmail.com','Jr. Lima','011-346-722','SO','M','21/04/1998');
    SP_TPERSONA('Lisa','Ozer','45365489','LOZER@gmail.com','Jr. Lima','011-343-922','SO','M','11/03/1995');
    SP_TPERSONA('Harrison','Bloom','45365489','HBLOOM@gmail.com','Jr. Lima','011-343-822','SO','M','23/03/1996');
    SP_TPERSONA('Tayler','Fox','45365489','TFOX@gmail.com','Jr. Lima','011-343-722','SO','M','24/01/1996');
    SP_TPERSONA('William','Smith','45365489','WSMITH@gmail.com','Jr. Lima','011-343-622','SO','M','23/02/1997');
    SP_TPERSONA('Elizabeth','Bates','45365489','EBATES@gmail.com','Jr. Lima','011-343-522','SO','M','24/03/1997');
    SP_TPERSONA('Sundita','Kumar','45365489','SKUMAR@gmail.com','Jr. Lima','011-343-322','SO','M','21/04/1998');
    SP_TPERSONA('Ellen','Abel','45365489','EABEL@gmail.com','Jr. Lima','011-644-422','SO','M','11/05/1994');
    SP_TPERSONA('Alyssa','Hutton','45365489','AHUTTON@gmail.com','Jr. Lima','011-644-422','SO','M','19/03/1995');
    SP_TPERSONA('Jonathon','Taylor','45365489','JTAYLOR@gmail.com','Jr. Lima','011-644-422','SO','M','24/03/1996');
    SP_TPERSONA('Jack','Livingston','45365489','JLIVINGS@gmail.com','Jr. Lima','011-644-422','SO','M','23/04/1996');
    SP_TPERSONA('Kimberely','Grant','45365489','KGRANT@gmail.com','Jr. Lima','011-644-422','SO','M','24/05/1997');
    SP_TPERSONA('Charles','Johnson','45365489','CJOHNSON@gmail.com','Jr. Lima','011-644-422','SO','M','04/01/1998');
    SP_TPERSONA('Winston','Taylor','45365489','WTAYLOR@gmail.com','Jr. Lima','650-507-986','SO','M','24/01/1996');
    SP_TPERSONA('Jean','Fleaur','45365489','JFLEAUR@gmail.com','Jr. Lima','650-507-987','SO','M','23/02/1996');
    SP_TPERSONA('Martha','Sullivan','45365489','MSULLIVA@gmail.com','Jr. Lima','650-507-988','SO','M','21/06/1997');
    SP_TPERSONA('Girard','Geoni','45365489','GGEONI@gmail.com','Jr. Lima','650-507-989','SO','M','03/02/1998');
    SP_TPERSONA('Nandita','Sarchand','45365489','NSARCHAN@gmail.com','Jr. Lima','650-509-186','SO','M','27/01/1994');
    SP_TPERSONA('Alexis','Bull','45365489','ABULL@gmail.com','Jr. Lima','650-509-286','SO','M','20/02/1995');
    SP_TPERSONA('Julia','Dellinger','45365489','JDELLING@gmail.com','Jr. Lima','650-509-386','SO','M','24/06/1996');
    SP_TPERSONA('Anthony','Cabrio','45365489','ACABRIO@gmail.com','Jr. Lima','650-509-486','SO','M','07/02/1997');
    SP_TPERSONA('Kelly','Chung','45365489','KCHUNG@gmail.com','Jr. Lima','650-505-186','SO','M','14/06/1995');
    SP_TPERSONA('Jennifer','Dilly','45365489','JDILLY@gmail.com','Jr. Lima','650-505-286','SO','M','13/08/1995');
    SP_TPERSONA('Timothy','Gates','45365489','TGATES@gmail.com','Jr. Lima','650-505-386','SO','M','11/07/1996');
    SP_TPERSONA('Randall','Perkins','45365489','RPERKINS@gmail.com','Jr. Lima','650-505-486','SO','M','19/12/1997');
    SP_TPERSONA('Sarah','Bell','45365489','SBELL@gmail.com','Jr. Lima','650-501-186','SO','M','04/02/1994');
    SP_TPERSONA('Britney','Everett','45365489','BEVERETT@gmail.com','Jr. Lima','650-501-286','SO','M','03/03/1995');
    SP_TPERSONA('Samuel','McCain','45365489','SMCCAIN@gmail.com','Jr. Lima','650-501-386','SO','M','01/07/1996');
    SP_TPERSONA('Vance','Jones','45365489','VJONES@gmail.com','Jr. Lima','650-501-486','SO','M','17/03/1997');
    SP_TPERSONA('Alana','Walsh','45365489','AWALSH@gmail.com','Jr. Lima','650-507-981','SO','M','24/04/1996');
    SP_TPERSONA('Kevin','Feeney','45365489','KFEENEY@gmail.com','Jr. Lima','650-507-982','SO','M','23/05/1996');
    SP_TPERSONA('Donald','OConnell','45365489','DOCONNEL@gmail.com','Jr. Lima','650-507-983','SO','M','21/06/1997');
    SP_TPERSONA('Douglas','Grant','45365489','DGRANT@gmail.com','Jr. Lima','650-507-984','SO','M','13/01/1998');
    SP_TPERSONA('Jennifer','Whalen','45365489','JWHALEN@gmail.com','Jr. Lima','515-123-444','SO','M','17/09/1993');
    SP_TPERSONA('Michael','Hartstein','45365489','MHARTSTE@gmail.com','Jr. Lima','515-123-555','SO','M','17/02/1994');
    SP_TPERSONA('Pat','Fay','45365489','PFAY@gmail.com','Jr. Lima','603-123-666','SO','M','17/08/1995');
    SP_TPERSONA('Susan','Mavris','45365489','SMAVRIS@gmail.com','Jr. Lima','515-123-777','SO','M','07/06/1992');
    SP_TPERSONA('Hermann','Baer','45365489','HBAER@gmail.com','Jr. Lima','515-123-888','SO','M','07/06/1992');
    SP_TPERSONA('Shelley','Higgins','45365489','SHIGGINS@gmail.com','Jr. Lima','515-123-800','SO','M','07/06/1992');
    SP_TPERSONA('William','Gietz','45365489','WGIETZ@gmail.com','Jr. Lima','515-123-811','SO','M','07/06/1992');

END;