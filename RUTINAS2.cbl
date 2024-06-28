      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RUTINA-PROMEDIO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 MY-ARRAY.
           02 MY-ELEMENTS OCCURS 5 TIMES.
           03 ELEMENT PIC 9(2).
       PROCEDURE DIVISION.
           MOVE 10 TO ELEMENT(1)
           MOVE 60 TO ELEMENT(2)
           MOVE 90 TO ELEMENT(3)
           MOVE 80 TO ELEMENT(4)
           MOVE 50 TO ELEMENT(5)

           DISPLAY "ARRAY ELEMENTOS: "
           PERFORM DISPLAY-ELEMENTOS

            STOP RUN.

           DISPLAY-ELEMENTOS.
           DISPLAY "ELEMENTO 1: "ELEMENT(1)
           DISPLAY "ELEMENTO 2: "ELEMENT(2)
           DISPLAY "ELEMENTO 3: "ELEMENT(3)
           DISPLAY "ELEMENTO 4: "ELEMENT(4)
           DISPLAY "ELEMENTO 5: "ELEMENT(5).
