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

           01 CLIENTE.
               05 ESTADO PIC 9.
               88 ACTIVO VALUE 1.
               88 INACTIVO VALUE 2.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            PERFORM REGISTRA-ESTADO
            PERFORM VERIFICA-ESTADO

            STOP RUN.

      *PERFORM REGISTRA ESTADO
           REGISTRA-ESTADO.
               DISPLAY "INGRESE EL ESTADO DEL CLIENTE: "
               DISPLAY "1-ACTIVO"
               DISPLAY "2-INACTIVO"
               ACCEPT ESTADO.

      *PERFORM VERIFICA ESTADO
           VERIFICA-ESTADO.
               IF ACTIVO THEN
                   DISPLAY "EL ESTADO DEL CLIENTE ES ACTIVO"
                   ELSE
                       IF INACTIVO THEN
                           DISPLAY "EL ESTADO DEL CLIENTE ES INACTIVO"
                       END-IF
               END-IF.

       END PROGRAM YOUR-PROGRAM-NAME.
