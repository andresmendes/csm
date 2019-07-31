%% Transformada de Laplace - Sistema massa-mola
%
%% Dados

clear ; close all ; clc

f = 120;                    % Frequência [Hz]
A = 0.5;                    % Amplitude
t = (0:0.1:50)/1000;        % Tempo [s]

% Sinal
X = A*cos(2*pi*f*t);

figure
subplot(2,1,1) ; hold on ; grid on ; box on
set(gca,'xlim',[t(1) t(end)],'ylim',[-1.2*A +1.2*A])
title('Domínio do tempo')
plot(t,X,'r','linewidth',2)
ylabel('A')
xlabel('t (s)')
subplot(2,1,2) ; hold on ; grid on ; box on
set(gca,'xlim',[0 150],'ylim',[0 0.7])
title('Domínio da frequência')
plot(f,A,'bo','markerfacecolor','b') 
plot([f f],[0 A],'b') 
xlabel('f (Hz)')
ylabel('A')
set(gcf,'Units','centimeters','Position',[0 0 8 8])
