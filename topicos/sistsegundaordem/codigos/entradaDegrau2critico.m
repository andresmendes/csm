clear ; close all ; clc

s = tf('s');

G = 1/((s + 1)*(s + 1));

t = 0:0.01:15;

u1 = zeros(201,1);
u2 = ones(length(t)-201,1);

u = [u1 ; u2];

y = lsim(G,u,t);

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
set(gca,'ylim',[-0.1 1.3],'xtick',[],'ytick',[])
plot(t,y,'k')
% plot(t,y2(end)*ones(length(t)))

print(gcf,'-dpdf','../ilustracoes/saida2ordemCritico.pdf')
