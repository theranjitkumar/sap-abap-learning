CLASS zcl_sap_hana_sql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sap_hana_sql IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    	  out->write( '=== Hello, SAP HANA SQL! ===').
* === SELECT ALL ====    	
*    	  SELECT * FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*    	
*    		  LOOP AT lt_booking INTO DATA(ls_booking).
*      		    out->write( |Flight: { ls_booking-client } { ls_booking-booking_date }| ).
*    	      ENDLOOP.
* === SELECT ALL END ====

* === SELECT columns ====

*    SELECT client, booking_date FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*      out->write( |Flight: { ls_booking-client } { ls_booking-booking_date } | ).
*    ENDLOOP.
* === SELECT columns END ====

* === SELECT DISTINCT columns ====        	
    	
*    SELECT DISTINCT client FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*      out->write( |Flight: { ls_booking-client } | ).
*    ENDLOOP.
* === SELECT DISTINCT columns END ====  	

* === Alias columns ====

    SELECT client AS Client_Id,
            booking_date AS Booking_DT
    FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.

    LOOP AT lt_booking INTO DATA(ls_booking).
      out->write( |Flight: { ls_booking-client_id } { ls_booking-booking_dt }  | ).

      out->write( '=== STOP DEBUGGER ===').
    ENDLOOP.
* === Alias columns END ====
    	
    	
    	
  	ENDMETHOD.


ENDCLASS.
