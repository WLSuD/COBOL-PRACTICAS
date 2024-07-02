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

           01 DIANUM PIC 9.
           01 DIANOM PIC X(20).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "INGRESE UN DIA DE LA SEMANA ENTRE 1 - 7"
            ACCEPT DIANUM

            EVALUATE DIANUM
               WHEN 1
                   MOVE "LUNES" TO DIANOM
               WHEN 2
                   MOVE "MARTES" TO DIANOM
               WHEN 3
                   MOVE "MIERCOLES" TO DIANOM
               WHEN 4
                   MOVE "JUEVES" TO DIANOM
               WHEN 5
                   MOVE "VIERNES" TO DIANOM
               WHEN 6
                   MOVE "SABADO" TO DIANOM
               WHEN 7
                   MOVE "DOMINGO" TO DIANOM
               WHEN OTHER
                   MOVE "VALOR ERRONEO" TO DIANOM
           END-EVALUATE

           DISPLAY "EL DIA INGRESADO ES: "DIANOM

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
