      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM_EJER.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 I PIC 9(2).
           77 NR PIC 9(2).
           77 RN PIC A(2).
           01 MY-ARRAY.
               05 REGISTROS OCCURS 100 TIMES.
               10 REGISTRO PIC X(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE NUMERO DE REGISTROS: "
            ACCEPT NR

            PERFORM REGISTRAR
            DISPLAY "REGISTROS"
            PERFORM MOSTRAR-REGISTROS

            STOP RUN.



      *PERFORM REGISTRAR
           REGISTRAR.
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NR
                   DISPLAY "INGRESE EL " I " NUMERO: "
                   ACCEPT RN
                   IF RN IS ALPHABETIC THEN
                       DISPLAY "EL VALOR " RN " NO ES NUMERICO"
                           SUBTRACT 1 FROM I
                       ELSE
                           MOVE RN TO REGISTRO(I)
                   END-IF
               END-PERFORM.

      *PERFORM MOSTRAR REGISTROS
           MOSTRAR-REGISTROS.
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > NR
                   DISPLAY "REGISTRO " I " : "REGISTROS(I)
               END-PERFORM.

       END PROGRAM PERFORM_EJER.
