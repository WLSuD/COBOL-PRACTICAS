      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ARRAYS.
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
           REINICIO.
               DISPLAY "INGRESE UN INDICE ENTRE EL 1-5"
               ACCEPT I.
               IF I>0 AND I<6
                   DISPLAY "EL NUMERO EN EL INDICE "I " ES " NUMEROS(I)
                   ELSE
                       DISPLAY "INDICE ERRONEO"
                       GO TO REINICIO.
            STOP RUN.
       END PROGRAM ARRAYS.
