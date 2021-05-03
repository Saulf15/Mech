q0 = 10;
R = 60;
L = 9;
C = 0.00005;
t =  linspace(0,0.8,100);
q = q0*exp((-R*t)/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2)*t);
subplot(1,1,1);
plot(q,t);
xlabel('time');
ylabel('capacitor');
q2 = q0*exp((-R*t)/(2*L)).*cos(sqrt((1/(L*0.0005))-(R/(2*L))^2)*t);
hold on
grid on
figure;
plot(q2,t);
xlabel('time');
ylabel('capacitor');
hold on
grid on 

