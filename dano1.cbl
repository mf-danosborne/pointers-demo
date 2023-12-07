      * Pointer dereferencing - typed pointers

       01 type1 typedef.                  *> typedef name/typedef compnent.
          03 component-1 pic x(10) value "ha-ha".       *> typedef component
          03 component-2 pic xxxx comp-5. *> typedef component
 
       01 ptr-type1 pointer type1 typedef.
       01 p1 ptr-type1.                   *> typed pointer 
       01 p2 pointer ptr-type1.           *> a pointer to pointer of type1
 
       01 grp1 type1.
       01 grp2 type1.
 
       set p1 to address of grp1.
       set p2 to address of p1

      *> pointer : dereferencing. 
      *> Can do multiple layers of dereferencing if the typedef component is also a pointer

       move 10 to p2::ptr-type1::component-2
       move grp2 to p1::type1
       move grp2 to p2::ptr-type1::data
       display p2::ptr-type1::data.

      *> pointer AT dereferencing

       move 20 to component-2 at p1
       move data at p1 to grp2
       move type1 at p1 to grp2 *> also allowed
