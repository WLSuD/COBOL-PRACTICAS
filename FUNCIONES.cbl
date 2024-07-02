      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. FUNCIONES.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 WS-CADENA PICTURE IS XXXXX.
           77 WS-CADENA-ALFAB PIC A(30).
           77 WS-CADENA-ALFAN PIC X(30).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INGRESE UNA CADENA: ".
            ACCEPT WS-CADENA.
            DISPLAY "LA CADENA ES: ".
            DISPLAY "LONGITUD: "FUNCTION LENGTH(WS-CADENA).
            DISPLAY "MINUSCULA: "FUNCTION LOWER-CASE(WS-CADENA).
            DISPLAY "MAYUSCULA: "FUNCTION UPPER-CASE(WS-CADENA).
            DISPLAY "INGRESE UNA CADENA ALBETICA: ".
            ACCEPT WS-CADENA-ALFAB.
            DISPLAY "SU LONGITUD ES : "FUNCTION LENGTH(WS-CADENA-ALFAB).
            DISPLAY "INGRESE UNA CADENA ALFANUMERICA: ".
            ACCEPT WS-CADENA-ALFAN.
            DISPLAY "SU LONGITUD ES : "FUNCTION LENGTH(WS-CADENA-ALFAN).
            PERFORM ES-ALFABETICA.

            STOP RUN.

         ES-ALFABETICA.
           IF WS-CADENA-ALFAB IS ALPHABETIC THEN
               DISPLAY "LA CADENA ES ALFABETICA"
               ELSE
                   DISPLAY "LA CADENA NO ES ALFABETICA"
                   END-IF.
       END PROGRAM FUNCIONES.
