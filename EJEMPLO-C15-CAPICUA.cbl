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
           77 I PIC 9(2).
           77 J PIC 9(2).
           77 ET PIC 9(2).
           01 TABLA.
               05 ELEMENTOS OCCURS 100 TIMES.
               10 ELEMENTO PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE CANTIDAD DE ELEMENTOS DE LA TABLA:"
            ACCEPT ET

            PERFORM VARYING I FROM 1 BY 1 UNTIL I > ET
               DISPLAY "INGRESE "I " ELEMTENTO"
               ACCEPT ELEMENTO(I)
            END-PERFORM

            MOVE 1 TO I
            MOVE ET TO J

      *COMPARO EL PRIMER Y ULTIMO HASTA Q EL INDICE I SEA MAYOR Q J
            PERFORM UNTIL I > J
               IF ELEMENTOS(I) = ELEMENTOS(J) THEN
                   ADD 1 TO I
                   SUBTRACT 1 FROM J
                   ELSE
                       DISPLAY "LA TABLA NO ES CAPICUA"
                       STOP RUN
               END-IF
            END-PERFORM

            DISPLAY "LA TABLA ES CAPICUA"

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
