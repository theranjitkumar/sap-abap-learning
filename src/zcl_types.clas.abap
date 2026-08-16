CLASS zcl_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_types IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA(lv_name) = 'John Doe'.
    out->write( |'Hello World' { lv_name } | ).
  ENDMETHOD.

ENDCLASS.
