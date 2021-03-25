load JmpDecoder.hdl,
output-file JmpDecoder.out,
compare-to JmpDecoder.cmp,
output-list j1%B3.1.3 j2%B3.1.3 j3%B3.1.3 ng%B3.1.3 zr%B3.1.3 jmp%B3.1.3;

//000
set j1 0,
set j2 0,
set j3 0,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;

//001
set j3 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//010
set j3 0,
set j2 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//011
set j3 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//100
set j2 0,
set j3 0,
set j1 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//101
set j3 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//110
set j3 0,
set j2 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


//111
set j3 1,

set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set ng 1,
eval,
output;


