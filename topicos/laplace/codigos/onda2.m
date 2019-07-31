%% Transformada de Laplace - Dois sinais
%
%% Dados

f1 = 120;                % Frequência [Hz]
A1 = 0.5;                % Amplitude
f2 = 20;                % Frequência [Hz]
A2 = 2.0;                % Amplitude
t = (0:1:100)/1000;        % Tempo [s]

% Signals
S1 = A1*cos(2*pi*f1*t);
S2 = A2*cos(2*pi*f2*t);
% Sum of signals
X = S1 + S2;

%% Transformada de fourier

figure
subplot(4,1,1) ; hold on ; grid on ; box on
title('Domínio do tempo')
set(gca,'xlim',[t(1) t(end)],'ylim',[-1.2*A1 +1.2*A1])
plot(t,S1,'r','linewidth',2)
ylabel('A1')
subplot(4,1,2) ; hold on ; grid on ; box on
set(gca,'xlim',[t(1) t(end)],'ylim',[-1.2*A2 +1.2*A2])
title('+')
plot(t,S2,'r','linewidth',2)
ylabel('A2')
subplot(4,1,3) ; hold on ; grid on ; box on
set(gca,'xlim',[t(1) t(end)],'ylim',[-1.4*A2 +1.4*A2])
title('=')
plot(t,X,'r','linewidth',2)
ylabel('A1+A2')
xlabel('t (ms)')
subplot(4,1,4) ; hold on ; grid on ; box on
set(gca,'xlim',[0 150],'ylim',[0 2.3])
title('Domínio da frequência')
plot(f1,A1,'bo','markerfacecolor','b') 
plot([f1 f1],[0 A1],'b') 
plot(f2,A2,'bo','markerfacecolor','b') 
plot([f2 f2],[0 A2],'b') 
xlabel('f (Hz)')
ylabel('A')
set(gcf,'Units','centimeters','Position',[0 0 8 16])