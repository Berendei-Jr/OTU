function lab4_plot(Wr, Wz)

   figure;
   clf;
   subplot(3,2,1)
   step(Wz, 50);
   grid minor;
   grid on;
   title('Переходная функция')
   ylabel('Амплитуда, Дб')
   
   subplot(3,2,2)
   impulse(Wz, 50);
   grid minor;
   grid on;
   title('Весовая функция')
   ylabel('Амплитуда, Дб')
   
   [magn,phas,w] = bode(Wz);
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
   nyquist(Wr)
   grid minor;
   grid on;
   title('Годограф Найквиста')
   
end
   