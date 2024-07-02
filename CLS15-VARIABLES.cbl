      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *CONFIGURACION DEL PUNTO DECIMAL
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 DEC PIC 9(5)V9(2).
           01 FECHA.
      *UN SUBNIVEL NO PUEDE SER MAYOR QUE 59
               05 DIA PIC 9(2) VALUE 01.
               05 FILLER PIC X VALUE "/".
               05 MES PIC 9(2) VALUE 06.
               05 FILLER PIC X VALUE "/".
               05 AÑO PIC 9(4) VALUE 2024.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY DEC
            DISPLAY FECHA
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
