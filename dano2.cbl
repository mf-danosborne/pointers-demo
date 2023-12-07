      * Pointer dereferencing - Untyped pointers

       01 type1 typedef.                    *> typedef
           03 component-1 pic x(10) value "streets".        *> typedef component
           03 component-2 pic xxxx comp-5.  *> typedef component

       01 grp2 type1.    *> typed data item
       01 p3 pointer.    *> untyped pointer
       01 p4 pointer type1.
       01 x1 pic x(10).

       set p3 to address of grp2
       set p4 to address of grp2

      * Untyped pointers are allowed in these cases because
      * the size of the data can be infered from the syntax

      *> AT
       display data(1:10) at p3.
       move data(1:10) at p3 to x1
       move component-2 at p3 to x1
       
      *> ::

       move p3::data(1:10) to x1
       display x1
      *> :: is more restrictive only allowing typed pointer
       
       move p4::component-2 to x1
       display x1::component-2::data. 


