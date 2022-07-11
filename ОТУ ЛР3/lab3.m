T1 = 0.7;
K1 = 1.6;
K = 1;
T = 0.1;

B = [12];
A = [0.4 2.16 3.3 1];
W = tf(B, A);

r = 1;
a = 0;
b = 0;
theta = 0:pi/50:2*pi; 
x = a+r*cos(theta);
y = b+r*sin(theta);

w=0.8:0.01:15;
GM=freqs(B, A, w);
U=real(GM);
V=imag(GM);
plot(U,V);
hold on
plot(x,y,'g-')
plot(-1,0,'r+');
title('АФЧХ')
xlabel('Real')
ylabel('Imaginary')
grid minor
grid on
axis equal
hold off

%%
nyquist(W);
hold on
plot(x,y,'g-')
axis equal;
grid on;
grid minor;
hold off;

%%
margin(W);
grid on;
grid minor;