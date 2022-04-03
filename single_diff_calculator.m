clear all;clc;close all;

syms Voutp Voutm Vin Vref Vdiff R1 R2 R3 R4 

equ1 = Vref * (R4 / (R3 + R4)) * (1 + (R2/R1)) - Vin * (R2/R1) == Voutm;
equ2 = Vin * (1 + (R2/R1)) - Vref * (R4/(R3 + R4)) * (1 + (R2/R1)) == Vdiff;
equ3 = Voutp == Vin;




equ = solve([equ1, equ2, equ3], Voutm, Vdiff, Vin)

[num,den] = numden(simplify(equ.Voutm))

r1 =1000;
r2 =1000; 
r3 = 1000;
r4 = 1000;
VIn = 5;
Vre = 5;

Voutm = vpa(subs(eqn.Voutm,...
    [R1, R2, R3, R4, Vin, Vref],...
    [r1, r2, r3, r4, VIn, Vre]),...
    10);

Voutp = vpa(subs(eqn.Vdiff,...
    [R1, R2, R3, R4, Vin, Vref],...
    [r1, r2, r3, r4, VIn, Vre]),...
    10);

Vdiff = vpa(subs(eqn.Voutp,...
    [R1, R2, R3, R4, Vin, Vref],...
    [r1, r2, r3, r4, VIn, Vre]),...
    10);



