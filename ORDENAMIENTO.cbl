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
         77 N PIC 9.
         77 I PIC 9.
         77 TEMP PIC 99.
         01 MI-ARRAY.
         05 ELEMENTOS OCCURS 5 TIMES.
         10 ELEMENTO PIC 9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 5 TO ELEMENTO(1)
           MOVE 1 TO ELEMENTO(2)
           MOVE 4 TO ELEMENTO(3)
           MOVE 2 TO ELEMENTO(4)
           MOVE 8 TO ELEMENTO(5)

            DISPLAY "ARRAY SIN ORDENAR"
            PERFORM MOSTRAR-ARRAY

            PERFORM ORDENAR-ARRAY
            DISPLAY "ARRAY ORDENADO"
            PERFORM MOSTRAR-ARRAY

            STOP RUN.

      *FUNCION PARA MOSTRAR CADA ELEMENTO DEL ARRAY
           MOSTRAR-ARRAY.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I>5
               DISPLAY "ELEMENTO " I " : " ELEMENTOS(I)
           END-PERFORM.

      *FUNCION PARA ORDENAR EL ARRAY
           ORDENAR-ARRAY.
           MOVE 5 TO N.
           PERFORM UNTIL N = 1
               MOVE 1 TO I
               PERFORM UNTIL I = N - 1
                 IF ELEMENTO(I) > ELEMENTO(I + 1)
                    MOVE ELEMENTO(I) TO TEMP
                    MOVE ELEMENTO(I + 1) TO ELEMENTO(I)
                    MOVE TEMP TO ELEMENTO(I + 1)
                 END-IF
                 ADD 1 TO I
               END-PERFORM
               SUBTRACT 1 FROM N
           END-PERFORM.

       END PROGRAM YOUR-PROGRAM-NAME.
