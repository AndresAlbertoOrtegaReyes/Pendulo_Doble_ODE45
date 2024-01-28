function dx=PD(t,x)
%--Definición de los parametros--%
m1=0.2;
L1=0.3;
m2=0.1;
L2=0.25;
g=9.81;
c1=0.2;
ft=0;
%----%
dx=zeros(4,1);
DT=x(2)-x(1)
%--Definición de la dinamica del sistema--%
dx(1)=x(3);
dx(2)=x(4);
dx(3)=(1/((m1+m2)*L1-m2*L1*(cos(DT)^2)))*(m2*L2*(x(4)^2)*sin(DT)-(m1+m2)*g*sin(x(1))-c1*x(3)+m2*g*sin(x(2))*cos(DT)+m2*L1*(x(3)^2)*cos(DT)*sin(DT));
dx(4)=(1/(L2-((m2*L2*(cos(DT)^2))/(m1+m2))))*(-L1*(x(3)^2)*sin(DT)-g*sin(x(2))-((m2*L2*(x(4)^2)*sin(DT)*cos(DT))/(m1+m2))+g*sin(x(1))*cos(DT)+((cos(DT)*c1*x(3))/(m1+m2)));