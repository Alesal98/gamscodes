positive Variables 
  x1 corn
  x2 wheat
  x3 cottom;

  free variable
   z revenue

equations
  eq_obj
  eq_land
  eq_work;

 eq_obj..  z=e=109*x1+90*x2+115*x3;
 eq_land..  x1+x2+x3=l=100;  
 eq_work..  6*x1+4*x2+8*x3=l=500;

model use /all/
 solve use using mip maximizing z;
 
execute_unload "es2.gdx"
 
  