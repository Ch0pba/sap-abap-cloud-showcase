CLASS zcl_7262_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_7262_iterate IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA output TYPE TABLE OF string.
  CONSTANTS max_count TYPE i VALUE 20.
  DATA numbers TYPE  TABLE OF i.
  DO max_count TIMES.
    CASE SY-INDEX.
        WHEN 1.
            APPEND 0 TO numbers.
        WHEN 2.
            APPEND 1 TO numbers.
        WHEN OTHERS.
            APPEND numbers[ SY-INDEX - 1 ] + numbers[ SY-INDEX - 2 ] TO numbers.
    ENDCASE.
    DATA(counter) = 0.
    LOOP AT numbers INTO DATA(number).
        counter = counter + 1.
        APPEND |{ counter WIDTH = 4 ALIGN = LEFT }: { number WIDTH = 10 ALIGN = RIGHT }| TO output.
    ENDLOOP.
    out->write( data = output name = |The first { max_count } Fibonacci Numbers| ).
  ENDDO.
  ENDMETHOD.
ENDCLASS.
