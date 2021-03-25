load Controller.hdl,
output-file Controller.out,
compare-to Controller.cmp,
output-list instruction%B0.16.0 zr%B3.1.3 ng%B3.1.3 loadA%B3.1.3 loadD%B3.1.3 step%B3.1.3 jump%B3.1.3 writeM%B3.1.3;

//A instruction :
set instruction %B0011000000111001,
set zr 0,
set ng 0,
eval,
output;

set instruction %B0101101110100000,
set zr 0,
set ng 0,
eval,
output;

set instruction %B1110000111110000,
set zr 0,
set ng 0,
eval,
output;

//C instruction :
set instruction %B1110110000010000;
set zr 0,
set ng 0,
eval,
output;


set instruction %B0000001111101011,
set zr 1,
set ng 0,
eval,
output;

set instruction %B1110001100001000,
set zr 0,
set ng 1,
eval,
output;

set ng 0,
eval,
output;

set instruction %B0000001111101100,
set zr 1,
set ng 0,
eval,
output;

set zr 0,
eval,
output;

set instruction %B1110001110011000,
set zr 0,
set ng 1,
eval,
output;

set instruction %B0000001111101000,
set zr 0,
set ng 1,
eval,
output;

set instruction %B1111010011110000,
set zr 0,
set ng 1,
eval,
output;

set instruction %B0000000000001110,
set zr 0,
set ng 1,
eval,
output;

set instruction %B1110001100000100,
set zr 0,
set ng 1,
eval,
output;
