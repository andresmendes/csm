close all ; clear ; clc

s = tf('s');

G1 = (s+0.5)/(s*(0.1*s+2)^2);
G2 = (s+0.5)/(s^2*(0.1*s+2)^2);

F1 = feedback(G1,1);
F2 = feedback(G2,1);

tp = -1:0.1:0;
tt = 0:0.1:19;
t = [tp tt];

x1p = zeros(1,length(tp));
x2p = zeros(1,length(tp));

[x1t,t1t] = step(1/s^2*F1,tt);
[x2t,t2t] = step(1/s^2*F2,tt);

t1 = [tp t1t'];
t2 = [tp t2t'];

x1 = [x1p x1t'];
x2 = [x2p x2t'];

u1 = zeros(length(tp),1);
u2 = 0.5*tt'.^2;
u = [u1 ; u2];

figure
set(gcf,'PaperUnit','centimeters','PaperPosition',[0 0 12 7],'PaperSize',[12 7])
hold on
plot(t1,x1,'r')
plot(t2,x2,'b')
plot(t1,u,'k')
set(gca,'ylim',[-0.1 200],'xtick',[],'ytick',[])

print(gcf,'-dpdf','../ilustracoes/efeitoIntegradorParabola.pdf')