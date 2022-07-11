T1 = 0.7;
K1 = 1.6;

T = 0.1;
K = 1;
K = 7.15;


A = [0.4, 2.16, 3.3, 13];

w=0.001:0.01:4;
GM=freqs(A, 1, w);
U=real(GM);
V=imag(GM);
plot(U,V);
hold on
plot(0,0,'r+');
grid on
grid minor
title('Годограф Михайлова')
xlabel('Real')
ylabel('Imaginary')
hold off

%%
t = [0.1, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0];
k_kr = [7.15, 2.15, 1.52, 1.32, 1.21, 1.14, 1.11, 1.06, 1.04, 1.03, 1.02];
plot (t, k_kr);
hold on
title ('Граница устойчивости');
grid minor
grid on
ylabel('K_к_р');
xlabel('T')
plot(0.7, 0.1, 'r+')
text(0.7, 0.5, 'A1')
plot(1.7, 3, 'r+')
text(1.7, 3.3, 'A2')
plot(4.5, 1.0313, 'r+')
text(4.5, 1.3, 'A3')
hold off

%% A1 (ниже границы)
T = 0.7;
K = 0.1;
W1r = tf(K*K1, [T1*T, T1+T, 1, 0]);
W1z = tf(K*K1, [T1*T, T1+T, 1, K*K1]);
lab4_plot(W1r, W1z);

%% A2 (выше границы)
T = 1.7;
K = 3;
W2r = tf(K*K1, [T1*T, T1+T, 1, 0]);
W2z = tf(K*K1, [T1*T, T1+T, 1, K*K1]);
lab4_plot(W2r, W2z);

%% A3 (на границе)
T = 4.5;
K = 1.0313;
W3r = tf(K*K1, [T1*T, T1+T, 1, 0]);
W3z = tf(K*K1, [T1*T, T1+T, 1, K*K1]);
lab4_plot(W3r, W3z);