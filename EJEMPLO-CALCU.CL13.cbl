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

           01 OPCIONES PIC X VALUE SPACES.
               88 SUMAR VALUE "+".
               88 RESTAR VALUE "-".
               88 MULTIPLICAR VALUE "*".
               88 DIVIDIR VALUE "/".
               88 SALIR VALUE "S".

           77 N1 PIC 999 VALUE ZEROS.
           77 N2 PIC 999 VALUE ZEROS.
           77 RESULTADO PIC S999999 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *MENU DE OPCIONES
           MENU.
               DISPLAY "INGRESE UNA OPCION: "
               DISPLAY "SUMAR (+)"
               DISPLAY "RESTAR (-)"
               DISPLAY "MULTIPLICAR (*)"
               DISPLAY "DIVIDIR (/)"
               DISPLAY "SALIR (S)"
               ACCEPT OPCIONES.

           IF SUMAR THEN
               PERFORM SUMA
           ELSE
               IF RESTAR THEN
                   PERFORM RESTA
               ELSE
                   IF MULTIPLICAR THEN
                       PERFORM MULTIPLICA
                   ELSE
                       IF DIVIDIR THEN
                           PERFORM DIVIDI
                       ELSE
                           IF SALIR
                               DISPLAY "SALIENDO DEL PROGRAMA"
                               STOP RUN
                           ELSE
                               DISPLAY "OPCION INVALIDA"
                               PERFORM MENU
                           END-IF
                       END-IF
                   END-IF
               END-IF
           END-IF.

      *INGRESO DE NUMEROS
           INGRESA-NUMEROS.
               DISPLAY "INGRESE EL PRIMER NUMERO: "
               ACCEPT N1
               DISPLAY "INGRESE EL SEGUNDO NUMERO: "
               ACCEPT N2.

      *SUMAR
           SUMA.
               DISPLAY "ELEGISTE SUMAR"
               PERFORM INGRESA-NUMEROS.
               ADD N1 TO N2 GIVING RESULTADO.
               DISPLAY "EL RESULTADO ES: "RESULTADO
               PERFORM MENU.

      *RESTAR
           RESTA.
               DISPLAY "ELEGISTE RESTAR"
               PERFORM INGRESA-NUMEROS.
               SUBTRACT N1 FROM N2 GIVING RESULTADO.
               DISPLAY "EL RESULTADO ES : "RESULTADO
               PERFORM MENU.

      *MULTIPLICAR
           MULTIPLICA.
               DISPLAY "ELEGISTE MULTIPLICAR"
               PERFORM INGRESA-NUMEROS.
               MULTIPLY N1 BY N2 GIVING RESULTADO.
               DISPLAY "EL RESULTADO ES : "RESULTADO
               PERFORM MENU.

      *MULTIPLICAR
           DIVIDI.
               DISPLAY "ELEGISTE DIVIDIR"
               PERFORM INGRESA-NUMEROS.
               MULTIPLY N1 BY N2 GIVING RESULTADO.
               DISPLAY "EL RESULTADO ES : "RESULTADO
               PERFORM MENU.


       END PROGRAM YOUR-PROGRAM-NAME.
