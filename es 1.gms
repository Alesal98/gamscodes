*es 1

integer variables
 x1 cars
 x2 trucks;

free variable 
 z revenue;

equations
 eq_rev
 eq_brn
 eq_budget;

eq_rev.. z=e=2*x1+2.5*x2;
eq_brn.. x1=l=4-x2;
eq_budget.. x1+1.2*x2=l=3.6;

x2.up=2

model vintage /all/;
 solve vintage using mip maximizing z;
 
execute_unload "es1.gdx"
 
