%Función ode45 que resuelve numericamente el sistema MRA%
[t,x]=ode45(@PD,[0 20], [0 0.610865 0 0]);
%Se crea la gráfica x respecto de t; x y t son parametros que retorna la función ode45%
hold off
figure(1)
plot(t,x(:,3));
grid on
hold on
title("Posición");
xlabel("Tiempo");
ylabel("Radianes");
plot(t,x(:,4));
grid on
title("Velocidad");
xlabel("Tiempo");
ylabel("Radianes/Segundo");