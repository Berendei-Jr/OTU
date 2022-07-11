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

%% Дискретная система для экстраполяции нулевого порядка 

Wd1 = c2d(W, sample);
subplot(1, 2, 1)
step(W, t);
title('Непрерывная система')
grid on
subplot(1, 2, 2)
step(Wd1, t);
title('Дискретная система')
grid on

%% Дискретная система в представлении по методу билинейно аппроксимации Тастина 

Wd2 = c2d(W, sample, 'tustin');
subplot(1, 2, 1)
step(W, t);
title('Непрерывная система')
grid on
subplot(1, 2, 2)
step(Wd2, t);
title('Дискретная система')
grid on

%% 3 системы 

step(W, t, 'b');
hold on
step(Wd1, t, 'k');
hold on
step(Wd2, t, 'r')
grid on

%% Без задержки и с ней
Wd1 = c2d(W, sample);
step(Wd1, t, 'r')
hold on
Wd1.InputDelay = 2;
step(Wd1, t, 'g')
grid on



