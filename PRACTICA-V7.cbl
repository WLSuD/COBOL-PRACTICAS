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
           77 MES  PIC 9(2).
           77 RESTO PIC 9(2).
           77 COCIENTE PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE EL NUMERO DEL MES"
            ACCEPT MES.
            DIVIDE MES BY 2 GIVING COCIENTE REMAINDER RESTO.
            IF (MES >=1 AND MES<=7)
                IF (RESTO = 0)
                    DISPLAY "MES ",MES," TIENE 30 DIAS"
                    ELSE
                        DISPLAY "MES ",MES," TIENE 31 DIAS"
                END-IF
            ELSE
                IF (MES>7 AND MES<=12) AND (RESTO NOT= 0)
                    DISPLAY "MES ",MES," TIENE 30 DIAS"
                    ELSE
                        DISPLAY "MES ",MES," TIENE 31 DIAS"
                END-IF
            END-IF
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
