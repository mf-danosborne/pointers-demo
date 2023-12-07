      *> Pointer coercion

       01 type1 typedef.                  *> typedef name
          03 component-1 pic x(10).       *> typedef component
          03 component-2 pic xxxx comp-5. *> typedef component

       01 type2 typedef.                  
          03 component-1 pic x(10). 
          03 component-2 pic xxxx comp-5.

       01 p1 pointer type1.
       01 p2 pointer type2.
 
       01 grp1 type1.
       01 grp2 type2.

      *> Care must be taken using coerction. If the underlying data is
      *> not of the correct type, undefined behaviour can happen.

      *> These would produce syntax errors without the AS

           set p1 as type2 to address of grp2
 
           set p2 to p1 as type2

           move p1 as type2::component-1 to grp1::component-1

           move component-1 at p1 as type2 to component-1 of grp1

      *> See word docs for address of .. as
