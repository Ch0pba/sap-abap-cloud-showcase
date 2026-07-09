CLASS zcl_7262_copy DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_7262_COPY IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS z7262flight TYPE tabname VALUE 'Z7262FLIGHT'.

    TRY.
        DATA(copier) = NEW lcl_copy_data( z7262flight ).
        copier->copy_data( ).

        out->write( |{ z7262flight } was filled with data| ).

      CATCH cx_abap_not_a_table.

        out->write( |{ z7262flight } is not a table of the right type.| ).

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
