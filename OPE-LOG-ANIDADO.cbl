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
           77  A1   PIC S9(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "ESCRIBA UN NUMERO"
            ACCEPT A1.
            IF (A1 < 0)
                DISPLAY A1," ES UN NUMERO NEGATIVO"
                ELSE
                    IF (A1 = 0)
                        DISPLAY A1," ES CERO"
                        ELSE
                            DISPLAY A1," ES UN NUMERO POSITIVO"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
