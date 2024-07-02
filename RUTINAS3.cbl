      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RUTINA_P9.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 NC PIC 9(2) VALUE 0.
           77 I PIC 9(2) VALUE 0.
           77 REG PIC 9(2).
           77 O PIC 9(2).
           77 SUS PIC 9(2) VALUE 0.
           77 N PIC 9(2) VALUE 0.
           01 NUMEROS OCCURS 100 TIMES.
           02 NUMERO PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "INGRESE LA DIMENSION DEL ARRAY"
           ACCEPT NC

           PERFORM UNTIL I = NC
               ADD 1 TO I
               DISPLAY "INGRESE EL NUMERO EN LA POSICION ",I
               ACCEPT REG
               MOVE REG TO NUMERO(I)
           END-PERFORM

           PERFORM UNTIL O = NC
               ADD 1 TO O
               MOVE NUMEROS(O) TO N
               COMPUTE SUS = SUS + N
           END-PERFORM

           COMPUTE SUS = (SUS/NC)
           DISPLAY "EL PROMEDIO ES: ",SUS

            STOP RUN.
