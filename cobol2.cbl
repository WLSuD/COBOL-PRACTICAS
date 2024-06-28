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
           01 var1 PICTURE 9(4).
           01 var2 PIC 9(4).
           01 resultado PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Ingrese variable 1".
           ACCEPT var1.
           DISPLAY var1.
           DISPLAY "Ingrese variable 2".
           ACCEPT var2.
           DISPLAY var2.
           ADD var1,var2 GIVING resultado.
           DISPLAY "la suma es ", resultado.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
