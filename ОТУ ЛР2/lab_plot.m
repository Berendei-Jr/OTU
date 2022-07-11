function lab_plot(W)

   figure;
   clf;
   subplot(3,2,1)
   [x,t]=step(W, 4);
   plot(t, x);
   grid minor;
   grid on;
   title('Переходная функция')
   xlabel('Время, с')
   
   subplot(3,2,2)
   [x,t]=impulse(W, 4);
   plot(t, x);
   grid minor;
   grid on;
   title('Весовая функция')
   xlabel('Время, с')
   
   [magn,phas,w] = bode(W);
   subplot(3,2,3)
   plot(w,20*log10(magn(:)))
   set(gca, 'XScale', 'log')
   grid minor;
   grid on;
   title('ЛАЧХ')
   xlabel('Частота, Гц')
   ylabel('Амплитуда, Дб')
   subplot(3,2,4)
   plot(w,phas(:))
   set(gca, 'XScale', 'log')
   grid minor;
   grid on;
   title('ЛФЧХ')
   xlabel('Частота, Гц')
   ylabel('Фаза, градусы')
   
   subplot(3,2,[5,6])
   nyquist(W)
   grid minor;
   grid on;
   title('Годограф Найквиста')
   
end
   