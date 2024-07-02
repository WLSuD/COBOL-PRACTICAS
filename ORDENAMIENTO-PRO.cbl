      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
        77 NR PIC 9(2).
        77 TEMP PIC 9(2).
        77 I PIC 9.
        77 NRT PIC 9(2).
        01 MI-ARRRAY.
        05 REGISTROS OCCURS 100 TIMES.
        10 REGISTRO PIC 9(2).


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE EL NUMERO DE REGISTROS: "
            ACCEPT NR

            PERFORM REGISTROS-NUMEROS
            DISPLAY "NUMEROS REGISTRADOS"
            PERFORM MOSTRAR-REGISTROS
            PERFORM ORDENA-REGISTROS
            DISPLAY "NUMEROS ORDENADOS"
            PERFORM MOSTRAR-REGISTROS

            STOP RUN.

      *FUNCION DE REGISTROS
           REGISTROS-NUMEROS.
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NR
                   DISPLAY "INGRESE EL "I " NUMERO: "
                   ACCEPT REGISTRO(I)
               END-PERFORM.

      *FUNCION MOSTRAR REGISTROS
           MOSTRAR-REGISTROS.
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NR
                   DISPLAY "EN "I " : " REGISTROS(I)
               END-PERFORM.

      *FUNCION ORDENAR REGISTROS
           ORDENA-REGISTROS.
               PERFORM NR TIMES
                   MOVE 1 TO I
                   PERFORM UNTIL I >= NR
                       IF REGISTROS(I) > REGISTROS(I + 1)
                           MOVE REGISTROS(I) TO TEMP
                           MOVE REGISTROS(I + 1) TO REGISTROS(I)
                           MOVE TEMP TO REGISTROS(I + 1)
                       END-IF
                       ADD 1 TO I
                   END-PERFORM
               END-PERFORM.

       END PROGRAM YOUR-PROGRAM-NAME.
