
# Luna operator precedence

    operator       |  associativity
    ---------------|---------------
    [ ] ( ) sp     |  left
    ++ --          |  right
    ! ~ + -        |  right
    * / %          |  left
    + -            |  left
    << >>          |  left
    < <= > >=      |  left
    == !=          |  left
    &              |  left
    ^              |  left
    |              |  left
    &&             |  left
    ||             |  left
    ?:             |  right
    = += -=        |  right
    not            |  right
    ,              |  left
    if unless      |  left
    while until

