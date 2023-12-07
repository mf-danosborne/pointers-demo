       01 type1 typedef.                  *> typedef name/typedef compnent.
         03 component-1 pic x(10).       *> typedef component
         03 component-2 pic xxxx comp-5. *> typedef component

       01 p1 pointer type1.

       01 grp1 type1.

       set p1 to address of grp1.
       move "hello" to p1::component-1.

       display "p1 is " p1::data.
       display data at p1.