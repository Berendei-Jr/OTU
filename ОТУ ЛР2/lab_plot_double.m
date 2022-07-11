function lab_plot_double(W1, W2)
    
   figure;
   clf;
   subplot(3,2,1)
   [x,t]=step(W1, 4);
   [x1, t1]=step(W2, 4);
   plot(t,x,'b-',t1,x1,'g-.');
   grid minor;
   grid on;
   title('Переходная функция')
   xlabel('Время, с')
   
   subplot(3,2,2)
   [x,t]=impulse(W1, 4);
   [x1, t1]=impulse(W2, 4);
   plot(t,x,'b-',t1,x1,'g-.');
   grid minor;
   grid on;
   title('Весовая функция')
   xlabel('Время, с')
   
   [magn,phas,w] = bode(W1);
   [magn1,phas1,w1] = bode(W2);
   subplot(3,2,3)
   plot(w,20*log10(magn(:)),'b-',w1,20*log(magn1(:)),'g-.');
   set(gca, 'XScale', 'log')
   grid minor;
   grid on;
   title('ЛАЧХ')
   xlabel('Частота, Гц')
   ylabel('Амплитуда, Дб')
   subplot(3,2,4)
   plot(w,phas(:),'b-',w1,phas1(:),'g-.')
   set(gca, 'XScale', 'log')
   grid minor;
   grid on;
   title('ЛФЧХ')
   xlabel('Частота, Гц')
   ylabel('Фаза, градусы')
   
   subplot(3,2,[5,6])
   nyquist(W1,'b-')
   hold on;
   nyquist(W2,'g-.')
   grid minor;
   grid on;
   title('Годограф Найквиста')
   hold off;
   
end