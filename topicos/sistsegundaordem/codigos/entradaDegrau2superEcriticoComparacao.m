clear ; close all ; clc

s = tf('s');

G1 = 1/(0.7*s + 1);
G2 = 12/((s + 2)*(s + 6)); 	% Super
G3 = 36/((s + 6)^2);		% Crítico

t = 0:0.01:8;

u1 = zeros(201,1);
u2 = ones(length(t)-201,1);

u = [u1 ; u2];

y1 = lsim(G1,u,t);
y2 = lsim(G2,u,t);
y3 = lsim(G3,u,t);

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on ; grid on ; box on
% set(gca,'ylim',[-0.1 1.3],'xtick',[],'ytick',[])
plot(t,y1,'b')
plot(t,y2,'r')
plot(t,y3,'c')
xlabel('Tempo')
ylabel('Saída')
legend('1a ordem','Super','Crítico')
% plot(t,y2(end)*ones(length(t)))

print(gcf,'-dpdf','../ilustracoes/saida2ordemComparacaoSuperEcritico.pdf')
