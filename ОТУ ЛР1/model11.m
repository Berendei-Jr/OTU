function dx=model11(t,x)
dx=zeros(3,1);
y=1;
dx(1)=x(2);
dx(2)=x(3);



dx(3)=5*y-2*x(3)-4*x(2)-5*x(1);