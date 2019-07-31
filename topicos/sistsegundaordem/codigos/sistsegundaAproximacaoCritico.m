%% Sistemas de segunda ordem - Aproximação Critico
%

clear ; close all ; clc

s = tf('s');

G1 = 1/(0.35*s + 1);
G2 = 36/((s + 6)^2);

t = 0:0.01:6;

u1 = zeros(201,1);
u2 = ones(length(t)-201,1);

u = [u1 ; u2];

y1 = lsim(G1,u,t);
y2 = lsim(G2,u,t);

figure
set(gcf,'Units','centimeters','Position',[0 0 10 8])
hold on ; grid on ; box on
set(gca,'fontsize',15)
plot(t,y1,'b','linewidth',2)
plot(t,y2,'r','linewidth',2)
legend('1a ordem','crítico','location','southeast')