# DB ORACLE
^^[Ejemplo](http://jeanmazuelos.com/biblioteca/cursos/oracle-plsql-basico/capitulo-6-procedimientos-y-procedimientos-almacenados) /
[Manual Oracle](https://jorgesanchez.net/manuales/sql/intro-sql-sql2016.html) / 
[Funciones](http://ora.u440.com/numeros/extract.html) / 
[Manual Oracle](https://docs.oracle.com/cloud/help/es/reportingcs_use/BILPD/GUID-4CBCE8D4-CF17-43BD-AAEF-C5D614A8040A.htm#BILUG684) / 
## Funciones
### Funciones de cadena
Son para manipular los strings. 

| Función    | Ejemplo       |Resultado         |Descripción    |
|:-------------:|:-------------:|:-------------:|:-------------:|
|CONCAT(char1,char2)|```SELECT CONCAT('Juan','Limas') FROM DUAL; ```|Juan Limas|Concatena dos caracteres|
|LENGTH(char)|```SELECT LENGTH('Juan Limas') FROM DUAL; ```|10|Devuelve el número de caracteres de una String, **Cuenta los espacios*|
|REPLACE(char, search [,change])|```SELECT REPLACE('Juan Limas','Juan','Pedro') FROM DUAL; ```|Pedro Limas|Reemplace el string indicado|
|UPPER(char)|```SELECT UPPER('Juan Limas') FROM DUAL; ```|JUAN LIMAS|Devuelve strings en Mayusculas|
|INITCAP(char)|```SELECT INITCAP('juan limas') FROM DUAL; ```|Juan Limas|Devuelve cada palabra enpezando con Mayusculas|
|LOWER(char)|```SELECT LOWER('JUAN LIMAS') FROM DUAL; ```|juan limas|Devuelve strings en minusculas|
|RPAD(char1, n [,char2])|```SELECT RPAD('Juan Limas',15,'-') FROM DUAL; ```|Juan Limas-----|Rellena el string a la derecha con la longitud __*n*__ y con el caracter definido __*char2*__ |
|LPAD(char1, n [,char2])|```SELECT RPAD('Juan Limas',15,'-') FROM DUAL; ```|-----Juan Limas|Rellena el string a la izquierda con la longitud __*n*__ y con el caracter definido __*char2*__ |
|SUBSTR(char, m [, n])|```SELECT SUBSTR('Juan Limas',4,5) FROM DUAL; ```|n Lim|Devuelve un string de __*n*__ caracteres a partir de la posición __*m*__, si es __*-m*__ empieza a contar desde el final |
|VNL(expr1, expr2)|```SELECT VNL('Juan Limas',4,5) FROM DUAL; ```|n Lim| |
|DECODE(expr1, expr2)|```SELECT VNL(nota,11,'Aporbado','Desaprobado') FROM DUAL; ```|n Lim| |

### __TRIM__ 
```TRIM(LEADING|TRAILING|BOTH trim_char FROM trim_source)```

Si no especificamos trim_character, se quitan los espacios en blanco.
Finalmente si solo ponemos trim_source quita blancos por delante y por detras.

| Función       | Ejemplo       |Resultado      |Descripción    |
|:-------------:|:-------------:|:-------------:|:-------------:|
| TrimBoth      |`Trim(BOTH '_' FROM '_Juan_');` o  `SELECT TRIM('     PEPE PEREZ      ') FROM DUAL;`|Juan|Elimina los caracteres iniciales y finales especificados de una cadena de caracteres.|
| TrimLeading   | ```Trim(LEADING '_' FROM '_Juan')``` |Juan|Elimina los caracteres iniciales especificados de una cadena de caracteres.|
| TrimTrailing  | ```Trim(TRAILING '_' FROM 'Juan_')``` |Juan|Elimina los caracteres finales especificados de una cadena de caracteres.|
| LTRIM(char, [,set])  | ```SELECT LTRIM('       Juan Limas') FROM DUAL;``` |Juan Limas|por defecto Elimina los espacios de la inquierda, puedes definir el caracter que deseas eliminar.
| RTRIM(char, [,set])  | ```SELECT LTRIM('Juan Limas       ') FROM DUAL;``` |Juan Limas|por defecto Elimina los espacios de la derecha, puedes definir el caracter que deseas eliminar.


### Funciones matemáticas
Permite hacer operaciones matemáticas

| Función       | Ejemplo       |Resultado      |Descripción    |
|:-------------:|:-------------:|:-------------:|:-------------:|
|ROUND(n [,m])  |`SELECT ROUND(99.5452,2) FROM DUAL;`|99.55|Redondea __*n*__ con __*m*__ decimales, por defecto __m=0__|
|FLOOR(n)  |`SELECT FLOOR(99.995) FROM DUAL;`|99|Redondea __*n*__ al entero menor|
|CEIL(n)  |`SELECT CEIL(99.125) FROM DUAL;`|100|Redondea __*n*__ al entero mayor|
|MOD(m,n)  |`SELECT MOD(7,2) FROM DUAL;`|1|Devuelve el resto de la division(Módulo)|
|LEAST(n1,n2,n3,...)  |`SELECT LEAST(99,45,67,4,2,11,1) FROM DUAL;`|1|Devuelve el menor valor de la lista|
|GREATEST(n1,n2,n3,...)  |`SELECT GREATEST(99,45,67,4,2,11,1) FROM DUAL;`|99|Devuelve el mayor valor de la lista|
|Pi(n1,n2,n3,...)  |`SELECT Pi() FROM DUAL;`||Devuelve la constante pi.|
|suma()  |`SELECT Pi() FROM DUAL;`||Devuelve la suma de la columna|

