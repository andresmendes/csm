%% Domínio do tempo Vs frequência
%
%% Dados

clear ; close all ; clc

Fs = 2000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = 1500;             % Length of signal
t = (0:L-1)*T;        % Time vector

f = 120;              % Frequência [Hz]
A = 1;                % Amplitude

% Sinal base
S = A*cos(2*pi*f*t);
% Sum of signals
expo1 = exp(-20*t);
expo2 = exp(20*t);
X1 = expo1.*S;
X2 = expo2.*S;

%% Transformada de fourier

Y1 = fft(X1);
P21 = abs(Y1/L);
P11 = P21(1:L/2+1);
P11(2:end-1) = 2*P11(2:end-1);
f1 = Fs*(0:(L/2))/L;

Y2 = fft(X2);
P22 = abs(Y2/L);
P12 = P22(1:L/2+1);
P12(2:end-1) = 2*P12(2:end-1);
f2 = Fs*(0:(L/2))/L;

figure
subplot(2,2,1) ; hold on ; grid on ; box on
    title('Domínio do tempo')
    plot(t(1:100),X1(1:100))
    plot(t(1:100),expo1(1:100),'k--')
    plot(t(1:100),-expo1(1:100),'k--')
    ylabel('A')
    xlabel('t (ms)')
subplot(2,2,3) ; hold on ; grid on ; box on
    title('Domínio da frequência')
    plot(f1(1:200),P11(1:200)) 
    xlabel('f (Hz)')
    ylabel('A')
subplot(2,2,2) ; hold on ; grid on ; box on
    title('Domínio do tempo')
    plot(t(1:100),X2(1:100))
    plot(t(1:100),expo2(1:100),'k--')
    plot(t(1:100),-expo2(1:100),'k--')
    ylabel('A')
    xlabel('t (ms)')
subplot(2,2,4) ; hold on ; grid on ; box on
    title('Domínio da frequência')
    plot(f2(1:200),P12(1:200)) 
    xlabel('f (Hz)')
    ylabel('A')
set(gcf,'Units','centimeters','Position',[0 0 8 8])