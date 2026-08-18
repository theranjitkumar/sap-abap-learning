CLASS zcl_abap_conditions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_abap_conditions IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    " This method is called when the class is executed in ADT
    DATA: lv_value TYPE i.

    " Example of using conditions
    lv_value = 10.

    IF lv_value > 5.
      out->write( `Value is greater than 5` ).
    ELSEIF lv_value = 5.
      	out->write( 'Value is equal to 5' ).
    ELSE.
      	out->write( 'Value is less than 5' ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
