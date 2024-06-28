      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERADORES-LOGICOS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  A           PIC 9(4).99 VALUE 0.
       77  B           PIC 9(4) VALUE 0.
       77  C           PIC 9(4) VALUE 0.
       77  RESTO       PIC 9(4) VALUE 0.
       77  COCIENTE    PIC 9(4) VALUE 0.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "iNGRESE PRIMER NUMERO"
            ACCEPT A.
            DISPLAY "INGRESE SEGUNDO NUMERO"
            ACCEPT B.
            DISPLAY "INGRESE TERCER NUMERO"
            ACCEPT C.
            DISPLAY " "
            DISPLAY "A= "A " - B= "B " - C= "C.
      *CONDICION AND
           IF (A=B) AND (B=C)
               DISPLAY "A, B Y C SON IGUALES"
           ELSE
               DISPLAY "A, B Y C SON DIFERENTES"
           END-IF.
      *CONDICIOIN OR
           IF (A>B) OR (B>C)
               DISPLAY "A O B SON MAYORES QUE C"
           ELSE
               DISPLAY "A O B NO SON MAYORES QUE C"
           END-IF.
      *CONDICION OR NOT
           IF (A=B) OR NOT (B=C)
               DISPLAY "A Y B SON IGUALES PERO B Y C SON DIFERENTES"
           ELSE
               DISPLAY "A Y B SON DIFERENTES O B Y C SON IGUALES"
           END-IF.


            STOP RUN.
       END PROGRAM OPERADORES-LOGICOS.
