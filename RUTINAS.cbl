      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. RUTINAS.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 I PIC 9 VALUE 0.
           01 NUMEROS OCCURS 5 TIMES.
           02 NUMERO PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *ASIGANACION DE LOS VALORES A CADA ELEMENTO DEL ARRAY
           MOVE 10 TO NUMERO(1).
           MOVE 50 TO NUMERO(2).
           MOVE 52 TO NUMERO(3).
           MOVE 84 TO NUMERO(4).
           MOVE 54 TO NUMERO(5).
      *BEGIN E SUNA ETIQUETA PARA RETORNAR Y REINICIAR PROCESO
               DISPLAY "LOS NUMEROS DE ARRAY SON "
      *SE RECORRE EL ARRAY CON EL CICLO "PERFORM"
           PERFORM UNTIL I = 5
               ADD 1 TO I
               DISPLAY NUMEROS(I)
               END-PERFORM
           STOP RUN.
       END PROGRAM RUTINAS.
