%% Transformada de Laplace - 
%
%% Dados

clear ; close all ; clc

t = (0:1:50)/1000;      % Tempo [s]
f = 120;                % Frequência [Hz]
A = 1.0;                % Amplitude
sigma = 30;

% Sinal base
S = A*cos(2*pi*f*t);
% Sum of signals
expo1 = exp(-sigma*t);
expo2 = exp(sigma*t);
X1 = expo1.*S;
X2 = expo2.*S;

figure
subplot(2,1,1) ; hold on ; grid on ; box on
    plot(t,X1,'r','linewidth',2)
    plot(t,expo1,'k--')
    plot(t,-expo1,'k--')
    title('\sigma > 0')
    ylabel('A')
    xlabel('t (ms)')
    l = legend('sinal','$e^{-\sigma\,t}$');
    set(l,'Interpreter','latex','Location','NorthOutside','Orientation','horizontal','fontsize',12)
subplot(2,1,2) ; hold on ; grid on ; box on
    plot(t,X2,'r','linewidth',2)
    plot(t,expo2,'k--')
    plot(t,-expo2,'k--')
    title('\sigma < 0')
    ylabel('A')
    xlabel('t (ms)')
set(gcf,'Units','centimeters','Position',[0 0 8 10])