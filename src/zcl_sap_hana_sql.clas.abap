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

*    SELECT by client, booking_date FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*      out->write( |Flight: { ls_booking-client } { ls_booking-booking_date } | ).
*    ENDLOOP.
* === SELECT by columns END ====

* === SELECT DISTINCT columns ====        	
    	
*    SELECT DISTINCT client FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*      out->write( |Flight: { ls_booking-client } | ).
*    ENDLOOP.
* === SELECT DISTINCT columns END ====  	

* === Alias columns ====

*    SELECT client AS Client_Id,
*            booking_date AS Booking_DT
*    FROM /dmo/booking INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.
*
*    LOOP AT lt_booking INTO DATA(ls_booking).
*      out->write( |Flight: { ls_booking-client_id } { ls_booking-booking_dt }  | ).
*
*      out->write( '=== STOP DEBUGGER ===').
*    ENDLOOP.
* === Alias columns END ====

* === WHERE Condition ====

    SELECT DISTINCT client, booking_date
    FROM /dmo/booking WHERE booking_date = `20260512` OR booking_date = `20270322` INTO TABLE @DATA(lt_booking) UP TO 10 ROWS.

* Operators: =, <>, >, <, ,>=, <=  ||||  Logical: AND, OR, NOT

    LOOP AT lt_booking INTO DATA(ls_booking).
      out->write( |Flight: { ls_booking-client } { ls_booking-booking_date }  | ).

      out->write( '=== STOP DEBUGGER ===').
    ENDLOOP.
* === WHERE Condition END ====




* === BETWEEN / IN / LIKE ====

* === BETWEEN / IN / LIKE END ====

********* ++=== LEVEL 3 — Sorting & Limiting ===++********

* === ORDER BY ====

* === ORDER BY END ====

* === LIMIT / OFFSET ====

* === LIMIT / OFFSET END ====

********* ++=== LEVEL 3 — Aggregate Functions ===++********

* === Aggregate Functions ====

* === Aggregate Functions END ====

* === GROUP BY ====

* === GROUP BY END ====

* === HAVING ====

* === HAVING END ====

********* ++=== LEVEL 5 — SQL Joins ===++********

* === INNER JOIN ====

* === INNER JOIN END ====

* === LEFT OUTER JOIN ====

* === LEFT OUTER JOIN END ====
* RIGHT OUTER JOIN | FULL OUTER JOIN | CROSS JOIN | SELF JOIN | Multiple Joins
    	
  	ENDMETHOD.


ENDCLASS.
