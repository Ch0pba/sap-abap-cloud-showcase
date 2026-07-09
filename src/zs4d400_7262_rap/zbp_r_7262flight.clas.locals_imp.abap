CLASS LHC_ZR_7262FLIGHT DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Flight
        RESULT result,
      validationPrice FOR VALIDATE ON SAVE
            IMPORTING keys FOR Flight~validationPrice.
ENDCLASS.

CLASS LHC_ZR_7262FLIGHT IMPLEMENTATION.

  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.


  METHOD validationPrice.

  DATA failed_record LIKE LINE OF failed-flight.
  DATA reported_record LIKE LINE OF reported-flight.

  READ ENTITIES OF ZR_7262FLIGHT IN LOCAL MODE
        ENTITY Flight
        FIELDS ( Price )
        WITH CORRESPONDING #( Keys )
        RESULT DATA(flights).

  LOOP AT flights INTO DATA(flight).
  IF flight-price <= 0.

    failed_record-%tky = flight-%tky.
    APPEND failed_record TO failed-flight.

    reported_record-%tky = flight-%tky.
    reported_record-%msg = new_message(
                      id       = '/LRN/S4D400'
                      number   = '101'
                      severity = ms-error ).
    APPEND reported_record TO reported-flight.

  ENDIF.
ENDLOOP.
  ENDMETHOD.

ENDCLASS.
