      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES-MAT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
             01 var1 PICTURE 9(4).
             01 var2 PICTURE 9(4).
             01 resu PICTURE 9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese la variable 1".
            ACCEPT var1.
            DISPLAY "La variable 1 es: ", var1.
      *
            DISPLAY "Ingrese la variable 2".
            ACCEPT var2
            DISPLAY "Lavariable 2 es: ", var2.
      *OPERACIONES MATEMATICAS.
            ADD var1, var2 GIVING resu.
            DISPLAY "La suma de las variables es: ",resu.
            SUBTRACT var2 FROM var1 GIVING resu.
            DISPLAY "La resta de las variables es: ",resu.
            MULTIPLY var1 BY var2 GIVING resu.
            DISPLAY "La multiplicacion de las variables es: ", resu.
            DIVIDE var1 BY var2 GIVING resu.
            DISPLAY "La division de las variables es: ", resu.
            COMPUTE resu = (var1+var2)/var2.
            DISPLAY "El resultado de la operacione es: ", resu.
            IF resu >9 DISPLAY "El resultado mayor de 9"
                ELSE
                    DISPLAY "El resultado menor de 9".
            STOP RUN.
       END PROGRAM OPERACIONES-MAT.
