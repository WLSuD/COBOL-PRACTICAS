      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BISIESTO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 ANIO     PIC 9(4) VALUE 0.
           77 REST04   PIC 9(2) VALUE 0.
           77 REST100  PIC 9(2) VALUE 0.
           77 REST400  PIC 9(2) VALUE 0.
           77 COCIENTE PIC 9(2) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE UN AÑO"
            ACCEPT ANIO.
            DIVIDE ANIO BY 4 GIVING COCIENTE REMAINDER REST04.
            DIVIDE ANIO BY 100 GIVING COCIENTE REMAINDER REST100.
            DIVIDE ANIO BY 400 GIVING COCIENTE REMAINDER REST400.
      *AÑO BISIESTO SI MULTIPLO DE 4 O 400 Y NO DE 100
           IF (REST04 = 0 OR REST400 = 0) AND (REST100 NOT= 0)
               DISPLAY ANIO,"/4 RESTO = "REST04
               DISPLAY ANIO,"/100 RESTO = "REST100
               DISPLAY "EL AÑO ",ANIO, " ES BISIESTO"
           ELSE
               DISPLAY ANIO,"/4 RESTO = "REST04
               DISPLAY ANIO,"/100 RESTO = "REST100
               DISPLAY "EL AÑO ",ANIO, " NO ES BISIESTO"
           END-IF
            STOP RUN.
       END PROGRAM BISIESTO.
