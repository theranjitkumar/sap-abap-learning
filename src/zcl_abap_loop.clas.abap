CLASS zcl_abap_loop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abap_loop IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    out->write( `Loop in sap abap` ).

    SELECT *
      FROM /dmo/flight
      INTO TABLE @DATA(lt_flights).

    IF lt_flights IS INITIAL.

      out->write( 'Data Not Found' ).

    ELSE.

      LOOP AT lt_flights INTO DATA(ls_flight).

        out->write(
          |{ ls_flight-carrier_id } { ls_flight-connection_id }|
        ).

      ENDLOOP.

    ENDIF.


  ENDMETHOD.

ENDCLASS.
