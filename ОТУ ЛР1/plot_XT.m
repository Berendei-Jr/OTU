function[]=plot_XT(t,x) 
plot(t,x(:,1),'b-',t,x(:,2),'g-.');
grid on;
legend('x_1(t)','x_2(t)')
end 