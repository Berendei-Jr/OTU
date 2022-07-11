T1 = 0.7;
K1 = 1.6;
K = 1;
T = 0.1;
t = 25;
delta = 2;
sample = 0.5;

W = tf(K*K1, [T*T1, (T+T1), 1, K*K1]);
subplot(1, 2, 1)
step(W, t);
grid on
subplot(1, 2, 2)
impulse(W, t);
grid on