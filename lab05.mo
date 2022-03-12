model lab05
parameter Real a=0.83; //коэф естественной смертности хищников 
parameter Real b=0.82; //коэф естественного прироста жертв
parameter Real c=0.083;// коэф увеличения числа хищников 
parameter Real d=0.082;// коэф смертности жертв 

//parameter Real x0=8;  //нач усл
//parameter Real y0=16; //нач усл

parameter Real x0=0.82/0.082;   //b/d 
parameter Real y0=0.83/0.083;  // a/c

Real x(start=x0);
Real y(start=y0);

equation
der(x) = -a*x+c*x*y;
der(y) = b*y - d*x*y;
end lab05;
