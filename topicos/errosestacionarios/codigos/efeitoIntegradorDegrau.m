close all ; clear ; clc

s = tf('s');

G1 = 1/(s+0.5);
G2 = 1/(s*(s+0.5));

F1 = feedback(G1,1);
F2 = feedback(G2,1);


tp = -3:0.1:0;
tt = 0:0.1:22;


u1 = zeros(1,length(tp));
u2 = ones(1,length(tt));
u = [u1 u2];

t = [tp tt];

x1p = zeros(1,length(tp));
x2p = zeros(1,length(tp));

[x1t,t1t] = step(F1,tt);
[x2t,t2t] = step(F2,tt);

t1 = [tp t1t'];
t2 = [tp t2t'];

x1 = [x1p x1t'];
x2 = [x2p x2t'];


figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t1,x1,'r')
plot(t2,x2,'b')
plot(t,u,'k')
set(gca,'ylim',[-0.1 1.5],'xtick',[],'ytick',[])

print(gcf,'-dpdf','../ilustracoes/efeitoIntegrador.pdf')